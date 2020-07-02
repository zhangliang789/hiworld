package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskcontrolplanebymonth;
import java.util.List;

/**
*
*  Riskcontrolplanebymonth Service层
*
*/
public interface RiskcontrolplanebymonthService {
    //新增一个Riskcontrolplanebymonth
    Boolean addRiskcontrolplanebymonth(Riskcontrolplanebymonth riskcontrolplanebymonth);

    //根据主键删除Riskcontrolplanebymonth,参数是对象
    Boolean deleteRiskcontrolplanebymonth(Riskcontrolplanebymonth riskcontrolplanebymonth);

    //根据主键删除Riskcontrolplanebymonth，参数是主键
    Boolean deleteRiskcontrolplanebymonthByID(Integer monthPlaneID);

    //根据主键删除Riskcontrolplanebymonth，参数是主键
    Boolean deleteRiskitemAndOutofControl(Integer monthPlaneID);

    //根据主键更新Riskcontrolplanebymonth
    Boolean updateRiskcontrolplanebymonth(Riskcontrolplanebymonth riskcontrolplanebymonth);

    //根据主键获取Riskcontrolplanebymonth
    Riskcontrolplanebymonth getRiskcontrolplanebymonth(Integer monthPlaneID);

    //获取总条数
    Integer getRiskcontrolplanebymonthCount();

    //分页获取数据
    List<Riskcontrolplanebymonth> getRiskcontrolplanebymonthByPage(int pagesize, int page);

    //获取总条数，参数是Riskcontrolplanebymonth 对象
    Integer getRiskcontrolplanebymonthCountByRiskcontrolplanebymonth(
            Riskcontrolplanebymonth riskcontrolplanebymonth);

    //分页获取数据，参数是Riskcontrolplanebymonth 对象
    List<Riskcontrolplanebymonth> getRiskcontrolplanebymonthByPageAndRiskcontrolplanebymonth(
            Riskcontrolplanebymonth riskcontrolplanebymonth);

    //根据条件查询数据
    List<Riskcontrolplanebymonth>  getRiskcontrolplanebymonthData(
            Riskcontrolplanebymonth riskcontrolplanebymonth);

    Integer updateRiskcontrolplanebymonthItemStatus(
            String frameWorkID,
            Integer monthPlaneID,
            Integer itemID);

    List<Riskcontrolplanebymonth> getRiskControlMonthPlaneByUser(
            String frameWorkID,
            String monthPlanUnitName);

    List<Riskcontrolplanebymonth> getRiskControlMonthPlaneByDHZ(
            String frameWorkID,
            String monthPlanUnitName);
}