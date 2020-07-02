package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskcontrolplanebymonth;
import java.util.List;
/**
* RiskcontrolplanebymonthDao层
* 对应数据库的 riskcontrolplanebymonth表
*/
public interface RiskcontrolplanebymonthDao{

    //新增一个Riskcontrolplanebymonth
    Integer addRiskcontrolplanebymonth(Riskcontrolplanebymonth riskcontrolplanebymonth);

    //根据主键删除Riskcontrolplanebymonth，参数是一个对象
    Integer deleteRiskcontrolplanebymonth(Riskcontrolplanebymonth riskcontrolplanebymonth);

    //根据主键删除Riskcontrolplanebymonth，参数是主键
    Integer deleteRiskcontrolplanebymonthByID(Integer monthPlaneID);
    //根据主键删除Riskcontrolplanebymonth，参数是主键
    Integer deleteRisksiteoutofcontrolAndRiskcontrolanalyze(Integer monthPlaneID);

    //根据主键更新Riskcontrolplanebymonth
    Integer updateRiskcontrolplanebymonth(Riskcontrolplanebymonth riskcontrolplanebymonth);

    //根据主键获取Riskcontrolplanebymonth
    Riskcontrolplanebymonth getRiskcontrolplanebymonth(Integer monthPlaneID);

    //获取总条数
    Integer getRiskcontrolplanebymonthCount();

    //分页获取数据
    List<Riskcontrolplanebymonth> getRiskcontrolplanebymonthByPage(
            @Param("pageBegin") Integer pageBegin,
            @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Riskcontrolplanebymonth 对象
    Integer getRiskcontrolplanebymonthCountByRiskcontrolplanebymonth(Riskcontrolplanebymonth riskcontrolplanebymonth);

    //分页获取数据，参数是Riskcontrolplanebymonth 对象 和开始页，结束页
    List<Riskcontrolplanebymonth> getRiskcontrolplanebymonthByPageAndRiskcontrolplanebymonth(
            @Param("riskcontrolplanebymonth") Riskcontrolplanebymonth riskcontrolplanebymonth,
            @Param("pageBegin") Integer pageBegin,
            @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Riskcontrolplanebymonth>  getRiskcontrolplanebymonthData(
            Riskcontrolplanebymonth riskcontrolplanebymonth);

    Integer updateRiskcontrolplanebymonthItemStatus(
            @Param("frameWorkID") String frameWorkID,
            @Param("monthPlaneID") Integer monthPlaneID,
            @Param("itemID") Integer itemID);

    List<Riskcontrolplanebymonth> getRiskControlMonthPlaneByUser(
            @Param("frameWorkID") String frameWorkID,
            @Param("monthPlanUnitName") String monthPlanUnitName
            );

    List<Riskcontrolplanebymonth> getRiskControlMonthPlaneByDHZ(
            @Param("frameWorkID") String frameWorkID,
            @Param("monthPlanUnitName") String monthPlanUnitName
    );
}