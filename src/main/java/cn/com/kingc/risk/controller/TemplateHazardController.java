package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.*;
import cn.com.kingc.risk.util.ExcelCell;
import cn.com.kingc.risk.util.ExcelRow;
import cn.com.kingc.risk.util.ExcelUtils;
import cn.com.kingc.risk.util.Properties;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
import org.apache.commons.io.FileUtils;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;
import org.platform4j.model.Framework;
import org.platform4j.model.Place;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import static java.lang.Integer.parseInt;

/**
 * Created by txianwei on 2017/9/11.
 */
@RestController
@RequestMapping("Templatehazard")
public class TemplateHazardController {
    @Autowired
    private TemplatehazardService templatehazardService;

    @Autowired
    private RiskhazardcontrolrangeService riskhazardcontrolrangeService;

    @Autowired
    private RiskhazardService riskhazardService;

    @Autowired
    private RiskAnalyzeService riskAnalyzeService;
    @Autowired
    private RiskdegreeService riskdegreeService;
    @Autowired
    private TemplateriskcontrolmeasureService templateriskcontrolmeasureService;


    @RequestMapping(value = "/newTemplatehazard", method = RequestMethod.GET)
    public Object newTemplatehazard(HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Templatehazard templatehazard = new Templatehazard();
            templatehazard.setCoalMineName(framework.getFrameWorkName());
            templatehazard.setFrameWorkID(framework.getFramewordID());
            return templatehazard;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/getNewRiskhazardcontrolrange", method = RequestMethod.GET)
    public Object getNewRiskhazardcontrolrange(HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Riskhazardcontrolrange riskhazardcontrolrange = new Riskhazardcontrolrange();
            riskhazardcontrolrange.setCoalMineName(framework.getFrameWorkName());
            riskhazardcontrolrange.setFrameWorkID(framework.getFramewordID());
            return riskhazardcontrolrange;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/newPlace", method = RequestMethod.GET)
    public Object newPlace(HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Place place = new Place();
            place.setFOrgID(framework.getFramewordID());
            return place;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/getTemplatehazardAndPlaceByCount", method = RequestMethod.POST)
    public Object getTemplatehazardAndPlaceByCount(@RequestBody Templatehazard templatehazard) {
        try {
            int count = templatehazardService.getTemplatehazardCount(templatehazard);
            int page = count / templatehazard.getPagesize();
            int ls = count % templatehazard.getPagesize();
            if (ls > 0) {
                page++;
            }
            return page;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/getTemplatehazardAndPlaceByPage", method = RequestMethod.POST)
    public Object getNewRiskcontrolmeasure(@RequestBody Templatehazard templatehazard) {
        try {
            return templatehazardService.getTemplatehazardAndPlaceByPage(templatehazard);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //添加
    @RequestMapping(value = "/addTemplatehazard", method = RequestMethod.POST)
    public Object addTemplatehazard(@RequestBody Templatehazard templatehazard) {
        try {
            templatehazard.setHazardUUID(UUID.randomUUID().toString());
            return templatehazardService.addTemplatehazard(templatehazard);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //添加
    @RequestMapping(value = "/addTemplateriskControlmeasure", method = RequestMethod.POST)
    public Object addTemplateriskControlmeasure(@RequestBody Templateriskcontrolmeasure templateriskcontrolmeasure) {
        try {
            return templateriskcontrolmeasureService.addTemplateriskcontrolmeasure(templateriskcontrolmeasure);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //删除
    @RequestMapping(value = "/deleteTemplateriskcontrolmeasureByHazardID", method = RequestMethod.POST)
    public Object deleteTemplateriskcontrolmeasureByHazardID(Integer hazardID) {
        try {
            return templateriskcontrolmeasureService.deleteTemplateriskcontrolmeasureByHazardID(hazardID);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //删除
    @RequestMapping(value = "/deleteTemplatehazard", method = RequestMethod.POST)
    public Object deleteTemplatehazard(@RequestBody Templatehazard templatehazard) {
        try {
            return templatehazardService.deleteTemplatehazard(templatehazard);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //修改
    @RequestMapping(value = "/updateTemplatehazard", method = RequestMethod.POST)
    public Object updateTemplatehazard(@RequestBody Templatehazard templatehazard) {
        try {
            return templatehazardService.updateTemplatehazard(templatehazard);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //存放ID
    @RequestMapping(value = "/addHazardIDBySession/{temHazardID}/{currentPage}", method = RequestMethod.POST)
    public Object updateTemplatehazard(@PathVariable("temHazardID") Integer temHazardID, @PathVariable("currentPage") Integer currentPage, HttpServletRequest request) {
        try {
            request.getSession().setAttribute("temHazardID", temHazardID);
            request.getSession().setAttribute("currentPage", currentPage);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //根据ID查询风险信息（包括地点）
    @RequestMapping(value = "/getTemplatehazardAndPlace/{HazardID}", method = RequestMethod.POST)
    public Object getTemplatehazardAndPlace(@PathVariable("HazardID") Integer HazardID) {
        try {

            return templatehazardService.getTemplatehazardAndPlace(HazardID);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //指定地点
    @RequestMapping(value = "/addRiskToPlaceList/{HazardID}", method = RequestMethod.POST)
    public Object addRiskToPlaceList(@RequestBody List<Place> lst, @PathVariable("HazardID") Integer HazardID) {
        try {
            Templatehazard templatehazard = templatehazardService.getTemplatehazardAndPlace(HazardID);
            return templatehazardService.addRiskToPlaceList(templatehazard, lst);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //添加管控范围
    @RequestMapping(value = "/addRiskhazardcontrolrange", method = RequestMethod.POST)
    public Object addRiskhazardcontrolrange(@RequestBody List<Riskhazardcontrolrange> lst) {
        try {
            for (Riskhazardcontrolrange riskhazardcontrolrange : lst) {

                templatehazardService.addRiskhazardcontrolrange(riskhazardcontrolrange);
            }
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //添加管控范围
    @RequestMapping(value = "/updateRiskhazardcontrolrange", method = RequestMethod.POST)
    public Object addRiskhazardcontrolrange(@RequestBody Riskhazardcontrolrange riskhazardcontrolrange) {
        try {
            return riskhazardcontrolrangeService.updateRiskhazardcontrolrange(riskhazardcontrolrange);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //删除管控范围
    @RequestMapping(value = "/deleteRiskhazardByID/{RiskHazardID}", method = RequestMethod.POST)
    public Object deleteRiskhazardByID(@PathVariable("RiskHazardID") Integer RiskHazardID) {
        try {
            return riskhazardService.deleteRiskhazardByID(RiskHazardID);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //删除管控范围
    @RequestMapping(value = "/deleteRiskhazardcontrolrangeList", method = RequestMethod.POST)
    public Object deleteRiskhazardcontrolrangeList(@RequestBody List<Riskhazardcontrolrange> riskhazardcontrolrangeList) {
        try {
            riskhazardcontrolrangeService.deleteRiskhazardcontrolrangeList(riskhazardcontrolrangeList);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //辛安风险管控清单
    @RequestMapping(value = "/getRiskDetailByXinAnCount", method = RequestMethod.POST)
    public Object getRiskDetailByXinAnCount(String topName, String hazardName,String childName,
                                            String majorType, String damageType,
                                            Integer riskLevelSettingID, String accidentType,
                                            String startTime, String endTime, HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            String frameworkName = framework.getFrameWorkName();
            return riskAnalyzeService.getRiskDetailByXinAnCount(frameWorkID, frameworkName,
                    topName,childName,hazardName, majorType, damageType, riskLevelSettingID,
                    accidentType, startTime, endTime);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //辛安风险管控清单
    @RequestMapping(value = "/getRiskDetailByXinAn", method = RequestMethod.POST)
    public Object getRiskDetailByXinAn(String topName,String childName, String hazardName,
                                       String majorType, String damageType,
                                       Integer riskLevelSettingID, String accidentType,
                                       String startTime, String endTime, Integer page, Integer pageEnd, HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            String frameworkName = framework.getFrameWorkName();
            Integer pageBegin = (page - 1) * pageEnd;
            return riskAnalyzeService.getRiskDetailByXinAn(frameWorkID, frameworkName,
                    topName,childName,hazardName, majorType, damageType, riskLevelSettingID,
                    accidentType, startTime, endTime, pageBegin, pageEnd);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //辛安风险管控清单
    @RequestMapping(value = "/getRiskDetailByLiangJiaCount", method = RequestMethod.POST)
    public Object getRiskDetailByLiangJiaCount(String topName, String hazardName,
                                            String majorType, String damageType,
                                            Integer riskLevelSettingID, String accidentType,
                                            String startTime, String endTime, HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            String frameworkName = framework.getFrameWorkName();
            return riskAnalyzeService.getRiskDetailByLiangJiaCount(frameWorkID, frameworkName,
                    topName,hazardName, majorType, damageType, riskLevelSettingID,
                    accidentType, startTime, endTime);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //梁家风险管控清单
    @RequestMapping(value = "/getRiskDetailByLiangJia", method = RequestMethod.POST)
    public Object getRiskDetailByLiangJia(String topName, String hazardName,
                                       String majorType, String damageType,
                                       Integer riskLevelSettingID, String accidentType,
                                       String startTime, String endTime, Integer page, Integer pageEnd, HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            String frameworkName = framework.getFrameWorkName();
            Integer pageBegin = (page - 1) * pageEnd;
            return riskAnalyzeService.getRiskDetailByLiangJia(frameWorkID, frameworkName,
                    topName,hazardName, majorType, damageType, riskLevelSettingID,
                    accidentType, startTime, endTime, pageBegin, pageEnd);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //梁家风险审核
    @RequestMapping(value = "/getRiskReviewStatusByLiangJia", method = RequestMethod.POST)
    public Object getRiskReviewStatusByLiangJia(String topName, String hazardName,
                                          String majorType, String damageType,
                                          Integer riskLevelSettingID, String accidentType,
                                          String startTime, String endTime, Integer page, Integer pageEnd, HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            String frameworkName = framework.getFrameWorkName();
            Integer pageBegin = (page - 1) * pageEnd;
            return riskAnalyzeService.getRiskReviewStatusByLiangJia(frameWorkID, frameworkName,
                    topName,hazardName, majorType, damageType, riskLevelSettingID,
                    accidentType, startTime, endTime, pageBegin, pageEnd);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //梁家风险审核
    @RequestMapping(value = "/updateRiskReviewStatusByLiangJia", method = RequestMethod.POST)
    public Object updateRiskReviewStatusByLiangJia(String hazardId, String measureId,HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            return riskAnalyzeService.updateRiskReviewStatusByLiangJia(frameWorkID,hazardId,measureId,"已审核");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }


    //按地点查询
    @RequestMapping(value = "/getRiskByPlace", method = RequestMethod.POST)
    public Object getRiskByPlace(String RiskName, String departmentName, String RoleName,
                                 String Category, String DamageType, String hazardName,
                                 String riskObj, String startTime, String endTime, HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            List<Map<String, Object>> lists =riskAnalyzeService.getRiskByPlace(0, frameWorkID, RiskName, departmentName,
                    RoleName, Category, DamageType, hazardName, riskObj, startTime, endTime);
            return lists;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //按岗位查询
    @RequestMapping(value = "/getRiskByDepartmentAndRole", method = RequestMethod.POST)
    public Object getRiskByDepartmentAndRole(String departmentName, String RoleName,
                                             String Category, String DamageType, String hazardName,
                                             String riskObj, String startTime, String endTime, HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            return riskAnalyzeService.getRiskByDepartmentAndRole(frameWorkID, departmentName, RoleName, Category, DamageType, hazardName, riskObj, startTime, endTime);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //获取不重复管控对象list
    @RequestMapping(value = "/getDistinctRiskObject", method = RequestMethod.POST)
    public Object getDistinctRiskObject(String riskObjType, HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            return templatehazardService.getDistinctRiskObject(frameWorkID, riskObjType);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //获取管控对象下的风险
    @RequestMapping(value = "/getTemplatehazardByRiskObj", method = RequestMethod.POST)
    public Object getTemplatehazardByRiskObj(String riskObjName, HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            List<Templatehazard> list = templatehazardService.getTemplatehazardByRiskObj(frameWorkID, riskObjName);
            return list;
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
                return analysisData(framework, serverName);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return result;
    }


    /**
     * 解析上传的excel文件
     *
     * @param execlFileName
     * @return
     */
    public Object analysisData(Framework framework, String execlFileName) {
        String orgID = framework.getFramewordID();
        List<Templatehazard> temList = new ArrayList<Templatehazard>();
        List<Templateriskcontrolmeasure> temmeasure = new ArrayList<Templateriskcontrolmeasure>();
        List list = new ArrayList();
        List<ExcelRow> rowList = new ArrayList<ExcelRow>();
        Riskdegree riskdegreeLEC = riskdegreeService.getRiskdegreeByMethod(framework.getFramewordID(), "LEC");
        Riskdegree riskdegreeLS = riskdegreeService.getRiskdegreeByMethod(framework.getFramewordID(), "LS");

        try {
            //获取上传的文件
            Properties properties = new Properties();
            String path = properties.getProperty("fileUploadUrl");
            File file = new File(path + execlFileName);
            if (file.exists()) {
                ExcelUtils eu = new ExcelUtils();
                //从第一行开始读取
                eu.setStartReadPos(1);
                String xlspath = path + execlFileName;           //通过文件的路径取遍历创建表格
                try {
                    rowList = eu.readExcelRows(xlspath);
                } catch

                        (IOException e) {
                    e.printStackTrace();
                }
                if (rowList != null) {
                    //获取表格的第一行的值（表单标题）
                    ExcelRow rows = rowList.get(0);
                    List<ExcelCell> cellzo = rows.getCells();

                    for (int i = 0; i < rowList.size(); i++) {  //rowList是横向的对象是一个集合
                        ExcelRow row = rowList.get(i);
                        List<ExcelCell> cells = row.getCells();
                        if (cells != null && cells.size() > 0) {
                            Templatehazard templatehazard = new Templatehazard();
                            templatehazard.setFrameWorkID(orgID);
                            templatehazard.setCoalMineName(framework.getFrameWorkName());
                            Templateriskcontrolmeasure templateriskcontrolmeasure = new Templateriskcontrolmeasure();
                            templateriskcontrolmeasure.setCoalMineName(framework.getFrameWorkName());
                            templateriskcontrolmeasure.setFrameWorkID(orgID);
                            for (int j = 1; j < cells.size(); j++) {
                                String ss = "";
                                if (cells.get(j).getValue() != "" && cells.get(j).getValue() != null) {
                                    ss = cells.get(j).getValue();
                                }
                                if (j == 1) {//管控对象
                                    if (ss != "" && ss != null) {
                                        templatehazard.setRiskObject(ss);
                                    }

                                }
                                if (j == 2) {//管控对象类型
                                    if (ss != "" && ss != null) {
                                        templatehazard.setRiskObjectType(ss);
                                    }

                                }
                                if (j == 3) {//风险
                                    if (ss != "" && ss != null) {
                                        templatehazard.setName(ss);
                                    }

                                }
                                if (j == 4) {//风险描述
                                    if (ss != "" && ss != null) {
                                        templatehazard.setHazardDesc(ss);
                                    }

                                }
                                if (j == 5) {//专业类型
                                    if (ss != "" && ss != null) {
                                        templatehazard.setMajorType(ss);
                                    }

                                }
                                if (j == 6) {//风险类型
                                    if (ss != "" && ss != null) {
                                        templatehazard.setRiskType(ss);
                                    }

                                }
                                if (j == 7) {//可能性（L）
                                    if (ss != "" && ss != null) {
                                        Double db = Double.parseDouble(ss);
                                        templatehazard.setPossibility(db);
                                    }

                                }
                                if (j == 8) {//损失（S）
                                    if (ss != "" && ss != null) {
                                        double d = Double.parseDouble(ss);
                                        int count = (int) d;
                                        templatehazard.setSseverity(count);
                                    } else {
                                        templatehazard.setSseverity(0);
                                    }
                                }
                                if (j == 9) {//E(暴露率)
                                    if (ss != "" && ss != null) {
                                        double d = Double.parseDouble(ss);
                                        int count = (int) d;
                                        templatehazard.setExpose(count);
                                    }

                                }
                                if (j == 10) {//C(产生的后果)
                                    if (ss != "" && ss != null) {
                                        double d = Double.parseDouble(ss);
                                        int count = (int) d;
                                        templatehazard.setLossConsequence(count);
                                    } else {
                                        templatehazard.setLossConsequence(0);

                                    }

                                }
                                if (j == 11) {//R(风险值)
                                    if (ss != "" && ss != null) {
                                        Double db = Double.parseDouble(ss);
                                        templatehazard.setRiskValue(db);
                                    }
                                }
                                if (j == 12) {//事故类型
                                    if (ss != "" && ss != null) {
                                        templatehazard.setAccidentType(ss);
                                    }

                                }
                                if (j == 13) {//灾害类型
                                    if (ss != "" && ss != null) {
                                        templatehazard.setDamageType(ss);

                                    }

                                }
                                if (j == 14) {//管控措施
                                    if (ss != "" && ss != null) {
                                        templateriskcontrolmeasure.setMeasureContent(ss);
                                        templateriskcontrolmeasure.setMeasureUUID(UUID.randomUUID().toString());
                                        templateriskcontrolmeasure.setMeasureName("现场管控措施");
                                    }
                                }
                                if (j == 15) {//风险种类
                                    if (ss != "" && ss != null) {
                                        templatehazard.setRiskKind(ss);
                                    }
                                }
                            }
                            templatehazard.setStatus(false);
                            //LS
                            if (templatehazard.getSseverity() != 0 && templatehazard.getSseverity() != null) {
                                if (riskdegreeLS != null && riskdegreeLS.getmRiskdegreeitems().size() > 0) {
                                    Riskdegreeitem riskdegreeitem = riskdegreeLS.checkRiskValue(templatehazard.getPossibility() * templatehazard.getSseverity());
                                    templatehazard.setRiskLevelSettingID(riskdegreeitem.getRiskLevelSettingID());
                                    templatehazard.setStatus(true);
                                }
                            }
                            //LEC
                            if (templatehazard.getLossConsequence() != 0 && templatehazard.getLossConsequence() != null) {
                                if (riskdegreeLEC != null && riskdegreeLEC.getmRiskdegreeitems().size() > 0) {
                                    Riskdegreeitem riskdegreeitem = riskdegreeLEC.checkRiskValue(templatehazard.getPossibility() * templatehazard.getLossConsequence() * templatehazard.getExpose());
                                    templatehazard.setRiskLevelSettingID(riskdegreeitem.getRiskLevelSettingID());
                                    templatehazard.setStatus(true);
                                }
                            }
                            temList.add(templatehazard);
                            temmeasure.add(templateriskcontrolmeasure);
                        }
                    }
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
        Result result = new Result();
        result.setTemList(temList);
        result.setTemmeasure(temmeasure);
        return result;
    }

    class Result {

        List<Templatehazard> temList;
        List<Templateriskcontrolmeasure> temmeasure;

        public List<Templatehazard> getTemList() {
            return temList;
        }

        public void setTemList(List<Templatehazard> temList) {
            this.temList = temList;
        }

        public List<Templateriskcontrolmeasure> getTemmeasure() {
            return temmeasure;
        }

        public void setTemmeasure(List<Templateriskcontrolmeasure> temmeasure) {
            this.temmeasure = temmeasure;
        }
    }

    @RequestMapping(value = "/getExcellByXinAn", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcellByXinAn(String ExcellID, String ExcellName,
                                 String topName,String childName,String hazardName, String majorType,
                                 String damageType, String accidentType, Integer riskLevelSettingID,
                                 String startTime, String endTime, HttpServletResponse response, HttpServletRequest request) {
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

            HSSFCell cell = row.createCell(0);
            cell.setCellValue("序号");
            cell.setCellStyle(style);
            cell = row.createCell(1);
            cell.setCellValue("风险点");
            cell.setCellStyle(style);
            cell = row.createCell(2);
            cell.setCellValue("管控对象");
            cell.setCellStyle(style);
            cell = row.createCell(3);
            cell.setCellValue("风险");
            cell.setCellStyle(style);
//            cell = row.createCell((short) 4);
//            cell.setCellValue("风险描述");
//            cell.setCellStyle(style);
            cell = row.createCell(4);
            cell.setCellValue("专业类型");
            cell.setCellStyle(style);
            cell = row.createCell(5);
            cell.setCellValue("灾害类型");
            cell.setCellStyle(style);
            cell = row.createCell(6);
            cell.setCellValue("事故类型");
            cell.setCellStyle(style);
            cell = row.createCell(7);
            cell.setCellValue("L(可能性)");
            cell.setCellStyle(style);
            cell = row.createCell(8);
            cell.setCellValue("S(损失)");
            cell.setCellStyle(style);
            cell = row.createCell(9);
            cell.setCellValue("E(暴露率)");
            cell.setCellStyle(style);
            cell = row.createCell(10);
            cell.setCellValue("C(产生的后果)");
            cell.setCellStyle(style);
            cell = row.createCell(11);
            cell.setCellValue("R(风险值)");
            cell.setCellStyle(style);
            cell = row.createCell(12);
            cell.setCellValue("风险等级");
            cell.setCellStyle(style);
            cell = row.createCell(13);
            cell.setCellValue("管控周期（始）");
            cell.setCellStyle(style);
            cell = row.createCell(14);
            cell.setCellValue("管控周期（终）");
            cell.setCellStyle(style);
            cell = row.createCell(15);
            cell.setCellValue("管控范围");
            cell.setCellStyle(style);
            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            /*if (riskLevelSettingID != "") {
                int riskLevelSettingID = Integer.parseInt(riskLevelSettingID);
            }*/

            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            String frameworkName = framework.getFrameWorkName();

            List<Map<String, Object>> detailList = riskAnalyzeService.getRiskDetailByXinAn(frameWorkID, frameworkName,
                    topName,childName,hazardName,majorType, damageType, riskLevelSettingID,
                    accidentType, startTime, endTime, 0, 100000000);
            for (int i = 0; i < detailList.size(); i++) {
                Map<String, Object> map = detailList.get(i);
                row = sheet.createRow((int) i + 1);
                row.createCell(0).setCellValue(i + 1);
                for (Map.Entry<String, Object> entry : map.entrySet()) {

                    if (entry.getKey().equals("TopName")) {
                        row.createCell(1).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("ChildName")) {
                        row.createCell(2).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardName")) {
                        row.createCell(3).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardMajorType")) {
                        row.createCell(4).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardDamageType")) {
                        row.createCell(5).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HAccidentType")) {
                        row.createCell(6).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardPossibility")) {
                        row.createCell(7).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardSseverity")) {
                        row.createCell(8).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardExpose")) {
                        row.createCell(9).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardLossConsequence")) {
                        row.createCell(10).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardRiskValue")) {
                        row.createCell(11).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("RiskLevel")) {
                        row.createCell(12).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("ControlRangeStartDay")) {
                        row.createCell(13).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("ControlRangeEndDay")) {
                        row.createCell(14).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("ControlRang")) {
                        row.createCell(15).setCellValue(entry.getValue().toString());

                    }
                }

            }
            try {
                for (int i = 0; i <= detailList.size(); i++) {
                    row = sheet.getRow(i);
                    for (int j = 0; j < 16; j++) {
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

    @RequestMapping(value = "/getExcellByLiangJia", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcellByLiangJia(String ExcellID, String ExcellName,
                                 String topName, String majorType,String hazardName,
                                 String damageType, String accidentType, Integer riskLevelSettingID,
                                 String startTime, String endTime,Integer page,Integer pageEnd,HttpServletResponse response, HttpServletRequest request) {
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

            HSSFCell cell = row.createCell(0);
            cell.setCellValue("序号");
            cell.setCellStyle(style);
            cell = row.createCell(1);
            cell.setCellValue("风险点");
            cell.setCellStyle(style);
            cell = row.createCell(2);
            cell.setCellValue("管控对象");
            cell.setCellStyle(style);
            cell = row.createCell(3);
            cell.setCellValue("风险");
            cell.setCellStyle(style);
            cell = row.createCell((short) 4);
            cell.setCellValue("风险描述");
            cell.setCellStyle(style);
            cell = row.createCell(5);
            cell.setCellValue("风险类型");
            cell.setCellStyle(style);
            cell = row.createCell(6);
            cell.setCellValue("危害因素");
            cell.setCellStyle(style);
            cell = row.createCell(7);
            cell.setCellValue("风险等级");
            cell.setCellStyle(style);
            cell = row.createCell(8);
            cell.setCellValue("管理属性");
            cell.setCellStyle(style);
            cell = row.createCell(9);
            cell.setCellValue("管控措施内容");
            cell.setCellStyle(style);
            cell = row.createCell(10);
            cell.setCellValue("技术指导部门");
            cell.setCellStyle(style);
            cell = row.createCell(11);
            cell.setCellValue("监管部门");
            cell.setCellStyle(style);
            cell = row.createCell(12);
            cell.setCellValue("认定日期");
            cell.setCellStyle(style);
            cell = row.createCell(13);
            cell.setCellValue("解除日期");
            cell.setCellStyle(style);
            cell = row.createCell(14);
            cell.setCellValue("矿级管控");
            cell.setCellStyle(style);
            cell = row.createCell(15);
            cell.setCellValue("专业级管控");
            cell.setCellStyle(style);
            cell = row.createCell(16);
            cell.setCellValue("职能部室级管控");
            cell.setCellStyle(style);
            cell = row.createCell(17);
            cell.setCellValue("区队级管控");
            cell.setCellStyle(style);
            cell = row.createCell(18);
            cell.setCellValue("班组个人级管控");
            cell.setCellStyle(style);

            // 第五步，写入实体数据 实际应用中这些数据从数据库得到，
            /*if (riskLevelSettingID != "") {
                int riskLevelSettingID = Integer.parseInt(riskLevelSettingID);
            }*/

            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            String frameworkName = framework.getFrameWorkName();
            int pageStr = (page - 1)*pageEnd;

            List<Map<String, Object>> detailList = riskAnalyzeService.getRiskDetailByLiangJia(frameWorkID, frameworkName,
                    topName, hazardName,majorType, damageType, riskLevelSettingID,
                    accidentType, startTime, endTime, pageStr, pageEnd);
            for (int i = 0; i < detailList.size(); i++) {
                Map<String, Object> map = detailList.get(i);
                row = sheet.createRow((int) i + 1);
                row.createCell(0).setCellValue(i + 1);
                for (Map.Entry<String, Object> entry : map.entrySet()) {

                    if (entry.getKey().equals("TopName")) {
                        row.createCell(1).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("ChildName")) {
                        row.createCell(2).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardName")) {
                        row.createCell(3).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardDesc")) {
                        row.createCell(4).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("RiskByTypes")) {
                        row.createCell(5).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("RiskFactors")) {
                        row.createCell(6).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("RiskLevel")) {
                        row.createCell(7).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("RiskType")) {
                        row.createCell(8).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("MeasureContent")) {
                        row.createCell(9).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("TechnologyDepartment")) {
                        row.createCell(10).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("SupervisionDepartment")) {
                        row.createCell(11).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("ControlRangeStartDay")) {
                        row.createCell(12).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("ControlRangeEndDay")) {
                        row.createCell(13).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("KJControlRang")) {
                        row.createCell(14).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("ZYControlRang")) {
                        row.createCell(15).setCellValue(entry.getValue().toString());
                    } else if (entry.getKey().equals("QDControlRang")) {
                        row.createCell(16).setCellValue(entry.getValue().toString());
                    } else if (entry.getKey().equals("BZControlRang")) {
                        row.createCell(17).setCellValue(entry.getValue().toString());
                    } else if (entry.getKey().equals("GRControlRang")) {
                        row.createCell(18).setCellValue(entry.getValue().toString());
                    }

                }

            }
            try {
                for (int i = 0; i <= detailList.size(); i++) {
                    row = sheet.getRow(i);
                    for (int j = 0; j < 19; j++) {
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

    /**
     * 与我相关的风险内容导出
     *
     * @param ExcellID
     * @param ExcellName
     * @param departmentName
     * @param RoleName
     * @param Category
     * @param DamageType
     * @param hazardName
     * @param riskObj
     * @param startTime
     * @param endTime
     * @param response
     * @param request
     */
    @RequestMapping(value = "/getExcell2ByXinAn", method = {RequestMethod.POST, RequestMethod.GET})
    @ResponseBody
    public void getExcell2ByXinAn(String ExcellID, String ExcellName, String RiskName, String departmentName, String RoleName, String Category, String DamageType, String hazardName, String riskObj, String startTime, String endTime, HttpServletResponse response, HttpServletRequest request) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            Properties properties = new Properties();
            String fileUploadUrl = properties.getProperty("fileUploadUrl");
            request.setCharacterEncoding("UTF-8");
            HSSFWorkbook wb = new HSSFWorkbook();
            HSSFSheet sheet = wb.createSheet(ExcellName.split("\\.")[0]);
            sheet.setDefaultColumnWidth(17);
            sheet.setColumnWidth(0, 2024);
            HSSFRow row = sheet.createRow((int) 0);
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

            HSSFCell cell = row.createCell(0);
            cell.setCellValue("序号");
            cell.setCellStyle(style);
            cell = row.createCell(1);
            cell.setCellValue("风险点");
            cell.setCellStyle(style);
            cell = row.createCell(2);
            cell.setCellValue("等级");
            cell.setCellStyle(style);
            cell = row.createCell(3);
            cell.setCellValue("管控对象名称");
            cell.setCellStyle(style);
            cell = row.createCell(4);
            cell.setCellValue("风险");
            cell.setCellStyle(style);
            cell = row.createCell(5);
            cell.setCellValue("风险描述");
            cell.setCellStyle(style);
            cell = row.createCell(6);
            cell.setCellValue("专业");
            cell.setCellStyle(style);
            cell = row.createCell(7);
            cell.setCellValue("灾害类型");
            cell.setCellStyle(style);
            cell = row.createCell(8);
            cell.setCellValue("管控周期（始）");
            cell.setCellStyle(style);
            cell = row.createCell(9);
            cell.setCellValue("管控周期（终）");
            cell.setCellStyle(style);
            cell = row.createCell(10);
            cell.setCellValue("矿级管控");
            cell.setCellStyle(style);
            cell = row.createCell(11);
            cell.setCellValue("专业级管控");
            cell.setCellStyle(style);
            cell = row.createCell(12);
            cell.setCellValue("职能部室级管控");
            cell.setCellStyle(style);
            cell = row.createCell(13);
            cell.setCellValue("区队级管控");
            cell.setCellStyle(style);
            cell = row.createCell(14);
            cell.setCellValue("班组个人级管控");
            cell.setCellStyle(style);
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
//            List<Map<String, Object>> riskByPlaceList = riskAnalyzeService.getRiskByPlace(0, frameWorkID, RiskName, departmentName,
//                    RoleName, Category, DamageType, hazardName, riskObj, startTime, endTime);
            List<Map<String,Object>> riskByPlaceList = new ArrayList<>();
            String[] roleNames = RoleName.split(";");
            for(String roleName : roleNames){
                List<Map<String, Object>> itemlist = riskAnalyzeService.getRiskByPlace(0, frameWorkID, RiskName, departmentName,
                        roleName, Category, DamageType, hazardName, riskObj, startTime, endTime);
                for (Map<String,Object> item : itemlist){
                    riskByPlaceList.add(item);
                }
            }


            // 表格数据内容填充
            for (int i = 0; i < riskByPlaceList.size(); i++) {
                Map<String, Object> map = riskByPlaceList.get(i);
                row = sheet.createRow((int) i + 1);
                row.createCell(0).setCellValue(i + 1);
                for (Map.Entry<String, Object> entry : map.entrySet()) {

                    if (entry.getKey().equals("TopName")) {
                        row.createCell(1).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("RiskLevel")) {
                        row.createCell(2).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("ChildName")) {
                        row.createCell(3).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardName")) {
                        row.createCell(4).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardDesc")) {
                        row.createCell(5).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardMajorType")) {
                        row.createCell(6).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("HazardDamageType")) {
                        row.createCell(7).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("ControlRangeStartDay")) {
                        row.createCell(8).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("ControlRangeEndDay")) {
                        row.createCell(9).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("KJControlRang")) {
                        row.createCell(10).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("ZYControlRang")) {
                        row.createCell(11).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("QDControlRang")) {
                        row.createCell(12).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("BZControlRang")) {
                        row.createCell(13).setCellValue(entry.getValue().toString());

                    } else if (entry.getKey().equals("GRControlRang")) {
                        row.createCell(14).setCellValue(entry.getValue().toString());

                    }

                }
            }
            // 表格样式填充
            for (int i = 0; i <= riskByPlaceList.size(); i++) {
                row = sheet.getRow(i);
                for (int j = 0; j < 16; j++) {
                    if (row.getCell(j) == null) {
                        row.createCell(j).setCellStyle(style1);

                    } else {
                        row.getCell(j).setCellStyle(style1);

                    }
                }
            }
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
            response.reset();
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

