package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.Riskcontrolmeasure;
import cn.com.kingc.risk.model.Risksite;
import cn.com.kingc.risk.service.Security_risk_assessmentService;
import cn.com.kingc.risk.model.Security_risk_assessment;
import cn.com.kingc.risk.util.Properties;
import com.wordnik.swagger.annotations.ApiOperation;
import org.apache.commons.io.FileUtils;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/**
 * Title:安全风险评估表
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 *
 * @author
 * @Description:
 * @date 2018-10-14 10:21:16 中国标准时间
 */
@RestController
@RequestMapping("/Security_risk_assessment")
public class Security_risk_assessmentController {

    @Autowired
    private Security_risk_assessmentService security_risk_assessmentService;

    /**
     * 构建空对象
     */
    @RequestMapping(value = "/newSecurity_risk_assessment", method = RequestMethod.GET)
    public Object newSecurity_risk_assessment() {
        return new Security_risk_assessment();
    }

    //获取页数
    @RequestMapping(value = "/getSecurity_risk_assessmentPageCount", method = RequestMethod.POST)
    public Object getSecurity_risk_assessmentPageCount(@RequestBody Security_risk_assessment security_risk_assessment) {
        try {
            int count = security_risk_assessmentService.getSecurity_risk_assessmentCount(security_risk_assessment);
            int page = count / security_risk_assessment.getPagesize();
            int ls = count % security_risk_assessment.getPagesize();
            if (ls > 0) {
                page++;
            }
            return page;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    //分页获取清单数据
    @RequestMapping(value = "/getSecurity_risk_assessmentByPage", method = RequestMethod.POST)
    public Object getSecurity_risk_assessmentByPage(@RequestBody Security_risk_assessment security_risk_assessment) {
        try {
            return security_risk_assessmentService.getSecurity_risk_assessmentByPage(security_risk_assessment);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //新增页面 根据是否含有id判断是增加还是修改
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public Object addSecurity_risk_assessment(@RequestBody Security_risk_assessment security_risk_assessment) {
        try {
            if (security_risk_assessment.getRisk_id() == null) {
                return security_risk_assessmentService.addSecurity_risk_assessment(security_risk_assessment);
            } else {
                return security_risk_assessmentService.updateSecurity_risk_assessment(security_risk_assessment);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * 根据主键删除Security_risk_assessment
     *
     * @param risk_id Security_risk_assessment主键
     * @return 是否删除成功
     */
    @RequestMapping(value = "/deleteSecurity_risk_assessmentById/{risk_id}", method = RequestMethod.DELETE)
    public Object deleteSecurity_risk_assessmentById(@PathVariable("risk_id") Integer risk_id) {
        try {
            return security_risk_assessmentService.deleteSecurity_risk_assessmentByID(risk_id);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * 根据主键删除Security_risk_assessment
     *
     * @param security_risk_assessment Security_risk_assessment对象
     * @return 是否删除成功
     */
    @RequestMapping(value = "/deledeleteSecurity_risk_assessment", method = RequestMethod.DELETE)
    public Object deleteSecurity_risk_assessment(@RequestBody Security_risk_assessment security_risk_assessment) {
        try {
            return security_risk_assessmentService.deleteSecurity_risk_assessment(security_risk_assessment);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * 根据主键更新Security_risk_assessment
     *
     * @param security_risk_assessment Security_risk_assessment对象
     * @return 是否更新成功
     */
    @RequestMapping(value = "/update", method = RequestMethod.PUT)
    public Object updateSecurity_risk_assessment(@RequestBody Security_risk_assessment security_risk_assessment) {
        try {
            return security_risk_assessmentService.updateSecurity_risk_assessment(security_risk_assessment);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    //根据主键获取Security_risk_assessment对象
    @RequestMapping(value = "/getSecurity_risk_assessmentById/{risk_id}", method = RequestMethod.POST)
    public Object getSecurity_risk_assessmentById(@PathVariable("risk_id") Integer risk_id) {
        return security_risk_assessmentService.getSecurity_risk_assessment(risk_id);
    }

    //导入文件
    @RequestMapping(value = "/UploadFile")
    @ApiOperation(value = "上传风险预控清单文件，返回文件在服务器上的名称", httpMethod = "GET", notes = "上传风险预控清单文件，返回文件在服务器上的名称")
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
                session.setAttribute("uplaodFileName", serverName);
                return security_risk_assessmentService.analysisData(framework, serverName);

            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return result;
    }

    @RequestMapping(value = "/getExcell", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcell(String ExcellID, String ExcellName, String risk_department,
                          String risk_task, String risk_procedure, String risk_risk,
                          String risk_type, String risk_accitype,
                          String risk_grade, HttpServletResponse response, HttpServletRequest request) {
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
            cell.setCellValue("部门");
            cell.setCellStyle(style);
            cell = row.createCell((short) 2);
            cell.setCellValue("工作任务");
            cell.setCellStyle(style);
            cell = row.createCell((short) 3);
            cell.setCellValue("工序");
            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("风险");
            cell.setCellStyle(style);
            cell = row.createCell((short) 5);
            cell.setCellValue("风险后果描述");
            cell.setCellStyle(style);
            cell = row.createCell((short) 6);
            cell.setCellValue("风险类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 7);
            cell.setCellValue("事故类型");
            cell.setCellStyle(style);
            cell = row.createCell((short) 8);
            cell.setCellValue("事故发生条件");
            cell.setCellStyle(style);
            cell = row.createCell((short) 9);
            cell.setCellValue("可能性");
            cell.setCellStyle(style);
            cell = row.createCell((short) 10);
            cell.setCellValue("损失");
            cell.setCellStyle(style);
            cell = row.createCell((short) 11);
            cell.setCellValue("风险值");
            cell.setCellStyle(style);
            cell = row.createCell((short) 12);
            cell.setCellValue("风险等级");
            cell.setCellStyle(style);
            cell = row.createCell((short) 13);
            cell.setCellValue("管控对象");
            cell.setCellStyle(style);
            cell = row.createCell((short) 14);
            cell.setCellValue("管理标准");
            cell.setCellStyle(style);
            cell = row.createCell((short) 15);
            cell.setCellValue("主要负责人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 16);
            cell.setCellValue("直接管理人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 17);
            cell.setCellValue("主要监管部门");
            cell.setCellStyle(style);
            cell = row.createCell((short) 18);
            cell.setCellValue("主要监管人");
            cell.setCellStyle(style);
            cell = row.createCell((short) 19);
            cell.setCellValue("监管措施");
            cell.setCellStyle(style);

            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            Security_risk_assessment security_risk_assessment1 = new Security_risk_assessment();
            security_risk_assessment1.setRisk_task(risk_department);
            security_risk_assessment1.setRisk_task(risk_task);
            security_risk_assessment1.setRisk_procedure(risk_procedure);
            security_risk_assessment1.setRisk_risk(risk_risk);
            security_risk_assessment1.setRisk_type(risk_type);
            security_risk_assessment1.setRisk_accitype(risk_accitype);
            security_risk_assessment1.setRisk_grade(risk_grade);

            List<Security_risk_assessment> security_risk_assessmentList = security_risk_assessmentService.getSecurity_risk_assessmentList(security_risk_assessment1);
            for (int i = 0; i < security_risk_assessmentList.size(); i++) {
                row = sheet.createRow((int) i + 1);
                Security_risk_assessment security_risk_assessment = security_risk_assessmentList.get(i);
                // 第四步，创建单元格，并设置值
                row.createCell((short) 0).setCellValue(i + 1);
                row.createCell((short) 1).setCellValue(security_risk_assessment.getRisk_department());
                row.createCell((short) 2).setCellValue(security_risk_assessment.getRisk_task());
                row.createCell((short) 3).setCellValue(security_risk_assessment.getRisk_procedure());
                row.createCell((short) 4).setCellValue(security_risk_assessment.getRisk_risk());
                row.createCell((short) 5).setCellValue(security_risk_assessment.getRisk_consequences());
                row.createCell((short) 6).setCellValue(security_risk_assessment.getRisk_type());
                row.createCell((short) 7).setCellValue(security_risk_assessment.getRisk_accitype());
                row.createCell((short) 8).setCellValue(security_risk_assessment.getRisk_condition());
                row.createCell((short) 9).setCellValue(security_risk_assessment.getRisk_possibility());
                row.createCell((short) 10).setCellValue(security_risk_assessment.getRisk_loss());
                row.createCell((short) 11).setCellValue(security_risk_assessment.getRisk_value());
                row.createCell((short) 12).setCellValue(security_risk_assessment.getRisk_grade());
                row.createCell((short) 13).setCellValue(security_risk_assessment.getRisk_object());
                row.createCell((short) 14).setCellValue(security_risk_assessment.getRisk_standard());
                row.createCell((short) 15).setCellValue(security_risk_assessment.getRisk_priperson());
                row.createCell((short) 16).setCellValue(security_risk_assessment.getRisk_dirmanager());
                row.createCell((short) 17).setCellValue(security_risk_assessment.getRisk_major());
                row.createCell((short) 18).setCellValue(security_risk_assessment.getRisk_majorperson());
                row.createCell((short) 19).setCellValue(security_risk_assessment.getRisk_measures());

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
}