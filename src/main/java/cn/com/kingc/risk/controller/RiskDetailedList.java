package cn.com.kingc.risk.controller;


import cn.com.kingc.hiddentrouble.model.Htdetail;
import cn.com.kingc.risk.model.RiskDetailedByXinAn;
import cn.com.kingc.risk.model.Riskcontrolmeasure;
import cn.com.kingc.risk.model.Riskhazard;
import cn.com.kingc.risk.model.Risksite;
import cn.com.kingc.risk.service.RiskAnalyzeService;
import cn.com.kingc.risk.service.RiskhazardService;
import cn.com.kingc.risk.service.RisksiteService;
import cn.com.kingc.risk.util.Properties;
import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.lang.reflect.Type;
import java.util.*;

//import org.kplatform4j.model.Framework;

/**
 * @author admistrator
 * @version 1.0
 * @created 27-8月-2017 11:15:37
 */
@RestController
@RequestMapping("/RiskDetailedList")
public class RiskDetailedList {
    @Autowired
    private RisksiteService risksiteService;
    @Autowired
    private RiskAnalyzeService riskAnalyzeService;
    @Autowired
    private RiskhazardService riskhazardService;

    //获取一个空的RiskDetailedList对象
    @RequestMapping(value = "/newRiskSite", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的RiskSite对象", response = Risksite.class, httpMethod = "GET", notes = "获取一个空的RiskSite对象")
    public Object getNewRiskDetailedList(HttpServletRequest request) {
        HttpSession session = request.getSession();
//        CURRENT_USER  currentPageentPagerent_user=(CURRENT_USER)session.getAttribute(Constants.CURRENT_USER);
        Framework framework = (Framework) session.getAttribute("framework");
        Risksite risksite = new Risksite();
        risksite.setCoalMineName(framework.getFrameWorkName());
        risksite.setFrameWorkID(framework.getFramewordID());
        risksite.setParentID("0");
        return risksite;
    }

    //获取一个空的RiskDetailedList对象
    @RequestMapping(value = "/newRiskDetailedByXinAn", method = RequestMethod.POST)
    @ApiOperation(value = "获取一个空的RiskSite对象", response = Risksite.class, httpMethod = "GET", notes = "获取一个空的RiskSite对象")
    public Object getNewRiskDetailedByXinAn(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        RiskDetailedByXinAn riskDetailedByXinAn = new RiskDetailedByXinAn();
        riskDetailedByXinAn.setCoalMineName(framework.getFrameWorkName());
        riskDetailedByXinAn.setFrameWorkID(framework.getFramewordID());
        return riskDetailedByXinAn;
    }

    //扫描超期风险，以发消息的方式通知管控部门和责任人
    @RequestMapping(value = "/scanRiskSite")
    public void scanRiskSite(HttpServletRequest request) {

    }

    //获取风险管控清单共有多少页
    @RequestMapping(value = "/PageCount", method = RequestMethod.POST)
    @ApiOperation(value = "风险管控清单共有多少页", httpMethod = "POST", notes = "风险管控清单共有多少页")
    public Object getPageCount(@RequestBody Risksite risksite) {
        try {
            int count = risksiteService.getRisksiteCountByRisksite(risksite);
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

    //获取风险管控清单共有多少页
    @RequestMapping(value = "/getRisksiteData", method = RequestMethod.POST)
    @ApiOperation(value = "风险管控清单共有多少页", httpMethod = "POST", notes = "风险管控清单共有多少页")
    public Object getRisksiteData(@RequestBody Risksite risksite) {
        try {
            return risksiteService.getRisksiteData(risksite);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    @RequestMapping(value = "/getTopRisksiteByCount", method = RequestMethod.POST)
    @ApiOperation(value = "风险管控清单共有多少页", httpMethod = "POST", notes = "风险管控清单共有多少页")
    public Object getTopRisksiteByCount(@RequestBody Risksite risksite) {
        try {
            int count = risksiteService.getTopRisksiteByCount(risksite);
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

    //获取风险管控清单共有多少页
    @RequestMapping(value = "/getTopRisksiteByPage", method = RequestMethod.POST)
    @ApiOperation(value = "风险管控清单共有多少页", httpMethod = "POST", notes = "风险管控清单共有多少页")
    public Object getTopRisksiteByPage(@RequestBody Risksite risksite) {
        try {
            return risksiteService.getTopRisksiteByPage(risksite);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    //获取风险管控清单共有多少页
    @RequestMapping(value = "/updateRisksite", method = RequestMethod.POST)
    public Object updateRisksite(@RequestBody Risksite risksite) {
        try {
            return risksiteService.updateRisksite(risksite);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    //分页获取风险管控清单数据
    @RequestMapping(value = "/Page", method = RequestMethod.POST)
    @ApiOperation(value = "分页获取风险管控清单数据，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取风险管控清单数据，返回List结合")
    public Object getRiskSiteByPage(@RequestBody Risksite risksite, HttpServletRequest request) {
        try {
            List<Risksite> risksites = risksiteService.getRisksiteByPageAndRisksite(risksite);
            for (int i = 0; i < risksites.size(); i++) {
                if (risksites.get(i).getmChildRiskSite().size() == 0) {

                    risksites.get(i).setChildRiskCount("风险数量:0");
                } else {
                    int mcImport = 0;
                    int mcLarger = 0;
                    int mcGeneral = 0;
                    int mcLow = 0;
                    int mcNo = 0;
                    List<Risksite> mChildRisk = risksites.get(i).getmChildRiskSite();
                    for (int j = 0; j < mChildRisk.size(); j++) {
                        List<Riskhazard> mHazards = mChildRisk.get(j).getmHazards();
                        for (int z = 0; z < mHazards.size(); z++) {
                            if (mHazards.get(z).getRiskLevel() == "" || mHazards.get(z).getRiskLevel() == null) {
                                mcNo++;
                            } else if (mHazards.get(z).getRiskLevel().equals("重大风险")) {
                                mcImport++;
                            } else if (mHazards.get(z).getRiskLevel().equals("较大风险")) {
                                mcLarger++;
                            } else if (mHazards.get(z).getRiskLevel().equals("一般风险")) {
                                mcGeneral++;
                            } else if (mHazards.get(z).getRiskLevel().equals("低风险")) {
                                mcLow++;
                            }
                        }
                    }
                    risksites.get(i).setChildRiskCount("重大风险:" + mcImport + ",较大风险:" + mcLarger + ",一般风险:" + mcGeneral + ",低风险:" + mcLow + ",未评价风险:" + mcNo);
                }

            }


            return risksites;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }


    @RequestMapping(value = "/ExplortExcel", method = RequestMethod.GET)
    public Object explortExcel(HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");

            Risksite risksite = new Risksite();

            risksite.setFrameWorkID(framework.getFramewordID());
            List<Risksite> risksites = risksiteService.getRisksiteDataOnly(risksite);

            OutputStream out = new FileOutputStream("D:\\UploadFile\\faa5109a-d0ac-4db2-83c2-ef424cb8c9bb.xlsx");
            String[] headers = {"序号", "风险点", "作业活动", "危险源", "出生日期"};
            //WriteExcelUtils writeExcelUtils=new WriteExcelUtils();
            //writeExcelUtils.exportExcel("风险管控清单",headers,(Collection)risksites,out,"yyyy-MM-dd");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public RiskDetailedList() {

    }

    public void finalize() throws Throwable {

    }

    /**
     * 导出数据
     */
    public boolean exportData() {
        return false;
    }

    /**
     * @param coalMineName
     * @param coalMineUUID
     */
    public int initializationView(String coalMineName, String coalMineUUID) {
        return 0;
    }

    public boolean showQueryConditionForm() {
        return false;
    }


    @RequestMapping(value = "/getExcell", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcell(String ExcellID, String ExcellName, String riskName, HttpServletResponse response, HttpServletRequest request) {
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
            cell.setCellValue("风险描述");
            cell.setCellStyle(style);
            cell = row.createCell((short) 3);
            cell.setCellValue("灾害类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("事故类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 5);
            cell.setCellValue("等级");
            cell.setCellStyle(style);
//            cell = row.createCell((short) 6);
//            cell.setCellValue("危险程度");
//            cell.setCellStyle(style);
            cell = row.createCell((short) 6);
            cell.setCellValue("当前失控数量");
            cell.setCellStyle(style);
            cell = row.createCell((short) 7);
            cell.setCellValue("历史失控数量");
            cell.setCellStyle(style);
            cell = row.createCell((short) 8);
            cell.setCellValue("危险源数量");
            cell.setCellStyle(style);
            cell = row.createCell((short) 9);
            cell.setCellValue("责任部门");
            cell.setCellStyle(style);

            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            List<Map<String, Object>> riskAnalyzeOutOfControlList = riskAnalyzeService.getOutOfControlRiskAnalyze(framework.getFramewordID(), riskName);
            for (int i = 0; i < riskAnalyzeOutOfControlList.size(); i++) {
                Map<String, Object> map = riskAnalyzeOutOfControlList.get(i);
                row = sheet.createRow((int) i + 1);
                row.createCell((short) 0).setCellValue(i + 1);
                for (Map.Entry<String, Object> entry : map.entrySet()) {

                    // 第四步，创建单元格，并设置值
                    if (entry.getKey().equals("Name")) {

                        row.createCell((short) 1).setCellValue(entry.getValue().toString());
                    } else if (entry.getKey().equals("RiskDescription")) {
                        try {
                            String rd = (String) entry.getValue();
                            row.createCell((short) 2).setCellValue(rd);

                        } catch (Exception e) {
                            row.createCell((short) 2).setCellValue("");

                        }

                    } else if (entry.getKey().equals("RiskDamageType")) {

                        row.createCell((short) 3).setCellValue(entry.getValue().toString());
                    } else if (entry.getKey().equals("RiskAccident")) {

                        row.createCell((short) 4).setCellValue(entry.getValue().toString());
                    } else if (entry.getKey().equals("RiskLevel")) {

                        row.createCell((short) 5).setCellValue(entry.getValue().toString());
                    } else if (entry.getKey().equals("LostNowCount")) {

                        row.createCell((short) 6).setCellValue(entry.getValue().toString());
                    } else if (entry.getKey().equals("LostHistoryCount")) {

                        row.createCell((short) 7).setCellValue(Integer.parseInt(entry.getValue().toString()));
                    } else if (entry.getKey().equals("HazardCount")) {
                        row.createCell((short) 8).setCellValue(entry.getValue().toString());
                    } else if (entry.getKey().equals("ManagerUnitName")) {

                        row.createCell((short) 9).setCellValue(entry.getValue().toString());
                    }


                }
            }
            try {
                for (int i = 0; i <= riskAnalyzeOutOfControlList.size(); i++) {
                    row = sheet.getRow(i);
                    for (int j = 0; j < 10; j++) {
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

    //根据危险源的风险ID查询风险
    @RequestMapping(value = "/getRiskSiteByHazardRiskSiteID/{risksiteID}", method = RequestMethod.POST)
    public Object getRiskSiteByHazardRiskSiteID(@PathVariable("risksiteID") Integer risksiteID) {
        try {
            Risksite risksites = risksiteService.getRisksite(risksiteID);
            return risksites;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //检测是否有超期的风险
    @RequestMapping(value = "/getOutOfTimeRiskHazard", method = RequestMethod.POST)
    public Object getOutOfTimeRiskSite(HttpServletRequest request) {
        try {
            Framework framework = (Framework) request.getSession().getAttribute("framework");
            List<Riskcontrolmeasure> mRiskControlMeasure = new ArrayList<Riskcontrolmeasure>();
            List<Riskhazard> results = new ArrayList<Riskhazard>();
            Riskhazard riskhazard = new Riskhazard();
            riskhazard.setFrameWorkID(framework.getFramewordID());
            riskhazard.setCoalMineName(framework.getFrameWorkName());
            List<Riskhazard> riskhazardList = riskhazardService.getOutOfTimeRiskHazard(riskhazard);
            if (riskhazardList != null && riskhazardList.size() > 0) {
                for (Riskhazard riskHazard1 : riskhazardList) {
                    mRiskControlMeasure = riskHazard1.getmRiskControlMeasure();
                    if (mRiskControlMeasure == null || mRiskControlMeasure.size() == 0) {
                        results.add(riskHazard1);
                    }
                }
                return results;
            } else {
                return null;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/getExcellByInfo", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcellByInfo(String ExcellID, String ExcellName, String riskName, HttpServletResponse response, HttpServletRequest request) {
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
            headerFont.setFontHeightInPoints((short) 14);
            style.setFont(headerFont);
            style.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 下边框
            style.setBorderLeft(HSSFCellStyle.BORDER_THIN);// 左边框
            style.setBorderTop(HSSFCellStyle.BORDER_THIN);// 上边框
            style.setBorderRight(HSSFCellStyle.BORDER_THIN);// 右边框

            style.setWrapText(true);
            //设置内容样式
            HSSFCellStyle style1 = (HSSFCellStyle) wb.createCellStyle();
            HSSFFont headerFont1 = (HSSFFont) wb.createFont();
            headerFont1.setFontHeightInPoints((short) 10);
            style1.setFont(headerFont1);
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
            cell.setCellValue("风险类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 3);
            cell.setCellValue("风险等级");
            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("管理部门");
            cell.setCellStyle(style);
            cell = row.createCell((short) 5);
            cell.setCellValue("责任人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 6);
            cell.setCellValue("确定日期");
            cell.setCellStyle(style);
            cell = row.createCell((short) 7);
            cell.setCellValue("消除日期");
            cell.setCellStyle(style);

            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Risksite risksite1 = new Risksite();
            risksite1.setFrameWorkID(framework.getFramewordID());
            risksite1.setCoalMineName(framework.getFrameWorkName());
            risksite1.setName(riskName);
            List<Risksite> risksiteList = risksiteService.getTopRisksiteByname(risksite1);
            for (int i = 0; i < risksiteList.size(); i++) {
                Risksite risksite = risksiteList.get(i);
                row = sheet.createRow((int) i + 1);
                try {
                    row.createCell(0).setCellValue(i + 1);
                    row.createCell(1).setCellValue(risksite.getName());
                    row.createCell(2).setCellValue(risksite.getRiskDamageType());
                    row.createCell(3).setCellValue(risksite.getRiskLevel());
                    row.createCell(4).setCellValue(risksite.getManagerUnitName());
                    row.createCell(5).setCellValue(risksite.getManagerName());
                    row.createCell(6).setCellValue(risksite.getConfirmDate());
                    row.createCell(7).setCellValue(risksite.getClearDate());

                } catch (Exception e) {
                    e.printStackTrace();
                }

            }
            try {
                for (int i = 1; i <= risksiteList.size(); i++) {
                    row = sheet.getRow(i);
                    for (int j = 0; j < 8; j++) {
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