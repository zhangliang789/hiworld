package cn.com.kingc.risk.controller;

import cn.com.kingc.group.xinjiangdbcontrol.service.CollierySubmitService;
import cn.com.kingc.hiddentrouble.model.Htdetail;
import cn.com.kingc.hiddentrouble.model.Htdetailallstep;
import cn.com.kingc.risk.dao.RiskleversettingDao;
import cn.com.kingc.risk.dao.RisksiteDao;
import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.*;
import cn.com.kingc.risk.util.Properties;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.util.CellRangeAddress;
import org.heart.common.utils.UtilsString;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * @author admistrator
 * @version 1.0
 * @created 27-8月-2017 11:15:36
 */
@RestController
@RequestMapping("/RiskAssessment")
public class RiskAssessmentControl {

    @Autowired
    private RiskleversettingDao riskleversettingDao;

    @Autowired
    RiskdegreeService riskdegreeService;

    @Autowired
    RiskhazardService riskhazardService;

    @Autowired
    RisksiteService risksiteService;

    @Autowired
    RiskcontrolmeasureService riskcontrolmeasureService;

    @Autowired
    RiskleversettingService riskleversettingService;
    @Autowired
    RisksiteoutofcontrolitemService risksiteoutofcontrolitemService;

    @Autowired
    private CollierySubmitService collierySubmitService;


    /**
     * 构建空对象
     */
    @RequestMapping(value = "/newRiskSite", method = RequestMethod.GET)
    @ApiOperation(value = "初始化查询界面", response = Object.class, httpMethod = "GET", notes = "构建空对象")
    public Object newRiskSite() {
        return new Risksite();
    }

    /**
     * 构建危险源空对象
     */
    @RequestMapping(value = "/newRiskhazard", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Riskhazard对象", response = Risksite.class, httpMethod = "GET", notes = "获取一个空的Riskhazard对象")
    public Object getNewRiskhazard(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Riskhazard riskhazard = new Riskhazard();
        riskhazard.setCoalMineName(framework.getFrameWorkName());
        riskhazard.setFrameWorkID(framework.getFramewordID());
        return riskhazard;
    }

    @RequestMapping(value = "/getNewRiskdegree", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Riskhazard对象", response = Risksite.class, httpMethod = "GET", notes = "获取一个空的Riskhazard对象")
    public Object getNewRiskdegree(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Riskdegree riskdegree = new Riskdegree();
        riskdegree.setCoalMineName(framework.getFrameWorkName());
        riskdegree.setFrameWorkID(framework.getFramewordID());
        return riskdegree;
    }

    //根据查询条件查询危险源
    @RequestMapping(value = "/getRiskdegreeList", method = RequestMethod.POST)
    @ApiOperation(value = "查询条件获取等级，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取风险管控清单数据，返回List结合")
    public Object getRiskdegreeList(@RequestBody Riskdegree riskdegree) {
        try {
            List<Riskdegree> riskdegreeList = riskdegreeService.getRiskdegreeData(riskdegree);

            return riskdegreeList;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/getNewRiskleversetting", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Riskhazard对象", response = Risksite.class, httpMethod = "GET", notes = "获取一个空的Riskhazard对象")
    public Object getNewRiskleversetting(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Riskleversetting riskleversetting = new Riskleversetting();
        riskleversetting.setCoalMineName(framework.getFrameWorkName());
        riskleversetting.setFrameWorkID(framework.getFramewordID());
        return riskleversetting;
    }

    //根据查询条件查询危险源
    @RequestMapping(value = "/getRiskleversettingList", method = RequestMethod.POST)
    @ApiOperation(value = "查询条件获取等级，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取风险管控清单数据，返回List结合")
    public Object getRiskleversettingList(@RequestBody Riskleversetting riskleversetting) {
        try {
            List<Riskleversetting> riskleversettingList = riskleversettingService.getRiskleversettingList(riskleversetting);

            return riskleversettingList;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    /**
     * 构建管控措施空对象
     */
    @RequestMapping(value = "/newRiskcontrolmeasure", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Riskcontrolmeasure对象", response = Risksite.class, httpMethod = "GET", notes = "获取一个空的Riskhazard对象")
    public Object getNewRiskcontrolmeasure(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Riskcontrolmeasure riskcontrolmeasure = new Riskcontrolmeasure();
        riskcontrolmeasure.setCoalMineName(framework.getFrameWorkName());
        riskcontrolmeasure.setFrameWorkID(framework.getFramewordID());
        return riskcontrolmeasure;
    }

    @RequestMapping(value = "/newRisksiteoutofcontrolitem", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Risksiteoutofcontrolitem对象", response = Risksite.class, httpMethod = "GET", notes = "获取一个空的Riskhazard对象")
    public Object getNewRisksiteoutofcontrolitem(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Risksiteoutofcontrolitem risksiteoutofcontrolitem = new Risksiteoutofcontrolitem();
        risksiteoutofcontrolitem.setCoalMineName(framework.getFrameWorkName());
        risksiteoutofcontrolitem.setFrameWorkID(framework.getFramewordID());
        return risksiteoutofcontrolitem;
    }

    //根据查询条件查询危险源
    @RequestMapping(value = "/getRisksiteoutofcontrolitemData", method = RequestMethod.POST)
    @ApiOperation(value = "查询条件获取管控措施，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取风险管控清单数据，返回List结合")
    public Object getRisksiteoutofcontrolitemData(@RequestBody Risksiteoutofcontrolitem risksiteoutofcontrolitem) {
        try {
            List<Risksiteoutofcontrolitem> risksiteoutofcontrolitemList = risksiteoutofcontrolitemService.getRisksiteoutofcontrolitemData(risksiteoutofcontrolitem);

            return risksiteoutofcontrolitemList;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //根据查询条件查询危险源
    @RequestMapping(value = "/getRiskcontrolmeasure", method = RequestMethod.POST)
    @ApiOperation(value = "查询条件获取管控措施，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取风险管控清单数据，返回List结合")
    public Object getRiskcontrolmeasure(@RequestBody Riskcontrolmeasure mriskcontrolmeasure) {
        try {
            List<Riskcontrolmeasure> riskcontrolmeasure = riskcontrolmeasureService.getRiskcontrolmeasureData(mriskcontrolmeasure);

            return riskcontrolmeasure;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/updateRisksite", method = RequestMethod.POST)
    @ResponseBody
    public Object updateRisksite(@RequestBody Risksite risksite) {
        return risksiteService.updateRisksite(risksite);
    }

    //根据查询条件查询危险源
    @RequestMapping(value = "/getRiskhazard", method = RequestMethod.POST)
    @ApiOperation(value = "查询条件获取风险风险点，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取风险管控清单数据，返回List结合")
    public Object getRiskSiteByPage(@RequestBody Riskhazard mriskhazard) {
        try {
            List<Riskhazard> riskhazard = riskhazardService.getRiskhazardData(mriskhazard);

            return riskhazard;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    /**
     * 根据hazardID获取危险源对象
     */
    @RequestMapping(value = "/getRiskhazard/{hazardID}", method = RequestMethod.GET)
    @ApiOperation(value = "根据危险源ID获取危险源对象", response = Riskhazard.class, httpMethod = "GET", notes = "获取危险源对象")
    public Riskhazard getRiskhazard(@ApiParam(name = "hazardID", value = "危险源ID") @PathVariable("hazardID") Integer hazardID) {
        Riskhazard riskhazard = riskhazardService.getRiskhazard(hazardID);
        if (riskhazard.getmRiskControlMeasure() != null) {
            // riskhazard.getmRiskControlMeasure().size();
        }
        return riskhazard;
    }

    /**
     * 评价危险源等级
     *
     * @param riskhazard
     */
    @RequestMapping(value = "/assessmentHazardLevel", method = RequestMethod.PUT)
    @ApiOperation(value = "评价危险源等级", response = Riskdegreeitem.class, httpMethod = "PUT", notes = "评价危险源等级,根据Hazard.getSseverity()严重程度为空判断，是用LEC还是用LS")
    public Riskdegreeitem assessmentHazardLevel(@RequestBody Riskhazard riskhazard) {
        Riskdegreeitem item = new Riskdegreeitem();
        String fullNumber = riskhazard.getRiskSiteFullNumber();
        //严重程度为空
        String methodName = "LEC";
        if (riskhazard.getSseverity() == 0 || riskhazard.getSseverity() == null) {
            //则采用LEC法
            riskhazard.setDriskValue(riskhazard.getLpossibility() * riskhazard.getEexpose() * riskhazard.getClossConsequence());
        } else {
            //采用LS法
            riskhazard.setRiskSiteFullNumber(null);
            riskhazard.setDriskValue(riskhazard.getLpossibility() * riskhazard.getSseverity());
            methodName = "LS";
        }

        //根据危险源评价方法
        //调用企业风险评价方法和设置的风险等级值

        Riskdegree riskdegree = riskdegreeService.getRiskdegreeByMethod(riskhazard.getFrameWorkID(), methodName);

        if (riskdegree != null && riskdegree.getmRiskdegreeitems().size() > 0) {
            //分级风险值判断哪个等级
            item = riskdegree.checkRiskValue(riskhazard.getDriskValue());
            if (item != null) {

                //根据等级更新危险源属性
                riskhazard.setRiskLevelSettingID(item.getRiskLevelSettingID());
                //评价过了
                riskhazard.setStatus(true);
                //同步数据库
                riskhazardService.updateRiskhazard(riskhazard);
                riskhazard.setRiskSiteFullNumber(fullNumber);
                riskhazardService.updateRiskSiteStatusByRiskhazard(riskhazard);
            }
        }

        //校验该条风险数据是否被上报
        Riskhazard r = riskhazardService.getRiskhazard(riskhazard.getHazardID());
        if (r != null && UtilsString.equals(r.getIsSubmit(), Riskhazard.SUBMIT)) {
            /*查询风险等级*/
            Riskleversetting riskleversetting = riskleversettingDao.getRiskleversetting(riskhazard.getRiskLevelSettingID());
            if (riskleversetting != null) {
                collierySubmitService.updateRiskLeave(String.valueOf(riskhazard.getHazardID()), riskleversetting.getRiskLevel());
            }
        }

        return item;
    }

    /**
     * 评价风险点
     *
     * @param mRiskSite
     */
    @RequestMapping(value = "/getHazardRiskSite", method = RequestMethod.POST)
    @ApiOperation(value = "获取风险的下的危险源评价情况", response = Object.class, httpMethod = "POST", notes = "获取风险的下的危险源评价情况")
    public Object getHazardRiskSite(@RequestBody Risksite mRiskSite) {
        Map<String, Integer> result = new HashMap<>();
        result.put("未评价", 0);
        //根据设定的风险等级构造
        Riskdegree riskdegree = riskdegreeService.getRiskdegreeByMethod(mRiskSite.getFrameWorkID(), "LS");
        if (riskdegree != null && riskdegree.getmRiskdegreeitems() != null) {
            for (Riskdegreeitem riskdegreeitem : riskdegree.getmRiskdegreeitems()) {
                Riskleversetting riskleversetting = riskleversettingService.getRiskleversetting(riskdegreeitem.getRiskLevelSettingID());
                //如 result.put("重大风险", 0);
                result.put(riskleversetting.getRiskLevel(), 0);
            }
        }
        Integer cout = 0;
        //如果传递的是对的且包含危险源
        if (mRiskSite != null && mRiskSite.getmHazards() != null && mRiskSite.getmHazards().size() > 0 && !mRiskSite.getParentID().equals("0")) {
            for (Riskhazard hazard : mRiskSite.getmHazards()) {
                //已经评价过
                if (hazard.getStatus()) {
                    Riskleversetting riskleversetting =
                            riskleversettingService.getRiskleversetting(hazard.getRiskLevelSettingID());
                    if (riskleversetting != null) {
                        //根据风险等级计算分类个数
                        if (result.containsKey(riskleversetting.getRiskLevel())) {
                            cout = result.get(riskleversetting.getRiskLevel());
                            result.put(riskleversetting.getRiskLevel(), ++cout);
                        }
                    }
                } else {
                    cout = result.get("未评价");
                    result.put("未评价", ++cout);
                }
            }
        }
        if (mRiskSite != null && mRiskSite.getmChildRiskSite() != null && mRiskSite.getmChildRiskSite().size() > 0 && mRiskSite.getParentID().equals("0")) {
            for (Risksite risksite : mRiskSite.getmChildRiskSite()) {
                //已经评价过
                if (risksite.getStatus()) {
                    //根据风险等级计算分类个数
                    Riskleversetting riskleversetting =
                            riskleversettingService.getRiskleversetting(risksite.getRiskLevelSettingID());
                    if (riskleversetting != null) {
                        if (result.containsKey(riskleversetting.getRiskLevel())) {
                            cout = result.get(riskleversetting.getRiskLevel());
                            result.put(riskleversetting.getRiskLevel(), ++cout);
                        }
                    }

                } else {
                    cout = result.get("未评价");
                    result.put("未评价", ++cout);
                }
            }
        }
        return result;
    }


    /**
     * 初始化窗体
     *
     * @param CoalMineName
     * @param frameWorkID
     */
    @RequestMapping(value = "/initializationView", method = RequestMethod.GET)
    @ApiOperation(value = "根据企业初始化界面", response = boolean.class, httpMethod = "GET", notes = "根据企业初始化界面")
    public void initializationView(
            @ApiParam(name = "CoalMineName", value = "Risksite对象id") @PathVariable("CoalMineName") String CoalMineName,
            @ApiParam(name = "frameWorkID", value = "Risksite对象id") @PathVariable("frameWorkID") String frameWorkID,
            @ApiParam(name = "page", value = "Risksite对象id") @PathVariable("page") Integer page,
            @ApiParam(name = "pageSize", value = "Risksite对象id") @PathVariable("pageSize") Integer pageSize) {
        Risksite risksite = new Risksite();
        risksite.setCoalMineName(CoalMineName);
        risksite.setFrameWorkID(frameWorkID);
        risksite.setStatus(false);
        risksite.setPage(page);
        risksite.setPagesize(pageSize);

        List<Risksite> lst = risksiteService.getRisksiteByPageAndRisksite(risksite);
    }

    /**
     * 显示查询窗体
     */
    @RequestMapping(value = "/showQueryConditionForm", method = RequestMethod.GET)
    @ApiOperation(value = "初始化查询界面", response = boolean.class, httpMethod = "GET", notes = "根据企业初始化界面")
    public boolean showQueryConditionForm() {
        return true;
    }


    @RequestMapping(value = "/getExcell", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcell(String ExcellID, String ExcellName,
                          String riskName, String riskControlTier,
                          String riskDamageType, String riskMajorType,
                          String riskLevel, String riskDescription, HttpServletResponse response, HttpServletRequest request) {
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
            style.setWrapText(true);
            style.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 下边框
            style.setBorderLeft(HSSFCellStyle.BORDER_THIN);// 左边框
            style.setBorderTop(HSSFCellStyle.BORDER_THIN);// 上边框
            style.setBorderRight(HSSFCellStyle.BORDER_THIN);// 右边框

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
            cell.setCellValue("风险描述");
            cell.setCellStyle(style);
            cell = row.createCell((short) 3);
            cell.setCellValue("灾害类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("事故类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 5);
            cell.setCellValue("风险等级");
            cell.setCellStyle(style);
//            cell = row.createCell((short) 6);
//            cell.setCellValue("危险程度");
//            cell.setCellStyle(style);
            cell = row.createCell((short) 6);
            cell.setCellValue("措施数量");
            cell.setCellStyle(style);
            cell = row.createCell((short) 7);
            cell.setCellValue("管控层次");
            cell.setCellStyle(style);
            cell = row.createCell((short) 8);
            cell.setCellValue("责任部门");
            cell.setCellStyle(style);
            cell = row.createCell((short) 9);
            cell.setCellValue("责任人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 10);
            cell.setCellValue("监管部门");
            cell.setCellStyle(style);
            if (ExcellID.equals("0")) {
                cell = row.createCell((short) 11);
                cell.setCellValue("状态");
                cell.setCellStyle(style);

                cell = row.createCell((short) 12);
                cell.setCellValue("措施内容");
                cell.setCellStyle(style);
            } else {

                cell = row.createCell((short) 11);
                cell.setCellValue("措施内容");
                cell.setCellStyle(style);
            }


            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            Risksite risksite1 = new Risksite();
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            risksite1.setFrameWorkID(framework.getFramewordID());
            risksite1.setCoalMineName(framework.getFrameWorkName());
            risksite1.setParentID("0");
            if (riskLevel != "") {
                int levelID = Integer.parseInt(riskLevel);
                risksite1.setRiskLevelSettingID(levelID);

            }
            risksite1.setName(riskName);
            risksite1.setRiskControlTier(riskControlTier);
            risksite1.setRiskDamageType(riskDamageType);
            risksite1.setRiskMajorType(riskMajorType);
            risksite1.setRiskDescription(riskDescription);
            List<Risksite> risksiteList = risksiteService.getRisksiteData(risksite1);
            for (int i = 0; i < risksiteList.size(); i++) {
                row = sheet.createRow((int) i + 1);
                Risksite risksite = (Risksite) risksiteList.get(i);
                // 第四步，创建单元格，并设置值
                row.createCell((short) 0).setCellValue(i + 1);
                row.createCell((short) 1).setCellValue(risksite.getName());
                row.createCell((short) 2).setCellValue(risksite.getRiskDescription());

                row.createCell((short) 3).setCellValue(risksite.getRiskDamageType());

                row.createCell((short) 4).setCellValue(risksite.getRiskAccident());
                row.createCell((short) 5).setCellValue(risksite.getRiskLevel());
//                try{
//                    String color = risksite.getRiskColor();    //此处得到的color为16进制的字符串
//                    //转为RGB码
//                    int r = Integer.parseInt((color.substring(1, 3)), 16);   //转为16进制
//                    int g = Integer.parseInt((color.substring(3, 5)), 16);
//                    int b = Integer.parseInt((color.substring(5, 7)), 16);
//                    //自定义cell颜色
//                    HSSFPalette palette = wb.getCustomPalette();
//                    //这里的9是索引
//                    palette.setColorAtIndex((short) 6, (byte) r, (byte) g, (byte) b);
//                    HSSFCellStyle style1 = wb.createCellStyle();
//                    style1.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
//                    style1.setFillForegroundColor((short) 6);
//                    cell.setCellStyle(style1);
//
//                }catch(Exception e){
//
//                    row.createCell((short) 6).setCellValue("");
//
//                }

//                row.createCell((short) 6).setCellValue("预警程度");
                int mcount = risksiteService.getControlMeasureCount(risksite.getFrameWorkID(), risksite.getFullNumber());
                row.createCell((short) 6).setCellValue(mcount);
                row.createCell((short) 7).setCellValue(risksite.getRiskControlTier());
                row.createCell((short) 8).setCellValue(risksite.getManagerUnitName());
                row.createCell((short) 9).setCellValue(risksite.getManagerName());
                row.createCell((short) 10).setCellValue(risksite.getRiskSupervisor());


                // SIGN: 2018.8.31 获取措施内容从表数据
                String content = "";
                if (mcount != 0) {
                    String riskSiteFullNumber = risksite.getFullNumber();
                    Riskcontrolmeasure riskcontrolmeasure = new Riskcontrolmeasure();
                    riskcontrolmeasure.setFrameWorkID(framework.getFramewordID());
                    riskcontrolmeasure.setCoalMineName(framework.getFrameWorkName());
                    riskcontrolmeasure.setRiskSiteFullNumber(riskSiteFullNumber);
                    List<Riskcontrolmeasure> list = riskcontrolmeasureService.getRiskcontrolmeasureData(riskcontrolmeasure);
                    if (list.size() > 0) {
                        for (int j = 0; j < list.size(); j++) {
                            content = j == list.size() - 1 ? content + list.get(j).getMeasureContent() : content + list.get(j).getMeasureContent() + "\n";
                        }
                    }
                }
                if (ExcellID.equals("0")) {
                    if (risksite.getStatus()) {
                        row.createCell((short) 11).setCellValue("已评估");
                    } else {
                        row.createCell((short) 11).setCellValue("未评估");
                    }
                    row.createCell((short) 12).setCellValue(content);
                } else {
                    row.createCell((short) 11).setCellValue(content);
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

    @RequestMapping(value = "/getExcellByRiskDS", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcellByRiskDS(String ExcellID, String ExcellName,
                                  String riskName, String riskControlTier,
                                  String riskDamageType, String riskLevelSettingID,
                                  String riskMajorType, HttpServletResponse response, HttpServletRequest request) {
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
            style.setWrapText(true);
            style.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 下边框
            style.setBorderLeft(HSSFCellStyle.BORDER_THIN);// 左边框
            style.setBorderTop(HSSFCellStyle.BORDER_THIN);// 上边框
            style.setBorderRight(HSSFCellStyle.BORDER_THIN);// 右边框
            CellRangeAddress c = CellRangeAddress.valueOf("A1:Q1");//从A1至Q1列添加筛选功能
            sheet.setAutoFilter(c);
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
            cell.setCellValue("风险点");
            cell.setCellStyle(style);
            cell = row.createCell((short) 2);
            cell.setCellValue("危险源");
            cell.setCellStyle(style);
            cell = row.createCell((short) 3);
            cell.setCellValue("风险");
            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("风险描述");
            cell.setCellStyle(style);
            cell = row.createCell((short) 5);
            cell.setCellValue("事故类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 6);
            cell.setCellValue("风险类型");
            cell.setCellStyle(style);
//            cell = row.createCell((short) 6);
//            cell.setCellValue("危险程度");
//            cell.setCellStyle(style);
            cell = row.createCell((short) 7);
            cell.setCellValue("L(可能性)");
            cell.setCellStyle(style);
            cell = row.createCell((short) 8);
            cell.setCellValue("S(损失)");
            cell.setCellStyle(style);
            cell = row.createCell((short) 9);
            cell.setCellValue("E(暴露率)");
            cell.setCellStyle(style);
            cell = row.createCell((short) 10);
            cell.setCellValue("C(产生的后果)");
            cell.setCellStyle(style);
            cell = row.createCell((short) 11);
            cell.setCellValue("R(风险值)");
            cell.setCellStyle(style);
            cell = row.createCell((short) 12);
            cell.setCellValue("管控措施");
            cell.setCellStyle(style);
            cell = row.createCell((short) 13);
            cell.setCellValue("管控部门/单位");
            cell.setCellStyle(style);
            cell = row.createCell((short) 14);
            cell.setCellValue("管控责任人");
            cell = row.createCell((short) 15);
            cell.setCellValue("监督部门");
            cell.setCellStyle(style);
            cell = row.createCell((short) 16);
            cell.setCellValue("灾害类型");
            cell.setCellStyle(style);
            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            Risksite risksite1 = new Risksite();
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            risksite1.setFrameWorkID(framework.getFramewordID());
            risksite1.setCoalMineName(framework.getFrameWorkName());
            risksite1.setParentID("0");
            if (riskLevelSettingID != "") {
                int levelID = Integer.parseInt(riskLevelSettingID);
                risksite1.setRiskLevelSettingID(levelID);

            }
            risksite1.setName(riskName);
            risksite1.setRiskControlTier(riskControlTier);
            risksite1.setRiskDamageType(riskDamageType);
            risksite1.setRiskMajorType(riskMajorType);
            List<Risksite> risksiteList = risksiteService.getRisksiteData(risksite1);
            int count = 1;
            for (int i = 0; i < risksiteList.size(); i++) {
                Risksite risksite = (Risksite) risksiteList.get(i);
                // 第四步，创建单元格，并设置值
                if (risksite.getmChildRiskSite().size() == 0) {
                    row = sheet.createRow((int) count);
                    row.createCell((short) 0).setCellValue(count);
                    row.createCell((short) 1).setCellValue(risksite.getName());
                    count++;
                    continue;
                } else {
                    for (int j = 0; j < risksite.getmChildRiskSite().size(); j++) {
                        Risksite risksitemc = (Risksite) risksite.getmChildRiskSite().get(j);
                        if (risksitemc.getmHazards().size() == 0) {
                            row = sheet.createRow(count);
                            row.createCell((short) 0).setCellValue(count);
                            row.createCell((short) 1).setCellValue(risksite.getName());
                            row.createCell((short) 2).setCellValue(risksitemc.getName());
                            count++;
                            continue;
                        } else {
                            for (int n = 0; n < risksitemc.getmHazards().size(); n++) {
                                row = sheet.createRow((int) count);
                                row.createCell((short) 0).setCellValue(count);
                                row.createCell((short) 1).setCellValue(risksite.getName());
                                row.createCell((short) 2).setCellValue(risksitemc.getName());


                                Riskhazard riskhazard = (Riskhazard) risksitemc.getmHazards().get(n);
                                row.createCell((short) 3).setCellValue(riskhazard.getName());
                                row.createCell((short) 4).setCellValue(riskhazard.getHazardDesc());
                                row.createCell((short) 5).setCellValue(riskhazard.getAccidentType());
                                row.createCell((short) 6).setCellValue(riskhazard.getRiskType());
                                try {
                                    row.createCell((short) 7).setCellValue(riskhazard.getLpossibility());

                                } catch (Exception e) {
                                    row.createCell((short) 7).setCellValue("");


                                }
                                try {
                                    if (riskhazard.getSseverity() != 0) {

                                        row.createCell((short) 8).setCellValue(riskhazard.getSseverity());

                                    } else {

                                        row.createCell((short) 8).setCellValue("");

                                    }

                                } catch (Exception e) {
                                    row.createCell((short) 8).setCellValue("");


                                }
                                try {
                                    if (riskhazard.getEexpose() != 0) {

                                        row.createCell((short) 9).setCellValue(riskhazard.getEexpose());
                                    } else {
                                        row.createCell((short) 9).setCellValue("");
                                    }

                                } catch (Exception e) {

                                    row.createCell((short) 9).setCellValue("");

                                }
                                try {
                                    if (riskhazard.getClossConsequence() != 0) {
                                        row.createCell((short) 10).setCellValue(riskhazard.getClossConsequence());
                                    } else {
                                        row.createCell((short) 10).setCellValue("");
                                    }

                                } catch (Exception e) {
                                    row.createCell((short) 10).setCellValue("");


                                }
                                try {
                                    if (riskhazard.getDriskValue() != 0) {

                                        row.createCell((short) 11).setCellValue(riskhazard.getDriskValue());

                                    } else {

                                        row.createCell((short) 11).setCellValue("");

                                    }


                                } catch (Exception e) {
                                    row.createCell((short) 11).setCellValue("");


                                }
                                String hz = "";
                                StringBuffer buffer = new StringBuffer(hz);
                                for (int z = 0; z < riskhazard.getmRiskControlMeasure().size(); z++) {
                                    Riskcontrolmeasure riskcontrolmeasure = riskhazard.getmRiskControlMeasure().get(z);
                                    if(riskcontrolmeasure.getMeasureContent() != null && riskcontrolmeasure.getMeasureContent() != ""){
                                        buffer.append(riskcontrolmeasure.getMeasureContent());
//                                    buffer.append("\n");
                                    }


                                }
                                row.createCell((short) 12).setCellValue(buffer.toString());
                                row.createCell((short) 13).setCellValue(riskhazard.getAccountabilityUnit());
                                row.createCell((short) 14).setCellValue(riskhazard.getOperatingPost());//监控责任人
                                row.createCell((short) 15).setCellValue(riskhazard.getManageUnit());//监督部门
                                row.createCell((short) 16).setCellValue(riskhazard.getDamageType());
                                count++;
                                continue;
                            }

                        }
                    }
                }
            }
            try {
                for (int i = 0; i < count; i++) {
                    row = sheet.getRow(i);
                    for (int j = 0; j < 17; j++) {
                        if (row.getCell(j) == null) {
                            row.createCell(j).setCellStyle(style1);

                        } else {
                            row.getCell(j).setCellStyle(style1);

                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
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
}