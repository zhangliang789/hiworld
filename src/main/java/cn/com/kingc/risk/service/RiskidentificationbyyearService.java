package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskidentificationbyyear;
import java.util.List;

/**
*
*  Riskidentificationbyyear Service层
*
*/
public interface RiskidentificationbyyearService {
    //新增一个Riskidentificationbyyear
    Boolean addRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear);

    //根据主键删除Riskidentificationbyyear,参数是对象
    Boolean deleteRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear);

    //根据主键删除Riskidentificationbyyear，参数是主键
    Boolean deleteRiskidentificationbyyearByID(Integer riskIdentificationYearID);

    //根据主键更新Riskidentificationbyyear
    Boolean updateRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear);

    //根据主键获取Riskidentificationbyyear
    Riskidentificationbyyear getRiskidentificationbyyear(Integer riskIdentificationYearID);

    //获取总条数
    Integer getRiskidentificationbyyearCount();

    //分页获取数据
    List<Riskidentificationbyyear> getRiskidentificationbyyearByPage(int pagesize, int page);

    //根据主键获取总条数
    Integer getRiskidentificationbyyearCountbyid(Integer riskIdentificationYearID);

    //根据主键分页获取数据
    List<Riskidentificationbyyear> getRiskidentificationbyyearByPagebyid(int riskIdentificationYearID,int pagesize, int page);

    //获取总条数，参数是Riskidentificationbyyear 对象
    Integer getRiskidentificationbyyearCountByRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear);

    //分页获取数据，参数是Riskidentificationbyyear 对象
    List<Riskidentificationbyyear> getRiskidentificationbyyearByPageAndRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear);

    //根据条件查询数据
    List<Riskidentificationbyyear>  getRiskidentificationbyyearData(Riskidentificationbyyear riskidentificationbyyear);
}