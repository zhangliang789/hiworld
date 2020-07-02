package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskcontrolanalyzeitem;
import java.util.List;

/**
*
*  Riskcontrolanalyzeitem Service层
*
*/
public interface RiskcontrolanalyzeitemService {
    //新增一个Riskcontrolanalyzeitem
    Boolean addRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem);

    //根据主键删除Riskcontrolanalyzeitem,参数是对象
    Boolean deleteRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem);

    //根据主键删除Riskcontrolanalyzeitem，参数是主键
    Boolean deleteRiskcontrolanalyzeitemByID(Integer lostcontrolItem,String framework);

    //根据主键删除Riskcontrolanalyzeitem,参数是对象
    Boolean deleteitemByAnalyzeID(Integer AnalyzeID);

    //根据主键更新Riskcontrolanalyzeitem
    Boolean updateRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem);

    //根据主键获取Riskcontrolanalyzeitem
    Riskcontrolanalyzeitem getRiskcontrolanalyzeitem(Integer itemID);

    //获取总条数
    Integer getRiskcontrolanalyzeitemCount();

    //分页获取数据
    List<Riskcontrolanalyzeitem> getRiskcontrolanalyzeitemByPage(int pagesize, int page);

    //获取总条数，参数是Riskcontrolanaly
    // zeitem 对象
    Integer getRiskcontrolanalyzeitemCountByRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem);

    //分页获取数据，参数是Riskcontrolanalyzeitem 对象
    List<Riskcontrolanalyzeitem> getRiskcontrolanalyzeitemByPageAndRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem);

    //根据条件查询数据
    List<Riskcontrolanalyzeitem>  getRiskcontrolanalyzeitemData(Riskcontrolanalyzeitem riskcontrolanalyzeitem);

    List<Riskcontrolanalyzeitem> getItemByCheck(
            String frameWorkID,
            Integer checkYear,
            Integer checkMonth,
            String MajorType);
    //更新失控状态
    Boolean updateOutofControlStatusISover(
            String frameWorkID,
            Integer lostControlItemID);

        //更新失控状态
        Boolean changeOutofControlStatusISover(
        Boolean status,
        Integer lostControlItemID,String frameWorkID);



    Boolean updateOutofControlStatusISoverByHiddentroubleID(
            String frameWorkID,
            Integer oHiddenTroubleID);

}