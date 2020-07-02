package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.Risksitemap;
import cn.com.kingc.risk.service.RisksiteService;
import cn.com.kingc.risk.service.RisksitemapService;
import cn.com.kingc.risk.util.Properties;
import com.mkaq.core.util.DateUtil;
import com.wordnik.swagger.annotations.ApiOperation;
import org.apache.commons.io.FileUtils;
import org.junit.Test;
//import org.kplatform4j.model.Framework;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;
import java.util.UUID;

/**
 * Created by txianwei on 2017/10/10.
 */
@RestController
@RequestMapping("/RiskSiteMap")
public class ImportRiskSiteMapController {

    @Autowired
    private RisksitemapService risksitemapService;

    @RequestMapping(value = "/UploadFile")
    @ApiOperation(value = "上传风险地图", httpMethod = "GET", notes = "上传风险地图")
    public Object UploadFile(HttpServletRequest request, @RequestParam(required = false) MultipartFile file) {
        String result = null;
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        if (null != file && !file.isEmpty()) {
            try {
                Properties properties = new Properties();
                String path = properties.getProperty("fileUploadUrl");
                File dir = new File(path);
                if (!dir.exists()) {
                    dir.mkdir();
                }
                String extName = "";
                if (file.getOriginalFilename().lastIndexOf(".") >= 0) {
                    extName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
                }
                String serverName = UUID.randomUUID().toString() + extName;
                String filename = path + serverName;
                File uploadFile = new File(filename);
                uploadFile.createNewFile();
                InputStream inputStream = file.getInputStream();
                FileUtils.copyInputStreamToFile(inputStream, uploadFile);
                String svgName = convertCADtoSVG(serverName);
                saveRiskSiteMap(framework, path, file.getOriginalFilename(), svgName);
                return readToString(path + svgName);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return result;
    }


    /**
     * 保存风险地图信息
     *
     * @param framework 企业对象
     * @param path      路径
     * @param cadName   cad文件名
     * @param svgName   svg文件名
     * @return 是否保存成功
     */
    private boolean saveRiskSiteMap(Framework framework, String path, String cadName, String svgName) {
        try {
            Risksitemap risksitemap = new Risksitemap();
            risksitemap.setFrameWorkId(framework.getFramewordID());
            List<Risksitemap> risksitemaps = risksitemapService.getRisksitemapList(risksitemap);
            if (risksitemaps != null && risksitemaps.size() > 0) {
                risksitemap = risksitemaps.get(0);
                risksitemap.setFrameWorkId(framework.getFramewordID());
                risksitemap.setUpdateDate(DateUtil.getDate());
                risksitemap.setCadFileName(cadName);
                risksitemap.setCadFilePath(path);
                risksitemap.setSvgFileName(svgName);
                risksitemap.setSvgFilePath(path);
                return risksitemapService.updateRisksitemap(risksitemap);
            } else {
                risksitemap.setFrameWorkId(framework.getFramewordID());
                risksitemap.setAddDate(DateUtil.getDate());
                risksitemap.setCadFileName(cadName);
                risksitemap.setCadFilePath(path);
                risksitemap.setSvgFileName(svgName);
                risksitemap.setSvgFilePath(path);
                return risksitemapService.addRisksitemap(risksitemap);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * 将CAD文件转为SVG
     *
     * @param serverName cad文件名称
     * @return 成功返回svg名称
     */
    private String convertCADtoSVG(String serverName) {
        Properties properties = new Properties();
        String convertToolPath = properties.getProperty("ConvertToolPath");
        String waterMakerPath = properties.getProperty("waterMaker");
        String path = properties.getProperty("fileUploadUrl");
        Runtime r = Runtime.getRuntime();
        try {
            File myfile = new File(convertToolPath, "AcmeCADConverter.exe");
            Process p = r.exec(myfile + " /r /e /ls /wmfile \"" + waterMakerPath + "\" /p 3 /f 101 /w 1400 /h 900 /a -2 /bookmark /hide 1 \"" + path + serverName + "\"");
            System.out.print(loadStream(p.getInputStream()));
            System.err.print(loadStream(p.getErrorStream()));
            System.out.print(loadStream(p.getInputStream()));
            System.err.println("****svg转换成功****");
            return serverName.substring(0, serverName.indexOf(".")) + "-Model.svg";
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        return null;
    }

    static String loadStream(InputStream in) throws IOException {
        int ptr = 0;
        in = new BufferedInputStream(in);
        StringBuffer buffer = new StringBuffer();
        while ((ptr = in.read()) != -1) {
            buffer.append((char) ptr);
        }
        return buffer.toString();
    }

    /**
     * 读取Svg文件内容
     *
     * @param fileName
     * @return
     */
    public String readToString(String fileName) {
        String encoding = "ISO-8859-1";
        File file = new File(fileName);
        Long filelength = file.length();
        byte[] filecontent = new byte[filelength.intValue()];
        try {
            FileInputStream in = new FileInputStream(file);
            in.read(filecontent);
            in.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            return new String(filecontent, encoding);
        } catch (UnsupportedEncodingException e) {
            System.err.println("The OS does not support " + encoding);
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 读取企业风险地图
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/getRiskSiteMap", method = RequestMethod.GET)
    private Object getRiskSiteMap(HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Risksitemap risksitemap = new Risksitemap();
            risksitemap.setFrameWorkId(framework.getFramewordID());
            List<Risksitemap> risksitemapList = risksitemapService.getRisksitemapList(risksitemap);
            if (risksitemapList != null) {
                if (risksitemapList.size() == 1) {
                    risksitemap = risksitemapList.get(0);
                    String svgContent = readToString(risksitemap.getSvgFilePath() + risksitemap.getSvgFileName());
                    svgContent=svgContent.replace("<title>Produce by Acme CAD Converter</title>", "");
                    svgContent=svgContent.replace("<desc>Produce by Acme CAD Converter</desc>", "<g>");
                    svgContent=svgContent.replace("</svg>", "</g></svg>");
                    return svgContent;
                }
            } else {
                return null;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/updateRiskSiteMap", method = RequestMethod.PUT)
    private Object updateRiskSiteMap(@RequestBody Risksitemap risksitemap) {
        try {
            return risksitemapService.updateRisksitemap(risksitemap);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @RequestMapping(value = "/getRiskSiteMapObj", method = RequestMethod.GET)
    private Object getRiskSiteMapObj(HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Risksitemap risksitemap = new Risksitemap();
            risksitemap.setFrameWorkId(framework.getFramewordID());
            List<Risksitemap> risksitemapList = risksitemapService.getRisksitemapList(risksitemap);
            if (risksitemapList != null) {
                if (risksitemapList.size() == 1) {
                    return risksitemapList.get(0);
                }
            } else {
                return null;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

}
