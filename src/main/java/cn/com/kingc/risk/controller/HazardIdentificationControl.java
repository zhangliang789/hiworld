package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.RiskhazardService;
import cn.com.kingc.risk.service.RiskhazardcontrolrangeService;
import cn.com.kingc.risk.service.RisksiteService;
import cn.com.kingc.risk.service.TemplaterisksiteService;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
import org.platform4j.model.Framework;
import org.platform4j.model.Place;
import org.platform4j.service.PlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

//import org.kplatform4j.model.Framework;

/**
 * @author admistrator
 * @version 1.0
 * @created 27-8月-2017 11:15:35
 */
@RestController
@RequestMapping("HazardIdentificationControl")
public class HazardIdentificationControl {

    @Autowired
    private RisksiteService risksiteService;
    @Autowired
    private RiskhazardService riskhazardService;
    @Autowired
    private TemplaterisksiteService templaterisksiteService;
    @Autowired
    private PlaceService placeService;
    @Autowired
    private RiskhazardcontrolrangeService riskhazardcontrolrangeService;

    /**
     * 保存风险点
     * ID>0就更新
     * 剩下就新增
     *
     * @param risksite
     */
    @RequestMapping(value = "/saveRiskSite", method = RequestMethod.POST)
    @ApiOperation(value = "新增RiskSite对象,并返回新增的对象", response = boolean.class, httpMethod = "POST", notes = "新增RiskSite对象,并返回新增的对象")
    public Object saveRiskSite(@RequestBody Risksite risksite) {
        Integer riskSiteID = 0;
        String fullNumber = null;
        String riskSiteUUid = UUID.randomUUID().toString();
        risksite.setRiskSiteUUID(riskSiteUUid);

        if (risksite != null) {
            if (risksite.getRiskSiteID() != null && risksite.getRiskSiteID() > 0) {
                risksite = risksiteService.updateRisksite(risksite);
            } else {
                risksite = risksiteService.addRisksite(risksite);
            }
        }
        riskSiteID = risksite.getRiskSiteID();

        if ("0".equals(risksite.getParentID())) {
            fullNumber = String.format("%6d", risksite.getRiskSiteID()).replace(" ", "0");
            risksite.setFullNumber(fullNumber);
            risksite.setNumber(fullNumber);
        } else {
            Risksite mRiskSite = new Risksite();
            mRiskSite.setRiskSiteID(Integer.parseInt(risksite.getParentID()));
            List<Risksite> risksiteList = risksiteService.getRisksiteDataOnly(mRiskSite);
            String fullNumberBefore = "";
            if (risksiteList.size() > 0) {
                fullNumberBefore = risksiteList.get(0).getFullNumber();
            }
            List<String> countChdrRS = risksiteService.getRSCRMaxFullNum(risksite.getFrameWorkID(), fullNumberBefore);//risksiteService.getControlMeasureCount();
            String fullNumberAfter = "";
            if (countChdrRS.size() < 2) {
                fullNumberAfter = "000000";
            } else {
                for (int i = 0; i < countChdrRS.size() - 1; i++) {
                    for (int j = countChdrRS.size() - 1; j > i; j--) {
                        if (countChdrRS.get(j).equals(countChdrRS.get(i))) {
                            countChdrRS.remove(j);
                        }
                    }
                }

                String fullNumberLast = countChdrRS.get(0);//取最后插入的fullNumber
                String[] fnLArr = fullNumberLast.split("\\.");
                Integer countChdrRSSizefnl = fnLArr.length;
                Integer fnLIndex = countChdrRSSizefnl - 1;
                String fnL = fnLArr[fnLIndex];
                Integer fn = Integer.parseInt(fnL);
                fullNumberAfter = String.format("%6d", fn + 1).replace(" ", "0");
            }
            fullNumber = fullNumberBefore + "." + fullNumberAfter;
        }
        risksite.setFullNumber(fullNumber);

        risksite = risksiteService.updateRisksite(risksite);

        //新增危险源后更新二级及一级风险点状态为未评估
        risksiteService.updateStatusToWpgAfterAdd(
                risksite.getFrameWorkID(),
                risksite.getFullNumber());

        if (!"0".equals(risksite.getParentID())) {
            boolean issucc = risksiteService.updateChildRiskDamtype(risksite.getFrameWorkID(), risksite.getFullNumber());
        }

        risksite = new Risksite();
        risksite.setRiskSiteID(riskSiteID);

        List<Risksite> risksites = risksiteService.getRisksiteData(risksite);

        if (risksites.size() > 0) {
            risksite = risksites.get(0);
            return risksite;
        } else {
            return null;
        }
    }

    /**
     * 添加危险源到风险点下
     */
    @RequestMapping(value = "/addHazardInRiskSite", method = RequestMethod.POST)
    @ApiOperation(value = "在风险点下新增隐患", response = boolean.class, httpMethod = "POST", notes = "新增RiskSite对象")
    public boolean addHazardInRiskSite(@RequestBody List<Riskhazard> mHazards) {

        Risksite risksite = new Risksite();
        risksite.setRiskSiteID(mHazards.get(0).getRiskSiteID());
        risksite.setFrameWorkID(mHazards.get(0).getFrameWorkID());
        List<Risksite> risksiteList = risksiteService.getRisksiteDataOnly(risksite);
        String riskSiteFullNumber = "";
        String FrameWorkID = "";
        if (risksiteList.size() > 0) {
            riskSiteFullNumber = risksiteList.get(0).getFullNumber();
            FrameWorkID = risksiteList.get(0).getFrameWorkID();
        }

        for (int i = 0; i < mHazards.size(); i++) {
            mHazards.get(i).setRiskSiteFullNumber(riskSiteFullNumber);
        }

        try {
            riskhazardService.addRiskhazardList(mHazards);

            //新增危险源后更新二级及一级风险点状态为未评估
            risksiteService.updateStatusToWpgAfterAdd(
                    FrameWorkID,
                    riskSiteFullNumber);
            boolean issucc = risksiteService.updateChildRiskDamtype(FrameWorkID, riskSiteFullNumber);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }


    /**
     * 添加危险源到风险点下
     */
    @RequestMapping(value = "/addOneHazardInRiskSite", method = RequestMethod.POST)
    @ApiOperation(value = "在风险点下新增隐患", response = boolean.class, httpMethod = "POST", notes = "新增RiskSite对象")
    public boolean addOneHazardInRiskSite(@RequestBody Riskhazard mHazards) {
        Risksite risksite = new Risksite();
        risksite.setRiskSiteID(mHazards.getRiskSiteID());

        List<Risksite> risksiteList = risksiteService.getRisksiteDataOnly(risksite);
        String riskSiteFullNumber = "";
        if (risksiteList.size() > 0) {
            riskSiteFullNumber = risksiteList.get(0).getFullNumber();
        }

        mHazards.setHazardUUID(UUID.randomUUID().toString());
        mHazards.setRiskSiteFullNumber(riskSiteFullNumber);

        try {
//            riskhazardService.updateRiskSiteStatusByRiskhazard(mHazards);
            //新增危险源后更新二级及一级风险点状态为未评估
            risksiteService.updateStatusToWpgAfterAdd(
                    mHazards.getFrameWorkID(),
                    riskSiteFullNumber);
            boolean returnBl = riskhazardService.addRiskhazard(mHazards);
            boolean issucc = risksiteService.updateChildRiskDamtype(mHazards.getFrameWorkID(), riskSiteFullNumber);
            return returnBl;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * 拷贝类似风险点下的危险源
     */
    @RequestMapping(value = "/copyRiskSiteBySimilarPlace/{riskSiteId}", method = RequestMethod.POST)
    @ApiOperation(value = "拷贝类似风险点下的危险源", response = boolean.class, httpMethod = "POST", notes = "新增RiskSite对象")
    public boolean copyRiskSiteBySimilarPlace(@ApiParam(name = "riskSiteId", value = "被拷贝的风险点id") @PathVariable("riskSiteId") Integer riskSiteId, @RequestBody Risksite newRiskSite) {
        //先插入风险点信息
        if (newRiskSite != null && newRiskSite.getRiskSiteID() > 0) {
            risksiteService.updateRisksite(newRiskSite);
        } else {
            risksiteService.addRisksite(newRiskSite);
        }
        //拷贝子风险点及危险源
        if (newRiskSite.getRiskSiteID() > 0) {
            Risksite mSimilarRiskSite = risksiteService.getRisksite(riskSiteId);
            if (mSimilarRiskSite != null) {
                CopyChildRiskSite(mSimilarRiskSite, newRiskSite);
                return true;
            } else {
                return false;
            }
        }
        return false;
    }


    /**
     * 按地点类型获取风险点
     *
     * @param mRiskSite
     */
    @RequestMapping(value = "/getChildRiskByPlace/{mRiskSite}", method = RequestMethod.GET)
    @ApiOperation(value = "根据id获取Risksite对象", response = Risksite.class, httpMethod = "GET", notes = "根据id获取Risksite对象")
    public Risksite getChildRiskByPlace(@RequestBody Risksite mRiskSite) {
        return null;
    }

    //复制风险点到新风险点
    private void CopyChildRiskSite(Risksite fromRisk, Risksite toRisk) {
        if (fromRisk.getmChildRiskSite() != null) {
            int index = 1;
            for (Risksite childRisk : fromRisk.getmChildRiskSite()) {
                Risksite newChildRisk = new Risksite();
                newChildRisk.setRiskSiteID(0);
                newChildRisk.setRiskSiteType(childRisk.getRiskSiteType());
                newChildRisk.setRiskSiteTypeContent(childRisk.getRiskSiteTypeContent());
                newChildRisk.setFrameWorkID(childRisk.getFrameWorkID());
                newChildRisk.setCoalMineName(childRisk.getCoalMineName());
                newChildRisk.setRiskValue(childRisk.getRiskValue());
                newChildRisk.setRiskSiteUUID(UUID.randomUUID().toString());
                newChildRisk.setRiskSiteTypeContent(childRisk.getRiskSiteTypeContent());
                newChildRisk.setRiskSiteType(childRisk.getRiskSiteType());
                newChildRisk.setStatus(childRisk.getStatus());
                newChildRisk.setName(childRisk.getName());
                newChildRisk.setManagerUnitName(childRisk.getManagerUnitName());
                newChildRisk.setManagerUnitID(childRisk.getManagerUnitID());
                newChildRisk.setManagerID(childRisk.getManagerID());
                newChildRisk.setManagerName(childRisk.getManagerName());
                newChildRisk.setExtendedAttributesJsonString(childRisk.getExtendedAttributesJsonString());
                newChildRisk.setExtendedAttributesJson(childRisk.getExtendedAttributesJson());
                newChildRisk.setDetails(childRisk.getDetails());
                //赋值ParentID等于上级的RiskSiteID
                newChildRisk.setParentID(String.valueOf(toRisk.getRiskSiteID()));
                //根据当前父节点下的第几个index算编码，自动补齐5位以0填充
                String strNumber = String.format("%5d", index).replace(" ", "0");
                //赋值编码
                newChildRisk.setNumber(strNumber);
                //赋值全编码=父FullNumber+子编码
                newChildRisk.setFullNumber(toRisk.getFullNumber() + "." + newChildRisk.getNumber());
                risksiteService.addRisksite(newChildRisk);
                //考核危险源
                if (childRisk.getmHazards() != null && childRisk.getmHazards().size() > 0) {

                    List<Riskhazard> riskhazardList = childRisk.getmHazards();
                    for (Riskhazard riskhazard : riskhazardList) {
                        riskhazard.setFrameWorkID(newChildRisk.getFrameWorkID());
                        riskhazard.setCoalMineName(newChildRisk.getCoalMineName());
                        riskhazard.setHazardID(0);
                        riskhazard.setHazardUUID(UUID.randomUUID().toString());
                        riskhazard.setRiskSiteID(newChildRisk.getRiskSiteID());
                        riskhazard.setRiskSiteFullNumber(newChildRisk.getFullNumber());
                    }
                    addHazardInRiskSite(riskhazardList);
                }

                if (childRisk.getmChildRiskSite() != null) {
                    CopyChildRiskSite(childRisk, newChildRisk);
                }

                index++;
            }
        } else
            return;
    }


    /**
     * 根据地点类型获取类似的风险点
     *
     * @param mPlaceType
     */
    @RequestMapping(value = "/getSimilarPlace/{mRiskSiteType}/{mRiskSiteTypeContent}", method = RequestMethod.GET)
    @ApiOperation(value = "根据地点类型获取类似的风险点", response = Risksite.class, httpMethod = "GET", notes = "根据地点类型获取类似的风险点")
    public Object getSimilarPlace(
            @ApiParam(name = "mRiskSiteType", value = "风险点类型") @PathVariable("mRiskSiteType") Integer mPlaceType,
            @ApiParam(name = "mRiskSiteTypeContent", value = "风险点类型值") @PathVariable("mRiskSiteTypeContent") String mRiskSiteTypeContent,
            HttpServletRequest request) {

        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");

        if (mPlaceType != null && mPlaceType > 0) {
            Risksite selectRiskSite = new Risksite();
            selectRiskSite.setFrameWorkID(framework.getFramewordID());
            selectRiskSite.setRiskSiteType(RiskSiteTypeEnum.ADDRESS);
            selectRiskSite.setRiskSiteTypeContent(mRiskSiteTypeContent);
            selectRiskSite.setParentID("0");

            return risksiteService.getRisksiteData(selectRiskSite);
        }

        return null;
    }

    /**
     * 导入风险点
     *
     * @param mRiskSite
     */
    @RequestMapping(value = "/importRiskSite", method = RequestMethod.PUT)
    @ApiOperation(value = "导入风险点", response = boolean.class, httpMethod = "PUT", notes = "更新RiskSite对象")
    public boolean importRiskSite(@RequestBody Risksite mRiskSite) {

        return false;
    }

    /**
     * 初始化风险辨识界面
     *
     * @param CoalMineName
     * @param frameWorkID
     */
    @RequestMapping(value = "/initializationView/{CoalMineName}/{frameWorkID}", method = RequestMethod.GET)
    @ApiOperation(value = "初始化风险辨识界面", response = Risksite.class, httpMethod = "GET", notes = "初始化风险辨识界面，返回顶级风险点形成tree")
    public List<Risksite> initializationView(
            @ApiParam(name = "CoalMineName", value = "企业名称") @PathVariable("CoalMineName") String CoalMineName,
            @ApiParam(name = "frameWorkID", value = "企业编号") @PathVariable("frameWorkID") String frameWorkID) {
        //根据煤矿名称和FrameWorkID查找顶级风险点
        //一般为地点
        List<Risksite> risksites = risksiteService.getTopRisksite(CoalMineName, frameWorkID);

        return risksites;
    }

    /**
     * 风险地图标识
     *
     * @param mRiskSite
     */
    @RequestMapping(value = "/makRiskLabelOnMap", method = RequestMethod.PUT)
    @ApiOperation(value = "在风险地图上标识风险点", response = boolean.class, httpMethod = "PUT", notes = "在风险地图上标识风险点")
    public boolean makRiskLabelOnMap(@RequestBody Risksite mRiskSite) {

        return true;
    }

    /**
     * 修改风险点信息
     *
     * @param mRiskSite
     */
    @RequestMapping(value = "/modifyRiskSite", method = RequestMethod.PUT)
    @ApiOperation(value = "更新RiskSite对象", response = boolean.class, httpMethod = "PUT", notes = "更新RiskSite对象")
    public boolean modifyRiskSite(@RequestBody Risksite mRiskSite) {
        if (mRiskSite != null && mRiskSite.getRiskSiteID() > 0) {
            mRiskSite = risksiteService.updateRisksite(mRiskSite);
        } else {
            mRiskSite = risksiteService.addRisksite(mRiskSite);
        }
        mRiskSite = risksiteService.getRisksite(mRiskSite.getRiskSiteID());
        if (mRiskSite.getRiskSiteID() > 0) {
            boolean issucc = risksiteService.updateChildRiskDamtype(mRiskSite.getFrameWorkID(), mRiskSite.getFullNumber());
            return true;
        } else {
            return false;
        }
    }

    /**
     * 按照风险点类型查找模板类型
     *
     * @param mTemplateRiskType 风险点类型
     */
    @RequestMapping(value = "/getTemplateRiskByRiskSiteType/{mTemplateRiskType}/{mTemplateRiskSiteTypeContent}", method = RequestMethod.GET)
    @ApiOperation(value = "按照风险点类型查找模板类型", response = Templaterisksite.class, httpMethod = "GET", notes = "按照风险点类型查找模板类型")
    public Templaterisksite getTemplateRiskByRiskSiteType(
            @ApiParam(name = "mTemplateRiskType", value = "风险点类型") @PathVariable("mTemplateRiskType") Integer mTemplateRiskType,
            @ApiParam(name = "mTemplateRiskSiteTypeContent", value = "风险点类型") @PathVariable("mTemplateRiskSiteTypeContent") String mTemplateRiskSiteTypeContent) {
        //根据风险点类型查找地点类型模板
        if (mTemplateRiskType != null && mTemplateRiskType > 0) {

            Templaterisksite selectRisksite = new Templaterisksite();
            selectRisksite.setRiskSiteType(RiskSiteTypeEnum.values()[mTemplateRiskType]);
            selectRisksite.setRiskSiteTypeContent(mTemplateRiskSiteTypeContent);
            List<Templaterisksite> lst = templaterisksiteService.getTemplaterisksiteData(selectRisksite);
            if (lst != null && lst.size() > 0) {
                return lst.get(0);
            }
        }

        return null;
    }

    /**
     * 按照风险点类型查找模板类型
     *
     * @param
     */
    @RequestMapping(value = "/addTemplateRiskSiteToRiskSite/{templaterisksiteId}", method = RequestMethod.POST)
    @ApiOperation(value = "拷贝风险点模板下的危险源", response = boolean.class, httpMethod = "POST", notes = "新增RiskSite对象")
    public boolean addTemplateRiskSiteToRiskSite(@ApiParam(name = "templaterisksiteId", value = "模板templaterisksiteId") @PathVariable("templaterisksiteId") Integer templaterisksiteId, @RequestBody Risksite toRiskSite) {
        //先插入风险点信息
        if (toRiskSite != null && toRiskSite.getRiskSiteID() > 0) {
            risksiteService.updateRisksite(toRiskSite);
        } else {
            risksiteService.addRisksite(toRiskSite);
        }
        //拷贝子风险点及危险源
        if (toRiskSite.getRiskSiteID() > 0) {
            Templaterisksite templaterisksite = templaterisksiteService.getTemplaterisksite(templaterisksiteId);
            if (templaterisksite != null) {
                CopyTemplateChildRiskSite(templaterisksite, toRiskSite);
                return true;
            } else {
                return false;
            }
        }

        return false;
    }

    //复制风险点到新风险点
    private void CopyTemplateChildRiskSite(Templaterisksite fromRisk, Risksite toRisk) {
        if (fromRisk.getmChildRiskSite() != null) {
            int index = 1;
            for (Templaterisksite tempChildRisk : fromRisk.getmChildRiskSite()) {
                Risksite newChildRisk = new Risksite();
                newChildRisk.setRiskSiteID(0);
                newChildRisk.setRiskSiteType(tempChildRisk.getRiskSiteType());
                newChildRisk.setRiskSiteTypeContent(tempChildRisk.getRiskSiteTypeContent());
                newChildRisk.setFrameWorkID(tempChildRisk.getFrameWorkID());
                newChildRisk.setRiskValue(tempChildRisk.getRiskValue());
                newChildRisk.setRiskSiteUUID(UUID.randomUUID().toString());
                newChildRisk.setRiskSiteTypeContent(tempChildRisk.getRiskSiteTypeContent());
                newChildRisk.setRiskSiteType(tempChildRisk.getRiskSiteType());
                newChildRisk.setStatus(false);
                newChildRisk.setName(tempChildRisk.getName());
                newChildRisk.setManagerUnitName(tempChildRisk.getManagerUnitName());
                newChildRisk.setManagerUnitID(tempChildRisk.getManagerUnitID());
                newChildRisk.setManagerID(tempChildRisk.getManagerID());
                newChildRisk.setManagerName(tempChildRisk.getManagerName());
                newChildRisk.setExtendedAttributesJsonString(tempChildRisk.getExtendedAttributesJsonString());
                newChildRisk.setDetails(tempChildRisk.getDetails());
                newChildRisk.setRiskSiteType(tempChildRisk.getRiskSiteType());
                newChildRisk.setRiskSiteTypeContent(tempChildRisk.getRiskSiteTypeContent());
                String strNumber = String.format("%5d", index).replace(" ", "0");
                newChildRisk.setNumber(strNumber);
                newChildRisk.setFullNumber(toRisk.getNumber() + "." + newChildRisk.getNumber());
                risksiteService.addRisksite(newChildRisk);
                //考核危险源
                if (tempChildRisk.getmHazards() != null) {
                    List<Riskhazard> lst = changTemplateToHazard(toRisk, tempChildRisk.getmHazards());
                    riskhazardService.addRiskhazardList(lst);
                }

                if (tempChildRisk.getmChildRiskSite() != null) {
                    CopyTemplateChildRiskSite(tempChildRisk, newChildRisk);
                }

                index++;
            }
        }
            return;
    }

    /**
     * 把危险源模板内容复制到指定的风险点下
     *
     * @toRisk 风险点
     * @lst 危险源模板
     */
    private List<Riskhazard> changTemplateToHazard(Risksite toRisk, List<Templatehazard> lst) {
        List<Riskhazard> value = new ArrayList<>();
        if (lst != null && lst.size() > 0) {
            for (Templatehazard Tchild : lst) {
                Riskhazard hazard = new Riskhazard();
                hazard.setFrameWorkID(toRisk.getFrameWorkID());
                hazard.setCoalMineName(toRisk.getCoalMineName());
                hazard.setHazardID(0);
                hazard.setHazardUUID(UUID.randomUUID().toString());
                hazard.setRiskSiteID(toRisk.getRiskSiteID());
                hazard.setDamageType(Tchild.getDamageType());
                hazard.setAccountabilityUnit(Tchild.getAccountabilityUnit());
                hazard.setConsequence(Tchild.getConsequence());
                hazard.setEexpose(Double.valueOf(Tchild.getExpose()));
                hazard.setExposeDegree(Tchild.getExposeDegree());
                hazard.setMajorType(Tchild.getMajorType());
                hazard.setClossConsequence(Double.valueOf(Tchild.getLossConsequence()));
                hazard.setRiskObject(Tchild.getRiskObject());
                hazard.setLpossibility(Tchild.getPossibility());
                hazard.setRiskType(Tchild.getRiskType());
                hazard.setDriskValue(Tchild.getRiskValue());
                hazard.setStatus(Tchild.getStatus());
                hazard.setRiskPlace(Tchild.getRiskPlace());
                hazard.setStandardFullNumber(Tchild.getStandardFullNumber());
                hazard.setRiskSiteFullNumber(toRisk.getFullNumber());
                value.add(hazard);
            }
        }
        return value;
    }

    /**
     * 显示查询窗体
     */
    @RequestMapping(value = "/showQueryConditionForm", method = RequestMethod.PUT)
    @ApiOperation(value = "显示查询窗体", response = boolean.class, httpMethod = "PUT", notes = "显示查询窗体")
    public boolean showQueryConditionForm() {

        return false;
    }

    //获取一个空的RiskDetailedList对象
    @RequestMapping(value = "/createNewRiskSite", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的RiskDetailedList对象", response = Risksite.class, httpMethod = "GET", notes = "获取一个空的RiskDetailedList对象")
    public Object createRiskSite(HttpServletRequest request) {

        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Risksite risksite = new Risksite();
        risksite.setCoalMineName(framework.getFrameWorkName());
        risksite.setFrameWorkID(framework.getFramewordID());

        return risksite;
    }

    //获取一个空的Riskhazard对象
    @RequestMapping(value = "/createRiskhazard", method = RequestMethod.GET)
    @ApiOperation(value = "获取一个空的Riskhazard对象", response = Risksite.class, httpMethod = "GET", notes = "获取一个空的Riskhazard对象")
    public Object createRiskhazard(HttpServletRequest request) {

        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Riskhazard riskhazard = new Riskhazard();
        riskhazard.setCoalMineName(framework.getFrameWorkName());
        riskhazard.setFrameWorkID(framework.getFramewordID());

        return riskhazard;
    }

    //获取本RiskSite的mHazards隐患集合对象
    @RequestMapping(value = "/getmHazardsByRisksiteId", method = RequestMethod.POST)
    @ApiOperation(value = "获取本RiskSite的mHazards隐患集合对象", response = Risksite.class, httpMethod = "POST", notes = "获取本RiskSite的mHazards隐患集合对象")
    public Object getmHazardsByRisksiteId(HttpServletRequest request) {

        String risksiteId = request.getParameter("risksiteId");
        Riskhazard riskhazard = new Riskhazard();

        if (risksiteId != null && !"".equals(risksiteId)) {
            riskhazard.setRiskSiteID(Integer.parseInt(risksiteId));
            List<Riskhazard> riskhazards = riskhazardService.getRiskhazardData(riskhazard);
            return riskhazards;
        } else {
            return null;
        }
    }

    //获取本账户所有RiskSite对象
    @RequestMapping(value = "/getAllRiskSite", method = RequestMethod.POST)
    @ApiOperation(value = "获取本账户所有RiskSite对象", response = Risksite.class, httpMethod = "POST", notes = "获取本账户所有RiskSite对象")
    public Object getAllRiskSite(@RequestBody Risksite mRiskSite) {

        List<Risksite> risksiteList = new ArrayList<>();
        mRiskSite.setRiskSiteType(RiskSiteTypeEnum.ADDRESS);
        if (mRiskSite.getPage() != null && mRiskSite.getPage() > 0) {
            risksiteList = risksiteService.getRisksiteByPageAndRisksite(mRiskSite);
        } else {
            risksiteList = risksiteService.getRisksiteData(mRiskSite);
        }

        return risksiteList;
    }

    //获取本RiskSite的所有RiskSite子集对象
    @RequestMapping(value = "/getAllRiskSiteChdr", method = RequestMethod.POST)
    @ApiOperation(value = "获取本RiskSite的所有RiskSite子集对象", response = Risksite.class, httpMethod = "POST", notes = "获取本RiskSite的所有RiskSite子集对象")
    public Object getAllRiskSiteChdr(@RequestBody Risksite mRiskSite) {

        List<Risksite> risksiteList = new ArrayList<>();
        mRiskSite.setRiskSiteType(RiskSiteTypeEnum.ADDRESS);

        mRiskSite = risksiteService.getRisksite(Integer.parseInt(mRiskSite.getParentID()));
        if (mRiskSite != null) {
            risksiteList = mRiskSite.getmChildRiskSite();
        }

        return risksiteList;
    }

    @RequestMapping(value = "/getRiskHazardList")
    public Object getRiskHazardList(@RequestBody Risksite mRiskSite){
        List<Riskhazard> riskhazardList=new ArrayList<>();
        Riskhazard riskhazard=new Riskhazard();
        riskhazard.setRiskSiteID(mRiskSite.getRiskSiteID());
        riskhazardList=riskhazardService.getRiskhazardData(riskhazard);
        return riskhazardList;
    }

    //条件查询RiskSite对象对象(不包含子集)
    @RequestMapping(value = "/getRiskSiteOnly", method = RequestMethod.POST)
    @ApiOperation(value = "条件查询RiskSite对象对象(不包含子集)", response = Risksite.class, httpMethod = "POST", notes = "条件查询RiskSite对象对象(不包含子集)")
    public Object getRiskSiteOnly(@RequestBody Risksite mRiskSite) {

        List<Risksite> risksiteList = new ArrayList<>();
        if ("0".equals(mRiskSite.getParentID())) {
            mRiskSite.setRiskSiteType(RiskSiteTypeEnum.ADDRESS);
        }

        risksiteList = risksiteService.getRisksiteDataOnly(mRiskSite);

        return risksiteList;
    }

    //根据id删除一个riskhazard
    @RequestMapping(value = "/delRiskhazardByID", method = RequestMethod.POST)
    @ApiOperation(value = "根据id删除一个riskhazard", response = Risksite.class, httpMethod = "POST", notes = "根据id删除一个riskhazard")
    public Object delRiskhazardByID(@RequestBody Riskhazard riskhazard) {

        Integer hazardID = riskhazard.getHazardID();
        Riskhazard riskhazarddel = riskhazardService.getRiskhazard(hazardID);
        boolean delIsSucc = riskhazardService.deleteRiskhazardByID(hazardID);
        //删除riskHazard之后重新评估一级二级风险等级
        Risksite riskObject = risksiteService.getRisksite(riskhazarddel.getRiskSiteID());
        Risksite riskSite = null;
        if(riskObject.getParentID() != null){
            riskSite = risksiteService.getRisksite(Integer.parseInt(riskObject.getParentID()));
        }
        Risksite riskSiteWithchildren = risksiteService.getRiskSiteChildList(riskSite);
        risksiteService.assessRiskObjectLevel(riskSiteWithchildren);

        return true;
    }

    //更新riskhazard
    @RequestMapping(value = "/updateRiskhazard", method = RequestMethod.POST)
    @ApiOperation(value = "更新riskhazard", response = Risksite.class, httpMethod = "POST", notes = "更新riskhazard")
    public Object updateRiskhazard(@RequestBody Riskhazard riskhazard) {
        boolean updateIsSucc = riskhazardService.updateRiskhazard(riskhazard);
        riskhazard = riskhazardService.getRiskhazard(riskhazard.getHazardID());
        boolean issucc = risksiteService.updateChildRiskDamtype(riskhazard.getFrameWorkID(), riskhazard.getRiskSiteFullNumber());
        return updateIsSucc;
    }

    //更新riskhazard
    @RequestMapping(value = "/checkRiskIsUsed/{riskSiteID}/{riskFullNumber}", method = RequestMethod.POST)
    @ApiOperation(value = "判断是否使用过", response = boolean.class, httpMethod = "POST", notes = "更新riskhazard")
    public Object checkRiskIsUsed(@PathVariable("riskSiteID") Integer riskSiteID, @PathVariable("riskFullNumber") String riskFullNumber) {
        return risksiteService.getRelationshipByRiskSite(
                "11.112",
                riskSiteID,
                riskFullNumber);
    }

    //更新riskhazard
    @RequestMapping(value = "/deleteRiskByFullNumber/{riskSiteID}/{riskFullNumber}", method = RequestMethod.POST)
    @ApiOperation(value = "按fullNumber删除", response = boolean.class, httpMethod = "POST", notes = "更新riskhazard")
    public boolean deleteRiskByFullNumber(HttpServletRequest request, @PathVariable("riskSiteID") Integer riskSiteID, @PathVariable("riskFullNumber") String riskFullNumber) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");

        try {
            risksiteService.deleteRelationshipByRiskSite(
                    framework.getFramewordID(),
                    riskSiteID,
                    riskFullNumber);
            risksiteService.deleteRiskMeasureByFullNumber(framework.getFramewordID(),
                    riskSiteID,
                    riskFullNumber);
            risksiteService.deleteRiskHadarzByFullNumber(framework.getFramewordID(),
                    riskSiteID,
                    riskFullNumber);
            risksiteService.deleteRiskSiteByFullNumber(framework.getFramewordID(),
                    riskSiteID,
                    riskFullNumber);
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    //修改平台地点
    @RequestMapping(value = "/updatePlace", method = RequestMethod.POST)
    @ApiOperation(value = "修改平台地点名称")
    public Object updatePlace(HttpServletRequest request, HttpServletResponse response) {

        String placeName = request.getParameter("placeName");
        String placeId = request.getParameter("placeId");
        boolean returnBl = false;
        Place place = new Place();
        if (placeId != null) {
            place = placeService.getPlace(placeId);
            if (place != null) {
                place.setFPlace_Name(placeName);
                returnBl = placeService.updatePlace(place);
            }
        }
        return returnBl;
    }

    @RequestMapping(value = "/getRiskhazardcontrolrangeFiveLevels", method = {RequestMethod.GET, RequestMethod.POST})
    @ApiOperation(value = "获取5级管控空对象")
    public Object getRiskhazardcontrolrangeFiveLevels(HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");

            Map<String, Object> map = new HashMap<>();

            Riskhazardcontrolrange RiskhazardcontrolrangeKJ = new Riskhazardcontrolrange();
            RiskhazardcontrolrangeKJ.setFrameWorkID(framework.getFramewordID());
            RiskhazardcontrolrangeKJ.setCoalMineName(framework.getFrameWorkName());
            map.put("kj", RiskhazardcontrolrangeKJ);

            Riskhazardcontrolrange RiskhazardcontrolrangeZYJ = new Riskhazardcontrolrange();
            RiskhazardcontrolrangeZYJ.setFrameWorkID(framework.getFramewordID());
            RiskhazardcontrolrangeZYJ.setCoalMineName(framework.getFrameWorkName());
            map.put("zyj", RiskhazardcontrolrangeZYJ);

            Riskhazardcontrolrange RiskhazardcontrolrangeQDJ = new Riskhazardcontrolrange();
            RiskhazardcontrolrangeQDJ.setFrameWorkID(framework.getFramewordID());
            RiskhazardcontrolrangeQDJ.setCoalMineName(framework.getFrameWorkName());
            map.put("znbsj", RiskhazardcontrolrangeQDJ);

            Riskhazardcontrolrange RiskhazardcontrolrangeBZJ = new Riskhazardcontrolrange();
            RiskhazardcontrolrangeBZJ.setFrameWorkID(framework.getFramewordID());
            RiskhazardcontrolrangeBZJ.setCoalMineName(framework.getFrameWorkName());
            map.put("qdj", RiskhazardcontrolrangeBZJ);

            Riskhazardcontrolrange RiskhazardcontrolrangeGRJ = new Riskhazardcontrolrange();
            RiskhazardcontrolrangeGRJ.setFrameWorkID(framework.getFramewordID());
            RiskhazardcontrolrangeGRJ.setCoalMineName(framework.getFrameWorkName());
            map.put("bzgrj", RiskhazardcontrolrangeGRJ);

            return map;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    /**
     * 添加危险源到风险点下
     */
    @RequestMapping(value = "/addOneHazardInRiskSiteAndReturn", method = RequestMethod.POST)
    @ApiOperation(value = "在风险点下新增隐患", response = boolean.class, httpMethod = "POST", notes = "新增RiskSite对象")
    public Object addOneHazardInRiskSiteAndReturn(@RequestBody Riskhazard mHazards) {
        Risksite risksite = new Risksite();
        risksite.setRiskSiteID(mHazards.getRiskSiteID());

        List<Risksite> risksiteList = risksiteService.getRisksiteDataOnly(risksite);
        String riskSiteFullNumber = "";
        if (risksiteList.size() > 0) {
            riskSiteFullNumber = risksiteList.get(0).getFullNumber();
        }

        mHazards.setHazardUUID(UUID.randomUUID().toString());
        mHazards.setRiskSiteFullNumber(riskSiteFullNumber);

        try {
//            riskhazardService.updateRiskSiteStatusByRiskhazard(mHazards);
            //新增危险源后更新二级及一级风险点状态为未评估
            risksiteService.updateStatusToWpgAfterAdd(
                    mHazards.getFrameWorkID(),
                    riskSiteFullNumber);
            boolean returnBl = riskhazardService.addRiskhazard(mHazards);
            boolean issucc = risksiteService.updateChildRiskDamtype(mHazards.getFrameWorkID(), riskSiteFullNumber);
            if (returnBl) {
                return mHazards;
            } else {
                return null;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/addRiskhazardcontrolranges", method = {RequestMethod.GET,RequestMethod.POST})
    public Object addRiskhazardcontrolranges(HttpServletRequest request,@RequestBody List<Riskhazardcontrolrange> list){
        try{
            HttpSession session = request.getSession();
            riskhazardcontrolrangeService.addRiskhazardcontrolrangeList(list);
            return  true;
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    @RequestMapping(value = "/updateRiskhazardcontrolrangeFiveLevels",method = {RequestMethod.GET,RequestMethod.POST})
    public Object updateRiskhazardcontrolrangeFiveLevels(HttpServletRequest request,@RequestBody List<Riskhazardcontrolrange> list){
        try{
            HttpSession session = request.getSession();
            for (Riskhazardcontrolrange riskhazardcontrolrange : list) {
                if(riskhazardcontrolrange.getRiskSiteControlRangeID()==null){
                    riskhazardcontrolrangeService.addRiskhazardcontrolrange(riskhazardcontrolrange);
                }else{
                    riskhazardcontrolrangeService.updateRiskhazardcontrolrange(riskhazardcontrolrange);
                }
            }
            return true;
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return  false;
    }

    @RequestMapping(value = "/getRiskhazardcontrolrangeFiveLevelsByHazardId",method = {RequestMethod.GET,RequestMethod.POST})
    public Object getRiskhazardcontrolrangeFiveLevelsByHazardId(HttpServletRequest request,Integer hazardId){
        try{
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");

            Riskhazardcontrolrange riskhazardcontrolrange=new Riskhazardcontrolrange();
            riskhazardcontrolrange.setHazardID(hazardId);
            riskhazardcontrolrange.setFrameWorkID(framework.getFramewordID());
            List<Riskhazardcontrolrange> riskhazardcontrolrangeList=riskhazardcontrolrangeService.getRiskhazardcontrolrangeList(riskhazardcontrolrange);
            if(riskhazardcontrolrangeList.size()==0){
                Riskhazard riskhazard= riskhazardService.getRiskhazard(hazardId);

                Riskhazardcontrolrange RiskhazardcontrolrangeKJ = new Riskhazardcontrolrange();
                RiskhazardcontrolrangeKJ.setFrameWorkID(framework.getFramewordID());
                RiskhazardcontrolrangeKJ.setCoalMineName(framework.getFrameWorkName());
                RiskhazardcontrolrangeKJ.setHazardID(hazardId);
                RiskhazardcontrolrangeKJ.setControlRangeName("矿级");
                RiskhazardcontrolrangeKJ.setRiskSiteFullNumber(riskhazard.getRiskSiteFullNumber());
                RiskhazardcontrolrangeKJ.setHazardUUID(riskhazard.getHazardUUID());
                RiskhazardcontrolrangeKJ.setRiskSiteID(riskhazard.getRiskSiteID());
                riskhazardcontrolrangeList.add(RiskhazardcontrolrangeKJ);

                Riskhazardcontrolrange RiskhazardcontrolrangeZYJ = new Riskhazardcontrolrange();
                RiskhazardcontrolrangeZYJ.setFrameWorkID(framework.getFramewordID());
                RiskhazardcontrolrangeZYJ.setCoalMineName(framework.getFrameWorkName());
                RiskhazardcontrolrangeZYJ.setControlRangeName("专业级");
                RiskhazardcontrolrangeZYJ.setHazardID(hazardId);
                RiskhazardcontrolrangeZYJ.setRiskSiteFullNumber(riskhazard.getRiskSiteFullNumber());
                RiskhazardcontrolrangeZYJ.setHazardUUID(riskhazard.getHazardUUID());
                RiskhazardcontrolrangeZYJ.setRiskSiteID(riskhazard.getRiskSiteID());
                riskhazardcontrolrangeList.add(RiskhazardcontrolrangeZYJ);

                Riskhazardcontrolrange RiskhazardcontrolrangeQDJ = new Riskhazardcontrolrange();
                RiskhazardcontrolrangeQDJ.setFrameWorkID(framework.getFramewordID());
                RiskhazardcontrolrangeQDJ.setCoalMineName(framework.getFrameWorkName());
                RiskhazardcontrolrangeQDJ.setHazardID(hazardId);
                RiskhazardcontrolrangeQDJ.setControlRangeName("职能部室级");
                RiskhazardcontrolrangeQDJ.setRiskSiteFullNumber(riskhazard.getRiskSiteFullNumber());
                RiskhazardcontrolrangeQDJ.setHazardUUID(riskhazard.getHazardUUID());
                RiskhazardcontrolrangeQDJ.setRiskSiteID(riskhazard.getRiskSiteID());
                riskhazardcontrolrangeList.add(RiskhazardcontrolrangeQDJ);

                Riskhazardcontrolrange RiskhazardcontrolrangeBZJ = new Riskhazardcontrolrange();
                RiskhazardcontrolrangeBZJ.setFrameWorkID(framework.getFramewordID());
                RiskhazardcontrolrangeBZJ.setCoalMineName(framework.getFrameWorkName());
                RiskhazardcontrolrangeBZJ.setControlRangeName("区队级");
                RiskhazardcontrolrangeBZJ.setHazardID(hazardId);
                RiskhazardcontrolrangeBZJ.setRiskSiteFullNumber(riskhazard.getRiskSiteFullNumber());
                RiskhazardcontrolrangeBZJ.setHazardUUID(riskhazard.getHazardUUID());
                RiskhazardcontrolrangeBZJ.setRiskSiteID(riskhazard.getRiskSiteID());
                riskhazardcontrolrangeList.add(RiskhazardcontrolrangeBZJ);

                Riskhazardcontrolrange RiskhazardcontrolrangeGRJ = new Riskhazardcontrolrange();
                RiskhazardcontrolrangeGRJ.setFrameWorkID(framework.getFramewordID());
                RiskhazardcontrolrangeGRJ.setCoalMineName(framework.getFrameWorkName());
                RiskhazardcontrolrangeGRJ.setControlRangeName("班组个人级");
                RiskhazardcontrolrangeGRJ.setHazardID(hazardId);
                RiskhazardcontrolrangeGRJ.setRiskSiteFullNumber(riskhazard.getRiskSiteFullNumber());
                RiskhazardcontrolrangeGRJ.setHazardUUID(riskhazard.getHazardUUID());
                RiskhazardcontrolrangeGRJ.setRiskSiteID(riskhazard.getRiskSiteID());
                riskhazardcontrolrangeList.add(RiskhazardcontrolrangeGRJ);
            }else{
                if(riskhazardcontrolrangeList.size()<5){
                    Riskhazard riskhazard= riskhazardService.getRiskhazard(hazardId);
                    String names="";
                    for (Riskhazardcontrolrange controlRange : riskhazardcontrolrangeList) {
                        names+=controlRange.getControlRangeName();
                    }
                    if(!names.contains("矿级")){
                        Riskhazardcontrolrange RiskhazardcontrolrangeKJ = new Riskhazardcontrolrange();
                        RiskhazardcontrolrangeKJ.setFrameWorkID(framework.getFramewordID());
                        RiskhazardcontrolrangeKJ.setCoalMineName(framework.getFrameWorkName());
                        RiskhazardcontrolrangeKJ.setHazardID(hazardId);
                        RiskhazardcontrolrangeKJ.setControlRangeName("矿级");
                        RiskhazardcontrolrangeKJ.setRiskSiteFullNumber(riskhazard.getRiskSiteFullNumber());
                        RiskhazardcontrolrangeKJ.setHazardUUID(riskhazard.getHazardUUID());
                        RiskhazardcontrolrangeKJ.setRiskSiteID(riskhazard.getRiskSiteID());
                        riskhazardcontrolrangeList.add(RiskhazardcontrolrangeKJ);
                    }
                    if(!names.contains("专业级")){
                        Riskhazardcontrolrange RiskhazardcontrolrangeZYJ = new Riskhazardcontrolrange();
                        RiskhazardcontrolrangeZYJ.setFrameWorkID(framework.getFramewordID());
                        RiskhazardcontrolrangeZYJ.setCoalMineName(framework.getFrameWorkName());
                        RiskhazardcontrolrangeZYJ.setControlRangeName("专业级");
                        RiskhazardcontrolrangeZYJ.setHazardID(hazardId);
                        RiskhazardcontrolrangeZYJ.setRiskSiteFullNumber(riskhazard.getRiskSiteFullNumber());
                        RiskhazardcontrolrangeZYJ.setHazardUUID(riskhazard.getHazardUUID());
                        RiskhazardcontrolrangeZYJ.setRiskSiteID(riskhazard.getRiskSiteID());
                        riskhazardcontrolrangeList.add(RiskhazardcontrolrangeZYJ);
                    }
                    if(!names.contains("职能部室级")){
                        Riskhazardcontrolrange RiskhazardcontrolrangeQDJ = new Riskhazardcontrolrange();
                        RiskhazardcontrolrangeQDJ.setFrameWorkID(framework.getFramewordID());
                        RiskhazardcontrolrangeQDJ.setCoalMineName(framework.getFrameWorkName());
                        RiskhazardcontrolrangeQDJ.setHazardID(hazardId);
                        RiskhazardcontrolrangeQDJ.setControlRangeName("职能部室级");
                        RiskhazardcontrolrangeQDJ.setRiskSiteFullNumber(riskhazard.getRiskSiteFullNumber());
                        RiskhazardcontrolrangeQDJ.setHazardUUID(riskhazard.getHazardUUID());
                        RiskhazardcontrolrangeQDJ.setRiskSiteID(riskhazard.getRiskSiteID());
                        riskhazardcontrolrangeList.add(RiskhazardcontrolrangeQDJ);
                    }
                    if(!names.contains("区队级")){
                        Riskhazardcontrolrange RiskhazardcontrolrangeBZJ = new Riskhazardcontrolrange();
                        RiskhazardcontrolrangeBZJ.setFrameWorkID(framework.getFramewordID());
                        RiskhazardcontrolrangeBZJ.setCoalMineName(framework.getFrameWorkName());
                        RiskhazardcontrolrangeBZJ.setControlRangeName("区队级");
                        RiskhazardcontrolrangeBZJ.setHazardID(hazardId);
                        RiskhazardcontrolrangeBZJ.setRiskSiteFullNumber(riskhazard.getRiskSiteFullNumber());
                        RiskhazardcontrolrangeBZJ.setHazardUUID(riskhazard.getHazardUUID());
                        RiskhazardcontrolrangeBZJ.setRiskSiteID(riskhazard.getRiskSiteID());
                        riskhazardcontrolrangeList.add(RiskhazardcontrolrangeBZJ);
                    }
                    if(!names.contains("班组个人级")){
                        Riskhazardcontrolrange RiskhazardcontrolrangeGRJ = new Riskhazardcontrolrange();
                        RiskhazardcontrolrangeGRJ.setFrameWorkID(framework.getFramewordID());
                        RiskhazardcontrolrangeGRJ.setCoalMineName(framework.getFrameWorkName());
                        RiskhazardcontrolrangeGRJ.setControlRangeName("班组个人级");
                        RiskhazardcontrolrangeGRJ.setHazardID(hazardId);
                        RiskhazardcontrolrangeGRJ.setRiskSiteFullNumber(riskhazard.getRiskSiteFullNumber());
                        RiskhazardcontrolrangeGRJ.setHazardUUID(riskhazard.getHazardUUID());
                        RiskhazardcontrolrangeGRJ.setRiskSiteID(riskhazard.getRiskSiteID());
                        riskhazardcontrolrangeList.add(RiskhazardcontrolrangeGRJ);
                    }
                }

            }
            return  riskhazardcontrolrangeList;
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }
    @RequestMapping(value = "/updateRiskhazardcontrolrangeFiveLevelsByRiskId",method = {RequestMethod.GET,RequestMethod.POST})
    public Object updateRiskhazardcontrolrangeFiveLevelsByRiskId(HttpServletRequest request,@RequestBody List<Riskhazardcontrolrange> list){
        try{
            for (Riskhazardcontrolrange riskhazardcontrolrange : list) {
                riskhazardcontrolrangeService.updateRiskhazardcontrolrangeByRiskId(riskhazardcontrolrange);
            }
            return true;
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    //根据ID查询riskhazard
    @RequestMapping(value = "/getRiskhazardByID", method = RequestMethod.POST)
    @ApiOperation(value = "根据ID查询riskhazard", response = Riskhazard.class, httpMethod = "POST", notes = "更新riskhazard")
    public Object updateRiskhazard(Integer riskhazardID) {
        Riskhazard riskhazard = riskhazardService.getRiskhazard(riskhazardID);
        return riskhazard;
    }



}