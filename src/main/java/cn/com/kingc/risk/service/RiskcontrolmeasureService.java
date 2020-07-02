package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskcontrolmeasure;
import java.util.List;

/**
*
*  Riskcontrolmeasure Service层
*
*/
public interface RiskcontrolmeasureService {
    //新增一个Riskcontrolmeasure
    Boolean addRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure);

    //根据主键删除Riskcontrolmeasure,参数是对象
    Boolean deleteRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure);

    //根据主键删除Riskcontrolmeasure，参数是主键
    Boolean deleteRiskcontrolmeasureByID(Integer measureID);

    //根据主键更新Riskcontrolmeasure
    Boolean updateRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure);

    //根据主键获取Riskcontrolmeasure
    Riskcontrolmeasure getRiskcontrolmeasure(Integer measureID);

    //获取总条数
    Integer getRiskcontrolmeasureCount();

    //分页获取数据
    List<Riskcontrolmeasure> getRiskcontrolmeasureByPage(int pagesize, int page);

    //获取总条数，参数是Riskcontrolmeasure 对象
    Integer getRiskcontrolmeasureCountByRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure);

    //分页获取数据，参数是Riskcontrolmeasure 对象
    List<Riskcontrolmeasure> getRiskcontrolmeasureByPageAndRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure);

    //根据条件查询数据
    List<Riskcontrolmeasure>  getRiskcontrolmeasureData(Riskcontrolmeasure riskcontrolmeasure);
    //根据条件查询数据
    List<Riskcontrolmeasure>  getRiskcontrolmeasureDatas(Riskcontrolmeasure riskcontrolmeasure);

    //根据条件查询数据
    List<Riskcontrolmeasure>  getRiskcontrolmeasureDataCount(Riskcontrolmeasure riskcontrolmeasure);
}