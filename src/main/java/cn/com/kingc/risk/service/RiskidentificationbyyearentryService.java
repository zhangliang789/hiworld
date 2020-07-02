package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskidentificationbyyearentry;
import java.util.List;

/**
*
*  Riskidentificationbyyearentry Service层
*
*/
public interface RiskidentificationbyyearentryService {
    //新增一个Riskidentificationbyyearentry
    Boolean addRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry);

    //根据主键删除Riskidentificationbyyearentry,参数是对象
    Boolean deleteRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry);

    //根据主键删除Riskidentificationbyyearentry，参数是主键
    Boolean deleteRiskidentificationbyyearentryByID(Integer riskIdentificationYearEntryID);

    //根据主键删除Riskidentificationbyyearentry，参数是主键
    Integer deleteRiskidentificationbyyearID(Integer riskIdentificationYearID);

    //根据主键更新Riskidentificationbyyearentry
    Boolean updateRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry);

    //根据主键获取Riskidentificationbyyearentry
    Riskidentificationbyyearentry getRiskidentificationbyyearentry(Integer riskIdentificationYearEntryID);

    //获取总条数
    Integer getRiskidentificationbyyearentryCount();

    //分页获取数据
    List<Riskidentificationbyyearentry> getRiskidentificationbyyearentryByPage(int pagesize, int page);

    //获取总条数，参数是Riskidentificationbyyearentry 对象
    Integer getRiskidentificationbyyearentryCountByRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry);

    //分页获取数据，参数是Riskidentificationbyyearentry 对象
    List<Riskidentificationbyyearentry> getRiskidentificationbyyearentryByPageAndRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry);

    //根据条件查询数据
    List<Riskidentificationbyyearentry>  getRiskidentificationbyyearentryData(Riskidentificationbyyearentry riskidentificationbyyearentry);
}