package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.Riskidentificationbyyear;
import cn.com.kingc.risk.model.Riskidentificationbyyearentry;
import cn.com.kingc.risk.model.Risksite;
import cn.com.kingc.risk.service.RiskidentificationbyyearService;
import cn.com.kingc.risk.service.RiskidentificationbyyearentryService;
import cn.com.kingc.risk.service.RisksiteService;
import cn.com.kingc.risk.util.Properties;
import com.mkaq.core.Constants;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
//import org.kplatform4j.model.Framework;
import org.activiti.engine.impl.util.json.JSONObject;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/**
 * @author admistrator
 * @version 1.0
 * @created 27-8月-2017 11:15:37
 */

@RestController
@RequestMapping("/RiskByYearControl")

public class RiskIdentificationByYearControl {

    @Autowired
    private RiskidentificationbyyearService riskidentificationbyyearService;

    @Autowired
    RiskidentificationbyyearentryService riskidentificationbyyearentryService;

    @Autowired
    private RisksiteService risksiteService;

    public RiskIdentificationByYearControl() {

    }

    @RequestMapping("/getrisksiteys")
    public Object getrisksiteys(HttpServletRequest request){

        try{
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");

            Risksite risksite = new Risksite();
            risksite.setFrameWorkID(framework.getFramewordID());
            risksite.setPagesize(10);
            risksite.setPage(1);
            List<Risksite> list = risksiteService.getRiskSiteByYS(risksite);
            return list;

        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    //获取一个空的RiskIdentificationByYear对象
    @RequestMapping(value = "/getrisk", method = RequestMethod.GET)
    public Object getrisk(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Risksite risksite = new Risksite();
        risksite.setFrameWorkID(framework.getFramewordID());
//        risksite.setManagerUnitName("经营管理科");
        risksite.setPage(1);
        risksite.setPagesize(10);
        return risksiteService.getRiskSiteByYS(risksite);
    }

    //获取一个空的RiskIdentificationByYear对象
    @RequestMapping(value = "/newRickbyyear", method = RequestMethod.GET)
    @ApiOperation(value = "RiskIdentificationByYear", response = Riskidentificationbyyear.class, httpMethod = "GET", notes = "获取一个空的RiskIdentificationByYear对象")
    public Object getNewRiskDetailedLists(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Riskidentificationbyyear riskbyyear = new Riskidentificationbyyear();
        riskbyyear.setCoalMineName(framework.getFrameWorkName());
        riskbyyear.setFrameWorkID(framework.getFramewordID());
        return riskbyyear;
    }



    //获取一个空的RiskIdentificationByYear对象
    @RequestMapping(value = "/newRickbyyearentry", method = RequestMethod.GET)
    @ApiOperation(value = "Riskidentificationbyyearentry", response = Riskidentificationbyyearentry.class, httpMethod = "GET", notes = "获取一个空的RiskIdentificationByYear对象")
    public Object Riskidentificationbyyearentry(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Riskidentificationbyyear riskbyyear = new Riskidentificationbyyear();
        riskbyyear.setCoalMineName(framework.getFrameWorkName());
        riskbyyear.setFrameWorkID(framework.getFramewordID());
        return riskbyyear;
    }



    //获取一个空的Riskidentificationbyyearentry对象
    @RequestMapping(value = "/newRiskidentificationbyyearentry/{sumNewItem}", method = RequestMethod.GET)
    @ApiOperation(value = "getRiskidentificationbyyearentry", response = Riskidentificationbyyear.class, httpMethod = "GET", notes = "获取一个空的RiskIdentificationByYear对象")
    public Object getRiskidentificationbyyearentry(@PathVariable("sumNewItem") Integer sumNewItem,HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        List<Riskidentificationbyyearentry> list = new ArrayList<Riskidentificationbyyearentry>();
        for (int i=0;i<sumNewItem;i++){
            Riskidentificationbyyearentry riskidentificationbyyearentry = new Riskidentificationbyyearentry();
            riskidentificationbyyearentry.setCoalMineName(framework.getFrameWorkName());
            riskidentificationbyyearentry.setFrameWorkID(framework.getFramewordID());
            list.add(riskidentificationbyyearentry);
        }
        return list;
    }


    //获取年度辨识共有多少页
    @RequestMapping(value = "/PageCount", method = RequestMethod.POST)
    @ApiOperation(value = "取年度辨识清单共有多少页", httpMethod = "POST", notes = "取年度辨识清单共有多少页")
    public Object getPageCount(@RequestBody Riskidentificationbyyear riskbyyear) {
        try {
            int count = riskidentificationbyyearService.getRiskidentificationbyyearCountByRiskidentificationbyyear(riskbyyear);
            int page = count / riskbyyear.getPagesize();
            int ls = count % riskbyyear.getPagesize();
            if (ls > 0) {
                page++;
            }
            return page;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    //分页获取年度辨识清单数据
    @RequestMapping(value = "/Page", method = RequestMethod.POST)
    @ApiOperation(value = "分页获取年度辨识清单数据，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取年度辨识清单数据，返回List结合")
    public Object getRiskSiteByPage(@RequestBody Riskidentificationbyyear riskbyyear) {
        try {
            int pageBegin =riskbyyear.getPagesize();
            int pageEnd  = riskbyyear.getPage();
            List<Riskidentificationbyyear> riskbyyears = riskidentificationbyyearService.getRiskidentificationbyyearByPageAndRiskidentificationbyyear(riskbyyear);

            return riskbyyears;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //根据主键获取年度辨识共有多少页
    @RequestMapping(value = "/PageCountbyid", method = RequestMethod.POST)
    @ApiOperation(value = "取年度辨识清单共有多少页", httpMethod = "POST", notes = "取年度辨识清单共有多少页")
    public Object getPageCountbyid(@RequestBody Riskidentificationbyyear riskbyyear) {
        try {
            int risk = riskbyyear.getRiskIdentificationYearID();
            int count = riskidentificationbyyearService.getRiskidentificationbyyearCountbyid(risk);
            int page = count / riskbyyear.getPagesize();
            int ls = count % riskbyyear.getPagesize();
            if (ls > 0) {
                page++;
            }
            return page;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    //根据主键分页获取年度辨识清单数据
    @RequestMapping(value = "/Pagebyid", method = RequestMethod.POST)
    @ApiOperation(value = "分页获取年度辨识清单数据，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取年度辨识清单数据，返回List结合")
    public Object getRiskSiteByPagebyid(@RequestBody Riskidentificationbyyear riskbyyear) {
        try {
            int riskbyid = riskbyyear.getRiskIdentificationYearID();
            int pageBegin =riskbyyear.getPagesize();
            int pageEnd  = riskbyyear.getPage();
            List<Riskidentificationbyyear> riskbyyears = riskidentificationbyyearService.getRiskidentificationbyyearByPagebyid(riskbyid,pageBegin, pageEnd );

            return riskbyyears;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //根据risk name获取数据
    @RequestMapping(value = "/risksiteByname", method = RequestMethod.POST)
    @ApiOperation(value = "更新一个Riskidentificationbyyear对象", response = List.class, httpMethod = "POST", notes = "Risksite")
    public Object getrisksitByname(@RequestBody Risksite risksite) {
        try {
            List<Risksite> risksites = risksiteService.getRisksiteByname(risksite);
            return risksites;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    //新增一个Riskidentificationbyyear对象
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ApiOperation(value = "新增一个Riskidentificationbyyear对象", response = Boolean.class, httpMethod = "POST", notes = "新增一个Riskidentificationbyyear对象")
    public Boolean addRiskidentificationbyyear(@RequestBody  Riskidentificationbyyear riskidentificationbyyear) {
        try {
            //如果主表主键大于0//则更新
            if(riskidentificationbyyear.getRiskIdentificationYearID()>0){
                riskidentificationbyyearService.updateRiskidentificationbyyear(riskidentificationbyyear);
                riskidentificationbyyearentryService
                        .deleteRiskidentificationbyyearID(riskidentificationbyyear.getRiskIdentificationYearID());

            }else{
                riskidentificationbyyear.setRiskIdentificationYearUUID(UUID.randomUUID().toString());
                riskidentificationbyyearService.addRiskidentificationbyyear(riskidentificationbyyear);
            }

            if(riskidentificationbyyear.getRiskIdentificationYearID()>0){
                for (Riskidentificationbyyearentry item:riskidentificationbyyear.getmYearEntry()) {
                    item.setCoalMineName(riskidentificationbyyear.getCoalMineName());
                    item.setFrameWorkID(riskidentificationbyyear.getFrameWorkID());
                    item.setRiskIdentificationYearID(riskidentificationbyyear.getRiskIdentificationYearID());
                    item.setRiskIdentificationYearEntryID(0);
                    riskidentificationbyyearentryService.addRiskidentificationbyyearentry(item);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return true;
    }

    //更新一个Riskidentificationbyyear对象
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ApiOperation(value = "更新一个Riskidentificationbyyear对象", response = Riskidentificationbyyear.class, httpMethod = "POST", notes = "更新一个Riskidentificationbyyear对象")
    public Object updateRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear) {
        try {
            return riskidentificationbyyearService.updateRiskidentificationbyyear(riskidentificationbyyear);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    //删除一个Riskidentificationbyyear对象
    @RequestMapping(value = "/delete", method = RequestMethod.DELETE)
    @ApiOperation(value = "删除一个Riskidentificationbyyear对象", response = Boolean.class, httpMethod = "DELETE", notes = "删除一个Riskidentificationbyyear对象")
    public Object deleteRiskidentificationbyyear(@RequestBody Riskidentificationbyyear riskidentificationbyyear) {
        try {
            return riskidentificationbyyearService.deleteRiskidentificationbyyear(riskidentificationbyyear);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }


    //根据id获取Riskidentificationbyyear对象
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @ApiOperation(value = "根据id获取Riskidentificationbyyear对象", response = Riskidentificationbyyear.class, httpMethod = "GET", notes = "根据id获取Riskidentificationbyyear对象")
    public Object getRiskidentificationbyyearById(@ApiParam(name = "id", value = "Riskidentificationbyyear的ID") @PathVariable("id") Integer id) {
        try {
            return riskidentificationbyyearService.getRiskidentificationbyyear(id);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }


    //根据id获取Riskidentificationbyyear对象
    @RequestMapping(value = "/byid/{id}", method = RequestMethod.GET)
    @ApiOperation(value = "根据id获取Riskidentificationbyyear对象", response = Riskidentificationbyyear.class, httpMethod = "GET", notes = "根据id获取Riskidentificationbyyear对象")
    public Object getRiskidentificationbyye(@ApiParam(name = "id", value = "Riskidentificationbyyear的ID") @PathVariable("id") Integer id,HttpServletRequest request) {
        try {

            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");

            //"65.01.01.01.133"
            if(framework.getFramewordID().equals("65.01.01.01.133")){
                ModelAndView modelAndView=new ModelAndView("RiskIdentificationByYearEntryByEkuang");
                modelAndView.addObject("id",id);
                return modelAndView ;
            }else{
                ModelAndView modelAndView=new ModelAndView("RiskIdentificationByYearEntry");
                modelAndView.addObject("id",id);
                return modelAndView ;
            }


        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
    //根据id获取Riskidentificationbyyear对象
    @RequestMapping(value = "/byHLid/{id}", method = RequestMethod.GET)
    @ApiOperation(value = "根据id获取Riskidentificationbyyear对象", response = Riskidentificationbyyear.class, httpMethod = "GET", notes = "根据id获取Riskidentificationbyyear对象")
    public Object getRiskidentificationbyyebyHL(@ApiParam(name = "id", value = "Riskidentificationbyyear的ID") @PathVariable("id") Integer id,HttpServletRequest request) {
        try {

            ModelAndView modelAndView=new ModelAndView("RiskIdentificationByYearEntrybyHL");
            modelAndView.addObject("id",id);

            return modelAndView ;

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //判读年份信息是否重复
    @RequestMapping(value = "/bymyear/{myear}", method = RequestMethod.GET)
    @ApiOperation(value = "更新一个Riskidentificationbyyear对象", response = Riskidentificationbyyear.class, httpMethod = "GET", notes = "判断年份信息是否重复")
    public Object updateRiskidentificationbymyear( @PathVariable("myear") Integer myear,HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Riskidentificationbyyear riskbyyear = new Riskidentificationbyyear();
            riskbyyear.setCoalMineName(framework.getFrameWorkName());
            riskbyyear.setFrameWorkID(framework.getFramewordID());

            riskbyyear.setmYear(myear);
            List<Riskidentificationbyyear> riskidentificationbyyearList =riskidentificationbyyearService.getRiskidentificationbyyearData(riskbyyear);
            if(riskidentificationbyyearList==null || riskidentificationbyyearList.size()==0 ){
                 return 0;
            }else{
                return riskidentificationbyyearList;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }


    // 附件下载，向文件服务器发送请求
    @RequestMapping(value = "/downFile", method = {RequestMethod.POST, RequestMethod.GET})
    public String downloadAmachment(String downloadUrl, String realFileName, HttpServletRequest request,
                                    HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            request.setCharacterEncoding("UTF-8");
            BufferedInputStream bis = null;
            BufferedOutputStream bos = null;
            // 此处使用的配置文件里面取出的文件服务器地址,拼凑成完整的文件服务器上的文件路径
            // 写demo时，可以直接写成http://xxx/xx/xx.tx这种形式
            String downLoadPath = /*ConfigHelper.getString("img.server.url") +*/ downloadUrl;
            response.setContentType("application/octet-stream");
            response.reset();// 清除response中的缓存
            // 根据网络文件地址创建URL
            URL url = new URL(downLoadPath);
            // 获取此路径的连接
            URLConnection conn = url.openConnection();

            Long fileLength = conn.getContentLengthLong();// 获取文件大小
            // 设置reponse响应头，真实文件名重命名，就是在这里设置，设置编码
            response.setHeader("Content-disposition", "attachment; filename=" + new String(realFileName.getBytes("UTF-8"), "ISO8859-1"));
            response.setHeader("Content-Length", String.valueOf(fileLength));

            bis = new BufferedInputStream(conn.getInputStream());// 构造读取流
            bos = new BufferedOutputStream(response.getOutputStream());// 构造输出流
            byte[] buff = new byte[1024 * 10];
            int bytesRead;
            // 每次读取缓存大小的流，写到输出流
            while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
                bos.write(buff, 0, bytesRead);
            }
            response.flushBuffer();// 将所有的读取的流返回给客户端
            bis.close();
            bos.close();

        } catch (IOException e) {
                /*
				 * LOG.error(e.getMessage(), e); return ErrorPages._500;
				 */
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/getExcell", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcell(String ExcellID, String ExcellName, HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            // 存储服务器位置
            String url1 = getUrl(request);
            if(url1.equals("")){
                url1 = "http://fileup.cnmineqs.net";
            }else if(url1.equals("http://")){
                url1 = "http://fileup.cnmineqs.net";
            }
            String url = url1 + "/file/downloadFileById?checkId=";
            Properties properties = new Properties();
            String fileUploadUrl = properties.getProperty("fileUploadUrl");
            request.setCharacterEncoding("UTF-8");
            // 第一步，创建一个webbook，对应一个Excel文件
            HSSFWorkbook wb = new HSSFWorkbook();
            // 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet
            HSSFSheet sheet = wb.createSheet(ExcellName.split("\\.")[0]);
            // 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short
            sheet.setDefaultColumnWidth(17);
            sheet.setColumnWidth(0, 2024);

            HSSFRow row = sheet.createRow((int) 0);
            // 第四步，创建单元格，并设置值表头 设置表头居中
            HSSFCellStyle style =(HSSFCellStyle) wb.createCellStyle();
            style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
            HSSFFont headerFont = (HSSFFont) wb.createFont();
            headerFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);// 字体加粗
            style.setFont(headerFont);
            style.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 下边框
            style.setBorderLeft(HSSFCellStyle.BORDER_THIN);// 左边框
            style.setBorderTop(HSSFCellStyle.BORDER_THIN);// 上边框
            style.setBorderRight(HSSFCellStyle.BORDER_THIN);// 右边框
            style.setWrapText(true);
            //设置内容样式
            HSSFCellStyle style1 =(HSSFCellStyle) wb.createCellStyle();
            style1.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 下边框
            style1.setBorderLeft(HSSFCellStyle.BORDER_THIN);// 左边框
            style1.setBorderTop(HSSFCellStyle.BORDER_THIN);// 上边框
            style1.setBorderRight(HSSFCellStyle.BORDER_THIN);// 右边框
            style1.setWrapText(true);
            HSSFCell cell = row.createCell((short) 0);
            cell.setCellValue("序号");
            cell.setCellStyle(style);
            cell = row.createCell((short) 1);
            cell.setCellValue("年度");
            cell.setCellStyle(style);
            cell = row.createCell((short) 2);
            cell.setCellValue("辨识风险点数量");
            cell.setCellStyle(style);
            cell = row.createCell((short) 3);
            cell.setCellValue("主持人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("记录人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 5);
            cell.setCellValue("参会人员");
            cell.setCellStyle(style);
            cell = row.createCell((short) 6);
            cell.setCellValue("附件");
            cell.setCellStyle(style);
            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Riskidentificationbyyear riskidentificationbyyear1=new Riskidentificationbyyear();
            riskidentificationbyyear1.setFrameWorkID(framework.getFramewordID());
            riskidentificationbyyear1.setCoalMineName(framework.getFrameWorkName());
            List<Riskidentificationbyyear> riskidentificationbyyearList=riskidentificationbyyearService.getRiskidentificationbyyearData(riskidentificationbyyear1);
            String filename = "";
            String fileaddress = "";
            String fileuuid = "";
            for (int i = 0; i < riskidentificationbyyearList.size(); i++) {
                row = sheet.createRow((int) i + 1);
                Riskidentificationbyyear riskidentificationbyyear = (Riskidentificationbyyear) riskidentificationbyyearList.get(i);
                // 第四步，创建单元格，并设置值
                row.createCell((short) 0).setCellValue(i + 1);
                row.createCell((short) 1).setCellValue(riskidentificationbyyear.getMYear());
                row.createCell((short) 2).setCellValue(riskidentificationbyyear.getmYearEntry().size());

                row.createCell((short) 3).setCellValue(riskidentificationbyyear.getMeetingCompere());

                row.createCell((short) 4).setCellValue(riskidentificationbyyear.getMeetingRecorder());
                row.createCell((short) 5).setCellValue(riskidentificationbyyear.getMeetingParticipant());
                cell = row.createCell((short) 6);

                filename = riskidentificationbyyear.getMeetringAttachmentFileName();
                fileuuid = riskidentificationbyyear.getMeetringAttachmentUUID();
                // test
                // filename = "测试名称";

                if(filename != null && !filename.equals("")){
                    fileaddress = url +  fileuuid;
                    HSSFHyperlink link = new HSSFHyperlink(HSSFHyperlink.LINK_URL);
                    cell.setCellValue(filename);
                    link.setAddress(fileaddress);
                    cell.setHyperlink(link);// 设置超链接
                }

                //row.createCell((short) 6).setCellValue(riskidentificationbyyear.getMeetringAttachmentFileName());
                Iterator<Cell> iterator = row.cellIterator();
                while (iterator.hasNext()) {
                    Cell next = iterator.next();
                    next.setCellStyle(style1);
                }

            }
            File pathUpload = new File(fileUploadUrl);
            if(!pathUpload.exists()){
                pathUpload.mkdir();
            }
            // 第六步，将文件存到指定位置
            File pathFile = new File(fileUploadUrl + ExcellName);


            if (pathFile.exists()) {
                pathFile.delete();

            }
            FileOutputStream fout = new FileOutputStream(fileUploadUrl + ExcellName);
            wb.write(fout);
            fout.close();
//            exportExcel(res, workbook);
            //FileInputStream fileInputStream=new FileInputStream(pathFile);
            // fileInputStream.read()
            File file = new File(fileUploadUrl + ExcellName);

            InputStream fis = new BufferedInputStream(new FileInputStream(fileUploadUrl + ExcellName));
            byte[] buffer = new byte[fis.available()];
            fis.read(buffer);
            fis.close();
            // 清空response
            response.reset();
            // 设置response的Header
            response.setContentType("application/vnd.ms-excel;charset=UTF-8");
            response.addHeader("Content-Disposition", "attachment;filename=" + new String(ExcellName.getBytes("gb2312"), "ISO8859-1"));
            response.addHeader("Content-Length", "" + file.length());//file.length()
            OutputStream toClient = new BufferedOutputStream(
                    response.getOutputStream());
            toClient.write(buffer);
            toClient.flush();
            toClient.close();
            file.delete();
        } catch (Exception e) {
            e.printStackTrace();

        }
    }


    public String sendPost(String urlstr, String Params) throws IOException {
        String a = null;
        try {
            JSONObject  obj = new JSONObject();
            obj.append("checkid", Params);
            System.out.println(obj);
            // 创建url资源
            URL url = new URL(urlstr);
            // 建立http连接
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            // 设置允许输出
            conn.setDoOutput(true);
            conn.setDoInput(true);
            // 设置不用缓存
            conn.setUseCaches(false);
            // 设置传递方式
            conn.setRequestMethod("POST");
            // 设置维持长连接
            conn.setRequestProperty("Connection", "Keep-Alive");
            // 设置文件字符集:
            conn.setRequestProperty("Charset", "UTF-8");
            //转换为字节数组
            byte[] data = (obj.toString()).getBytes();
            // 设置文件长度
            conn.setRequestProperty("Content-Length", String.valueOf(data.length));
            // 设置文件类型:
            conn.setRequestProperty("contentType", "application/json");
            // 开始连接请求
            conn.connect();
            OutputStream  out = conn.getOutputStream();
            // 写入请求的字符串
            out.write((obj.toString()).getBytes());
            out.flush();
            out.close();
            System.out.println(conn.getResponseCode());
            // 请求返回的状态
            if (conn.getResponseCode() == 200) {
                System.out.println("连接成功");
                // 请求返回的数据
                InputStream in = conn.getInputStream();

                try {
                    byte[] data1 = new byte[in.available()];
                    in.read(data1);
                    // 转成字符串
                    a = new String(data1);
                    System.out.println(a);
                } catch (Exception e1) {
                    // TODO Auto-generated catch block
                    e1.printStackTrace();
                }
            } else {
                System.out.println("no++");
            }

        } catch (Exception e) {

        }
        return a;
    }

    public String getUrl(HttpServletRequest request){
        String fileName = request.getSession().getServletContext()
                .getRealPath("/")
                + "WEB-INF/resource/js/resource.js";
        fileName = fileName.replace("\\", "/");
        //System.out.println(fileName);
        System.out.println(fileName);
        File file = new File(fileName);
        if (file.isFile()) {
            // 以字节流方法读取文件
            FileInputStream fis = null;
            try {
                fis = new FileInputStream(file);
                // 设置一个，每次 装载信息的容器
                byte[] buf = new byte[1024];
                // 定义一个StringBuffer用来存放字符串
                StringBuffer sb = new StringBuffer();
                // 开始读取数据
                int len = 0;// 每次读取到的数据的长度
                while ((len = fis.read(buf)) != -1) {// len值为-1时，表示没有数据了
                    // append方法往sb对象里面添加数据
                    sb.append(new String(buf, 0, len, "utf-8"));
                }
                // 输出字符串
                System.out.println(sb.toString());
                String fileUploadPath[] = sb.toString().split(";");
                String url = "";
                for(int i = 0; i <fileUploadPath.length;i++){
                    if(fileUploadPath[i].length() > 2 && fileUploadPath[i].substring(0,7).contains("var")){
                        url = fileUploadPath[i].split("=")[1].split("/")[2];
                    }
                }

                return "http://" + url;
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            System.out.println("文件不存在！");
        }
        return "";
    }
}