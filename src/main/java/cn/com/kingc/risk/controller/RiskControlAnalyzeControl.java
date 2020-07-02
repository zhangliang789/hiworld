package cn.com.kingc.risk.controller;

import cn.com.kingc.hiddentrouble.model.*;
import cn.com.kingc.hiddentrouble.service.*;
import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.*;
import cn.com.kingc.risk.util.Properties;
import com.wordnik.swagger.annotations.ApiOperation;
//import org.kplatform4j.model.Framework;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;
import org.platform4j.model.Emp;
import org.platform4j.model.Framework;
import org.platform4j.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author admistrator
 * @version 1.0
 * @created 27-8月-2017 11:15:39
 */
@RestController
@RequestMapping("/RiskControlAnalyzeControl")
public class RiskControlAnalyzeControl {

    @Autowired
    RiskcontrolanalyzeService riskcontrolanalyzeService;

    @Autowired
    RiskcontrolanalyzeitemService riskcontrolanalyzeitemService;
    @Autowired
    private FinerecordService finerecordService;
    @Autowired
    private HtdetailService htdetailService;
    @Autowired
    private HtdetailstandardService htdetailstandardService;
    @Autowired
    private HtdetaillevelsettingService htdetaillevelsettingService;
    @Autowired
    RisksiteoutofcontrolService risksiteoutofcontrolService;

    @Autowired
    RisksiteoutofcontrolitemService risksiteoutofcontrolitemService;
    @Autowired
    private RiskAnalyzeService riskAnalyzeService;
    @Autowired
    private RiskcontrolplanebymonthService riskcontrolplanebymonthService;

    @Autowired
    private SpecialplanService specialplanService;

    //创建专项隐患的空对象
    @RequestMapping(value = "/newSpecialplan")
    @ResponseBody
    public Object newspecialplan(HttpServletRequest request) {
        Specialplan specialplan = new Specialplan();
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        specialplan.setFFrameworkID(framework.getFramewordID());
        specialplan.setFCoalName(framework.getFrameWorkName());
//        specialplan.setSpecialPlanID(0);
        return specialplan;
    }

    //获取专项检查计划
    @RequestMapping(value = "/getSpecialplanList", method = RequestMethod.POST)
    @ResponseBody
    public Object getSpecialplanList(@RequestBody Specialplan specialplan) {
        try {
            return specialplanService.getSpecialplanList(specialplan);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
    //创建一个Htdetailstandardpunish空对象
    @RequestMapping(value = "/NewHtdetailstandardpunish")
    @ResponseBody
    public Object NewHtdetailstandardpunish(HttpServletRequest request){
        Htdetailstandardpunish htdetailstandardpunish = new Htdetailstandardpunish();
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        htdetailstandardpunish.setFFrameWorkID(framework.getFramewordID());
        htdetailstandardpunish.setFCoalMineName(framework.getFrameWorkName());
        return htdetailstandardpunish;
    }
    //获取一个空的Riskidentificationbyspecially对象
    @RequestMapping(value = "/getNewRiskcontrolanalyze", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Riskidentificationbyspecially对象", response = Risksiteoutofcontrol.class, httpMethod = "GET", notes = "获取一个空的Riskidentificationbyspecially对象")
    public Object getNewRiskcontrolanalyze(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Riskcontrolanalyze riskcontrolanalyze = new Riskcontrolanalyze();
        riskcontrolanalyze.setCoalMineName(framework.getFrameWorkName());
        riskcontrolanalyze.setFrameWorkID(framework.getFramewordID());
        riskcontrolanalyze.setMAnalyzeID(null);
        return riskcontrolanalyze;
    }

    //创建一个Htdetail空对象
    @RequestMapping(value = "/newHtdetail")
    @ResponseBody
    public Object newHtdetail(HttpServletRequest request) {
        Htdetail htdetail = new Htdetail();
        HttpSession session = request.getSession();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Framework framework = (Framework) session.getAttribute("framework");
        htdetail.setFDetectionTime(sdf.format(new Date()));
        htdetail.setFFrameworkID(framework.getFramewordID());
        htdetail.setFCoalName(framework.getFrameWorkName());
        htdetail.setFHiddenTroubleID(0);
        return htdetail;
    }

    //创建一个Finerecord空对象
    @RequestMapping(value = "/newFinerecord")
    @ResponseBody
    public Object newFinerecord(HttpServletRequest request) {
        Finerecord finerecord = new Finerecord();
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        finerecord.setFFrameWorkID(framework.getFramewordID());
        finerecord.setFCoalMineName(framework.getFrameWorkName());
        finerecord.setFPunishID(0);
        return finerecord;
    }


   /*V1.3版本更新内容
    //获取隐患分类
    @RequestMapping(value = "/getYHFLList",method=RequestMethod.POST)
    @ResponseBody
    public Object getHtdetailstandardList(HttpServletRequest request){
        try{
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            return htdetailstandardService.getDistinctYHFL(framework.getFramewordID());
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }*/
    //创建一个Specialplanentry空对象
    @RequestMapping(value = "/NewHtdetailstandard")
    @ResponseBody
    public Object NewHtdetailstandard(HttpServletRequest request) {
        Htdetailstandard htdetailstandard = new Htdetailstandard();
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        htdetailstandard.setFFrameWorkID(framework.getFramewordID());
        htdetailstandard.setFCoalMineName(framework.getFrameWorkName());
        return htdetailstandard;
    }

    //条件查询隐患标准
    @RequestMapping(value = "/getHtdetailstandardList", method = RequestMethod.POST)
    @ResponseBody
    public Object getHtdetailstandardList(@RequestBody Htdetailstandard htdetailstandard) {
        try {
            return htdetailstandardService.getHtdetailstandardList(htdetailstandard);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    //条件查询隐患
    @RequestMapping(value = "/getHtdetail/{htdetailID}", method = RequestMethod.POST)
    @ResponseBody
    public Object getHtdetail(@RequestBody @PathVariable("htdetailID") Integer htdetailID) {
        try {
            return htdetailService.getHtdetail(htdetailID);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    //创建一个Finerecord空对象
    @RequestMapping(value = "/addFinerecordList", method = RequestMethod.POST)
    @ResponseBody
    public Object addFinerecordList(@RequestBody List<Finerecord> finerecordList) {
        try {
            for (int i = 0; i < finerecordList.size(); i++) {
                if (finerecordList.get(i).getfPunishTime() == null || finerecordList.get(i).getfPunishTime() == "") {
                    finerecordList.remove(i);
                }
            }
            finerecordService.addFinerecordList(finerecordList);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;

    }

    //获取风险管控清单共有多少页
    @RequestMapping(value = "/PageCount", method = RequestMethod.POST)
    @ApiOperation(value = "风险管控分析页数", httpMethod = "POST", notes = "风险管控分析页数")
    public Object getPageCount(@RequestBody Riskcontrolanalyze riskcontrolanalyze) {
        try {
            int count = riskcontrolanalyzeService.getRiskcontrolanalyzeCountByRiskcontrolanalyze(riskcontrolanalyze);
            int page = count / riskcontrolanalyze.getPagesize();
            int ls = count % riskcontrolanalyze.getPagesize();
            if (ls > 0) {
                page++;
            }
            return page;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    //根据Htdetaillevelsetting对象，获取重大隐患等级
    @RequestMapping(value = "/htdetaillevelsetting", method = RequestMethod.POST)
    @ResponseBody
    public Object htdetaillevelsetting(Htdetaillevelsetting htdetaillevelsetting, HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            htdetaillevelsetting.setFFrameWorkID(framework.getFramewordID());
            htdetaillevelsetting.setFCoalMineName(framework.getFrameWorkName());
            return htdetaillevelsettingService.getHtdetaillevelsettingList(htdetaillevelsetting);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    //进入隐患下达
    @RequestMapping(value = "/saveHtdetail", method = RequestMethod.POST)
    @ResponseBody
    public Object saveHtdetail(@RequestBody Htdetail htdetail) {
        try {
            Integer htdetailID = htdetailService.saveHtdetailByRisk(htdetail); //发布完心平台后，经此处改为  return htdetailService.saveHtdetail(htdetail)

            return htdetailID;

//            return htdetail.getFHiddenTroubleID();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    //添加罚款信息
    @RequestMapping(value = "/addFinerecord", method = RequestMethod.POST)
    @ResponseBody
    public Object addFinerecord(@RequestBody Finerecord finerecord) {
        try {
            if (!finerecord.getFPunishUnit()) {
                String[] infoList = finerecord.getFDescription().split(";");
                for (int i = 0; i < infoList.length; i++) {
                    String[] infoL = infoList[i].split(",");
                    Finerecord finerecord1 = new Finerecord();
                    finerecord1 = finerecord;
                    if (infoL[5].equals("1")) {
                        finerecord1.setFDescription("对" + infoL[0] + infoL[1] + infoL[2] + "进行主要处罚,隐患内容如下：" + infoL[6]);
                        finerecord1.setFdutyPerson(1);

                    } else {
                        finerecord1.setFDescription("对" + infoL[0] + infoL[1] + infoL[2] + "进行联责处罚,隐患内容如下：" + infoL[6]);
                        finerecord1.setFdutyPerson(0);

                    }
                    BigDecimal bd = new BigDecimal(infoL[4]);
                    BigDecimal bd1 = new BigDecimal(infoL[3]);

                    finerecord1.setFMoeney(bd);
                    finerecord1.setFdeductPoint(bd1);
                    finerecord1.setFBePunishPersonName(infoL[2]);
                    finerecord1.setFBePunishUnitName(infoL[0]);
                    finerecordService.addFinerecord(finerecord1);
                }
            } else {
                String[] infoList = finerecord.getFDescription().split(";");
                for (int i = 0; i < infoList.length; i++) {
                    String[] infoL = infoList[i].split(",");
                    Finerecord finerecord1 = new Finerecord();
                    finerecord1 = finerecord;
                    if (i == 0) {
                        finerecord1.setFDescription("由" + infoL[0] +
                                infoL[1] + "对" +  infoL[2] + "现场发现的隐患进行罚款处罚。隐患内容如下:" + infoL[3]);
                        finerecord1.setFPunishPersonal(false);
                        finerecord1.setFPunishUnit(true);
                        finerecord1.setFdutyPerson(1);

                    } else {

                        finerecord1.setFDescription("对" + infoL[0] + infoL[1] + infoL[2] + "进行联责处罚,隐患内容如下：" + infoL[6]);
                        finerecord1.setFdutyPerson(0);
                        BigDecimal bd = new BigDecimal(infoL[4]);
                        BigDecimal bd1 = new BigDecimal(infoL[3]);

                        finerecord1.setFMoeney(bd);
                        finerecord1.setFdeductPoint(bd1);
                        finerecord1.setFBePunishPersonName(infoL[2]);
                        finerecord1.setFBePunishUnitName(infoL[0]);
                        finerecord1.setFPunishPersonal(true);
                        finerecord1.setFPunishUnit(false);
                    }
                    finerecordService.addFinerecord(finerecord1);
                }
            }
            return 1;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    //按条件查询
    @RequestMapping(value = "/getFinerecordList", method = RequestMethod.POST)
    @ResponseBody
    public Object getFinerecordList(@RequestBody Finerecord finerecord) {
        try {
            return finerecordService.getFinerecordList(finerecord);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    //分页获取风险管控清单数据
    @RequestMapping(value = "/getRiskcontrolanalyzeByPage", method = RequestMethod.POST)
    @ApiOperation(value = "分页获取失控危险源信息，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取失控危险源信息，返回List结合")
    public Object getRiskcontrolanalyzeByPage(@RequestBody Riskcontrolanalyze riskcontrolanalyze) {
        try {
            List<Riskcontrolanalyze> riskcontrolanalyzesLst = riskcontrolanalyzeService
                    .getRiskcontrolanalyzeByPageAndRiskcontrolanalyze(riskcontrolanalyze);
            // 遍历属性以获取值
            for (Riskcontrolanalyze rs : riskcontrolanalyzesLst) {
                rs.getCoalMineName();
                rs.getmAnalyzeItem();
            }
            return riskcontrolanalyzesLst;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }


    @RequestMapping(value = "/removeRiskcontrolanalyze", method = RequestMethod.DELETE)
    @ApiOperation(value = "删除月度评估", response = boolean.class, httpMethod = "DELETE", notes = "删除月度评估")
    public boolean removeRiskcontrolanalyze(@RequestBody Riskcontrolanalyze riskcontrolanalyze) {

        return riskcontrolanalyzeService.deleteRiskcontrolanalyze(riskcontrolanalyze);
    }

    @RequestMapping(value = "/saveRiskcontrolanalyze", method = RequestMethod.POST)
    @ApiOperation(value = "保存管控分析", response = boolean.class, httpMethod = "POST", notes = "保存管控分析")
    public boolean saveRiskcontrolanalyze(@RequestBody Riskcontrolanalyze riskcontrolanalyze, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");

        Integer i = (Integer) request.getSession().getAttribute("manalyzeid");
        List<Riskcontrolanalyzeitem> list = riskcontrolanalyze.getmAnalyzeItem();
        if (riskcontrolanalyze.getMAnalyzeID() != null) {
            if (list.size() > 0) {
                for (Riskcontrolanalyzeitem riskcontrolanalyzeitem : list) {
                    if (riskcontrolanalyzeitem.getItemID() != null && riskcontrolanalyzeitem.getItemID() != 0) {
                        riskcontrolanalyzeitemService.deleteitemByAnalyzeID(riskcontrolanalyzeitem.getItemID());
                    }
                }
            }
           /* riskcontrolanalyzeService.deleteRiskcontrolanalyzeByID(riskcontrolanalyze.getMAnalyzeID());*/
            riskcontrolanalyzeService.updateRiskcontrolanalyze(riskcontrolanalyze);

        } else {
            if(i !=null){
                if (i == 0) {
                    riskcontrolanalyzeService.addRiskcontrolanalyze(riskcontrolanalyze);
                    Integer manalyzeid = riskcontrolanalyze.getMAnalyzeID();
                    request.getSession().setAttribute("manalyzeid", manalyzeid);
                }
            }
            //河南平煤需求(根据煤矿id判断)
            if(framework.getFramewordID().equals("41.01.02.01.130")){
                if(riskcontrolanalyze.getMAnalyzeUUID() ==null){
                    riskcontrolanalyze.setMAnalyzeUUID(UUID.randomUUID().toString());
                }
                riskcontrolanalyzeService.addRiskcontrolanalyze(riskcontrolanalyze);
            }
        }
        if (riskcontrolanalyze.getmAnalyzeItem() != null) {
            for (Riskcontrolanalyzeitem item : riskcontrolanalyze.getmAnalyzeItem()) {
                item.setItemID(0);
                item.setmAnalyzeID(riskcontrolanalyze.getMAnalyzeID());
                riskcontrolanalyzeitemService.addRiskcontrolanalyzeitem(item);
            }
        }
        return true;
    }

    @RequestMapping(value = "/deleteItem", method = RequestMethod.POST)
    public boolean gotoUpdate(@RequestBody Riskcontrolanalyze riskcontrolanalyze) {
        List<Riskcontrolanalyzeitem> list = riskcontrolanalyze.getmAnalyzeItem();
        if (list.size() > 0) {
            for (Riskcontrolanalyzeitem riskcontrolanalyzeitem : list) {
                riskcontrolanalyzeitemService.deleteitemByAnalyzeID(riskcontrolanalyzeitem.getItemID());
            }
        }
        return true;
    }


    @RequestMapping(value = "/gotoUpdate/{manalyzeid}", method = RequestMethod.POST)
    public boolean gotoUpdate(@PathVariable("manalyzeid") Integer manalyzeid, HttpServletRequest request) {
        request.getSession().setAttribute("manalyzeid", manalyzeid);
        request.getSession().setAttribute("status", 1);
        return true;
    }

    //根据id获取效果分析
    @RequestMapping(value = "/getAnalyzebyid", method = RequestMethod.POST)
    public Object getAnalyzebyid(HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        Integer manalyzeid = (Integer) request.getSession().getAttribute("manalyzeid");
        if (manalyzeid == 0 || manalyzeid == null) {
            Riskcontrolanalyze riskcontrolanalyze = new Riskcontrolanalyze();
            riskcontrolanalyze.setCoalMineName(framework.getFrameWorkName());
            riskcontrolanalyze.setFrameWorkID(framework.getFramewordID());
            riskcontrolanalyze.setMAnalyzeID(null);
            return riskcontrolanalyze;
        } else {
            return riskcontrolanalyzeService.getRiskcontrolanalyze(manalyzeid);
        }
    }
    //跳转到管控效果分析维护模块调用的方法
    @RequestMapping(value = "/initAnalzeAdd", method = RequestMethod.POST)
    public void initAnalzeAdd(HttpServletRequest request) {
        Integer status = (Integer) request.getSession().getAttribute("status");
        if(status>0){
            getAnalyzebyid(request);
        }else{
            getMainData(request);
        }
    }

    @RequestMapping(value = "/getAnalyzeConclusion", method = RequestMethod.GET)
    public Object getAnalyzeConclusion(Integer checkYear, Integer checkMonth, String MajorType, HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        String frameWorkID = framework.getFramewordID();
        List<String> info = riskcontrolanalyzeService.getAnalyzeConclusion(frameWorkID, checkYear, checkMonth, MajorType);
        return info;
    }

    @RequestMapping(value = "/getAutoList", method = RequestMethod.POST)
    public Object getAutoList(Integer checkYear, Integer checkMonth, String MajorType, HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        String frameWorkID = framework.getFramewordID();

        return riskcontrolanalyzeitemService.getItemByCheck(frameWorkID, checkYear, checkMonth, MajorType);

    }

    @RequestMapping(value = "/getOutOfControlRiskAnalyze", method = RequestMethod.POST)
    @ResponseBody
    public Object getOutOfControlRiskAnalyze(String riskName, HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        String frameWorkID = framework.getFramewordID();

        return riskAnalyzeService.getOutOfControlRiskAnalyze(frameWorkID, riskName);

    }
    @RequestMapping(value = "/getOutofControlByLostItemIDs", method = RequestMethod.POST)
    @ResponseBody
    public Object getOutofControlByLostItemIDs(String LostItemIDs, HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        String frameWorkID = framework.getFramewordID();
        if(LostItemIDs==null){
            return 0;
        }else{
            String[] arr=LostItemIDs.split(",");
            return riskAnalyzeService.getOutofControlByLostItemIDs(frameWorkID, arr);
        }
    }

    @RequestMapping(value = "/checkData", method = RequestMethod.POST)
    public Boolean checkData(String checkYear, String checkMonth, String majorType, HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        String frameWorkID = framework.getFramewordID();
        String frameWorkName = framework.getFrameWorkName();
        String startTime = checkYear + "-" + checkMonth;
        String endTime = checkYear + "-" + checkMonth;
        List<Riskcontrolanalyze> list = riskcontrolanalyzeService.checkData(frameWorkID, frameWorkName, startTime, endTime, majorType);
        if (list.size() > 0) {
            return false;
        } else {
            return true;
        }
    }

    @RequestMapping(value = "/getExcell", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcell(String ExcellID, String ExcellName,
                          String createName, String majorType,HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html;charset=UTF-8");
        try {
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
            HSSFCellStyle style = (HSSFCellStyle) wb.createCellStyle();
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
            HSSFCellStyle style1 = (HSSFCellStyle) wb.createCellStyle();
            style1.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 下边框
            style1.setBorderLeft(HSSFCellStyle.BORDER_THIN);// 左边框
            style1.setBorderTop(HSSFCellStyle.BORDER_THIN);// 上边框
            style1.setBorderRight(HSSFCellStyle.BORDER_THIN);// 右边框
            style1.setWrapText(true);
            HSSFCell cell = row.createCell((short) 0);
            cell.setCellValue("序号");
            cell.setCellStyle(style);
            cell = row.createCell((short) 1);
            cell.setCellValue("创建人部门");
            cell.setCellStyle(style);
            cell = row.createCell((short) 2);
            cell.setCellValue("创建人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 3);
            cell.setCellValue("计划名称");
            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("专业类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 5);
            cell.setCellValue("频次");
            cell.setCellStyle(style);
//            cell = row.createCell((short) 6);
//            cell.setCellValue("危险程度");
//            cell.setCellStyle(style);
            cell = row.createCell((short) 6);
            cell.setCellValue("管控情况描述");
            cell.setCellStyle(style);
            cell = row.createCell((short) 7);
            cell.setCellValue("状态");
            cell.setCellStyle(style);


            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            Riskcontrolanalyze riskcontrolanalyze1 = new Riskcontrolanalyze();
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            riskcontrolanalyze1.setFrameWorkID(framework.getFramewordID());
            riskcontrolanalyze1.setCoalMineName(framework.getFrameWorkName());
            riskcontrolanalyze1.setCreaterName(createName);
            riskcontrolanalyze1.setMajorType(majorType);
            List<Riskcontrolanalyze> riskcontrolanalyzeList = riskcontrolanalyzeService.getRiskcontrolanalyzeData(riskcontrolanalyze1);
            for (int i = 0; i < riskcontrolanalyzeList.size(); i++) {
                row = sheet.createRow((int) i + 1);
                Riskcontrolanalyze riskcontrolanalyze = (Riskcontrolanalyze) riskcontrolanalyzeList.get(i);
                // 第四步，创建单元格，并设置值
                row.createCell(0).setCellValue(i + 1);
                row.createCell(1).setCellValue(riskcontrolanalyze.getCreateUnitName());
                row.createCell(2).setCellValue(riskcontrolanalyze.getCreaterName());
                row.createCell(3).setCellValue(riskcontrolanalyze.getName());
                row.createCell(4).setCellValue(riskcontrolanalyze.getMajorType());
                row.createCell(5).setCellValue(riskcontrolanalyze.getFrequency());
                row.createCell(6).setCellValue(riskcontrolanalyze.getReviews());

                if (riskcontrolanalyze.getStatus()) {

                    row.createCell(7).setCellValue("已分析");

                } else {
                    row.createCell(7).setCellValue("未分析");


                }
                Iterator<Cell> iterator = row.cellIterator();
                while (iterator.hasNext()) {
                    Cell next = iterator.next();
                    next.setCellStyle(style1);
                }
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

    @RequestMapping(value = "/UpdateStatus/{lostControlItemID}/{status}")
    @ResponseBody
    public Boolean UpdateStatus(@PathVariable("lostControlItemID") Integer lostControlItemID, @PathVariable("status") Boolean status, HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        String framworkID = framework.getFramewordID();
        Risksiteoutofcontrolitem risksiteoutofcontrolitem = risksiteoutofcontrolitemService.getRisksiteoutofcontrolitem(lostControlItemID);
        Risksiteoutofcontrol risksiteoutofcontrol = risksiteoutofcontrolService.getRisksiteoutofcontrol(risksiteoutofcontrolitem.getCheckRecordID());
        risksiteoutofcontrol.setStatus(false);
        risksiteoutofcontrolService.updateRisksiteoutofcontrol(risksiteoutofcontrol);
        return riskcontrolanalyzeitemService.changeOutofControlStatusISover(status, lostControlItemID, framworkID);
    }

    @RequestMapping(value = "/UpdateStatus1")
    @ResponseBody
    public Integer UpdateStatus1(@RequestBody Riskcontrolanalyzeitem riskcontrolanalyzeitem) {
        //如果是隐患
        Htdetail htdetail = htdetailService.getHtdetail(riskcontrolanalyzeitem.getoHiddenTroubleID());
        if (htdetail.getCurrentStep() != null) {
            //当班处理或者隐患销号了
            if (htdetail.getFDangBanChuLi() || htdetail.getCurrentStep().getFStepName().contains("AUDIT")) {
                riskcontrolanalyzeitemService.changeOutofControlStatusISover(false, riskcontrolanalyzeitem.getLostControlItemID(), riskcontrolanalyzeitem.getFrameWorkID());
                return 1;
            }
        }
        return 1;
    }

    @RequestMapping(value = "/getNotAnalyzePlane/{checkYear}/{checkMonth}/{MajorType}/{monthPlanFrequency}")
    @ResponseBody
    public Object getNotAnalyzePlane(@PathVariable("checkYear") Integer checkYear,
                                     @PathVariable("checkMonth") Integer checkMonth, @PathVariable("MajorType") String MajorType,@PathVariable("monthPlanFrequency") String monthPlanFrequency ,HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        String frameWorkID = framework.getFramewordID();
        if (MajorType.equals("null")) {
            MajorType = "";
        }
        if (monthPlanFrequency.equals("null")) {
            monthPlanFrequency = "";
        }
        return riskcontrolanalyzeService.getNotAnalyzePlane(frameWorkID, checkYear, checkMonth, MajorType,monthPlanFrequency);
//        return riskcontrolanalyzeService.getNotAnalyzePlaneWithallItem(frameWorkID, checkYear, checkMonth, MajorType,monthPlanFrequency);
    }

    @RequestMapping(value = "/getNotAnalyzePlanebyallPlan/{checkYear}/{checkMonth}/{MajorType}/{monthPlanFrequency}")
    @ResponseBody
    public Object getNotAnalyzePlanebyallPlan(@PathVariable("checkYear") Integer checkYear,
                                              @PathVariable("checkMonth") Integer checkMonth,
                                              @PathVariable("MajorType") String MajorType,
                                              @PathVariable("monthPlanFrequency") String monthPlanFrequency ,
                                              HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        String frameWorkID = framework.getFramewordID();
        if (MajorType.equals("null")) {
            MajorType = "";
        }
        if (monthPlanFrequency.equals("null")) {
            monthPlanFrequency = "";
        }
        return riskcontrolanalyzeService.getNotAnalyzePlanAllstatus(frameWorkID, checkYear, checkMonth, MajorType,monthPlanFrequency);
//        return riskcontrolanalyzeService.getNotAnalyzePlaneWithallItem(frameWorkID, checkYear, checkMonth, MajorType,monthPlanFrequency);
    }

    //获取效果分析添加中的管控计划信息
    @RequestMapping(value = "/getNotAnalyzePlaneByPingMei/{checkYear}/{checkMonth}/{MajorType}/{monthPlanFrequency}")
    @ResponseBody
    public Object getNotAnalyzePlaneByPingMei(@PathVariable("checkYear") Integer checkYear,
                                     @PathVariable("checkMonth") Integer checkMonth, @PathVariable("MajorType") String MajorType,@PathVariable("monthPlanFrequency") String monthPlanFrequency ,HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        String frameWorkID = framework.getFramewordID();
        if (MajorType.equals("null")) {
            MajorType = "";
        }
        if (monthPlanFrequency.equals("null")) {
            monthPlanFrequency = "";
        }
        return riskcontrolanalyzeService.getNotAnalyzePlaneByPingMei(frameWorkID, checkYear, checkMonth, MajorType,monthPlanFrequency);
    }

    @RequestMapping(value = "/goToNew/{monthplaneID}")
    @ResponseBody
    public Boolean goToNew(@PathVariable("monthplaneID") Integer monthplaneID, HttpServletRequest request) {
        request.getSession().setAttribute("monthplaneID", monthplaneID);
        request.getSession().setAttribute("status", 0);
        return true;
    }

    @RequestMapping(value = "/getMainData")
    @ResponseBody
    public Object getMainData(HttpServletRequest request) {
        Integer monthplaneID = (Integer) request.getSession().getAttribute("monthplaneID");
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        Emp emp = (Emp) request.getSession().getAttribute("emp");
        Riskcontrolanalyze riskcontrolanalyze = new Riskcontrolanalyze();
        Riskcontrolanalyze riskcontrolanalyze1 = new Riskcontrolanalyze();
        Integer createrID = emp.getfEmp_ID_Auto();
        String createrName = emp.getFEmp_Name();
        Integer createUnitID = emp.getfOrgID_Auto();
        String createUnitName = emp.getFOrg_Name();
        riskcontrolanalyze.setFrameWorkID(framework.getFramewordID());
        riskcontrolanalyze.setCoalMineName(framework.getFrameWorkName());
        riskcontrolanalyze.setMonthPlaneID(monthplaneID);
        List<Riskcontrolanalyze> list1 = riskcontrolanalyzeService.getRiskcontrolanalyzeData(riskcontrolanalyze);
        if(list1!=null && list1.size()>0){
            return list1.get(0);
        }
        //这是个保存方法，一点新建就保存也是可以了-。-
            Integer result= riskcontrolanalyzeService.AnalyzeMonthPlane(createrID,createrName,createUnitID,createUnitName,monthplaneID);

            List<Riskcontrolanalyze> list2 = riskcontrolanalyzeService.getRiskcontrolanalyzeData(riskcontrolanalyze);
            if(list2!=null && list2.size()>0){
                riskcontrolanalyze1 = list2.get(0);
                riskcontrolanalyzeService.AnalyzeItemByOutofControl(monthplaneID,riskcontrolanalyze1.getMAnalyzeID());
                return riskcontrolanalyzeService.getRiskcontrolanalyze(riskcontrolanalyze1.getMAnalyzeID());
            }else{
                return null;
            }
    }
    //根据月计划ID获取月计划
    @RequestMapping(value = "/getMonthPlaneByID")
    @ResponseBody
    public Object getMonthPlaneByID(Integer monthplaneID) {
        return riskcontrolplanebymonthService.getRiskcontrolplanebymonth(monthplaneID);
    }

    @RequestMapping(value = "/getMainDataByHeNanPingMei")
    @ResponseBody
    public Object getMainDataByHeNanPingMei(HttpServletRequest request) {
        Integer monthplaneID = (Integer) request.getSession().getAttribute("monthplaneID");
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        Emp emp = (Emp) request.getSession().getAttribute("emp");
        Riskcontrolanalyze riskcontrolanalyze = new Riskcontrolanalyze();
        Integer createrID = emp.getfEmp_ID_Auto();
        String createrName = emp.getFEmp_Name();
        Integer createUnitID = emp.getfOrgID_Auto();
        String createUnitName = emp.getFOrg_Name();
        riskcontrolanalyze.setFrameWorkID(framework.getFramewordID());
        riskcontrolanalyze.setCoalMineName(framework.getFrameWorkName());
        riskcontrolanalyze.setMonthPlaneID(monthplaneID);
        riskcontrolanalyze.setCreaterID(createrID);
        riskcontrolanalyze.setCreaterName(createrName);
        riskcontrolanalyze.setCreateUnitID(createUnitID);
        riskcontrolanalyze.setCreateUnitName(createUnitName);
        return riskcontrolanalyze;
    }

    @RequestMapping(value = "/getExcellByMangLai", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcellByMangLai(String ExcellID, String ExcellName,
                          String createName, String majorType,HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html;charset=UTF-8");
        try {
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
            HSSFCellStyle style = (HSSFCellStyle) wb.createCellStyle();
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
            HSSFCellStyle style1 = (HSSFCellStyle) wb.createCellStyle();
            style1.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 下边框
            style1.setBorderLeft(HSSFCellStyle.BORDER_THIN);// 左边框
            style1.setBorderTop(HSSFCellStyle.BORDER_THIN);// 上边框
            style1.setBorderRight(HSSFCellStyle.BORDER_THIN);// 右边框
            style1.setWrapText(true);
            HSSFCell cell = row.createCell((short) 0);
            cell.setCellValue("序号");
            cell.setCellStyle(style);
            cell = row.createCell((short) 1);
            cell.setCellValue("创建人部门");
            cell.setCellStyle(style);
            cell = row.createCell((short) 2);
            cell.setCellValue("创建人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 3);
            cell.setCellValue("计划名称");
            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("专业类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 5);
            cell.setCellValue("频次");
            cell.setCellStyle(style);
//            cell = row.createCell((short) 6);
//            cell.setCellValue("危险程度");
//            cell.setCellStyle(style);
            cell = row.createCell((short) 6);
            cell.setCellValue("管控情况描述");
            cell.setCellStyle(style);

            cell = row.createCell((short) 7);
            cell.setCellValue("管控效果分析");
            cell.setCellStyle(style);
            cell = row.createCell((short) 8);
            cell.setCellValue("状态");
            cell.setCellStyle(style);


            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            Riskcontrolanalyze riskcontrolanalyze1 = new Riskcontrolanalyze();
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            riskcontrolanalyze1.setFrameWorkID(framework.getFramewordID());
            riskcontrolanalyze1.setCoalMineName(framework.getFrameWorkName());
            riskcontrolanalyze1.setCreaterName(createName);
            riskcontrolanalyze1.setMajorType(majorType);
            List<Riskcontrolanalyze> riskcontrolanalyzeList = riskcontrolanalyzeService.getRiskcontrolanalyzeData(riskcontrolanalyze1);
            for (int i = 0; i < riskcontrolanalyzeList.size(); i++) {
                row = sheet.createRow((int) i + 1);
                Riskcontrolanalyze riskcontrolanalyze = (Riskcontrolanalyze) riskcontrolanalyzeList.get(i);
                // 第四步，创建单元格，并设置值
                row.createCell(0).setCellValue(i + 1);
                row.createCell(1).setCellValue(riskcontrolanalyze.getCreateUnitName());
                row.createCell(2).setCellValue(riskcontrolanalyze.getCreaterName());
                row.createCell(3).setCellValue(riskcontrolanalyze.getName());
                row.createCell(4).setCellValue(riskcontrolanalyze.getMajorType());
                row.createCell(5).setCellValue(riskcontrolanalyze.getFrequency());
                row.createCell(6).setCellValue(riskcontrolanalyze.getReviews());
                row.createCell(7).setCellValue(riskcontrolanalyze.getDescription());

                if (riskcontrolanalyze.getStatus()) {

                    row.createCell(8).setCellValue("已分析");

                } else {
                    row.createCell(8).setCellValue("未分析");


                }
                Iterator<Cell> iterator = row.cellIterator();
                while (iterator.hasNext()) {
                    Cell next = iterator.next();
                    next.setCellStyle(style1);
                }
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


    /**
     * 芒来特殊需求，要求显示失控和未失控的风险
     * @param request
     * @return
     */
    @RequestMapping(value = "/getMainDatabyallStatus")
    @ResponseBody
    public Object getMainDatabyallStatus(HttpServletRequest request) {
        Integer monthplaneID = (Integer) request.getSession().getAttribute("monthplaneID");
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        Emp emp = (Emp) request.getSession().getAttribute("emp");
        Riskcontrolanalyze riskcontrolanalyze = new Riskcontrolanalyze();
        Riskcontrolanalyze riskcontrolanalyze1 = new Riskcontrolanalyze();
        Integer createrID = emp.getfEmp_ID_Auto();
        String createrName = emp.getFEmp_Name();
        Integer createUnitID = emp.getfOrgID_Auto();
        String createUnitName = emp.getFOrg_Name();
        riskcontrolanalyze.setFrameWorkID(framework.getFramewordID());
        riskcontrolanalyze.setCoalMineName(framework.getFrameWorkName());
        riskcontrolanalyze.setMonthPlaneID(monthplaneID);
        List<Riskcontrolanalyze> list1 = riskcontrolanalyzeService.getRiskcontrolanalyzeData(riskcontrolanalyze);
        if(list1!=null && list1.size()>0){
            return list1.get(0);
        }
        //这是个保存方法，一点新建就保存也是可以了-。-
        Integer result= riskcontrolanalyzeService.AnalyzeMonthPlane(createrID,createrName,createUnitID,createUnitName,monthplaneID);

        List<Riskcontrolanalyze> list2 = riskcontrolanalyzeService.getRiskcontrolanalyzeData(riskcontrolanalyze);
        if(list2!=null && list2.size()>0){
            riskcontrolanalyze1 = list2.get(0);
            riskcontrolanalyzeService.AnalyzeItemallStatus(monthplaneID,riskcontrolanalyze1.getMAnalyzeID());
            return riskcontrolanalyzeService.getRiskcontrolanalyze(riskcontrolanalyze1.getMAnalyzeID());
        }else{
            return null;
        }
    }
    @RequestMapping(value = "/getNotAnalyzePlanebyallPlans/{checkYear}/{checkMonth}/{MajorType}/{monthPlanFrequency}")
    @ResponseBody
    public Object getNotAnalyzePlanebyallPlans(@PathVariable("checkYear") Integer checkYear,
                                              @PathVariable("checkMonth") Integer checkMonth,
                                              @PathVariable("MajorType") String MajorType,
                                              @PathVariable("monthPlanFrequency") String monthPlanFrequency ,
                                              HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        String frameWorkID = framework.getFramewordID();
        if (MajorType.equals("null")) {
            MajorType = "";
        }
        if (monthPlanFrequency.equals("null")) {
            monthPlanFrequency = "";
        }
        return riskcontrolanalyzeService.getNotAnalyzePlanAllstatuss(frameWorkID, checkYear, checkMonth, MajorType,monthPlanFrequency);
//        return riskcontrolanalyzeService.getNotAnalyzePlaneWithallItem(frameWorkID, checkYear, checkMonth, MajorType,monthPlanFrequency);
    }

    @RequestMapping(value = "/getNotAnalyzePlanes/{checkYear}/{checkMonth}/{MajorType}/{monthPlanFrequency}")
    @ResponseBody
    public Object getNotAnalyzePlanes(@PathVariable("checkYear") Integer checkYear,
                                     @PathVariable("checkMonth") Integer checkMonth, @PathVariable("MajorType") String MajorType,@PathVariable("monthPlanFrequency") String monthPlanFrequency ,HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        String frameWorkID = framework.getFramewordID();
        if (MajorType.equals("null")) {
            MajorType = "";
        }
        if (monthPlanFrequency.equals("null")) {
            monthPlanFrequency = "";
        }
        return riskcontrolanalyzeService.getNotAnalyzePlanes(frameWorkID, checkYear, checkMonth, MajorType,monthPlanFrequency);
//        return riskcontrolanalyzeService.getNotAnalyzePlaneWithallItem(frameWorkID, checkYear, checkMonth, MajorType,monthPlanFrequency);
    }

}