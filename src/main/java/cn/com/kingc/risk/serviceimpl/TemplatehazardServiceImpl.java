package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.*;
import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.TemplatehazardService;
import org.platform4j.model.Place;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Title:
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 * Description:Templatehazard Service实现层
 *
 * @author
 * @date 2018-05-05 11:25:50 中国标准时间
 */

@Service
public class TemplatehazardServiceImpl implements TemplatehazardService {
    @Autowired
    private TemplatehazardDao templatehazardDao;

    @Autowired
    private RisksiteDao risksiteDao;

    @Autowired
    private RiskhazardDao riskhazardDao;

    @Autowired
    private RiskhazardcontrolrangeDao riskhazardcontrolrangeDao;
    @Autowired
    private TemplateriskcontrolmeasureDao templateriskcontrolmeasureDao;
    @Autowired
    private RiskcontrolmeasureDao riskcontrolmeasureDao;

    /**
     * 新增一个Templatehazard
     *
     * @param templatehazard Templatehazard对象
     * @return 是否新增成功 成功返回ture 失败返回false
     */
    @Override
    public Integer addTemplatehazard(Templatehazard templatehazard) {
         templatehazardDao.addTemplatehazard(templatehazard);
        return templatehazard.getHazardID();
    }

    /**
     * 批量新增Templatehazard
     *
     * @param templatehazardList Templatehazard集合
     */
    @Override
    public void addTemplatehazardList(List<Templatehazard> templatehazardList) {
        templatehazardDao.addTemplatehazardList(templatehazardList);
    }

    /**
     * 删除Templatehazard对象
     *
     * @param templatehazard Templatehazard对象
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean deleteTemplatehazard(Templatehazard templatehazard) {
        return templatehazardDao.deleteTemplatehazard(templatehazard) > 0;
    }

    /**
     * 根据主键删除Templatehazard
     *
     * @param hazardID Templatehazard主键
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean deleteTemplatehazardByID(Integer hazardID) {
        return templatehazardDao.deleteTemplatehazardByID(hazardID) > 0;
    }

    /**
     * 批量删除Templatehazard
     *
     * @param templatehazardList Templatehazard集合
     */
    @Override
    public void deleteTemplatehazardList(List<Templatehazard> templatehazardList) {
        templatehazardDao.deleteTemplatehazardList(templatehazardList);
    }

    /**
     * 根据主键更新Templatehazard
     *
     * @param templatehazard Templatehazard对象
     * @return 是否更新成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean updateTemplatehazard(Templatehazard templatehazard) {
        return templatehazardDao.updateTemplatehazard(templatehazard) > 0;
    }

    /**
     * 根据主键获取Templatehazard
     *
     * @param hazardID Templatehazard对象主键
     * @return Templatehazard对象
     */
    @Override
    public Templatehazard getTemplatehazard(Integer hazardID) {
        return templatehazardDao.getTemplatehazard(hazardID);
    }


    /**
     * 获取共有多少条记录，参数是Templatehazard 对象
     *
     * @param templatehazard Templatehazard 对象
     * @return 记录数
     */
    @Override
    public Integer getTemplatehazardCount(Templatehazard templatehazard) {
        return templatehazardDao.getTemplatehazardCount(templatehazard);
    }

    /**
     * 分页获取数据，参数是Templatehazard 对象
     *
     * @param templatehazard Templatehazard 对象
     * @return Templatehazard集合
     */
    @Override
    public List<Templatehazard> getTemplatehazardByPage(Templatehazard templatehazard) {
        Integer pageBegin = (templatehazard.getPage() - 1) * templatehazard.getPagesize();
        Integer pageEnd = templatehazard.getPagesize();
        return templatehazardDao.getTemplatehazardByPage(templatehazard, pageBegin, pageEnd);
    }

    /**
     * 根据传入的Templatehazard 对象查询数据
     *
     * @param templatehazard Templatehazard 对象
     * @return Templatehazard集合
     */
    @Override
    public List<Templatehazard> getTemplatehazardList(Templatehazard templatehazard) {
        return templatehazardDao.getTemplatehazardList(templatehazard);
    }

    /**
     * 获取一个数据的不重复集合
     *
     * @param attribute 对象属性名称
     * @return List<String>
     */
    @Override
    public List<String> getDistinctItemList(String attribute) {
        return templatehazardDao.getDistinctItemList(attribute);
    }

    /**
     * 判断对象是否已经存在
     *
     * @param templatehazard Templatehazard 对象
     * @return 存在返回true 否则返回false
     */
    @Override
    public Boolean templatehazardIsExist(Templatehazard templatehazard) {
        return templatehazardDao.templatehazardIsExist(templatehazard) > 0;
    }

    /**
     * 根据传入的对象获取一个唯一对象
     *
     * @param templatehazard
     * @return templatehazard 对象
     */
    @Override
    public Templatehazard getTemplatehazardUnique(Templatehazard templatehazard) {
        List<Templatehazard> templatehazardList = templatehazardDao.getTemplatehazardUnique(templatehazard);
        assert templatehazardList != null && templatehazardList.size() == 1;
        return templatehazardList.get(0);
    }


    @Override
    public Templatehazard getTemplatehazardAndPlace(Integer hazardID) {
        return templatehazardDao.getTemplatehazardAndPlace(hazardID);
    }

    @Override
    public List<Templatehazard> getTemplatehazardAndPlaceByPage(Templatehazard templatehazard) {
        Integer pageBegin = (templatehazard.getPage() - 1) * templatehazard.getPagesize();
        Integer pageEnd = templatehazard.getPagesize();
        return templatehazardDao.getTemplatehazardAndPlaceByPage(templatehazard, pageBegin, pageEnd);
    }

    @Override
    public Boolean addRiskToPlaceList(Templatehazard templatehazard, List<Place> places) {
        if (places == null) {
            return false;
        }
        if (templatehazard == null) {
            return false;

        }
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式

        //企业frameworkid
        String fframeWorkID = templatehazard.getFrameWorkID();
        String colaMineName = templatehazard.getCoalMineName();
        //管控对象名称
        String childRiskSiteName = templatehazard.getRiskObject();
        String chilRiskSiteType = templatehazard.getRiskObjectType();

        for (Place p : places) {

            Integer TopRiskID = null;
            String strTopNumber = "";

            Risksite tempTopRiskSite = new Risksite();
            tempTopRiskSite.setFrameWorkID(fframeWorkID);
            tempTopRiskSite.setCoalMineName(colaMineName);
            tempTopRiskSite.setName(p.getFPlace_Name());
            tempTopRiskSite.setParentID("0");
            tempTopRiskSite.setLocationId(p.getFPlace_GUID());
            tempTopRiskSite.setRiskSiteType(RiskSiteTypeEnum.ADDRESS);
//            tempTopRiskSite.setRiskSiteType(templatehazard.getRiskType());
            List<Risksite> topResult = risksiteDao.getRisksiteDataByXinAn(tempTopRiskSite);
            if (topResult != null && topResult.size() > 0) {
                TopRiskID = topResult.get(0).getRiskSiteID();
                strTopNumber=topResult.get(0).getFullNumber();
            } else {
                tempTopRiskSite.setRiskSiteUUID(UUID.randomUUID().toString());
                tempTopRiskSite.setStatus(false);
                tempTopRiskSite.setLocationId(p.getFPlace_GUID());
                //调用最上边的Add方法
                risksiteDao.addRisksite(tempTopRiskSite);
                TopRiskID =tempTopRiskSite.getRiskSiteID();
                //更新编号
                strTopNumber = String.format("%06d", TopRiskID).replace(" ", "0");
                tempTopRiskSite.setNumber(strTopNumber);
                tempTopRiskSite.setFullNumber(strTopNumber);
                risksiteDao.updateRisksite(tempTopRiskSite);
            }

            if (TopRiskID > 0) {
                Risksite tempChildRiskSite = new Risksite();
                tempChildRiskSite.setFrameWorkID(fframeWorkID);
                tempChildRiskSite.setCoalMineName(colaMineName);
                tempChildRiskSite.setName(childRiskSiteName);
                tempChildRiskSite.setParentID(TopRiskID.toString());
                tempChildRiskSite.setRiskSiteTypeContent(chilRiskSiteType);
                List<Risksite> childResult = risksiteDao.getRisksiteDataByXinAn(tempChildRiskSite);
                if (childResult != null && childResult.size() > 0) {
                    tempChildRiskSite = childResult.get(0);
                } else {
                    tempChildRiskSite.setRiskSiteUUID(UUID.randomUUID().toString());
                    tempChildRiskSite.setParentNumber(strTopNumber);
                    tempChildRiskSite.setStatus(false);
                    try{
                        if(templatehazard.getRiskObjectType().equals("作业活动")){
                            tempChildRiskSite.setRiskSiteType(RiskSiteTypeEnum.TASK);

                        }else if(templatehazard.getRiskObjectType().equals("设施")){
                            tempChildRiskSite.setRiskSiteType(RiskSiteTypeEnum.EQUIPMENT);

                        }else{
                            tempChildRiskSite.setRiskSiteType(RiskSiteTypeEnum.TASK);
                        }
                    }catch (Exception e){
                        tempChildRiskSite.setRiskSiteType(RiskSiteTypeEnum.TASK);
                    }

                    //调用最上边的Add方法
                    risksiteDao.addRisksite(tempChildRiskSite);
                    //更新编号
                    String strChildNumber = String.format("%06d", tempChildRiskSite.getRiskSiteID())
                            .replace(" ", "0");
                    tempChildRiskSite.setNumber(strChildNumber);
                    tempChildRiskSite.setFullNumber(strTopNumber + "." + strChildNumber);
                    risksiteDao.updateRisksite(tempChildRiskSite);
                }

                if (tempChildRiskSite != null && tempChildRiskSite.getRiskSiteID() > 0) {
                    Riskhazard tempHazard = new Riskhazard();
                    tempHazard.setFrameWorkID(fframeWorkID);
                    tempHazard.setName(templatehazard.getName());
                    tempHazard.setRiskSiteID(tempChildRiskSite.getRiskSiteID());
                    //如果企业ID，所属的风险点下已经有了这个危险源
                    List<Riskhazard> hasExistHazards=riskhazardDao.getRiskhazardData(tempHazard);
                    if(hasExistHazards!=null && hasExistHazards.size()>0){
                        //啥也不做
                    }else {
                        //新增危险源
                        Riskhazard newHazard=  changTemplateToHazard(tempChildRiskSite, templatehazard);
                        if (riskhazardDao.addRiskhazard(newHazard) <= 0) {
                            return false;
                        }else{
                            Integer hazardID=newHazard.getHazardID();
                            Templateriskcontrolmeasure templateriskcontrolmeasure=new Templateriskcontrolmeasure();
                            templateriskcontrolmeasure.setCoalMineName(colaMineName);
                            templateriskcontrolmeasure.setFrameWorkID(fframeWorkID);
                            templateriskcontrolmeasure.setHazardID(templatehazard.getHazardID());
                            List<Templateriskcontrolmeasure> tmList=templateriskcontrolmeasureDao.getTemplateriskcontrolmeasureData(templateriskcontrolmeasure);
                            if(tmList!=null&&tmList.size()>0){
                                Templateriskcontrolmeasure tem=tmList.get(0);
                                Riskcontrolmeasure riskcontrolmeasure = new Riskcontrolmeasure();
                                riskcontrolmeasure.setCoalMineName(colaMineName);
                                riskcontrolmeasure.setFrameWorkID(fframeWorkID);
                                riskcontrolmeasure.setMeasureUUID(UUID.randomUUID().toString());
                                riskcontrolmeasure.setRiskSiteID(tempChildRiskSite.getRiskSiteID());
                                riskcontrolmeasure.setHazardID(hazardID);
                                riskcontrolmeasure.setMeasureContent(tem.getMeasureContent());
                                riskcontrolmeasure.setMeasureType(tem.getMeasureType());
                                riskcontrolmeasure.setMeasureCreateTime(df.format(new Date()));
                                riskcontrolmeasure.setRiskSiteFullNumber(tempChildRiskSite.getFullNumber());
                                riskcontrolmeasure.setMeasureName(tem.getMeasureName());
                                riskcontrolmeasureDao.addRiskcontrolmeasure(riskcontrolmeasure);
                            }
                        }
                    }

                }
            }
        }


        return true;
    }


    private Riskhazard changTemplateToHazard(Risksite childRisk, Templatehazard templatehazard) {
        Riskhazard hazard = new Riskhazard();
        hazard.setFrameWorkID(templatehazard.getFrameWorkID());
        hazard.setCoalMineName(templatehazard.getCoalMineName());
        hazard.setHazardID(0);
        hazard.setHazardUUID(UUID.randomUUID().toString());
        hazard.setRiskSiteID(childRisk.getRiskSiteID());
        hazard.setRiskSiteFullNumber(childRisk.getFullNumber());
        hazard.setDamageType(templatehazard.getDamageType());
        hazard.setAccountabilityUnit(templatehazard.getAccountabilityUnit());
        hazard.setConsequence(templatehazard.getConsequence());
        hazard.setEexpose(Double.valueOf(templatehazard.getExpose()));
        hazard.setExposeDegree(templatehazard.getExposeDegree());
        hazard.setMajorType(templatehazard.getMajorType());
        hazard.setClossConsequence(Double.valueOf(templatehazard.getLossConsequence()));
        hazard.setRiskObject(templatehazard.getRiskObject());
        hazard.setLpossibility(templatehazard.getPossibility());
        hazard.setRiskType(templatehazard.getRiskType());
        hazard.setDriskValue(templatehazard.getRiskValue());
        hazard.setStatus(templatehazard.getStatus());
        hazard.setRiskPlace(templatehazard.getRiskPlace());
        hazard.setStandardFullNumber(templatehazard.getStandardFullNumber());
        hazard.setRiskTemplateID(templatehazard.getHazardID());
        hazard.setName(templatehazard.getName());
        hazard.setHazardDesc(templatehazard.getHazardDesc());
        hazard.setManageUnit(templatehazard.getManageUnit());
        hazard.setDutyRole(templatehazard.getDutyRole());
        hazard.setOperatingPost(templatehazard.getOperatingPost());
        hazard.setRiskKind(templatehazard.getRiskKind());
        hazard.setAccidentType(templatehazard.getAccidentType());
        return hazard;
    }

    @Override
    public Boolean addRiskhazardcontrolrange(Riskhazardcontrolrange riskhazardcontrolrange) {
        return riskhazardcontrolrangeDao
                .addRiskhazardcontrolrange(riskhazardcontrolrange) > 0 ? true : false;
    }

    @Override
    public List<String> getDistinctRiskObject(String frameWorkID,
                                              String riskObjType) {
        return templatehazardDao.getDistinctRiskObject(frameWorkID,riskObjType);
    }
    @Override
    public List<Templatehazard> getTemplatehazardByRiskObj(String frameWorkID, String riskObjName) {
        return templatehazardDao.getTemplatehazardByRiskObj(frameWorkID,riskObjName);
    }

}