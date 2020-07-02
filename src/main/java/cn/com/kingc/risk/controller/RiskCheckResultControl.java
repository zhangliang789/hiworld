package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.*;
import cn.com.kingc.risk.util.Properties;
import cn.com.mkaq.instantmessaging.service.SystemMessageService;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/**
 * @author admistrator
 * @version 1.0
 * @created 27-8月-2017 11:15:39
 */
@RestController
@RequestMapping("/RiskCheckResult")
public class RiskCheckResultControl {

    @Autowired
    RisksiteoutofcontrolService risksiteoutofcontrolService;

    @Autowired
    RisksiteoutofcontrolitemService risksiteoutofcontrolitemService;

    @Autowired
    RisksiteoutofcontrolattachmentService risksiteoutofcontrolattachmentService;

    @Autowired
    RiskcontrolplanebymonthService riskcontrolplanebymonthService;

    @Autowired
    RiskcontrolanalyzeitemService riskcontrolanalyzeitemService;

    @Autowired
    RiskcontrolplanebymonthitemService riskcontrolplanebymonthitemService;

    @Autowired
    private RisksiteService risksiteService;

    @Autowired
    private RiskhazardService riskhazardService;
    @Autowired
    private SystemMessageService systemMessageService;

    //获取一个空的危险源对象
    @RequestMapping(value = "/newHazards", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Risksiteoutofcontrol对象", response = Risksiteoutofcontrol.class, httpMethod = "GET", notes = "获取一个空的Risksiteoutofcontrol对象")
    public Object newHazards(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Riskhazard riskhazard = new Riskhazard();
        riskhazard.setFrameWorkID(framework.getFramewordID());
        riskhazard.setCoalMineName(framework.getFrameWorkName());
        List<Riskcontrolmeasure> list = new ArrayList<Riskcontrolmeasure>();
        Riskcontrolmeasure riskcontrolmeasure = new Riskcontrolmeasure();
        riskcontrolmeasure.setFrameWorkID(framework.getFramewordID());
        riskcontrolmeasure.setCoalMineName(framework.getFrameWorkName());
        list.add(riskcontrolmeasure);
        riskhazard.setmRiskControlMeasure(list);
        return riskhazard;
    }

    //获取一个空的Risksiteoutofcontrol对象
    @RequestMapping(value = "/newRisksiteoutofcontrol", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Risksiteoutofcontrol对象", response = Risksiteoutofcontrol.class, httpMethod = "GET", notes = "获取一个空的Risksiteoutofcontrol对象")
    public Object getNewRisksiteoutofcontrol(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Risksiteoutofcontrol risksiteoutofcontrol = new Risksiteoutofcontrol();
        risksiteoutofcontrol.setCoalMineName(framework.getFrameWorkName());
        risksiteoutofcontrol.setFrameWorkID(framework.getFramewordID());
        risksiteoutofcontrol.setCheckRecordID(null);
        return risksiteoutofcontrol;
    }

    //获取一个或者多个空的Risksiteoutofcontrol对象
    @RequestMapping(value = "/moreRisksiteoutofcontrol/{num}", method = RequestMethod.POST)
    public Object getMoreRisksiteoutofcontrol(@PathVariable("num") Integer num, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        List<Risksiteoutofcontrol> list = new ArrayList<Risksiteoutofcontrol>();
        for (int i = 0; i < num; i++) {
            Risksiteoutofcontrol risksiteoutofcontrol = new Risksiteoutofcontrol();
            risksiteoutofcontrol.setCoalMineName(framework.getFrameWorkName());
            risksiteoutofcontrol.setFrameWorkID(framework.getFramewordID());
            risksiteoutofcontrol.setCheckRecordID(null);
            List<Risksiteoutofcontrolitem> list1 = new ArrayList<Risksiteoutofcontrolitem>();
            risksiteoutofcontrol.setmControlitem(list1);
            list.add(risksiteoutofcontrol);
        }
        return list;
    }

    //获取一个空的Risksiteoutofcontrolitem对象
    @RequestMapping(value = "/newRisksiteoutofcontrolitem", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Risksiteoutofcontrolitem对象", response = Risksiteoutofcontrolitem.class, httpMethod = "GET", notes = "获取一个空的Risksiteoutofcontrolitem对象")
    public Object getNewRisksiteoutofcontrolitem(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Risksiteoutofcontrolitem risksiteoutofcontrolitem = new Risksiteoutofcontrolitem();
        List<Risksiteoutofcontrolattachment> list = new ArrayList<Risksiteoutofcontrolattachment>();
        risksiteoutofcontrolitem.setCoalMineName(framework.getFrameWorkName());
        risksiteoutofcontrolitem.setFrameWorkID(framework.getFramewordID());
        risksiteoutofcontrolitem.setItemID(null);
        risksiteoutofcontrolitem.setAccthes(list);
        return risksiteoutofcontrolitem;
    }

    //获取一个空的NewRisksiteoutofcontrolattachment对象
    @RequestMapping(value = "/newRisksiteoutofcontrolattachment", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Risksiteoutofcontrolattachment对象", response = Risksiteoutofcontrolattachment.class, httpMethod = "GET", notes = "获取一个空的Risksiteoutofcontrolattachment对象")
    public Object getNewRisksiteoutofcontrolattachment(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Risksiteoutofcontrolattachment risksiteoutofcontrolattachment = new Risksiteoutofcontrolattachment();
        risksiteoutofcontrolattachment.setCoalMineName(framework.getFrameWorkName());
        risksiteoutofcontrolattachment.setFrameWorkID(framework.getFramewordID());
        risksiteoutofcontrolattachment.setAttchID(null);
        return risksiteoutofcontrolattachment;
    }

    //根据主键获取Risksiteoutofcontrol
    @RequestMapping(value = "/getRisksiteoutofcontrol/{checkRecordID}", method = RequestMethod.POST)
    @ApiOperation(value = "根据主键获取Risksiteoutofcontrol", httpMethod = "POST", notes = "根据主键获取Risksiteoutofcontrol")
    public Object getRisksiteoutofcontrol(@PathVariable("checkRecordID") Integer checkRecordID) {
        return risksiteoutofcontrolService.getRisksiteoutofcontrol(checkRecordID);
    }

    //推送消息
    @RequestMapping(value = "/systemMessage", method = RequestMethod.POST)
    public void systemMessage(String checkTime,String riskName,String dutyName,String dutyID,String checker,String problem,HttpServletRequest request) {
        try{

            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            if(dutyName==""||dutyName==null||dutyID==""||dutyID==null){

            }else{
                systemMessageService.sendMessage(
                        "CoalRisk",
                        framework.getFramewordID(),
                        dutyID,
                        dutyName,
                        checkTime+",由"+checker+"对"+riskName+"现场检查出如下问题："+problem+"请及时落实整改",
                        1);

            }
        }catch(Exception ex){
            ex.printStackTrace();

        }
    }


    //获取风险管控清单共有多少页
    @RequestMapping(value = "/PageCount", method = RequestMethod.POST)
    @ApiOperation(value = "获取失控危险源信息少页", httpMethod = "POST", notes = "风险管控计划共有多少页")
    public Object getPageCount(@RequestBody Risksiteoutofcontrol risksiteoutofcontrol) {
        try {
            int count = risksiteoutofcontrolService.getRisksiteoutofcontrolCountByRisksiteoutofcontrol(risksiteoutofcontrol);
            int page = count / risksiteoutofcontrol.getPagesize();
            int ls = count % risksiteoutofcontrol.getPagesize();
            if (ls > 0) {
                page++;
            }
            return page;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }


    //分页获取风险管控清单数据
    @RequestMapping(value = "/Page", method = RequestMethod.POST)
    @ApiOperation(value = "分页获取失控危险源信息，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取失控危险源信息，返回List结合")
    public Object getRiskSiteByPage(@RequestBody Risksiteoutofcontrol risksiteoutofcontrol) {
        try {
            List<Risksiteoutofcontrol> risksiteoutofcontrolList = risksiteoutofcontrolService.getRisksiteoutofcontrolByPageAndRisksiteoutofcontrol(risksiteoutofcontrol);
            //因为LazyLoad
            // 遍历属性以获取值
            for (Risksiteoutofcontrol rs : risksiteoutofcontrolList) {
                rs.getCoalMineName();
                List<Risksiteoutofcontrolitem> risksiteItemList = rs.getmControlitem();
                if (risksiteItemList != null && risksiteItemList.size() > 0) {
                    for (Risksiteoutofcontrolitem item : risksiteItemList) {
                        item.getAccthes().size();
                    }
                }
            }
            return risksiteoutofcontrolList;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //修改现场检查结果子条目
    @RequestMapping(value = "/updateOutOfControlitem", method = RequestMethod.POST)
    @ApiOperation(value = "修改现场检查结果子条目", response = List.class, httpMethod = "POST", notes = "修改现场检查结果子条目")
    public Boolean updateOutOfControlitem(@RequestBody Risksiteoutofcontrolitem risksiteoutofcontrolitem, HttpServletRequest request) {
        if(risksiteoutofcontrolitem.getAccthes().size() >0){
            for(int i=0;i<risksiteoutofcontrolitem.getAccthes().size();i++){
                if(risksiteoutofcontrolitem.getAccthes().get(i).getAttchID()==null){
                    risksiteoutofcontrolattachmentService.addRisksiteoutofcontrolattachment(risksiteoutofcontrolitem.getAccthes().get(i));
                }
            }
        }
        return risksiteoutofcontrolitemService.updateRisksiteoutofcontrolitem(risksiteoutofcontrolitem);
    }


    //检查该条现场检查结果可不可以被修改
    @RequestMapping(value = "/checkUnable", method = RequestMethod.POST)
    @ApiOperation(value = "删除一条风险管控清单数据", response = List.class, httpMethod = "POST", notes = "删除一条风险管控清单数据")
    public Boolean checkUnable(@RequestBody Risksiteoutofcontrolitem risksiteoutofcontrolitem, HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        Riskcontrolanalyzeitem riskcontrolanalyzeitem = new Riskcontrolanalyzeitem();
        riskcontrolanalyzeitem.setFrameWorkID(framework.getFramewordID());
        riskcontrolanalyzeitem.setCoalMineName(framework.getFrameWorkName());
        riskcontrolanalyzeitem.setLostControlItemID(risksiteoutofcontrolitem.getItemID());
        int count = riskcontrolanalyzeitemService.getRiskcontrolanalyzeitemCountByRiskcontrolanalyzeitem(riskcontrolanalyzeitem);
        if (count > 0) {
            return false;
        } else {
            return true;
        }
    }

    //删除一条风险管控清单数据
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ApiOperation(value = "删除一条风险管控清单数据", response = List.class, httpMethod = "POST", notes = "删除一条风险管控清单数据")
    public Boolean deteleRiskSiteByPage(@RequestBody Risksiteoutofcontrol risksiteoutofcontrol) {
           return risksiteoutofcontrolService.deleteRisksiteoutofcontrol(risksiteoutofcontrol);
    }


    /**
     * 删除检查问题
     *
     * @param mItem
     */
    @RequestMapping(value = "/removeCheckResultItem", method = RequestMethod.DELETE)
    @ApiOperation(value = "删除失控条目对象", response = boolean.class, httpMethod = "DELETE", notes = "删除失控条目对象")
    public boolean removeCheckResultItem(@RequestBody Risksiteoutofcontrolitem mItem) {

        return risksiteoutofcontrolitemService.deleteRisksiteoutofcontrolitem(mItem);
    }

    /**
     * @param mLostRiskSite
     */
    @RequestMapping(value = "/saveRisksiteoutofcontrol", method = RequestMethod.POST)
    @ApiOperation(value = "保存失控风险点及其Item里边的对象", response = boolean.class, httpMethod = "POST", notes = "新增失控风险点 显示失控危险源信息可以放到失控风险点的mControlitem里")
    @ResponseBody
    public Object saveRisksiteoutofcontrol(String mLostRiskSite) {
        try {
            Gson gson = new Gson();
            Type checkQuestionType = new TypeToken<List<Risksiteoutofcontrol>>() {
            }.getType();
            List<Risksiteoutofcontrol> _mLostRiskSite = gson.fromJson(mLostRiskSite, checkQuestionType);
            if (_mLostRiskSite != null && _mLostRiskSite.size() > 0) {
                for (Risksiteoutofcontrol outControl : _mLostRiskSite) {
                    //APP端上传成功后会删除本地数据
                    //所以服务端始终认为每次传上来的都是新的
//                    risksiteoutofcontrolService.saveRiskSiteOutOfControl(outControl);
                    risksiteoutofcontrolService.addRisksiteoutofcontrol(outControl);
                }
                return true;

            } else{
                return false;
            }

        } catch (Exception ex) {
            System.out.print(ex.getMessage());
            return false;
        }
    }

    /**
     * @param rsksiteoutofcontrol
     */
    @RequestMapping(value = "/updateRisksiteoutofcontrol", method = RequestMethod.POST)
    @ResponseBody
    public Object updateRisksiteoutofcontrol(@RequestBody Risksiteoutofcontrol rsksiteoutofcontrol) {
        try {
            risksiteoutofcontrolService.updateRisksiteoutofcontrol(rsksiteoutofcontrol);
            List<Risksiteoutofcontrolitem> list = rsksiteoutofcontrol.getmControlitem();
            for (Risksiteoutofcontrolitem risksiteoutofcontrolitem : list) {
                risksiteoutofcontrolitemService.updateRisksiteoutofcontrolitem(risksiteoutofcontrolitem);
            }
            return true;

        } catch (Exception ex) {
            return true;
        }
    }


    @RequestMapping(value = "/saveLostItem", method = RequestMethod.POST)
    @ApiOperation(value = "新增显示失控危险源信息", response = boolean.class, httpMethod = "POST", notes = "新增RiskSite对象")
    public boolean saveLostItem(@RequestBody Risksiteoutofcontrolitem risksiteoutofcontrolitem) {
        //如果存在就更新
        if (risksiteoutofcontrolitem != null && risksiteoutofcontrolitem.getItemID() > 0) {
            return risksiteoutofcontrolitemService.updateRisksiteoutofcontrolitem(risksiteoutofcontrolitem);
        } else {
            //不存在就插入
            return risksiteoutofcontrolitemService.addRisksiteoutofcontrolitem(risksiteoutofcontrolitem);
        }
    }

    //保存
    @RequestMapping(value = "/saveCheckResult", method = RequestMethod.POST)
    public boolean saveCheckResult(@RequestBody Risksiteoutofcontrol risksiteoutofcontrol) {
        //如果存在就更新
        return risksiteoutofcontrolService.saveRiskSiteOutOfControl(risksiteoutofcontrol);
    }

    //保存List
    @RequestMapping(value = "/saveCheckResultList", method = RequestMethod.POST)
    public boolean saveCheckResultList(@RequestBody List<Risksiteoutofcontrol> risksiteoutofcontrolList) {
        //如果存在就更新
        int a = 0;

        Riskcontrolplanebymonthitem riskcontrolplanebymonthitem = new Riskcontrolplanebymonthitem();
        try {
            for (Risksiteoutofcontrol risksiteoutofcontrol : risksiteoutofcontrolList) {
                if (risksiteoutofcontrol.getmControlitem().size() > 0) {
                    risksiteoutofcontrolService.addRisksiteoutofcontrol(risksiteoutofcontrol);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }


    /**
     * 保存附件
     *
     * @param attch
     */
    @RequestMapping(value = "/saveAttchByLostItem", method = RequestMethod.POST)
    @ApiOperation(value = "保存附件", response = boolean.class, httpMethod = "POST", notes = "保存附件")
    public boolean saveAttchByLostItem(@RequestBody Risksiteoutofcontrolattachment attch) {
        if (attch != null && attch.getCheckRecordID() > 0) {
            return risksiteoutofcontrolattachmentService.addRisksiteoutofcontrolattachment(attch);
        }
        return false;
    }

    @RequestMapping(value = "/updateRiskcontrolplanebymonthItemStatus/{frameWorkID}/{monthPlaneID}/{itemID}", method = RequestMethod.POST)
    @ApiOperation(value = "更新月度计划执行状态", response = boolean.class, httpMethod = "POST", notes = "在地图上标定风险点")
    Boolean updateRiskcontrolplanebymonthItemStatus(
            @PathVariable("frameWorkID") String frameWorkID,
            @PathVariable("monthPlaneID") Integer monthPlaneID,
            @PathVariable("itemID") Integer itemID) {
        return riskcontrolplanebymonthService.updateRiskcontrolplanebymonthItemStatus(
                frameWorkID,
                monthPlaneID,
                itemID) > 0 ? true : false;
    }

    /**
     * 在风险地图上标识失控风险点
     *
     * @param mLostRiskSite
     */
    @RequestMapping(value = "/showRiskLabelOnMap", method = RequestMethod.POST)
    @ApiOperation(value = "在地图上标定风险点", response = boolean.class, httpMethod = "POST", notes = "在地图上标定风险点")
    public void showRiskLabelOnMap(@RequestBody Risksiteoutofcontrol mLostRiskSite) {

    }

    //根据ID管控措施数据
    @RequestMapping(value = "/goToAdd/{checkRecordID}", method = RequestMethod.POST)
    public boolean goToAdd(@PathVariable("checkRecordID") Integer checkRecordID, HttpServletRequest request) {
        request.getSession().setAttribute("checkRecordID", checkRecordID);
        return true;
    }

    //跳转到检查结果新增页面
    @RequestMapping(value = "/goToNew/{monthplaneID}", method = RequestMethod.POST)
    public boolean goToNew(@PathVariable("monthplaneID") Integer monthplaneID, HttpServletRequest request) {
        request.getSession().setAttribute("monthplaneID", monthplaneID);
        return true;
    }

    //获取一级风险点根据选择的检查计划
    @RequestMapping(value = "/getRiskSiteByPlan", method = RequestMethod.POST)
    public Object getRiskSiteByPlan(HttpServletRequest request) {
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        try {
            Integer monthplaneID = (Integer) request.getSession().getAttribute("monthplaneID");
            Riskcontrolplanebymonth riskcontrolplanebymonth = riskcontrolplanebymonthService.getRiskcontrolplanebymonth(monthplaneID);
            return riskcontrolplanebymonth;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        Riskcontrolplanebymonth riskcontrolplanebymonth = new Riskcontrolplanebymonth();
        riskcontrolplanebymonth.setCoalMineName(framework.getFrameWorkName());
        riskcontrolplanebymonth.setFrameWorkID(framework.getFramewordID());
        return riskcontrolplanebymonth;
    }

    //根据一级风险点ID获取二三级
    @RequestMapping(value = "/getOtherRiskSiteByRiskSiteID/{riskSiteID}", method = RequestMethod.POST)
    public Object getOtherRiskSiteByRiskSiteID(@PathVariable("riskSiteID") Integer riskSiteID) {
        Risksite risksite = risksiteService.getRisksite(riskSiteID);
        return risksite;
    }

    //根据ID查危险源
    @RequestMapping(value = "/getHazards/{hazardID}", method = RequestMethod.POST)
    public Object getHazards(@PathVariable("hazardID") Integer hazardID) {
        Riskhazard riskhazard = riskhazardService.getRiskhazard(hazardID);
        return riskhazard;
    }


    @RequestMapping(value = "/getExcell", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcell(String ExcellID, String ExcellName,
                          String riskCheckTime, String majorType,
                          String createUnitName, String createName,
                          HttpServletResponse response, HttpServletRequest request) {
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
            cell.setCellValue("风险名称");
            cell.setCellStyle(style);
            cell = row.createCell((short) 2);
            cell.setCellValue("风险点类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 3);
            cell.setCellValue("风险描述");
            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("检查时间");
            cell.setCellStyle(style);
            cell = row.createCell((short) 5);
            cell.setCellValue("检查人部门");
            cell.setCellStyle(style);
//            cell = row.createCell((short) 6);
//            cell.setCellValue("危险程度");
//            cell.setCellStyle(style);
            cell = row.createCell((short) 6);
            cell.setCellValue("检查人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 7);
            cell.setCellValue("状态");
            cell.setCellStyle(style);

            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            Risksiteoutofcontrol risksiteoutofcontrol1 = new Risksiteoutofcontrol();
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            risksiteoutofcontrol1.setFrameWorkID(framework.getFramewordID());
            risksiteoutofcontrol1.setCoalMineName(framework.getFrameWorkName());
            risksiteoutofcontrol1.setCheckTime(riskCheckTime);
            risksiteoutofcontrol1.setMajorType(majorType);
            risksiteoutofcontrol1.setCreateUnitName(createUnitName);
            risksiteoutofcontrol1.setCreateName(createName);
            List<Risksiteoutofcontrol> risksiteoutofcontrolList = risksiteoutofcontrolService.getRisksiteoutofcontrolData(risksiteoutofcontrol1);
            for (int i = 0; i < risksiteoutofcontrolList.size(); i++) {
                row = sheet.createRow((int) i + 1);
                Risksiteoutofcontrol risksiteoutofcontrol = (Risksiteoutofcontrol) risksiteoutofcontrolList.get(i);
                // 第四步，创建单元格，并设置值
                row.createCell((short) 0).setCellValue(i + 1);
                row.createCell((short) 1).setCellValue(risksiteoutofcontrol.getmRiskSite().getName());
                row.createCell((short) 2).setCellValue(risksiteoutofcontrol.getmRiskSite().getRiskSiteType().getDescription());

                row.createCell((short) 3).setCellValue(risksiteoutofcontrol.getmRiskSite().getRiskDescription());

                row.createCell((short) 4).setCellValue(risksiteoutofcontrol.getCheckTime());
                row.createCell((short) 5).setCellValue(risksiteoutofcontrol.getCreateUnitName());
                row.createCell((short) 6).setCellValue(risksiteoutofcontrol.getCreateName());
                /*如果数据库status为空,设置为false*/
                if(risksiteoutofcontrol.getStatus()==null){
                    risksiteoutofcontrol.setStatus(false);
                }
                if (risksiteoutofcontrol.getStatus()) {

                    row.createCell((short) 7).setCellValue("失控");

                } else {

                    row.createCell((short) 7).setCellValue("未失控");

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

    @RequestMapping(value = "/UpdateMainStatus1")
    @ResponseBody
    public Boolean UpdateStatus(@RequestBody Risksiteoutofcontrol risksiteoutofcontrol, HttpServletRequest request) {
        return risksiteoutofcontrolService.updateRisksiteoutofcontrol(risksiteoutofcontrol);
    }

    @RequestMapping(value = "/deleteAttachMent")
    @ResponseBody
    public Boolean deleteAttachMent(Integer attchID) {
        return risksiteoutofcontrolattachmentService.deleteRisksiteoutofcontrolattachmentByID(attchID);
    }
    @RequestMapping(value = "/deleteupdateRisksiteoutofcontrolitem",method = RequestMethod.POST)
    @ResponseBody
    public Boolean deleteupdateRisksiteoutofcontrolitem(@RequestBody List<Risksiteoutofcontrolitem> mControlitem) {
        if(mControlitem!=null && mControlitem.size()>0){
            for (Risksiteoutofcontrolitem item:mControlitem) {
                risksiteoutofcontrolitemService.deleteRisksiteoutofcontrolitem(item);
            }
        }
        return true;
    }

}