package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskcontrolmeasure;
import java.util.List;
/**
* RiskcontrolmeasureDao层
* 对应数据库的 riskcontrolmeasure表
*/
public interface RiskcontrolmeasureDao{

    //新增一个Riskcontrolmeasure
    Integer addRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure);

    //根据主键删除Riskcontrolmeasure，参数是一个对象
    Integer deleteRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure);

    Integer deleteRiskcontrolmeasureByFullNumber(@Param("riskSiteFullNumber")String riskSiteFullNumber);
    //根据主键删除Riskcontrolmeasure，参数是主键
    Integer deleteRiskcontrolmeasureByID(Integer measureID);

    //根据主键更新Riskcontrolmeasure
    Integer updateRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure);

    //根据主键获取Riskcontrolmeasure
    Riskcontrolmeasure getRiskcontrolmeasure(Integer measureID);

    //获取总条数
    Integer getRiskcontrolmeasureCount();

    //分页获取数据
    List<Riskcontrolmeasure> getRiskcontrolmeasureByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Riskcontrolmeasure 对象
    Integer getRiskcontrolmeasureCountByRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure);

    //分页获取数据，参数是Riskcontrolmeasure 对象 和开始页，结束页
    List<Riskcontrolmeasure> getRiskcontrolmeasureByPageAndRiskcontrolmeasure(@Param("riskcontrolmeasure") Riskcontrolmeasure riskcontrolmeasure, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Riskcontrolmeasure>  getRiskcontrolmeasureData(Riskcontrolmeasure riskcontrolmeasure);

    //根据条件查询数据
    List<Riskcontrolmeasure>  getRiskcontrolmeasureDatas(Riskcontrolmeasure riskcontrolmeasure);

    //根据条件查询数据
    List<Riskcontrolmeasure>  getRiskcontrolmeasureDataCount(Riskcontrolmeasure riskcontrolmeasure);
}