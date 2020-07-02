package cn.com.kingc.risk.controller;


import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.*;
import cn.com.kingc.risk.util.ExcelCell;
import cn.com.kingc.risk.util.ExcelRow;
import cn.com.kingc.risk.util.ExcelUtils;
import cn.com.kingc.risk.util.Properties;
import com.mkaq.core.util.DateUtil;
import com.wordnik.swagger.annotations.ApiOperation;
import org.apache.commons.io.FileUtils;
import org.platform4j.model.*;
import org.platform4j.model.griddata.GridDataBase_Org;
import org.platform4j.service.DepartmentService;
import org.platform4j.service.Enterprise_data_dictionaryService;
import org.platform4j.service.Enterprise_roleService;
import org.platform4j.service.PlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author admistrator
 * @version 1.0
 * @created 27-8月-2017 11:15:35
 */
@RestController
@RequestMapping("/ImportOffLineData")
public class ImportOffLineData {

    @Autowired
    private RisksiteService risksiteService;
    @Autowired
    private RiskhazardService riskhazardService;
    @Autowired
    private RiskcontrolmeasureService riskcontrolmeasureService;
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private Enterprise_roleService enterprise_roleService;
    @Autowired
    private PlaceService placeService;
    @Autowired
    private RiskdegreeService riskdegreeService;
    @Autowired
    private RiskleversettingService riskleversettingService;
    @Autowired
    private Enterprise_data_dictionaryService enterprise_data_dictionaryService;
    @Autowired
    private RiskhazardcontrolrangeService riskhazardcontrolrangeService;


    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public Object newAddress(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Place place = new Place();
        place.setFOrgID(framework.getFramewordID());
        return place;
    }

    /**
     * @param request
     * @return
     */
    @RequestMapping(value = "/CheckRiskLevelSettingExist", method = RequestMethod.GET)
    public Object checkRiskLevelSettingExist(HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Riskleversetting riskleversetting = new Riskleversetting();
            riskleversetting.setFrameWorkID(framework.getFramewordID());
            List<Riskleversetting> riskleversettingList = riskleversettingService.getRiskleversettingList(riskleversetting);
            if (riskleversettingList != null && riskleversettingList.size() > 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
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
                result alr= analysisData(framework, serverName);
                Response response=new Response();
                response.setState(200);
                response.setMessage("");
                response.setData(alr);
                return response;
            } catch (Exception ex) {
                ex.printStackTrace();
                Response response=new Response();
                response.setState(500);
                response.setMessage(ex.getMessage());
                return response;
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
    public result analysisData(Framework framework, String execlFileName) throws Exception {
        String strDictionaryZYLX = "";
        List<Enterprise_data_dictionary> dictionaryZYLX = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(framework.getFramewordID(), "专业类型");
        for (Enterprise_data_dictionary zylx : dictionaryZYLX) {
            strDictionaryZYLX += zylx.getFData_Name() + ";";
        }

        String strDictionaryZHLX = "";
        List<Enterprise_data_dictionary> dictionaryZHLX = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(framework.getFramewordID(), "灾害类型");
        for (Enterprise_data_dictionary zhlx : dictionaryZHLX) {
            strDictionaryZHLX += zhlx.getFData_Name() + ";";
        }

        String strDictionarySGLX = "";
        List<Enterprise_data_dictionary> dictionarySGLX = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(framework.getFramewordID(), "事故类型");
        for (Enterprise_data_dictionary sglx : dictionarySGLX) {
            strDictionarySGLX += sglx.getFData_Name() + ";";
        }

        String StrDictionaryGKPC = "";
        List<Enterprise_data_dictionary> dictionaryGKPC = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(framework.getFramewordID(), "管控频次");
        for (Enterprise_data_dictionary gkpc : dictionaryGKPC) {
            StrDictionaryGKPC += gkpc.getFData_Name() + ";";
        }

        String StrDictionaryFXLX = "";
        List<Enterprise_data_dictionary> dictionaryFXLX = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(framework.getFramewordID(), "风险类型");
        for (Enterprise_data_dictionary fxlx : dictionaryFXLX) {
            StrDictionaryFXLX += fxlx.getFData_Name() + ";";
        }


        //获取企业部门列表
        GridDataBase_Org g = departmentService.getChilidOrgAll(framework.getFramewordID(), null, false, 10000000, 1);
        List<Base_org> baseOrgs = g.getRows();
        String strDepartments = "";
        if (baseOrgs != null && baseOrgs.size() > 0) {
            for (Base_org baseOrg : baseOrgs) {
                strDepartments += baseOrg.getFOrg_Name() + ";";
            }
        }

        //获取企业角色列表
        Enterprise_role enterprise_role = new Enterprise_role();
        enterprise_role.setFOrgID(framework.getFramewordID());
        List<Enterprise_role> enterprise_roles = enterprise_roleService.getEnterprise_roleList(enterprise_role);
        String strEnterpriseRoles = "";
        if (enterprise_roles != null && enterprise_roles.size() > 0) {
            for (Enterprise_role enterpriseRole : enterprise_roles) {
                strEnterpriseRoles += enterpriseRole.getFRole_Name() + ";";
            }
        }

        SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
        SimpleDateFormat dfNeed = new SimpleDateFormat("yyyy-MM-dd");

        List<ExcelRow> rowList = new ArrayList<ExcelRow>();
        List<Risksite> risksites = new ArrayList<Risksite>();
        Boolean b = false;


        Riskdegree riskdegreeLEC = riskdegreeService.getRiskdegreeByMethod(framework.getFramewordID(), "LEC");
        Riskdegree riskdegreeLS = riskdegreeService.getRiskdegreeByMethod(framework.getFramewordID(), "LS");

        //查询已录入的全部风险点
        Risksite risksitbyall = new Risksite();
        risksitbyall.setFrameWorkID(framework.getFramewordID());
        List<Risksite> risksiteList = risksiteService.getRisksiteData(risksitbyall);

        List<String> lostDepartments = new ArrayList<>();
        List<String> lostRoles = new ArrayList<>();
        List<String> lostDics = new ArrayList<>();
        List<String> mChildRiskSitenamelist = new ArrayList<>();
        //第一级风险点名称集合
        List<String> riskNames = new ArrayList<String>();
        try {
            //获取上传的文件
            Properties properties = new Properties();
            String path = properties.getProperty("fileUploadUrl");

            File file = new File(path + execlFileName);
            if (file.exists()) {
                ExcelUtils eu = new ExcelUtils();
                //从第一行开始读取
                eu.setStartReadPos(1);
                String xlspath = path + execlFileName;
                try {
                    rowList = eu.readExcelRows(xlspath);
                } catch (IOException e) {
                    e.printStackTrace();
                }
                if (rowList != null) {
                    //第一次循环取出第一级的风险点（对应Excel中“风险点”一列）
                    for (int i = 0; i < rowList.size(); i++) {
                        ExcelRow row = rowList.get(i);
                        List<ExcelCell> cells = row.getCells();
                        if (cells != null && cells.size() > 0) {
                            String name = cells.get(1).getValue();
                            String riskObjectType = cells.get(3).getValue().trim();
                            if (!riskObjectType.equals("设施") && !riskObjectType.equals("作业活动")) {
                                throw new Exception("管控对象类型有误,管控对象类型包括：设施、作业活动");
                            }

                            //如果名称集合不存在就添加到第一级风险点集合中
                            if (!riskNames.contains(name)) {
                                Risksite risksite = new Risksite();
                                risksite.setCoalMineName(framework.getFrameWorkName());
                                risksite.setFrameWorkID(framework.getFramewordID());
                                risksite.setName(name);
                                risksite.setParentID("0");
                                if ((!cells.get(11).getValue().equals(""))) {
                                    risksite.setStatus(true);
                                } else {
                                    risksite.setStatus(false);
                                }
                                risksite.setRiskSiteType(RiskSiteTypeEnum.ADDRESS);
                                risksites.add(risksite);
                                risksite.setRiskSiteUUID(UUID.randomUUID().toString());
                                riskNames.add(name);
                            }
                        }
                    }
                    //第二次循环取出子风险点（对应Excel中“作业活动”一列）
                    for (int i = 0; i < rowList.size(); i++) {
                        ExcelRow row = rowList.get(i);
                        List<ExcelCell> cells = row.getCells();
                        if (cells != null && cells.size() > 0) {
                            String parentName = cells.get(1).getValue();
                            String name = cells.get(2).getValue();
                            if (name == null || name.equals("")) {
                                b = true;
                            }

                            //判断导入的风险点和系统已录入的风险点是否重复
                            Boolean lean = false;
                            int index = 0;
                            for(int s=0;s<risksiteList.size();s++){
                                if(parentName.equals(risksiteList.get(s).getName()) && risksiteList.get(s).getParentID().equals("0") ){
                                    lean = true;
                                    index = s;
                                }
                            }

                            //遍历第一级风险点名称集合，根据作业活动对应的风险点添加集合
                            boolean added = false;
                            for (int j = 0; j < riskNames.size(); j++) {
                                if (riskNames.get(j).equals(parentName)) {
                                    Risksite pRiskSite = risksites.get(j);
                                    List<Risksite> childRiskSites = pRiskSite.getmChildRiskSite();



                                    for (Risksite childRiskSite : childRiskSites) {
                                        if (childRiskSite.getName().equals(name) && !childRiskSite.getRiskSiteTypeContent().equals(cells.get(3).getValue()) ) {
                                            added = true;
                                            mChildRiskSitenamelist.add(parentName+"风险点下的管控对象- '"+name+"'名称重复");
                                            continue;

                                        }

                                        if (childRiskSite.getName().equals(name) && childRiskSite.getRiskSiteTypeContent().equals(cells.get(3).getValue()) ) {
                                            added = true;
                                            continue;
                                        }
                                    }


                                    if(lean){
                                        if(!added){
                                            //判断管控对象长度
                                            if(risksiteList.get(index).getmChildRiskSite().size() >0){
                                                for(int a=0;a<risksiteList.get(index).getmChildRiskSite().size();a++){
                                                    if(name.equals(risksiteList.get(index).getmChildRiskSite().get(a).getName())){
                                                        mChildRiskSitenamelist.add(parentName+"风险点下的管控对象- '"+name+"'和系统中已录入的同名风险点下的管控对象名称重复");
                                                        added = true;
                                                        continue;
                                                    }
                                                }
                                            }

                                        }
                                    }

                                    if (!added) {
                                        Risksite risksite = new Risksite();
                                        risksite.setCoalMineName(framework.getFrameWorkName());
                                        risksite.setFrameWorkID(framework.getFramewordID());
                                        risksite.setName(name);
                                        risksite.setStatus(false);
                                        risksite.setRiskSiteType(RiskSiteTypeEnum.TASK);
                                        risksite.setRiskSiteTypeContent(cells.get(3).getValue());
                                        risksite.setRiskSiteUUID(UUID.randomUUID().toString());
                                        risksites.get(j).getmChildRiskSite().add(risksite);
                                    }
                                }
                            }
                        }
                    }
                    //第三次循环取出危险源数据
                    for (int i = 0; i < rowList.size(); i++) {
                        ExcelRow row = rowList.get(i);
                        List<ExcelCell> cells = row.getCells();
                        if (cells != null && cells.size() > 0) {
                            String riskName = cells.get(1).getValue();
                            String childRiskName = cells.get(2).getValue();
                            String hazardName = cells.get(4).getValue();
                            for (int j = 0; j < riskNames.size(); j++) {
                                if (riskNames.get(j).equals(riskName)) {
                                    List<Risksite> childRiskSites = risksites.get(j).getmChildRiskSite();
                                    for (int k = 0; k < childRiskSites.size(); k++) {
                                        if (childRiskSites.get(k).getName().equals(childRiskName)) {
                                            Riskhazard riskhazard = new Riskhazard();
                                            riskhazard.setCoalMineName(framework.getFrameWorkName());
                                            riskhazard.setLpossibility(cells.get(7).getValue().equals("") ? null : Double.valueOf(cells.get(7).getValue()));

                                            // LEC
                                            if ((cells.get(8).getValue().equals("")) && (!cells.get(9).getValue().equals(""))) {
                                                if (riskdegreeLEC != null && riskdegreeLEC.getmRiskdegreeitems().size() > 0) {
                                                    //Riskdegreeitem riskdegreeitem = riskdegreeLEC.checkRiskValue(Double.valueOf(cells.get(7).getValue()) * parseInt(cells.get(9).getValue()) * parseInt(cells.get(10).getValue()));
                                                    Riskdegreeitem riskdegreeitem = riskdegreeLEC.checkRiskValue(Double.valueOf(cells.get(7).getValue()) * Double.valueOf(cells.get(9).getValue()) * Double.valueOf(cells.get(10).getValue()));
                                                    riskhazard.setRiskLevelSettingID(riskdegreeitem.getRiskLevelSettingID());
                                                }
                                                riskhazard.setEexpose(cells.get(9).getValue().equals("") ? null : Double.valueOf(cells.get(9).getValue()));
                                                riskhazard.setClossConsequence(cells.get(10).getValue().equals("") ? null : Double.valueOf(cells.get(10).getValue()));
                                            }

                                            //LS
                                            if ((!cells.get(8).getValue().equals("")) && (cells.get(9).getValue().equals(""))) {
                                                if (riskdegreeLS != null && riskdegreeLS.getmRiskdegreeitems().size() > 0) {
                                                    Riskdegreeitem riskdegreeitem = riskdegreeLS.checkRiskValue(Double.valueOf(cells.get(7).getValue()) * Double.valueOf(cells.get(8).getValue()));
                                                    riskhazard.setRiskLevelSettingID(riskdegreeitem.getRiskLevelSettingID());
                                                }
                                                riskhazard.setSseverity(cells.get(8).getValue().equals("") ? null : Double.valueOf(cells.get(8).getValue()));

                                            }


                                            // LEC
                                            if ((cells.get(8).getValue().equals("")) && (!cells.get(9).getValue().equals(""))) {
                                                Double riskValue = Double.valueOf(cells.get(7).getValue()) * Double.valueOf(cells.get(9).getValue()) * Double.valueOf(cells.get(10).getValue());
                                                riskhazard.setDriskValue(riskValue);
                                                cells.get(11).setValue(riskValue.toString());
                                            }

                                            //LS
                                            if ((!cells.get(8).getValue().equals("")) && (cells.get(9).getValue().equals(""))) {
                                                Double riskValue = Double.valueOf(cells.get(7).getValue()) * Double.valueOf(cells.get(8).getValue());
                                                riskhazard.setDriskValue(riskValue);
                                                cells.get(11).setValue(riskValue.toString());
                                            }

                                            List<Riskhazardcontrolrange> riskhazardcontrolrangeList = new ArrayList<Riskhazardcontrolrange>();
                                            if (1 == 1) {
                                                Riskhazardcontrolrange riskhazardcontrolrangeKJ = new Riskhazardcontrolrange();
                                                riskhazardcontrolrangeKJ.setFrameWorkID(framework.getFramewordID());
                                                riskhazardcontrolrangeKJ.setCoalMineName(framework.getFrameWorkName());
                                                String ss = cells.get(16).getValue();
                                                if (ss.trim().equals("")) {

                                                } else {
                                                    Date date = df.parse(ss);
                                                    ss = dfNeed.format(date);
                                                }

                                                riskhazardcontrolrangeKJ.setControlRangeStartDay(ss);
                                                String end = cells.get(17).getValue();
                                                if (end.trim().equals("")) {

                                                } else {
                                                    Date dateEnd = df.parse(end);
                                                    end = dfNeed.format(dateEnd);
                                                }
                                                riskhazardcontrolrangeKJ.setControlRangeEndDay(end);
                                                riskhazardcontrolrangeKJ.setControlRangeName("矿级");
                                                String gkpc = cells.get(20).getValue();
                                                riskhazardcontrolrangeKJ.setControlRangePinci(gkpc);
                                                boolean gppcExist = StrDictionaryGKPC.contains(gkpc);
                                                if (gppcExist) {

                                                } else {
                                                    if (!lostDics.contains(gkpc)) {
                                                        lostDics.add("管控频次:" + gkpc);
                                                    }
                                                }

                                                String role = cells.get(19).getValue();
                                                if (!role.trim().equals("")) {
                                                    String[] roleArray = role.trim().replace("\n", "").split(",");
                                                    for (String s : roleArray) {
                                                        boolean roleExist = strEnterpriseRoles.contains(s);
                                                        if (roleExist) {
                                                        } else {
                                                            if (!lostRoles.contains(s)) {
                                                                lostRoles.add(s);
                                                            }
                                                        }
                                                    }
                                                }

                                                riskhazardcontrolrangeKJ.setManageDuty(role);


                                                String gkDepartment = cells.get(18).getValue();

                                                boolean gkDepartmentExist = strDepartments.contains(gkDepartment);
                                                if (gkDepartmentExist) {
                                                } else {
                                                    if (!lostDepartments.contains(gkDepartment)) {
                                                        lostDepartments.add(gkDepartment);
                                                    }
                                                }
                                                for (Base_org dept : baseOrgs) {
                                                    if (dept.getFOrg_Name().equals(gkDepartment)) {
                                                        riskhazardcontrolrangeKJ.setManageUnitID(dept.getFOrgID());
                                                    }
                                                }
                                                riskhazardcontrolrangeKJ.setManageUnit(gkDepartment);
                                                riskhazardcontrolrangeList.add(riskhazardcontrolrangeKJ);
                                            }
                                            if (1 == 1) {
                                                Riskhazardcontrolrange riskhazardcontrolrangeZYJ = new Riskhazardcontrolrange();
                                                riskhazardcontrolrangeZYJ.setFrameWorkID(framework.getFramewordID());
                                                riskhazardcontrolrangeZYJ.setCoalMineName(framework.getFrameWorkName());
                                                String ss = cells.get(16).getValue();
                                                if (ss.trim().equals("")) {

                                                } else {
                                                    Date date = df.parse(ss);
                                                    ss = dfNeed.format(date);
                                                }
                                                riskhazardcontrolrangeZYJ.setControlRangeStartDay(ss);
                                                String end = cells.get(17).getValue();
                                                if (end.trim().equals("")) {

                                                } else {
                                                    Date dateEnd = df.parse(end);
                                                    end = dfNeed.format(dateEnd);
                                                }
                                                riskhazardcontrolrangeZYJ.setControlRangeEndDay(end);
                                                riskhazardcontrolrangeZYJ.setControlRangeName("专业级");
                                                String gkpc = cells.get(23).getValue();
                                                boolean gppcExist = StrDictionaryGKPC.contains(gkpc);
                                                if (gppcExist) {

                                                } else {
                                                    if (!lostDics.contains(gkpc)) {
                                                        lostDics.add("管控频次:" + gkpc);
                                                    }
                                                }
                                                riskhazardcontrolrangeZYJ.setControlRangePinci(gkpc);

                                                String role = cells.get(22).getValue();
                                                if (!role.trim().equals("")) {
                                                    String[] roleArray = role.trim().replace("\n", "").split(",");
                                                    for (String s : roleArray) {
                                                        boolean roleExist = strEnterpriseRoles.contains(s);
                                                        if (roleExist) {
                                                        } else {
                                                            if (!lostRoles.contains(s)) {
                                                                lostRoles.add(s);
                                                            }
                                                        }
                                                    }
                                                }

                                                riskhazardcontrolrangeZYJ.setManageDuty(role);

                                                String gkDepartment = cells.get(21).getValue();

                                                boolean gkDepartmentExist = strDepartments.contains(gkDepartment);
                                                if (gkDepartmentExist) {
                                                } else {
                                                    if (!lostDepartments.contains(gkDepartment)) {
                                                        lostDepartments.add(gkDepartment);
                                                    }
                                                }
                                                for (Base_org dept : baseOrgs) {
                                                    if (dept.getFOrg_Name().equals(gkDepartment)) {
                                                        riskhazardcontrolrangeZYJ.setManageUnitID(dept.getFOrgID());
                                                    }
                                                }
                                                riskhazardcontrolrangeZYJ.setManageUnit(gkDepartment);

                                                riskhazardcontrolrangeList.add(riskhazardcontrolrangeZYJ);

                                            }

                                            if (1 == 1) {
                                                Riskhazardcontrolrange riskhazardcontrolrangeZNBSJ = new Riskhazardcontrolrange();
                                                riskhazardcontrolrangeZNBSJ.setFrameWorkID(framework.getFramewordID());
                                                riskhazardcontrolrangeZNBSJ.setCoalMineName(framework.getFrameWorkName());
                                                String ss = cells.get(16).getValue();
                                                if (ss.trim().equals("")) {

                                                } else {
                                                    Date date = df.parse(ss);
                                                    ss = dfNeed.format(date);
                                                }
                                                riskhazardcontrolrangeZNBSJ.setControlRangeStartDay(ss);
                                                String end = cells.get(17).getValue();
                                                if (end.trim().equals("")) {

                                                } else {
                                                    Date dateEnd = df.parse(end);
                                                    end = dfNeed.format(dateEnd);
                                                }
                                                riskhazardcontrolrangeZNBSJ.setControlRangeEndDay(end);
                                                riskhazardcontrolrangeZNBSJ.setControlRangeName("职能部室级");
                                                String gkpc = cells.get(26).getValue();
                                                riskhazardcontrolrangeZNBSJ.setControlRangePinci(gkpc);
                                                boolean gppcExist = StrDictionaryGKPC.contains(gkpc);
                                                if (gppcExist) {

                                                } else {
                                                    if (!lostDics.contains(gkpc)) {
                                                        lostDics.add("管控频次:" + gkpc);
                                                    }
                                                }
                                                String role = cells.get(25).getValue();
                                                if (!role.trim().equals("")) {
                                                    String[] roleArray = role.trim().replace("\n", "").split(",");
                                                    for (String s : roleArray) {
                                                        boolean roleExist = strEnterpriseRoles.contains(s);
                                                        if (roleExist) {
                                                        } else {
                                                            if (!lostRoles.contains(s)) {
                                                                lostRoles.add(s);
                                                            }
                                                        }
                                                    }
                                                }

                                                riskhazardcontrolrangeZNBSJ.setManageDuty(role);


                                                String gkDepartment = cells.get(24).getValue();

                                                boolean gkDepartmentExist = strDepartments.contains(gkDepartment);
                                                if (gkDepartmentExist) {
                                                } else {
                                                    if (!lostDepartments.contains(gkDepartment)) {
                                                        lostDepartments.add(gkDepartment);
                                                    }
                                                }
                                                for (Base_org dept : baseOrgs) {
                                                    if (dept.getFOrg_Name().equals(gkDepartment)) {
                                                        riskhazardcontrolrangeZNBSJ.setManageUnitID(dept.getFOrgID());
                                                    }
                                                }
                                                riskhazardcontrolrangeZNBSJ.setManageUnit(gkDepartment);

                                                riskhazardcontrolrangeList.add(riskhazardcontrolrangeZNBSJ);
                                            }

                                            if (1 == 1) {
                                                Riskhazardcontrolrange riskhazardcontrolrangeQDJ = new Riskhazardcontrolrange();
                                                riskhazardcontrolrangeQDJ.setFrameWorkID(framework.getFramewordID());
                                                riskhazardcontrolrangeQDJ.setCoalMineName(framework.getFrameWorkName());
                                                String ss = cells.get(16).getValue();
                                                if (ss.trim().equals("")) {

                                                } else {
                                                    Date date = df.parse(ss);
                                                    ss = dfNeed.format(date);
                                                }
                                                riskhazardcontrolrangeQDJ.setControlRangeStartDay(ss);
                                                String end = cells.get(17).getValue();
                                                if (end.trim().equals("")) {

                                                } else {
                                                    Date dateEnd = df.parse(end);
                                                    end = dfNeed.format(dateEnd);
                                                }
                                                riskhazardcontrolrangeQDJ.setControlRangeEndDay(end);
                                                riskhazardcontrolrangeQDJ.setControlRangeName("区队级");
                                                String gkpc = cells.get(29).getValue();
                                                riskhazardcontrolrangeQDJ.setControlRangePinci(gkpc);
                                                boolean gppcExist = StrDictionaryGKPC.contains(gkpc);
                                                if (gppcExist) {

                                                } else {
                                                    if (!lostDics.contains(gkpc)) {
                                                        lostDics.add("管控频次:" + gkpc);
                                                    }
                                                }

                                                String role = cells.get(28).getValue();
                                                if (!role.trim().equals("")) {
                                                    String[] roleArray = role.trim().replace("\n", "").split(",");
                                                    for (String s : roleArray) {
                                                        boolean roleExist = strEnterpriseRoles.contains(s);
                                                        if (roleExist) {
                                                        } else {
                                                            if (!lostRoles.contains(s)) {
                                                                lostRoles.add(s);
                                                            }
                                                        }
                                                    }
                                                }

                                                riskhazardcontrolrangeQDJ.setManageDuty(role);

                                                String gkDepartment = cells.get(27).getValue();

                                                boolean gkDepartmentExist = strDepartments.contains(gkDepartment);
                                                if (gkDepartmentExist) {
                                                } else {
                                                    if (!lostDepartments.contains(gkDepartment)) {
                                                        lostDepartments.add(gkDepartment);
                                                    }
                                                }
                                                for (Base_org dept : baseOrgs) {
                                                    if (dept.getFOrg_Name().equals(gkDepartment)) {
                                                        riskhazardcontrolrangeQDJ.setManageUnitID(dept.getFOrgID());
                                                    }
                                                }
                                                riskhazardcontrolrangeQDJ.setManageUnit(gkDepartment);

                                                riskhazardcontrolrangeList.add(riskhazardcontrolrangeQDJ);
                                            }

                                            if (1 == 1) {
                                                Riskhazardcontrolrange riskhazardcontrolrangeGRJ = new Riskhazardcontrolrange();
                                                riskhazardcontrolrangeGRJ.setFrameWorkID(framework.getFramewordID());
                                                riskhazardcontrolrangeGRJ.setCoalMineName(framework.getFrameWorkName());
                                                String ss = cells.get(16).getValue();
                                                if (ss.trim().equals("")) {

                                                } else {
                                                    Date date = df.parse(ss);
                                                    ss = dfNeed.format(date);
                                                }
                                                riskhazardcontrolrangeGRJ.setControlRangeStartDay(ss);
                                                String end = cells.get(17).getValue();
                                                if (end.trim().equals("")) {

                                                } else {
                                                    Date dateEnd = df.parse(end);
                                                    end = dfNeed.format(dateEnd);
                                                }
                                                riskhazardcontrolrangeGRJ.setControlRangeEndDay(end);
                                                riskhazardcontrolrangeGRJ.setControlRangeName("班组个人级");
                                                String gkpc = cells.get(32).getValue();
                                                riskhazardcontrolrangeGRJ.setControlRangePinci(gkpc);
                                                boolean gppcExist = StrDictionaryGKPC.contains(gkpc);
                                                if (gppcExist) {

                                                } else {
                                                    if (!lostDics.contains(gkpc)) {
                                                        lostDics.add("管控频次:" + gkpc);
                                                    }
                                                }

                                                String role = cells.get(31).getValue();
                                                if (!role.trim().equals("")) {
                                                    String[] roleArray = role.trim().replace("\n", "").split(",");
                                                    for (String s : roleArray) {
                                                        boolean roleExist = strEnterpriseRoles.contains(s);
                                                        if (roleExist) {
                                                        } else {
                                                            if (!lostRoles.contains(s)) {
                                                                lostRoles.add(s);
                                                            }
                                                        }
                                                    }
                                                }
                                                riskhazardcontrolrangeGRJ.setManageDuty(role);

                                                String gkDepartment = cells.get(30).getValue();

                                                boolean gkDepartmentExist = strDepartments.contains(gkDepartment);
                                                if (gkDepartmentExist) {
                                                } else {
                                                    if (!lostDepartments.contains(gkDepartment)) {
                                                        lostDepartments.add(gkDepartment);
                                                    }
                                                }
                                                for (Base_org dept : baseOrgs) {
                                                    if (dept.getFOrg_Name().equals(gkDepartment)) {
                                                        riskhazardcontrolrangeGRJ.setManageUnitID(dept.getFOrgID());
                                                    }
                                                }
                                                riskhazardcontrolrangeGRJ.setManageUnit(gkDepartment);

                                                riskhazardcontrolrangeList.add(riskhazardcontrolrangeGRJ);
                                            }

                                            riskhazard.setmRiskControlRange(riskhazardcontrolrangeList);

                                            riskhazard.setFrameWorkID(framework.getFramewordID());
                                            riskhazard.setHazardDesc(cells.get(15).getValue());//危险源描述

                                            String zhlxStr = cells.get(14).getValue();
                                            boolean zhlxExist = strDictionaryZHLX.contains(zhlxStr);
                                            if (zhlxExist) {

                                            } else {
                                                if (!lostDics.contains(zhlxStr)) {
                                                    lostDics.add("灾害类型:" + zhlxStr);
                                                }
                                            }
                                            riskhazard.setDamageType(zhlxStr);//灾害类型


                                            String zylxStr = cells.get(5).getValue();
                                            boolean zylxExist = strDictionaryZYLX.contains(zylxStr);
                                            if (zylxExist) {

                                            } else {
                                                if (!lostDics.contains(zylxStr)) {
                                                    lostDics.add("专业类型:" + zylxStr);
                                                }
                                            }

                                            riskhazard.setMajorType(zylxStr);//专业类型

                                            riskhazard.setName(hazardName);


                                            String sglxStrs = cells.get(13).getValue();
                                            if (!sglxStrs.equals("")) {
                                                String[] sglxStrArray = sglxStrs.split(",");
                                                riskhazard.setAccidentType(sglxStrs);//事故类型
                                                for (String s : sglxStrArray) {
                                                    boolean sglxExist = strDictionarySGLX.contains(s);
                                                    if (sglxExist) {

                                                    } else {
                                                        if (!lostDics.contains(s)) {
                                                            lostDics.add("事故类型:" + s);
                                                        }
                                                    }
                                                }
                                            }

                                            riskhazard.setRiskKind(cells.get(33).getValue());//风险种类
                                            riskhazard.setControlResult(cells.get(34).getValue());//管控结果
                                            riskhazard.setRiskObjectType(cells.get(3).getValue());
                                            riskhazard.setIdentifyMethod(cells.get(35).getValue());//辨识方法

                                            if ((!cells.get(11).getValue().equals(""))) {
                                                riskhazard.setStatus(true);
                                            } else {
                                                riskhazard.setStatus(false);
                                            }


                                            riskhazard.setHazardUUID(UUID.randomUUID().toString());


                                            String fxlxStr = cells.get(6).getValue();//风险类型
                                            boolean fxlxExist = StrDictionaryFXLX.contains(fxlxStr);
                                            if (zylxExist) {

                                            } else {
                                                if (!lostDics.contains(fxlxStr)) {
                                                    lostDics.add("风险类型:" + fxlxStr);
                                                }
                                            }
                                            riskhazard.setRiskType(fxlxStr);

                                            riskhazard.setMajorType(zylxStr);//专业类型

                                            if (!cells.get(12).getValue().trim().equals("")) {
                                                //List<Riskcontrolmeasure> riskcontrolmeasures = getMeasures(cells.get(11).getValue(), framework.getFrameWorkName(), framework.getFramewordID());
                                                List<Riskcontrolmeasure> riskcontrolmeasures = new ArrayList<>();
                                                Riskcontrolmeasure riskcontrolmeasure = new Riskcontrolmeasure();
                                                riskcontrolmeasure.setCoalMineName(framework.getFrameWorkName());
                                                riskcontrolmeasure.setFrameWorkID(framework.getFramewordID());
                                                //riskcontrolmeasure.setMeasureName("工程技术");
                                                riskcontrolmeasure.setMeasureUUID(UUID.randomUUID().toString());
                                                //riskcontrolmeasure.setHazardID(0);
                                                riskcontrolmeasure.setMeasureContent(cells.get(12).getValue().equals("") ? null : cells.get(12).getValue());
                                                riskcontrolmeasure.setMeasureType("工程技术");
                                                //riskcontrolmeasure.setMeasureURL("");
                                                //riskcontrolmeasure.setRiskSiteID(0);
                                                //riskcontrolmeasure.setRiskSiteFullNumber("");
                                                riskcontrolmeasures.add(riskcontrolmeasure);
                                                riskhazard.setmRiskControlMeasure(riskcontrolmeasures);
                                            }
                                            childRiskSites.get(k).getmHazards().add(riskhazard);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception ex) {
            throw ex;
        }
        result result = new result();
        result.setList(risksites);
        result.setDepartments(lostDepartments);
        result.setDics(lostDics);
        result.setMchildrisksitelist(mChildRiskSitenamelist);

        if (b) {
            result.setRoles(null);
        } else {
            result.setRoles(lostRoles);
        }
        return result;
    }

    class result {
        List<Risksite> list;
        List<String> departments;
        List<String> roles;
        List<String> dics;
        List<String> mchildrisksitelist;

        public List<Risksite> getList() {
            return list;
        }

        public void setList(List<Risksite> list) {
            this.list = list;
        }

        public List<String> getDepartments() {
            return departments;
        }

        public void setDepartments(List<String> departments) {
            this.departments = departments;
        }

        public List<String> getRoles() {
            return roles;
        }

        public void setRoles(List<String> roles) {
            this.roles = roles;
        }

        public List<String> getDics() {
            return dics;
        }

        public void setDics(List<String> dics) {
            this.dics = dics;
        }

        public List<String> getMchildrisksitelist() {return mchildrisksitelist; }
        public void setMchildrisksitelist(List<String> mchildrisksitelist) {this.mchildrisksitelist = mchildrisksitelist; }
    }

    private Integer parseInt(String value) {
        DecimalFormat df = new DecimalFormat("0");
        try {
            return Integer.valueOf(df.format(Double.valueOf(value)));
        } catch (Exception ex) {
            ex.printStackTrace();
            return 0;
        }
    }

    @RequestMapping(value = "/List/add", method = RequestMethod.POST)
    public Object confirmImport(HttpServletRequest request, @RequestBody List<Risksite> risksites) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Place place = new Place();
            place.setFOrgID(framework.getFramewordID());
            //获取该企业下所有地点
            List<Place> list = placeService.getPlaceList(place);


            for (Risksite risksite : risksites) {
                //一级风险点是否已经存在标志
                boolean exitFlag = false;
                risksite.setRiskSiteUUID(null);
                List<Risksite> risksiteList = risksiteService.getRisksiteDataExactly(risksite);
                List<Risksite> childRiskSiteList = risksite.getmChildRiskSite();
                if (risksiteList != null && risksiteList.size() > 0) {
                    risksite = risksiteList.get(0);
                    //更新风险点与地点的对应关系
                    for (Place p : list) {
                        if (p.getFPlace_Name().equals(risksite.getName())) {
                            risksite.setLocationId(p.getFPlace_GUID());
                            risksiteService.updateRisksite(risksite);
                        }
                    }
                    //一级风险点已经存在
                    exitFlag = true;
                } else {
                    risksite.setParentID("0");
                    risksite.setRiskSiteUUID(UUID.randomUUID().toString());
                    //新增一级风险点
                    risksite = risksiteService.addRisksite(risksite);
                    //更新风险点与地点的对应关系
                    for (Place p : list) {
                        if (p.getFPlace_Name().equals(risksite.getName())) {
                            risksite.setLocationId(p.getFPlace_GUID());
                            risksiteService.updateRisksite(risksite);
                        }
                    }

                    //根据当前父节点下的第几个index算编码，自动补齐6位以0填充
                    String strNumber = String.format("%6d", risksite.getRiskSiteID()).replace(" ", "0");
                    risksite.setNumber(strNumber);
                    risksite.setFullNumber(risksite.getNumber());
                    //更新风险点（nuber、fullnumber）
                    risksiteService.updateRisksite(risksite);
                    exitFlag = false;
                }
                int childIndex = 1;
                //计算index的初始值，
                // 如果是新增的风险点，index直接+1 就可以了；
                // 如果是原来已经存在的风险点，要根据风险点下的子风险点的fullnumer重新算index
                if (exitFlag) {
                    if (risksite.getmChildRiskSite() != null) {
                        List<Risksite> childRiskSites = risksite.getmChildRiskSite();
                        Risksite desRiskSite = null;
                        int maxId = 0;
                        //获取RiskSiteID最大的子风险点（RiskSiteID最大,fullnumer也肯定是最大的）
                        for (Risksite childRiskSite : childRiskSites) {
                            if (childRiskSite.getRiskSiteID() > maxId) {
                                maxId = childRiskSite.getRiskSiteID();
                                desRiskSite = childRiskSite;
                            }
                        }
                        //根据fullnumber计算index；
                        if (desRiskSite != null && desRiskSite.getFullNumber() != null && desRiskSite.getFullNumber().contains(".")) {
                            Integer index = Integer.parseInt(desRiskSite.getFullNumber().substring(desRiskSite.getFullNumber().lastIndexOf(".") + 1));
                            childIndex = index + 1;
                        }
                    }
                }

                for (Risksite childRisk : childRiskSiteList) {
                    childRisk.setRiskSiteUUID(null);
                    childRisk.setParentID(String.valueOf(risksite.getRiskSiteID()));
                    List<Risksite> risksiteData = risksiteService.getRisksiteDataExactly(childRisk);
                    List<Riskhazard> riskhazardList = childRisk.getmHazards();
                    if (risksiteData != null && risksiteData.size() > 0) {
                        childRisk = risksiteData.get(0);
                    } else {
                        //根据当前父节点下的第几个index算编码，自动补齐6位以0填充
                        String strNumber = String.format("%6d", childIndex).replace(" ", "0");
                        //赋值编码
                        childRisk.setNumber(strNumber);
                        //赋值全编码=父FullNumber+子编码
                        childRisk.setRiskSiteUUID(UUID.randomUUID().toString());
                        childRisk.setFullNumber(risksite.getFullNumber() + "." + childRisk.getNumber());
                        childRisk = risksiteService.addRisksite(childRisk);
                        childIndex++;
                    }
                    for (Riskhazard riskhazard : riskhazardList) {
                        Riskhazard rh = new Riskhazard();
                        rh.setRiskSiteID(childRisk.getRiskSiteID());
                        rh.setName(riskhazard.getName());
                        rh.setFrameWorkID(riskhazard.getFrameWorkID());
                        rh.setCoalMineName(riskhazard.getCoalMineName());
                        rh.setRiskSiteFullNumber(childRisk.getFullNumber());
                        rh.setRiskObjectType(riskhazard.getRiskObjectType());
                        rh.setAccidentType(riskhazard.getAccidentType());
                        rh.setControlResult(riskhazard.getControlResult());
                        rh.setRiskKind(riskhazard.getRiskKind());
                        List<Riskhazard> riskhazardData = riskhazardService.getRiskhazardData(rh);
                        List<Riskcontrolmeasure> riskcontrolmeasures = riskhazard.getmRiskControlMeasure();
                        if (riskhazardData != null && riskhazardData.size() > 0) {
                            riskhazard = riskhazardData.get(0);
                        } else {
                            riskhazard.setRiskSiteID(childRisk.getRiskSiteID());
                            riskhazard.setRiskSiteFullNumber(childRisk.getFullNumber());
                            riskhazardService.addRiskhazard(riskhazard);
                            riskhazardService.updateRiskSiteStatusByRiskhazard(riskhazard);
                        }
                        if (riskcontrolmeasures != null && riskcontrolmeasures.size() > 0) {
                            for (Riskcontrolmeasure riskcontrolmeasure : riskcontrolmeasures) {
                                riskcontrolmeasure.setMeasureUUID(null);
                                riskcontrolmeasure.setRiskSiteID(childRisk.getRiskSiteID());
                                riskcontrolmeasure.setHazardID(riskhazard.getHazardID());
                                riskcontrolmeasure.setRiskSiteFullNumber(childRisk.getFullNumber());
                                List<Riskcontrolmeasure> riskcontrolmeasureList = riskcontrolmeasureService.getRiskcontrolmeasureData(riskcontrolmeasure);
                                if (riskcontrolmeasureList != null && riskcontrolmeasureList.size() > 0) {

                                } else {
                                    riskcontrolmeasure.setMeasureUUID(UUID.randomUUID().toString());
                                    riskcontrolmeasure.setMeasureCreateTime(DateUtil.getDateTime());
                                    riskcontrolmeasureService.addRiskcontrolmeasure(riskcontrolmeasure);
                                }
                            }
                        }
                        List<Riskhazardcontrolrange> riskhazardcontrolrangeList = riskhazard.getmRiskControlRange();
                        if (riskhazardcontrolrangeList != null && riskhazardcontrolrangeList.size() > 0) {
                            for (Riskhazardcontrolrange riskhazardcontrolrange : riskhazardcontrolrangeList) {
                                riskhazardcontrolrange.setHazardID(riskhazard.getHazardID());
                                riskhazardcontrolrange.setRiskSiteFullNumber(childRisk.getFullNumber());
                                riskhazardcontrolrange.setHazardUUID(riskhazard.getHazardUUID());
                                riskhazardcontrolrange.setRiskSiteID(childRisk.getRiskSiteID());
                                List<Riskhazardcontrolrange> riskhazardcontrolranges = riskhazardcontrolrangeService.getRiskhazardcontrolrangeList(riskhazardcontrolrange);
                                if (riskhazardcontrolranges != null && riskhazardcontrolranges.size() > 0) {

                                } else {
                                    riskhazardcontrolrangeService.addRiskhazardcontrolrange(riskhazardcontrolrange);
                                }
                            }
                        }

                    }
                    risksiteService.updateChildRiskDamtype(framework.getFramewordID(), childRisk.getFullNumber());
                }
            }
            session.setAttribute("importRiskSites", risksites);
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
        return true;
    }

    /**
     * 检查部门是否在
     */
    @RequestMapping(value = "/Departments/Check", method = RequestMethod.POST)
    private Object checkDepartmentExist(HttpServletRequest request, @RequestBody List<String> departments) {
        List<String> lostDepartment = new ArrayList<>();
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Department department = new Department();
            department.setFFrameID(framework.getFramewordID());
            List<Department> departmentList = departmentService.getDepartmentList(department);

            for (String s : departments) {
                boolean exist = false;
                for (Department depart : departmentList) {
                    if (s.equals(depart.getFOrg_Name())) {
                        exist = true;
                    }
                }
                if (!exist) {
                    lostDepartment.add(s);
                }
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return lostDepartment;
    }

    @RequestMapping(value = "/Role/Check", method = RequestMethod.POST)
    private Object checkRoleExist(HttpServletRequest request, @RequestBody List<String> roles) {
        List<String> lostRoles = new ArrayList<>();
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Enterprise_role enterpriseRole = new Enterprise_role();
            enterpriseRole.setFOrgID(framework.getFramewordID());
            List<Enterprise_role> enterprise_roles = enterprise_roleService.getEnterprise_roleList(enterpriseRole);

            for (String s : roles) {
                boolean exist = false;
                for (Enterprise_role role : enterprise_roles) {
                    if (s.equals(role.getFRole_Name())) {
                        exist = true;
                    }
                }
                if (!exist) {
                    lostRoles.add(s);
                }
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return lostRoles;
    }


    @RequestMapping(value = "/Dic/Check", method = RequestMethod.POST)
    private Object checkDicExist(HttpServletRequest request, @RequestBody List<String> dics) {
        List<String> lostDics = new ArrayList<>();
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");

            List<Enterprise_data_dictionary> dictionaryList = new ArrayList<>();
            List<Enterprise_data_dictionary> dictionaryZYLX = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(framework.getFramewordID(), "专业类型");
            List<Enterprise_data_dictionary> dictionaryZHLX = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(framework.getFramewordID(), "灾害类型");
            List<Enterprise_data_dictionary> dictionarySGLX = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(framework.getFramewordID(), "事故类型");
            List<Enterprise_data_dictionary> dictionaryGKPC = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(framework.getFramewordID(), "管控频次");
            List<Enterprise_data_dictionary> dictionaryFXLX = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(framework.getFramewordID(), "风险类型");

            dictionaryList.addAll(dictionaryZYLX);
            dictionaryList.addAll(dictionaryZHLX);
            dictionaryList.addAll(dictionarySGLX);
            dictionaryList.addAll(dictionaryGKPC);
            dictionaryList.addAll(dictionaryFXLX);


            for (String s : dics) {
                boolean exist = false;
                s = s.replace("事故类型:", "").replace("专业类型:", "").replace("风险类型:", "").replace("灾害类型:", "").replace("管控频次:", "");
                for (Enterprise_data_dictionary dic : dictionaryList) {
                    if (s.equals(dic.getFData_Name())) {
                        exist = true;
                    }
                }
                if (!exist) {
                    lostDics.add(s);
                }
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return lostDics;
    }

    /**
     * 获取管控措施，由于管控措施都写在一个String里，使用正则表达式截取字符串 正则表达式匹配 数字中文顿号 例如 1、 2、
     *
     * @param content       管控措施内容
     * @param frameworkId   企业id
     * @param frameworkName 企业名称
     * @return 管控措施list
     */
    private List<Riskcontrolmeasure> getMeasures(String content, String frameworkId, String frameworkName) {
        String regEx = "\\d+、";
        Pattern pattern = Pattern.compile(regEx);
        Matcher matcher = pattern.matcher(content);
        List<Riskcontrolmeasure> riskcontrolmeasures = new ArrayList<>();
        List<Integer> indexList = new ArrayList<>();
        while (matcher.find()) {
            indexList.add(content.indexOf(matcher.group()));
        }
        indexList.add(content.length());
        for (int j = 1; j < indexList.size(); j++) {
            for (int i = j - 1; i < j; i++) {
                // System.out.println(content.substring(indexList.get(i), indexList.get(j)));
                Riskcontrolmeasure riskcontrolmeasure = new Riskcontrolmeasure();
                riskcontrolmeasure.setCoalMineName(frameworkName);
                riskcontrolmeasure.setFrameWorkID(frameworkId);
                //riskcontrolmeasure.setMeasureName("工程技术");
                riskcontrolmeasure.setMeasureUUID(UUID.randomUUID().toString());
                //riskcontrolmeasure.setHazardID(0);
                riskcontrolmeasure.setMeasureContent(content.substring(indexList.get(i), indexList.get(j)));
                riskcontrolmeasure.setMeasureType("工程技术");
                //riskcontrolmeasure.setMeasureURL("");
                //riskcontrolmeasure.setRiskSiteID(0);
                //riskcontrolmeasure.setRiskSiteFullNumber("");
                riskcontrolmeasures.add(riskcontrolmeasure);
            }
        }
        return riskcontrolmeasures;
    }

    @RequestMapping(value = "/getImportedRiskSites", method = RequestMethod.GET)
    public Object getImportedRiskSites(HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            return session.getAttribute("importRiskSites");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/getImportedPlace", method = RequestMethod.GET)
    public Object getImportedPlace(HttpServletRequest request, String name) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Place place = new Place();
            place.setFOrgID(framework.getFramewordID());
            place.setFPlace_Name(name);
            List<Place> list = placeService.getPlaceList(place);
            if (list != null && list.size() > 0) {
                for (Place place1 : list) {
                    if (name.equals(place1.getFPlace_Name())) {
                        return place1;
                    }
                }
            } else {
                return 0;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    /**
     * @param execFileName
     */
    public boolean checkFileCanBeImprot(String execFileName) {
        return false;
    }


    //按类型抽取到模板中
    public boolean extractTemplate(Risksite risksite) {
        if (risksite != null) {

        }
        return false;
    }

    @RequestMapping(value = "/updateRisksiteLocationID", method = RequestMethod.POST)
    public Object updateRisksiteLocationID(@RequestBody Risksite risksite) {
        try {
            Risksite risk = risksiteService.updateRisksite(risksite);
            if ((risk.getLocationId() != null) && (!risk.getLocationId().equals(""))) {
                return true;
            } else {
                return false;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
}