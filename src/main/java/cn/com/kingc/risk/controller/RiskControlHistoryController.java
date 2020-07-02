package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.Riskcontrolplanebymonth;
import cn.com.kingc.risk.model.Riskcontrolplanebymonthitem;
import cn.com.kingc.risk.model.Risksiteoutofcontrol;
import cn.com.kingc.risk.service.RiskcontrolhistoryService;
import cn.com.kingc.risk.model.Riskcontrolhistory;
import cn.com.kingc.risk.util.Properties;
import com.wordnik.swagger.annotations.ApiOperation;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;
import org.mortbay.util.StringUtil;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.Iterator;
import java.util.List;

/**
* Title:管控历史记录
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* @Description:
* @date 2018-09-06 08:55:28 中国标准时间
* @author
* @version
*/
@RestController
@RequestMapping("/Riskcontrolhistory")
public class RiskControlHistoryController {

    @Autowired
    private RiskcontrolhistoryService riskcontrolhistoryService;

    //获取一个空的RiskcontrolhistoryList对象
    @RequestMapping(value = "/newRiskcontrolhistory", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的RiskcontrolhistoryList对象", response = Riskcontrolhistory.class, httpMethod = "GET", notes = "获取一个空的Riskcontrolhistory对象")
    public Object newRiskcontrolhistory(HttpServletRequest request) {
        Riskcontrolhistory riskcontrolhistory = new Riskcontrolhistory();
        riskcontrolhistory.setId(0);
        return riskcontrolhistory;
    }

    //获取历史管控情况条数
    @RequestMapping(value="/getRiskcontrolhistoryPageCount",method=RequestMethod.POST)
    @ApiOperation(value = "历史管控情况共有多少条", httpMethod = "POST", notes = "历史管控情况共有多少条")
    public Object getRiskcontrolhistoryPageCount(@RequestBody Riskcontrolhistory riskcontrolhistory,HttpServletRequest request){
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String checkTime = riskcontrolhistory.getCheckTime();
            String startCheckTime,endCheckTime;
            if(checkTime != null && checkTime != "/" && checkTime != ""){
                String[] times = checkTime.split("/");

                if(times != null && times.length>0 && times[0] != null){
                    startCheckTime = times[0];
                    riskcontrolhistory.setStartCheckTime(startCheckTime);
                }
                if(times != null && times.length>1 && times[1] != null){
                    endCheckTime = times[1];
                    riskcontrolhistory.setEndCheckTime(endCheckTime);
                }
            }
            String riskState = riskcontrolhistory.getRiskState();
            String[] riskStates = {};
            String riskControlLevel = riskcontrolhistory.getRiskControlLevel();
            String[] riskControlLevels = {};
            if(riskState != null && riskState != ""){
                riskStates = riskState.split(",");
            }
            if(riskControlLevel!= null && riskControlLevel != ""){
                riskControlLevels = riskControlLevel.split(",");
            }
            riskcontrolhistory.setCheckTime(null);
            riskcontrolhistory.setRiskStates(riskStates);
            riskcontrolhistory.setRiskControlLevels(riskControlLevels);
            riskcontrolhistory.setFrameworkID(framework.getFramewordID());
            int count=riskcontrolhistoryService.getRiskcontrolhistoryCount(riskcontrolhistory);
            int page = count /  riskcontrolhistory.getPagesize();
            int ls = count %  riskcontrolhistory.getPagesize();
            if (ls > 0) {
                page++;
            }
            return page;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    //带有时间段查询条件下获取总条数
    @RequestMapping(value="/getRiskcontrolhistoryPageCountByTime",method=RequestMethod.POST)
    @ApiOperation(value = "历史管控情况共有多少条", httpMethod = "POST", notes = "历史管控情况共有多少条")
    public Object getRiskcontrolhistoryPageCountByTime(@RequestBody Riskcontrolhistory riskcontrolhistory){
        try {
            int count=riskcontrolhistoryService.getRiskcontrolhistoryCountByTime(riskcontrolhistory);
            int page = count /  riskcontrolhistory.getPagesize();
            int ls = count %  riskcontrolhistory.getPagesize();
            if (ls > 0) {
                page++;
            }
            return page;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    //时间段查询条件下分页获取管控历史记录数据
    @RequestMapping(value="/getRiskcontrolhistoryByPageByTime",method=RequestMethod.POST)
    @ApiOperation(value = "时间段查询条件下分页获取管控历史记录，返回List集合", response = List.class, httpMethod = "POST", notes = "时间段查询条件下分页获取管控历史记录，返回List结合")
    public Object getRiskcontrolhistoryByPageByTime(@RequestBody Riskcontrolhistory riskcontrolhistory){
        try{
            return riskcontrolhistoryService.getRiskcontrolhistoryByPageByTime(riskcontrolhistory);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return null;
    }
    //分页获取管控历史记录数据
    @RequestMapping(value="/getRiskcontrolhistoryByPage",method=RequestMethod.POST)
    @ApiOperation(value = "分页获取管控历史记录，返回List集合", response = List.class, httpMethod = "POST", notes = "分页获取管控历史记录，返回List结合")
    public Object getRiskcontrolhistoryByPage(@RequestBody Riskcontrolhistory riskcontrolhistory,HttpServletRequest request){
        try{
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String checkTime = riskcontrolhistory.getCheckTime();
            String startCheckTime,endCheckTime;
            if(checkTime != null && checkTime != "/" && checkTime != ""){
                String[] times = checkTime.split("/");

                if(times != null && times.length>0 && times[0] != null){
                    startCheckTime = times[0];
                    riskcontrolhistory.setStartCheckTime(startCheckTime);
                }
                if(times != null && times.length>1 && times[1] != null){
                    endCheckTime = times[1];
                    riskcontrolhistory.setEndCheckTime(endCheckTime);
                }
            }
            String riskState = riskcontrolhistory.getRiskState();
            String[] riskStates = {};
            String riskControlLevel = riskcontrolhistory.getRiskControlLevel();
            String[] riskControlLevels = {};
            if(riskState != null && riskState != ""){
                riskStates = riskState.split(",");
            }
            if(riskControlLevel!= null && riskControlLevel != ""){
                riskControlLevels = riskControlLevel.split(",");
            }
            riskcontrolhistory.setCheckTime(null);
            riskcontrolhistory.setRiskStates(riskStates);
            riskcontrolhistory.setRiskControlLevels(riskControlLevels);
            riskcontrolhistory.setFrameworkID(framework.getFramewordID());
            return riskcontrolhistoryService.getRiskcontrolhistoryByPage(riskcontrolhistory);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    //跳转风险点历史管控详情
    @RequestMapping(value = "/gotohistoryDetail/{riskSiteID}/{riskSiteName}", method = RequestMethod.POST)
    public boolean gotohistoryDetail(@PathVariable("riskSiteID") Integer riskSiteID, @PathVariable("riskSiteName") String riskSiteName,HttpServletRequest request) {
        request.getSession().setAttribute("riskSiteID", riskSiteID);
        request.getSession().setAttribute("riskSiteName", riskSiteName);

        return true;
    }

    //根据ID删除单条Riskcontrolhistory
    @RequestMapping(value = "/deleteRiskcontrolhistoryById/{id}",method=RequestMethod.DELETE)
    public Object deleteRiskcontrolhistoryById(@PathVariable("id") Integer id){
        try{
            return riskcontrolhistoryService.deleteRiskcontrolhistoryByID(id);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    //批量删除
    @RequestMapping(value = "/batchDelete" ,method = RequestMethod.POST)
    @ResponseBody
    public Boolean batchDelete(Integer[] deleteBox){
        for (Integer id:deleteBox) {
            riskcontrolhistoryService.deleteRiskcontrolhistoryByID(id);
        }
        return true;
    }

    //导出表格数据
    @RequestMapping(value = "/getExcell", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcell(String ExcellID, String ExcellName,String riskSiteName,String riskObjName,String riskHazardName,String riskValue,
                          String checkTime, String checkDept,String checkerName,String checkResult,String riskState,String riskControlLevel,
                          String riskHazardId, HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            Properties properties = new Properties();
            String fileUploadUrl = properties.getProperty("fileUploadUrl");
            request.setCharacterEncoding("UTF-8");
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
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
            cell.setCellValue("风险点");
            cell.setCellStyle(style);
            cell = row.createCell((short) 2);
            cell.setCellValue("危险源");
            cell.setCellStyle(style);
            cell = row.createCell((short) 3);
            cell.setCellValue("风险");
            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("专业类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 5);
            cell.setCellValue("风险等级");
            cell.setCellStyle(style);
            cell = row.createCell((short) 6);
            cell.setCellValue("检查时间");
            cell.setCellStyle(style);
            cell = row.createCell((short) 7);
            cell.setCellValue("管控层级");
            cell.setCellStyle(style);
            cell = row.createCell((short) 8);
            cell.setCellValue("检查部门");
            cell.setCellStyle(style);
            cell = row.createCell((short) 9);
            cell.setCellValue("检查人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 10);
            cell.setCellValue("状态");
            cell.setCellStyle(style);
            cell = row.createCell((short) 11);
            cell.setCellValue("检查结果");
            cell.setCellStyle(style);
            // 第五步，写入实体数据 实际应用中这些数据从数据库得到
            Riskcontrolhistory  riskcontrolhistory1 = new Riskcontrolhistory();
            String startCheckTime,endCheckTime;
            if(checkTime != null && checkTime != "/" && checkTime != ""){
                String[] times = checkTime.split("/");

                if(times != null && times.length>0 && times[0] != null){
                    startCheckTime = times[0];
                    riskcontrolhistory1.setStartCheckTime(startCheckTime);
                }
                if(times != null && times.length>1 && times[1] != null){
                    endCheckTime = times[1];
                    riskcontrolhistory1.setEndCheckTime(endCheckTime);
                }
            }
            riskcontrolhistory1.setRiskSiteName(riskSiteName);
            riskcontrolhistory1.setRiskObjName(riskObjName);
            riskcontrolhistory1.setRiskHazardName(riskHazardName);
            riskcontrolhistory1.setRiskValue(riskValue);

            String[] riskStates = {};
            String[] riskControlLevels = {};
            if(riskState != null && riskState != ""){
                riskStates = riskState.split(",");
            }
            if(riskControlLevel!= null && riskControlLevel != ""){
                riskControlLevels = riskControlLevel.split(",");
            }
            riskcontrolhistory1.setCheckTime(null);
            riskcontrolhistory1.setRiskStates(riskStates);
            riskcontrolhistory1.setRiskControlLevels(riskControlLevels);
//            riskcontrolhistory1.setCheckTime(eCheckTime);
            riskcontrolhistory1.setCheckDept(checkDept);
            riskcontrolhistory1.setCheckerName(checkerName);
            riskcontrolhistory1.setCheckResult(checkResult);
//            riskcontrolhistory1.setMajorType(majorType);
//            riskcontrolhistory1.setRiskSiteName(riskSiteName);
            if(riskHazardId != null && riskHazardId != ""){
                riskcontrolhistory1.setRiskHazardID(Integer.parseInt(riskHazardId));
            }
            riskcontrolhistory1.setFrameworkID(framework.getFramewordID());
            List<Riskcontrolhistory> riskcontrolhistoryList = riskcontrolhistoryService.getRiskcontrolhistoryList(riskcontrolhistory1);
            for (int i = 0; i < riskcontrolhistoryList.size(); i++) {
                row = sheet.createRow((int) i + 1);
                Riskcontrolhistory riskcontrolhistory = (Riskcontrolhistory) riskcontrolhistoryList.get(i);
                //创建单元格，并设置值
                row.createCell((short) 0).setCellValue(i + 1);
                row.createCell((short) 1).setCellValue(riskcontrolhistory.getRiskSiteName());
                row.createCell((short) 2).setCellValue(riskcontrolhistory.getRiskObjName());
                row.createCell((short) 3).setCellValue(riskcontrolhistory.getRiskHazardName());
                row.createCell((short) 4).setCellValue(riskcontrolhistory.getMajorType());
                row.createCell((short) 5).setCellValue(riskcontrolhistory.getRiskValue());
                row.createCell((short) 6).setCellValue(riskcontrolhistory.getCheckTime());
                row.createCell((short) 7).setCellValue(riskcontrolhistory.getRiskControlLevel());
                row.createCell((short) 8).setCellValue(riskcontrolhistory.getCheckDept());
                row.createCell((short) 9).setCellValue(riskcontrolhistory.getCheckerName());
                row.createCell((short) 10).setCellValue(("1".equals(riskcontrolhistory.getRiskState())?"失控":"未失控"));
                row.createCell((short) 11).setCellValue(riskcontrolhistory.getCheckResult());

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
    * 新增一个Riskcontrolhistory
    * @param riskcontrolhistory  Riskcontrolhistory对象
    * @return 是否新增成功
    */
    @RequestMapping(value = "/add",method=RequestMethod.POST)
    public Object addRiskcontrolhistory(@RequestBody Riskcontrolhistory  riskcontrolhistory){
        try{
            return riskcontrolhistoryService.addRiskcontrolhistory(riskcontrolhistory);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    /**
    * 根据主键删除Riskcontrolhistory
    * @param riskcontrolhistory Riskcontrolhistory对象
    * @return 是否删除成功
    */
    @RequestMapping(value = "/delete",method=RequestMethod.DELETE)
    public Object deleteRiskcontrolhistory(@RequestBody Riskcontrolhistory  riskcontrolhistory){
        try{
            return riskcontrolhistoryService.deleteRiskcontrolhistory(riskcontrolhistory);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    /**
    * 根据主键更新Riskcontrolhistory
    * @param  riskcontrolhistory  Riskcontrolhistory对象
    * @return 是否更新成功
    */
    @RequestMapping(value = "/update",method=RequestMethod.PUT)
    public Object updateRiskcontrolhistory(@RequestBody Riskcontrolhistory  riskcontrolhistory){
        try{
            return riskcontrolhistoryService.updateRiskcontrolhistory(riskcontrolhistory);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

}