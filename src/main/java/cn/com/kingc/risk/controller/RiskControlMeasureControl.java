package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.Riskcontrolmeasure;
import cn.com.kingc.risk.model.Riskhazard;
import cn.com.kingc.risk.model.Risksite;
import cn.com.kingc.risk.service.RiskcontrolmeasureService;
import cn.com.kingc.risk.service.RiskhazardService;
import cn.com.kingc.risk.service.RisksiteService;
import com.mkaq.core.aop.util.Constants;
import com.wordnik.swagger.annotations.ApiOperation;
//import org.kplatform4j.model.Framework;
import org.platform4j.model.Base_org;
import org.platform4j.model.Framework;
import org.platform4j.model.Userinfo;
import org.platform4j.service.Base_orgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.UUID;

/**
 * @author admistrator
 * @version 1.0
 * @created 27-8月-2017 11:15:36
 */
@RestController
@RequestMapping("/RiskControlMeasureControl")
public class RiskControlMeasureControl {
    @Autowired
    private RiskcontrolmeasureService riskcontrolmeasureService;
    @Autowired
    private RisksiteService risksiteService;
    @Autowired
    private RiskhazardService riskhazardService;


    public RiskControlMeasureControl() {

    }


    @Override
    public void finalize() throws Throwable {

    }

    /**
     * 获取一个危险源空对象
     *
     * @param
     */
    @RequestMapping(value = "/newRiskhazard", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Riskhazard对象", response = Risksite.class, httpMethod = "GET", notes = "获取一个空的Riskhazard对象")
    public Object getNewRiskhazard(HttpServletRequest request) {
        HttpSession session = request.getSession();
//               Userinfo userinfo = (Userinfo) session.getAttribute(Constants.CURRENT_USER);
//
//        Riskhazard riskhazard = new Riskhazard();
//        Base_org org;
//        if(userinfo!=null){
//            org =base_orgService.getBase_org(userinfo.getFFrameID());
//            riskhazard.setCoalMineName(org.getFOrgID());
//            riskhazard.setFrameWorkID(org.getFOrg_Name());
//        }else{
//            org=null;
//            riskhazard=null;
//        }
        Framework framework=(Framework) request.getSession().getAttribute("framework");
        Riskhazard riskhazard = new Riskhazard();
        riskhazard.setCoalMineName(framework.getFrameWorkName());
        riskhazard.setFrameWorkID(framework.getFramewordID());
        return riskhazard;
    }


    /**
     * 获取一个风险点空对象
     *
     * @param
     */
    @RequestMapping(value = "/newRiskSite", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的RiskSite对象", response = Risksite.class, httpMethod = "GET", notes = "获取一个空的RiskSite对象")
    public Object getNewRiskSite(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Risksite risksite = new Risksite();
        risksite.setCoalMineName(framework.getFrameWorkName());
        risksite.setFrameWorkID(framework.getFramewordID());
        return false;
    }


    //获取一个空的Riskcontrolmeasure对象
    @RequestMapping(value = "/newRiskcontrolmeasure", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Riskcontrolmeasure", response = Risksite.class, httpMethod = "GET", notes = "获取一个空的Riskcontrolmeasure对象")
    public Object getNewRiskcontrolmeasure(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Riskcontrolmeasure riskcontrolmeasure = new Riskcontrolmeasure();
        riskcontrolmeasure.setCoalMineName(framework.getFrameWorkName());
        riskcontrolmeasure.setFrameWorkID(framework.getFramewordID());
        return riskcontrolmeasure;
    }


    //获取管控措施清单共有多少页
    @RequestMapping(value = "/PageCount", method = RequestMethod.POST)
    @ApiOperation(value = "管控措施共有多少页", httpMethod = "POST", notes = "管控措施共有多少页")
    public Object getPageCount(@RequestBody Riskcontrolmeasure riskcontrolmeasure) {
        try {
            int count = riskcontrolmeasureService.getRiskcontrolmeasureCountByRiskcontrolmeasure(riskcontrolmeasure);
            int page = count / riskcontrolmeasure.getPagesize();
            int ls = count % riskcontrolmeasure.getPagesize();
            if (ls > 0) {
                page++;
            }
            return page;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    //分页获取管控措施数据
    @RequestMapping(value = "/Page", method = RequestMethod.POST)
    @ApiOperation(value = "分页获取管控措施清单数据，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取管控措施清单数据，返回List结合")
    public Object getRiskSiteByPage(@RequestBody Riskcontrolmeasure riskcontrolmeasure) {
        try {
            List<Riskcontrolmeasure> riskcontrolmeasures = riskcontrolmeasureService.getRiskcontrolmeasureByPageAndRiskcontrolmeasure(riskcontrolmeasure);
            return riskcontrolmeasures;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }



    //新增管控措施数据
    @RequestMapping(value = "/addMeasure", method = RequestMethod.POST)
    public boolean addMeasure(@RequestBody Riskcontrolmeasure riskcontrolmeasure) {
        riskcontrolmeasure.setMeasureUUID(UUID.randomUUID().toString());
        return riskcontrolmeasureService.addRiskcontrolmeasure(riskcontrolmeasure);
    }
    //更新管控措施数据
    @RequestMapping(value = "/updateMeasure", method = RequestMethod.POST)
    @ApiOperation(value = "修改管控措施", response = boolean.class, httpMethod = "POST", notes = "更新管控措施")
    public boolean updateMeasure(@RequestBody Riskcontrolmeasure riskcontrolmeasure) {
        return riskcontrolmeasureService.updateRiskcontrolmeasure(riskcontrolmeasure);
    }
    //删除管控措施数据
    @RequestMapping(value = "/deleteMeasure/{tempdeleteadd}", method = RequestMethod.POST)
    public boolean deleteMeasure(@PathVariable("tempdeleteadd") Integer tempdeleteadd) {
        return riskcontrolmeasureService.deleteRiskcontrolmeasureByID(tempdeleteadd);
    }
    //删除管控措施数据
    @RequestMapping(value = "/deleteMeasureByObject", method = RequestMethod.POST)
    public boolean deleteMeasure(@RequestBody Riskcontrolmeasure riskcontrolmeasure) {
        return riskcontrolmeasureService.deleteRiskcontrolmeasure(riskcontrolmeasure);
    }
  /*  //查询管控措施数据
    @RequestMapping(value = "/findMeasure/{tempdupdateid}", method = RequestMethod.POST)
    public Riskcontrolmeasure findMeasure(@PathVariable("tempdupdateid") Integer tempdupdateid) {
        return riskcontrolmeasureService.getRiskcontrolmeasure(tempdupdateid);
    }*/
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

    //跳转三级危险源
    @RequestMapping(value = "/gotothree/{mriskSiteID}/{mposition}", method = RequestMethod.POST)
    public boolean gotothree(@PathVariable("mriskSiteID") Integer riskSiteID,@PathVariable("mposition") String position,HttpServletRequest request) {
        request.getSession().setAttribute("mriskSiteID",riskSiteID);
        request.getSession().setAttribute("mposition",position);
        return true;
    }
    //根据风险点ID获取危险源
    @RequestMapping(value = "/getHazard", method = RequestMethod.POST)
    public Object getHazard(HttpServletRequest request) {
        Integer riskSiteID = (Integer) request.getSession().getAttribute("mriskSiteID");
        return risksiteService.getRisksite(riskSiteID);

    }
    //根据风险点ID获取危险源
    @RequestMapping(value = "/getHazardInfo", method = RequestMethod.POST)
    public Object getHazardInfo(HttpServletRequest request) {
        Integer riskHazardID = (Integer) request.getSession().getAttribute("toRiskHazardInfoByriskHazardID");
        return riskhazardService.getRiskhazard(riskHazardID);

    }

    //跳转三级危险源
    @RequestMapping(value = "/gotoMRiskSite/{riskSiteID}/{position}", method = RequestMethod.POST)
    public boolean gotoMRiskSite(@PathVariable("riskSiteID") Integer riskSiteID,@PathVariable("position") String position,HttpServletRequest request) {
        request.getSession().setAttribute("riskSiteID",riskSiteID);
        request.getSession().setAttribute("position",position);
        return true;
    }

    //根据riskSiteFullNumber查询管控措施
    @RequestMapping(value = "/getMRiskSiteMeasure/{riskSiteFullNumber}", method = RequestMethod.POST)
    public Object gotoMRiskSite(@PathVariable("riskSiteFullNumber") String riskSiteFullNumber,HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        Riskcontrolmeasure riskcontrolmeasure = new Riskcontrolmeasure();
        riskcontrolmeasure.setFrameWorkID(framework.getFramewordID());
        riskcontrolmeasure.setCoalMineName(framework.getFrameWorkName());
        riskcontrolmeasure.setRiskSiteFullNumber(riskSiteFullNumber);
        List<Riskcontrolmeasure> list = riskcontrolmeasureService.getRiskcontrolmeasureData(riskcontrolmeasure);
        return list;
    }
    //跳转三级危险源
    @RequestMapping(value = "/gotoHazard/{hazardID}", method = RequestMethod.POST)
    public boolean gotoHazard(@PathVariable("hazardID") Integer hazardID, HttpServletRequest request) {
        request.getSession().setAttribute("toRiskHazardInfoByriskHazardID",hazardID);
        return true;
    }

    /**
     * @param mRiskSite
     */
    public boolean addMeasureAsSimilarPlace(Risksite mRiskSite) {
        return false;
    }


    /**
     * @param mRiskSite
     */
    public boolean addMeasureForRiskSite(Risksite mRiskSite) {
        return false;
    }

    /**
     * @param coalMineName
     * @param coalMineUUID
     */
    public void initializationView(String coalMineName, String coalMineUUID) {

    }

    public boolean showQueryConditionForm() {
        return false;
    }

    //根据riskSiteFullNumber查询管控措施
    @RequestMapping(value = "/getMRiskSiteMeasures/{riskSiteFullNumber}", method = RequestMethod.POST)
    public Object gotoMRiskSites(@PathVariable("riskSiteFullNumber") String riskSiteFullNumber,HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        Riskcontrolmeasure riskcontrolmeasure = new Riskcontrolmeasure();
        riskcontrolmeasure.setFrameWorkID(framework.getFramewordID());
        riskcontrolmeasure.setCoalMineName(framework.getFrameWorkName());
        riskcontrolmeasure.setRiskSiteFullNumber(riskSiteFullNumber);
        List<Riskcontrolmeasure> list = riskcontrolmeasureService.getRiskcontrolmeasureDatas(riskcontrolmeasure);
        return list;
    }

    //根据riskSiteFullNumber查询管控措施
    @RequestMapping(value = "/getMRiskSiteMeasureCount/{riskSiteFullNumber}", method = RequestMethod.POST)
    public Object gotoMRiskSiteCount(@PathVariable("riskSiteFullNumber") String riskSiteFullNumber,HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        Riskcontrolmeasure riskcontrolmeasure = new Riskcontrolmeasure();
        riskcontrolmeasure.setFrameWorkID(framework.getFramewordID());
        riskcontrolmeasure.setCoalMineName(framework.getFrameWorkName());
        riskcontrolmeasure.setRiskSiteFullNumber(riskSiteFullNumber);
        List<Riskcontrolmeasure> list = riskcontrolmeasureService.getRiskcontrolmeasureDataCount(riskcontrolmeasure);
        return list;
    }
}