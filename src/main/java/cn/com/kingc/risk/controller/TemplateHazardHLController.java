package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.TemplatehazardHLService;
import cn.com.kingc.risk.util.ExcelCell;
import cn.com.kingc.risk.util.ExcelRow;
import cn.com.kingc.risk.util.ExcelUtils;
import cn.com.kingc.risk.util.Properties;
import com.wordnik.swagger.annotations.ApiOperation;
import org.apache.commons.io.FileUtils;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/TemplatehazardHL")
public class TemplateHazardHLController {

    @Autowired
    TemplatehazardHLService templatehazardHLService;
    //保存或修改
    @RequestMapping(value = "/updateTemplatehazardHL", method = RequestMethod.POST)
    public Object updateTemplatehazard(@RequestBody TemplatehazardHL templatehazardHL) {
        try {
            return templatehazardHLService.saveOrUpdateHazardHLList(templatehazardHL);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //查询总条数
    @RequestMapping(value = "/getTemplatehazardHLByCount", method = RequestMethod.POST)
    public Integer getTemplatehazardHLByCount(@RequestBody TemplatehazardHL templatehazardHL){
        try {
            int count = templatehazardHLService.getTemplatehazardHLCount(templatehazardHL);
            int page = count / templatehazardHL.getPagesize();
            int ls = count % templatehazardHL.getPagesize();
            if (ls > 0) {
                page++;
            }
            return page;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //分页查询
    @RequestMapping(value = "/getTemplatehazardHLByPage", method = RequestMethod.POST)
    public Object getTemplatehazardHLByPage(@RequestBody TemplatehazardHL templatehazardHL){
        try {
            return templatehazardHLService.getTemplatehazardHLByPage(templatehazardHL);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //分页查询
    @RequestMapping(value = "/getTemplatehazardHLList", method = RequestMethod.POST)
    public Object getTemplatehazardHLList(@RequestBody TemplatehazardHL templatehazardHL){
        try {
            return templatehazardHLService.getTemplatehazardHLList(templatehazardHL);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //删除单条数据
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public Object delete(Integer hazardID) {
        try {
            return templatehazardHLService.deleteTemplatehazardHLByID(hazardID);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/UploadFile")
    @ApiOperation(value = "上传线下辨识结果文件，返回文件在服务器上的名称", httpMethod = "GET", notes = "上传线下辨识结果文件，返回文件在服务器上的名称")
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
                //session.setAttribute("uplaodFileName", serverName);
                return templatehazardHLService.analysisData(framework, serverName);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return result;
    }

}
