package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Risksite;
import cn.com.kingc.risk.model.RisksiteByAcction;
import cn.com.kingc.risk.model.Templatehazard;
import org.apache.ibatis.annotations.Param;
import org.platform4j.model.Place;

import java.util.List;

/**
 * Risksite Service层
 */
public interface RisksiteService {
    //新增一个Risksite
    Risksite addRisksite(Risksite risksite);

    //根据主键删除Risksite,参数是对象
    Boolean deleteRisksite(Risksite risksite);

    //根据主键删除Risksite，参数是主键
    Boolean deleteRisksiteByID(Integer riskSiteID);

    //根据主键更新Risksite
    Risksite updateRisksite(Risksite risksite);


    //根据主键获取Risksite
    Risksite getRisksite(Integer riskSiteID);

    //根据主键获取Risksite
    Risksite getSimpleRisksite(Integer riskSiteID);

    //获取总条数
    Integer getRisksiteCount();

    //获取安全风险管控计划中的风险状态
    List<Risksite> getRiskSiteCheckStatus(String frameworkID,String year,String month);

    //分页获取数据
    List<Risksite> getRisksiteByPage(int pagesize, int page);

    //获取总条数，参数是Risksite 对象
    Integer getRisksiteCountByRisksite(Risksite risksite);

    //分页获取数据，参数是Risksite 对象
    List<Risksite>  getRisksiteByPageAndRisksite(Risksite risksite);

    //分页获取数据，参数是Risksite 对象
    List<Risksite>  getRisksiteByPageAndRisksiteDHZ(Risksite risksite);

    //获取总条数，参数是Risksite 对象(责任部门支持模糊查询)
    Integer getRisksiteCountByRisksitebyaboutme(Risksite risksite);

    //分页获取数据，参数是Risksite 对象(责任部门支持模糊查询)
    List<Risksite> getRisksiteByPageAndRisksitebyaboutme(Risksite risksite);

    //根据条件查询数据
    List<Risksite> getRisksiteData(Risksite risksite);

    //根据条件查询数据
    List<Risksite> getRisksiteDataExactly(Risksite risksite);

    Integer getTopRisksiteByCount(Risksite risksite);
    //根据name条件查询数据
    List<Risksite> getTopRisksiteByPage(Risksite risksite);
    List<Risksite> getRisksiteByname(Risksite risksite);

    List<Risksite> getTopRisksiteByname(Risksite risksite);

    //查找煤矿顶级风险点
    List<Risksite> getTopRisksite(String coalMineName, String frameWorkID);

    //按全编码查找风险点
    List<Risksite> getByRisksiteFullNumber(String coalMineName, String frameWorkID, String fullNumber);

    //根据条件查询数据(不包含子集)
    List<Risksite> getRisksiteDataOnly(Risksite risksite);

    Integer getHazardCount(String frameWorkID, String riskSiteFullNumber);

    Integer getControlMeasureCount(String frameWorkID, String riskSiteFullNumber);

    List<String> getRSCRMaxFullNum(String frameWorkID, String riskSiteFullNumber);

    Boolean deleteRiskMeasureByFullNumber(
            String frameWorkID,
            Integer riskSiteID,
            String riskSiteFullNumber);

    Boolean deleteRiskHadarzByFullNumber(
            String frameWorkID,
            Integer riskSiteID,
            String riskSiteFullNumber);

    Boolean deleteRiskSiteByFullNumber(
            String frameWorkID,
            Integer riskSiteID,
            String riskSiteFullNumber);

    Boolean deleteRelationshipByRiskSite(
            String frameWorkID,
            Integer riskSiteID,
            String riskSiteFullNumber);

    List<String> getRelationshipByRiskSite(
            String frameWorkID,
            Integer riskSiteID,
            String riskSiteFullNumber);


    //事故用于获取地点
    List<String> getPlaceList(String frameWorkID);


    Integer updateStatusToWpgAfterAdd(
            String frameWorkID,
            String riskSiteFullNumber
    );

    Boolean updateChildRiskDamtype(String frameWorkID,
                                   String riskSiteFullNumber);

    Integer risksiteListByAccidentCount(RisksiteByAcction risksiteByAcction);
    List<RisksiteByAcction> risksiteListByAccidentPage(RisksiteByAcction risksiteByAcction);

    /**
     * 获取风险点下的风险列表信息
     * @param riskSite
     * @return
     */
    Risksite getRiskSiteChildList(Risksite riskSite);

    /**
     * 评估二级风险管控的风险等级
     * @param riskSite
     */
    void assessRiskObjectLevel(Risksite riskSite);

    /**
     * 获取风险点下的风险列表,风险包括管控结果信息
     * @param riskSite
     * @return
     */
    Risksite getRiskSiteChildwithCheckStatusList(Risksite riskSite,Integer monthPlaneID);

    //根据主键获取Risksite
    Risksite getRisksites(Integer riskSiteID);

    List<Risksite> getRiskSiteByYS(Risksite risksite);

}