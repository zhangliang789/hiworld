package cn.com.kingc.risk.controller;


import cn.com.kingc.hiddentrouble.model.Finerecord;
import cn.com.kingc.hiddentrouble.model.Htdetail;
import cn.com.kingc.hiddentrouble.service.FinerecordService;
import cn.com.kingc.hiddentrouble.service.HtdetailService;
import cn.com.kingc.risk.model.Riskcontrolhistory;
import cn.com.kingc.risk.model.Riskcontrolhistoryattachment;
import cn.com.kingc.risk.model.Risksite;
import cn.com.kingc.risk.service.*;
import com.wordnik.swagger.annotations.ApiOperation;
//import org.kplatform4j.model.BaseOrg;
//import org.kplatform4j.model.Framework;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.formula.functions.T;
import org.apache.poi.ss.usermodel.Cell;
import org.platform4j.model.BaseOrg;
import org.platform4j.model.Emp;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTML;
import java.io.*;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * @author admistrator
 * @version 1.0
 * @created 27-8月-2017 11:15:37
 */
@RestController
@RequestMapping("/RiskSiteAboutMe")
public class RiskSiteAboutMe {
    @Autowired
    private RisksiteService risksiteService;

    @Autowired
    private RiskAnalyzeService riskAnalyzeService;

    @Autowired
    private RiskcontrolhistoryService riskcontrolhistoryService;

    @Autowired
    private RiskcontrolhistoryattachmentService riskcontrolhistoryattachmentService;

    @Autowired
    private HtdetailService htdetailService;

    @Autowired
    private FinerecordService finerecordService;

    //获取一个空的Risk对象
    @RequestMapping(value = "/newRiskSite", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的RiskSite对象", response = Risksite.class, httpMethod = "GET", notes = "获取一个空的RiskSite对象")
    public Object getNewRiskDetailedList(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Emp emp =(Emp) session.getAttribute("emp");
        Risksite risksite = new Risksite();
        risksite.setCoalMineName(framework.getFrameWorkName());
        risksite.setFrameWorkID(framework.getFramewordID());
//        risksite.setManagerUnitID(emp.getfOrgID_Auto()); //注明此地方责任部门的ID。
        risksite.setManagerUnitName(emp.getFOrg_Name());
        risksite.setParentID("0");
        return risksite;
    }

    //获取风险管控清单共有多少页
    @RequestMapping(value = "/PageCount", method = RequestMethod.POST)
    @ApiOperation(value = "风险管控清单共有多少页", httpMethod = "POST", notes = "风险管控清单共有多少页")
    public Object getPageCount(@RequestBody Risksite risksite) {
        try {
            int count = risksiteService.getRisksiteCountByRisksitebyaboutme(risksite);
            int page = count / risksite.getPagesize();
            int ls = count % risksite.getPagesize();
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
    @ApiOperation(value = "分页获取风险管控清单数据，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取风险管控清单数据，返回List结合")
    public Object getRiskSiteByPage(@RequestBody Risksite risksite) {
        try {
            List<Risksite> risksites= risksiteService.getRisksiteByPageAndRisksitebyaboutme(risksite);
            for (Risksite rs: risksites) {
                rs.getCoalMineName();
                rs.getmRiskControlMeasure();

                List<Risksite> risksiteList=rs.getmChildRiskSite();
                for (Risksite riskChild : risksiteList) {
                    riskChild.getCoalMineName();
                    riskChild.getmHazards();
                    riskChild.getmRiskControlMeasure();
                }
            }
            return  risksites;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }





    @RequestMapping(value = "/getExcell", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcell(String ExcellID, String ExcellName,
                          String riskname, String riskControlTier,
                          String riskDamageType, String riskLevel,
                          String riskMajorType, HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html;charset=UTF-8");
        try {
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
            cell.setCellValue("风险名称");
            cell.setCellStyle(style);
            cell = row.createCell((short) 2);
            cell.setCellValue("风险描述");
            cell.setCellStyle(style);
            cell = row.createCell((short) 3);
            cell.setCellValue("风险点类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("专业类型");
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
            cell.setCellValue("责任人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 8);
            cell.setCellValue("监管人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 9);
            cell.setCellValue("监控周期");
            cell.setCellStyle(style);
            cell = row.createCell((short) 10);
            cell.setCellValue("监控频次");
            cell.setCellStyle(style);
            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            Risksite risksite1 = new Risksite();
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Emp emp = (Emp) session.getAttribute("emp");

            risksite1.setFrameWorkID(framework.getFramewordID());
            risksite1.setCoalMineName(framework.getFrameWorkName());
            risksite1.setParentID("0");
            risksite1.setManagerUnitName(emp.getFOrg_Name());
            risksite1.setName(riskname);
            risksite1.setRiskMajorType(riskMajorType);
            risksite1.setRiskDamageType(riskDamageType);
            risksite1.setRiskControlTier(riskControlTier);
            if (riskLevel!= "") {
                int levelID = Integer.parseInt(riskLevel);
                risksite1.setRiskLevelSettingID(levelID);

            }
            List<Risksite> risksiteList = risksiteService.getRisksiteData(risksite1);
            for (int i = 0; i < risksiteList.size(); i++) {
                row = sheet.createRow((int) i + 1);
                Risksite risksite = (Risksite) risksiteList.get(i);
                // 第四步，创建单元格，并设置值
                row.createCell((short) 0).setCellValue(i + 1);
                row.createCell((short) 1).setCellValue(risksite.getName());
                row.createCell((short) 2).setCellValue(risksite.getRiskDescription());

                row.createCell((short) 3).setCellValue(risksite.getRiskSiteType().getDescription());

                row.createCell((short) 4).setCellValue(risksite.getRiskMajorType());
                row.createCell((short) 5).setCellValue(risksite.getRiskLevel());
                int mcount = risksiteService.getControlMeasureCount(risksite.getFrameWorkID(), risksite.getFullNumber());
                row.createCell((short) 6).setCellValue(mcount);
                row.createCell((short) 7).setCellValue(risksite.getManagerName());
                row.createCell((short) 8).setCellValue(risksite.getRiskSupervisor());
                row.createCell((short) 9).setCellValue(risksite.getRiskControlCycle());
                row.createCell((short) 10).setCellValue(risksite.getRiskFrequency());
                Iterator<Cell> iterator = row.cellIterator();
                while (iterator.hasNext()) {
                    Cell next = iterator.next();
                    next.setCellStyle(style1);
                }

            }
            // 第六步，将文件存到指定位置
            File pathFile = new File("C:/" + ExcellName);
            if (pathFile.exists()) {
                pathFile.delete();

            }
            FileOutputStream fout = new FileOutputStream("C:/" + ExcellName);
            wb.write(fout);
            fout.close();
//            exportExcel(res, workbook);
            //FileInputStream fileInputStream=new FileInputStream(pathFile);
            // fileInputStream.read()
            File file = new File("C:/" + ExcellName);

            InputStream fis = new BufferedInputStream(new FileInputStream("C:/" + ExcellName));
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



    //添加风险现场管控转跳
    @RequestMapping(value = "/addRiskSportControl/{frameWorkID}/{riskSiteID}", method = RequestMethod.POST)
    public Boolean Riskidentificationbyspeciallybyadd( @PathVariable("riskSiteID") String riskSiteID,
                                                       @PathVariable("frameWorkID") String frameWorkID,
                                                       HttpServletRequest request){
        request.getSession().setAttribute("riskSiteID",riskSiteID);
        request.getSession().setAttribute("frameWorkID",frameWorkID);
        return true;
    }

    @RequestMapping(value="/getRiskHazardList/{frameWorkID}/{riskSiteID}",method = RequestMethod.POST)
    public Object getRiskHazardList( @PathVariable("riskSiteID") String riskSiteID,
                                     @PathVariable("frameWorkID") String frameWorkID,
                                     HttpServletRequest request){
        String[] riskSiteIds = riskSiteID.split(",");
        List<Map<String,Object>> riskSiteList = new ArrayList();
        for(String id:riskSiteIds){
            List<Map<String,Object>> hazardInfos = riskAnalyzeService.getRiskByPlace(Integer.parseInt(id),frameWorkID, "", "",
                    "","","","","","","");
            if(hazardInfos != null && hazardInfos.size()>0){
                for(Map<String,Object> hazardInfo : hazardInfos){
                    riskSiteList.add(hazardInfo);
                }
            }
        }
        return riskSiteList;
    }

    //保存风险管控历史列表
    @RequestMapping(value="/saveRiskControlHistoryList",method = RequestMethod.POST)
    public Object saveRiskControlHistoryList(@RequestBody List<Riskcontrolhistory> riskcontrolhistoryList){
        boolean isSuccess = true;
//        riskcontrolhistoryService.addRiskcontrolhistoryList(riskcontrolhistoryList);
        for(Riskcontrolhistory riskcontrolhistory : riskcontrolhistoryList){
            //如果有隐患信息，先保存隐患信息
            Integer htdetailID;
            if(riskcontrolhistory.getHtdetail() != null){
                Htdetail htdetail = riskcontrolhistory.getHtdetail();
                htdetailID = htdetailService.saveHtdetail1(htdetail);
                riskcontrolhistory.setHiddenTroubleID(htdetailID);
                Finerecord finerecord = riskcontrolhistory.getFinerecord();
                //如果有罚款信息
                if(finerecord != null){
                    this.addFinerecord(finerecord);
                }
            }

            boolean isCreated = riskcontrolhistoryService.addRiskcontrolhistory(riskcontrolhistory);
            if(isCreated){
                Integer riskcontrolhistoryId = riskcontrolhistory.getId();
                String frameId = riskcontrolhistory.getFrameworkID();
                List addAttachFileList = new ArrayList();
                List<Map<String,String>> attachFileList = riskcontrolhistory.getAttachFileList();
                for(Map<String,String> map : attachFileList){
                    Riskcontrolhistoryattachment attachment = new Riskcontrolhistoryattachment();
                    attachment.setFrameworkID(frameId);
                    attachment.setControlHistoryID(riskcontrolhistoryId);
                    attachment.setAttachmentUUID(map.get("fileId"));
                    attachment.setAttachmentName(map.get("fileName"));
                    addAttachFileList.add(attachment);
                }
                if(addAttachFileList != null && addAttachFileList.size() > 0){
                    riskcontrolhistoryattachmentService.addRiskcontrolhistoryattachmentList(addAttachFileList);
                }
            }
        }

        return isSuccess;
    }

    private void addFinerecord(Finerecord finerecord){
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
    }







}