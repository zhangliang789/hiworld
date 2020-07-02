package cn.com.kingc.risk.dao;

import cn.com.kingc.risk.model.RisksiteByAcction;
import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Risksite;

import java.util.List;
import java.util.Map;

/**
 * RisksiteDao层
 * 对应数据库的 risksite表
 */
public interface RisksiteDao {

    //新增一个Risksite
    Integer addRisksite(Risksite risksite);

    //根据主键删除Risksite，参数是一个对象
    Integer deleteRisksite(Risksite risksite);

    //根据主键删除Risksite，参数是主键
    Integer deleteRisksiteByID(Integer riskSiteID);

    //根据主键更新Risksite
    Integer updateRisksite(Risksite risksite);

    //根据主键获取Risksite
    Risksite getRisksite(Integer riskSiteID);

    //根据主键获取Risksite
    Risksite getSimpleRisksite(@Param("riskSiteID") Integer riskSiteID);

    //获取总条数
    Integer getRisksiteCount();
    //获取安全风险管控计划中的风险状态
    List<Risksite> getRiskSiteCheckStatus(@Param("frameworkID") String frameworkID,@Param("year") String year, @Param("month") String month);

    //分页获取数据
    List<Risksite> getRisksiteByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Risksite 对象
    Integer getRisksiteCountByRisksite(Risksite risksite);

    //分页获取数据，参数是Risksite 对象 和开始页，结束页
    List<Risksite> getRisksiteByPageAndRisksite(@Param("risksite") Risksite risksite, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //获取总条数，参数是Risksite 对象(责任部门支持模糊查询)
    Integer getRisksiteCountByRisksitebyaboutme(Risksite risksite);

    //分页获取数据，参数是Risksite 对象 和开始页，结束页(责任部门支持模糊查询)
    List<Risksite> getRisksiteByPageAndRisksitebyaboutme(@Param("risksite") Risksite risksite, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //根据条件查询数据
    List<Risksite> getRisksiteData(Risksite risksite);

    //根据条件查询数据
    List<Risksite> getRisksiteDataByXinAn(Risksite risksite);
    //根据条件查询数据
    List<Risksite> getRisksiteDataExactly(Risksite risksite);

    Integer getTopRisksiteByCount(Risksite risksite);
    //根据name条件查询数据
    List<Risksite> getTopRisksiteByname(Risksite risksite);

    List<Risksite> getTopRisksiteByPage(@Param("Risksite")Risksite risksite,@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //查找煤矿顶级风险点
    List<Risksite> getTopRisksite(@Param("coalMineName") String coalMineName, @Param("frameWorkID") String frameWorkID);

    //按全编码查找风险点
    List<Risksite> getByRisksiteFullNumber(@Param("coalMineName") String coalMineName, @Param("frameWorkID") String frameWorkID, @Param("fullNumber") String fullNumber);

    //根据条件查询数据(不包含子集)
    List<Risksite> getRisksiteDataOnly(Risksite risksite);

    //获取总条数
    Integer getHazardCount(@Param("frameWorkID") String frameWorkID, @Param("riskSiteFullNumber") String riskSiteFullNumber);

    //获取总条数
    Integer getControlMeasureCount(@Param("frameWorkID") String frameWorkID, @Param("riskSiteFullNumber") String riskSiteFullNumber);

    //获取二级风险点最大fullnumber
    List<String> getRSCRMaxFullNum(@Param("frameWorkID") String frameWorkID, @Param("riskSiteFullNumber") String riskSiteFullNumber);

    Boolean deleteRelationshipByRiskSite(@Param("frameWorkID") String frameWorkID,
                                         @Param("riskSiteID") Integer riskSiteID,
                                         @Param("riskSiteFullNumber") String riskSiteFullNumber);

    Integer deleteRiskhazardByFullNumber(@Param("riskSiteFullNumber") String riskSiteFullNumber);

    List<String> getRelationshipByRiskSite(@Param("frameWorkID") String frameWorkID,
                                           @Param("riskSiteID") Integer riskSiteID,
                                           @Param("riskSiteFullNumber") String riskSiteFullNumber);

    Integer updateStatusToWpgAfterAdd(
            @Param("frameWorkID") String frameWorkID,
            @Param("riskSiteFullNumber") String riskSiteFullNumber
    );
    String getChildRiskDamtype(
            @Param("frameWorkID") String frameWorkID,
            @Param("riskSiteFullNumber") String riskSiteFullNumber
    );
    String getTopRiskDamtype(
            @Param("frameWorkID") String frameWorkID,
            @Param("riskSiteFullNumber") String riskSiteFullNumber
    );

    Integer updateChildRiskDamtype(
            @Param("frameWorkID") String frameWorkID,
            @Param("riskSiteFullNumber") String riskSiteFullNumber,
            @Param("damageType")String damageType );

    Integer updateTopRiskDamtype(
            @Param("frameWorkID") String frameWorkID,
            @Param("riskSiteFullNumber") String riskSiteFullNumber,
            @Param("damageType")String damageType );

    //根据RiskSiteID，从危险源中更新风险点的灾害类型
    Integer updateRiskDamageTypeByRiskSiteID(@Param("riskSiteID") Integer riskSiteID);

    Integer updateRiskSiteDamageTypeByRiskSiteID(@Param("riskParentID") Integer riskParentID);

    List<RisksiteByAcction> risksiteListByAccidentCount(@Param("RisksiteByAcction") RisksiteByAcction risksiteByAcction);

    List<RisksiteByAcction> risksiteListByAccidentPage(@Param("RisksiteByAcction") RisksiteByAcction risksiteByAcction,@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    List<String> getPlaceList(@Param("frameworkID") String frameworkID);
    //根据主键获取Risksite
    Risksite getRisksites(Integer riskSiteID);

    List<Risksite> getRiskSiteByYS(@Param("risksite") Risksite risksite, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

}