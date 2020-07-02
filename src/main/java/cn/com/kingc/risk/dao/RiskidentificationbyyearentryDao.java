package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskidentificationbyyearentry;
import java.util.List;
/**
* RiskidentificationbyyearentryDao层
* 对应数据库的 riskidentificationbyyearentry表
*/
public interface RiskidentificationbyyearentryDao{

    //新增一个Riskidentificationbyyearentry
    Integer addRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry);

    //根据主键删除Riskidentificationbyyearentry，参数是一个对象
    Integer deleteRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry);

    //根据主键删除Riskidentificationbyyearentry，参数是主键
    Integer deleteRiskidentificationbyyearentryByID(Integer riskIdentificationYearEntryID);

    //根据主键删除Riskidentificationbyyearentry，参数是主键
    Integer deleteRiskidentificationbyyearD(Integer riskIdentificationYearID);

    //根据主键更新Riskidentificationbyyearentry
    Integer updateRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry);

    //根据主键获取Riskidentificationbyyearentry
    Riskidentificationbyyearentry getRiskidentificationbyyearentry(Integer riskIdentificationYearEntryID);

    //获取总条数
    Integer getRiskidentificationbyyearentryCount();

    //分页获取数据
    List<Riskidentificationbyyearentry> getRiskidentificationbyyearentryByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Riskidentificationbyyearentry 对象
    Integer getRiskidentificationbyyearentryCountByRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry);

    //分页获取数据，参数是Riskidentificationbyyearentry 对象 和开始页，结束页
    List<Riskidentificationbyyearentry> getRiskidentificationbyyearentryByPageAndRiskidentificationbyyearentry(@Param("riskidentificationbyyearentry") Riskidentificationbyyearentry riskidentificationbyyearentry, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Riskidentificationbyyearentry>  getRiskidentificationbyyearentryData(Riskidentificationbyyearentry riskidentificationbyyearentry);
}