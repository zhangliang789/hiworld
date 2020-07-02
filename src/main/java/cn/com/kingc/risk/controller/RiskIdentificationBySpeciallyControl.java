package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.Riskidentificationbyspecially;
import cn.com.kingc.risk.model.Riskidentificationbyyear;
import cn.com.kingc.risk.model.Risksiteoutofcontrol;
import cn.com.kingc.risk.model.Risksiteoutofcontrolitem;
import cn.com.kingc.risk.service.RiskidentificationbyspeciallyService;
import cn.com.kingc.risk.util.Properties;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
//import org.kplatform4j.model.Framework;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/**
 * @author admistrator
 * @version 1.0
 * @created 27-8月-2017 11:15:38
 */
@RestController
@RequestMapping("/RiskIdentificationBySpecially")
public class RiskIdentificationBySpeciallyControl {

    @Autowired
    RiskidentificationbyspeciallyService riskidentificationbyspeciallyService;

    //获取一个空的Riskidentificationbyspecially对象
    @RequestMapping(value = "/newRiskidentificationbyspecially", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Riskidentificationbyspecially对象", response = Risksiteoutofcontrol.class, httpMethod = "GET", notes = "获取一个空的Riskidentificationbyspecially对象")
    public Object getNewRiskidentificationbyspecially(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Riskidentificationbyspecially riskidentificationbyspecially = new Riskidentificationbyspecially();
        riskidentificationbyspecially.setCoalMineName(framework.getFrameWorkName());
        riskidentificationbyspecially.setFrameWorkID(framework.getFramewordID());
        riskidentificationbyspecially.setRiskIdentificationSpeciallyID(null);
        return riskidentificationbyspecially;
    }


    //获取风险管控清单共有多少页
    @RequestMapping(value = "/PageCount", method = RequestMethod.POST)
    @ApiOperation(value = "获取失控危险源信息少页", httpMethod = "POST", notes = "风险管控计划共有多少页")
    public Object getPageCount(@RequestBody Riskidentificationbyspecially riskidentificationbyspecially) {
        try {
            int count = riskidentificationbyspeciallyService.getRiskidentificationbyspeciallyCountByRiskidentificationbyspecially(riskidentificationbyspecially);
            int page = count / riskidentificationbyspecially.getPagesize();
            int ls = count % riskidentificationbyspecially.getPagesize();
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
    public Object getRiskidentificationbyspeciallyByPage(@RequestBody Riskidentificationbyspecially riskidentificationbyspecially) {
        try {
            Integer pageBegin = riskidentificationbyspecially.getPagesize();
            Integer pageEnd = riskidentificationbyspecially.getPage();
            List<Riskidentificationbyspecially> risksiteoutofcontrolList = riskidentificationbyspeciallyService.getRiskidentificationbyspeciallyByPageAndRiskidentificationbyspecially(riskidentificationbyspecially);
            // 遍历属性以获取值
            for (Riskidentificationbyspecially rs : risksiteoutofcontrolList) {
                rs.getCoalMineName();
                rs.getmRiskSite();
            }
            return risksiteoutofcontrolList;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
    //黄陵二矿，分页获取风险管控清单数据
    @RequestMapping(value = "/PagebyHL", method = RequestMethod.POST)
    @ApiOperation(value = "分页获取失控危险源信息，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取失控危险源信息，返回List结合")
    public Object getRiskidentificationbyspeciallyByPageByHL(@RequestBody Riskidentificationbyspecially riskidentificationbyspecially) {
        try {
            Integer pageBegin = riskidentificationbyspecially.getPagesize();
            Integer pageEnd = riskidentificationbyspecially.getPage();
//            List<Riskidentificationbyspecially> risksiteoutofcontrolList = riskidentificationbyspeciallyService.getRiskidentificationbyspeciallyByPageAndRiskidentificationbyspecially(riskidentificationbyspecially);
            List<Riskidentificationbyspecially> risksiteoutofcontrolList = riskidentificationbyspeciallyService.getRiskidentificationbyHLByPage(riskidentificationbyspecially);
            // 遍历属性以获取值
            for (Riskidentificationbyspecially rs : risksiteoutofcontrolList) {
                rs.getCoalMineName();
                rs.getmRiskSite();
            }
            return risksiteoutofcontrolList;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ApiOperation(value = "添加专项辨识", response = Boolean.class, httpMethod = "POST", notes = "添加专项辨识")
    public Boolean addRiskidentificationbyspecially(@RequestBody Riskidentificationbyspecially riskidentificationbyspecially) {
        try{
            riskidentificationbyspecially.setRiskIdentificationSpeciallyUUID(UUID.randomUUID().toString());
            return riskidentificationbyspeciallyService.addRiskidentificationbyspecially(riskidentificationbyspecially);

        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    //添加转跳
    @RequestMapping(value = "/byadd", method = RequestMethod.POST)
    public Boolean Riskidentificationbyspeciallybyadd( HttpServletRequest request){
        request.getSession().setAttribute("Speciallyid",0);
        return true;
    }


    //用于修改传递主键（主键放入session）
    @RequestMapping(value = "/byid/{Speciallyid}", method = RequestMethod.POST)
    public Boolean Riskidentificationbyspeciallyid(@PathVariable("Speciallyid") Integer Speciallyid, HttpServletRequest request){
         request.getSession().setAttribute("Speciallyid",Speciallyid);
        return true;
    }

    //通过主键获取专项辨识
    @RequestMapping(value = "/bySpeciallyid", method = RequestMethod.POST)
    @ApiOperation(value = "获取专项辨识", response = Riskidentificationbyspecially.class, httpMethod = "POST", notes = "通过主键获取专项辨识")
    public Object getRiskidentificationbyspecially(Integer speciallyid) {
        try{
            return riskidentificationbyspeciallyService.getRiskidentificationbyspecially(speciallyid);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    //修改方法
    @RequestMapping(value = "/updatespeciy", method = RequestMethod.POST)
    @ApiOperation(value = "添加专项辨识", response = Riskidentificationbyspecially.class, httpMethod = "POST", notes = "添加专项辨识")
    public Object upRiskidentificationbyspecially(@RequestBody Riskidentificationbyspecially riskidentificationbyspecially) {
        try{
            return riskidentificationbyspeciallyService.updateRiskidentificationbyspecially(riskidentificationbyspecially);

        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }
    //删除方法，参数是对象
    @RequestMapping(value = "/delete1", method = RequestMethod.DELETE)
    @ApiOperation(value = "删除一个Riskidentificationbyspecially对象", response = Boolean.class, httpMethod = "DELETE", notes = "删除一个Riskidentificationbyspecially对象")
    public Object removeRiskidentificationbyspecially(@RequestBody Riskidentificationbyspecially riskidentificationbyspecially) {
        try{
            return riskidentificationbyspeciallyService.deleteRiskidentificationbyspecially(riskidentificationbyspecially);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }
    //通过主键删除
    @RequestMapping(value = "/delete/{speciallyid}", method = RequestMethod.DELETE)
    @ApiOperation(value = "删除一个Riskidentificationbyspecially对象", response = Boolean.class, httpMethod = "DELETE", notes = "删除一个Riskidentificationbyspecially对象")
    public Boolean deletRiskidentificationbyspecially(@PathVariable("speciallyid")Integer speciallyid) {

        try{
            return riskidentificationbyspeciallyService.deleteRiskidentificationbyspeciallyByID(speciallyid);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }


    /**
     * @param mItem
     */
    @RequestMapping(value = "/saveRiskidentificationbyspecially", method = RequestMethod.POST)
    @ApiOperation(value = "保存专项辨识对象", response = boolean.class, httpMethod = "POST", notes = "保存专项辨识对象")
    public boolean saveRiskidentificationbyspecially(@RequestBody Riskidentificationbyspecially mItem) {
        if (mItem.getRiskIdentificationSpeciallyID() > 0) {
            return riskidentificationbyspeciallyService.updateRiskidentificationbyspecially(mItem);
        } else {
            return riskidentificationbyspeciallyService.addRiskidentificationbyspecially(mItem);
        }
    }

    //通过年份月份判断信息是否重复
    @RequestMapping(value = "/byyearandmonth", method = RequestMethod.POST)
  //  @ApiOperation(value = "判断专项辨识", response = Riskidentificationbyspecially.class, httpMethod = "POST", notes = "判断专项辨识")
    public Object byyearandmonthRiskidentificationbyspecially(Integer identificationYear,String IdentificationMonth,HttpServletRequest request) {
        try{
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Riskidentificationbyspecially riskidentificationbyspecially = new Riskidentificationbyspecially();
            riskidentificationbyspecially.setCoalMineName(framework.getFrameWorkName());
            riskidentificationbyspecially.setFrameWorkID(framework.getFramewordID());

            riskidentificationbyspecially.setIdentificationYear(identificationYear);
            riskidentificationbyspecially.setIdentificationMonth(IdentificationMonth);
            List<Riskidentificationbyspecially> riskidentificationbyspeciallylist =riskidentificationbyspeciallyService.getRiskidentificationbyspeciallyData(riskidentificationbyspecially);
            if(riskidentificationbyspeciallylist.size()==0 || riskidentificationbyspeciallylist==null){
                return 0;
            }else{
                return riskidentificationbyspeciallylist;
            }

        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    @RequestMapping(value = "/getExcell", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcell(String ExcellID, String ExcellName, HttpServletResponse response, HttpServletRequest request) {
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
            cell.setCellValue("月度");
            cell.setCellStyle(style);
            cell = row.createCell((short) 3);
            cell.setCellValue("辨识风险点数量");
            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("专项辨识类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 5);
            cell.setCellValue("状态");
            cell.setCellStyle(style);
            cell = row.createCell((short) 6);
            cell.setCellValue("主持人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 7);
            cell.setCellValue("记录人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 8);
            cell.setCellValue("参会人员");
            cell.setCellStyle(style);
            cell = row.createCell((short) 9);
            cell.setCellValue("附件");
            cell.setCellStyle(style);
            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Riskidentificationbyspecially riskidentificationbyspecially1=new Riskidentificationbyspecially();
            riskidentificationbyspecially1.setFrameWorkID(framework.getFramewordID());
            riskidentificationbyspecially1.setCoalMineName(framework.getFrameWorkName());
            List<Riskidentificationbyspecially> riskidentificationbyspeciallyList=riskidentificationbyspeciallyService.getRiskidentificationbyspeciallyData(riskidentificationbyspecially1);

            for (int i = 0; i < riskidentificationbyspeciallyList.size(); i++) {
                row = sheet.createRow((int) i + 1);
                Riskidentificationbyspecially riskidentificationbyspecially = (Riskidentificationbyspecially) riskidentificationbyspeciallyList.get(i);
                // 第四步，创建单元格，并设置值
                row.createCell((short) 0).setCellValue(i + 1);
                row.createCell((short) 1).setCellValue(riskidentificationbyspecially.getIdentificationYear());
                row.createCell((short) 2).setCellValue(riskidentificationbyspecially.getIdentificationMonth());

                row.createCell((short) 3).setCellValue(riskidentificationbyspecially.getmRiskSite().getmChildRiskSite().size());

                row.createCell((short) 4).setCellValue(riskidentificationbyspecially.getIdentityType());
                if(riskidentificationbyspecially.getmRiskSite().getStatus()){

                    row.createCell((short) 5).setCellValue("已评估");

                }else{

                    row.createCell((short) 5).setCellValue("未评估");

                }

                row.createCell((short) 6).setCellValue(riskidentificationbyspecially.getMeetingCompere());
                row.createCell((short) 7).setCellValue(riskidentificationbyspecially.getMeetingRecorder());
                row.createCell((short) 8).setCellValue(riskidentificationbyspecially.getMeetingParticipant());
                row.createCell((short) 9).setCellValue(riskidentificationbyspecially.getMeetringAttachmentFileName());
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


    @RequestMapping(value = "/getExcellByHL", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcellbyHL(String ExcellID, String ExcellName, HttpServletResponse response, HttpServletRequest request) {
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
            cell.setCellValue("月度");
            cell.setCellStyle(style);
//            cell = row.createCell((short) 3);
//            cell.setCellValue("辨识风险点数量");
//            cell.setCellStyle(style);
            cell = row.createCell((short) 3);
            cell.setCellValue("专项辨识类型");
            cell.setCellStyle(style);
//            cell = row.createCell((short) 5);
//            cell.setCellValue("状态");
//            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("主持人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 5);
            cell.setCellValue("记录人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 6);
            cell.setCellValue("参会人员");
            cell.setCellStyle(style);
            cell = row.createCell((short) 7);
            cell.setCellValue("附件");
            cell.setCellStyle(style);
            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Riskidentificationbyspecially riskidentificationbyspecially1=new Riskidentificationbyspecially();
            riskidentificationbyspecially1.setFrameWorkID(framework.getFramewordID());
            riskidentificationbyspecially1.setCoalMineName(framework.getFrameWorkName());
            List<Riskidentificationbyspecially> riskidentificationbyspeciallyList=riskidentificationbyspeciallyService.getRiskidentificationbyspeciallybyHLData(riskidentificationbyspecially1);

            for (int i = 0; i < riskidentificationbyspeciallyList.size(); i++) {
                row = sheet.createRow((int) i + 1);
                Riskidentificationbyspecially riskidentificationbyspecially = (Riskidentificationbyspecially) riskidentificationbyspeciallyList.get(i);
                // 第四步，创建单元格，并设置值
                row.createCell((short) 0).setCellValue(i + 1);
                row.createCell((short) 1).setCellValue(riskidentificationbyspecially.getIdentificationYear());
                row.createCell((short) 2).setCellValue(riskidentificationbyspecially.getIdentificationMonth());

//                row.createCell((short) 3).setCellValue(riskidentificationbyspecially.getmRiskSite().getmChildRiskSite().size());

                row.createCell((short) 3).setCellValue(riskidentificationbyspecially.getIdentityType());
//                if(riskidentificationbyspecially.getmRiskSite().getStatus()){
//
//                    row.createCell((short) 5).setCellValue("已评估");
//
//                }else{
//
//                    row.createCell((short) 5).setCellValue("未评估");
//
//                }

                row.createCell((short) 4).setCellValue(riskidentificationbyspecially.getMeetingCompere());
                row.createCell((short) 5).setCellValue(riskidentificationbyspecially.getMeetingRecorder());
                row.createCell((short) 6).setCellValue(riskidentificationbyspecially.getMeetingParticipant());
                row.createCell((short) 7).setCellValue(riskidentificationbyspecially.getMeetringAttachmentFileName());
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



}