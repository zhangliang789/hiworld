package cn.com.kingc.risk.dao;

import cn.com.kingc.risk.model.AppSearch;
import cn.com.kingc.risk.model.Riskhazardcontrolrange;
import cn.com.kingc.risk.model.Templatehazard;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskhazard;
import org.heart.mybatis.base.dao.MybatisBaseMapper;

import java.util.List;

/**
 * RiskhazardDao层
 * 对应数据库的 riskhazard表
 */
public interface RiskhazardDao extends MybatisBaseMapper<Riskhazard> {

    //新增一个Riskhazard
    Integer addRiskhazard(Riskhazard riskhazard);

    //新增一个Riskhazard
    void addRiskhazardList(List<Riskhazard> list);

    //根据主键删除Riskhazard，参数是一个对象
    Integer deleteRiskhazard(Riskhazard riskhazard);

    //根据主键删除Riskhazard，参数是主键
    Integer deleteRiskhazardByID(Integer hazardID);

    Integer deleteRiskhazardByFullNumber(String riskSiteFullNumber);

    //根据主键更新Riskhazard
    Integer updateRiskhazard(Riskhazard riskhazard);

    //根据主键获取Riskhazard
    Riskhazard getRiskhazard(Integer hazardID);

    //获取Riskhazards
    List<Riskhazard> getHazards(@Param("frameWorkID") String frameWorkID, @Param("riskSiteFullNumber") String riskSiteFullNumber);


    //获取总条数
    Integer getRiskhazardCount();

    //分页获取数据
    List<Riskhazard> getRiskhazardByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Riskhazard 对象
    Integer getRiskhazardCountByRiskhazard(Riskhazard riskhazard);

    //分页获取数据，参数是Riskhazard 对象 和开始页，结束页
    List<Riskhazard> getRiskhazardByPageAndRiskhazard(
            @Param("riskhazard") Riskhazard riskhazard,
            @Param("pageBegin") Integer pageBegin,
            @Param("pageEnd") Integer pageEnd);

    //根据条件查询数据
    List<Riskhazard> getRiskhazardData(Riskhazard riskhazard);

    //根据危险源编码更新风险点状态是否评估
    Integer UpdateRiskSiteStatusByFullNumber(
            @Param("frameWorkID") String frameWorkID,
            @Param("riskSiteFullNumber") String riskSiteFullNumber,
            @Param("parentFullNumber") String parentFullNumber);

    //根据危险源编码更新风险等级
    Integer updateRiskSiteRiskLevelAndValueByFullNumber(
            @Param("frameWorkID") String frameWorkID,
            @Param("riskSiteFullNumber") String riskSiteFullNumber,
            @Param("parentFullNumber") String parentFullNumber);

    List<Riskhazard> getRiskhazardByPageAndRiskControlRange(
            @Param("riskhazardcontrolrange") Riskhazardcontrolrange riskhazardcontrolrange);

    List<Riskhazard> getOutOfTimeRiskHazard(
            Riskhazard riskhazard);

    List<String> getRiskhazardForTouch(   @Param("fframeWorkID") String fframeWorkID,
                                          @Param("departmentName") String departmentName,
                                          @Param("startTime") String startTime,
                                          @Param("endTime") String endTime,
                                          @Param("locationList") List<String> locationList,
                                          @Param("catagoriesList") List<String> catagoriesList);

    //根据条件查询数据
    List<Riskhazard> getRiskhazardwithCheckStatus(Riskhazard riskhazard);

}