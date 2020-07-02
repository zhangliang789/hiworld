package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskcontrolanalyzeitem;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;
/**
* RiskcontrolanalyzeitemDao层
* 对应数据库的 riskcontrolanalyzeitem表
*/
public interface RiskcontrolanalyzeitemDao{

    //新增一个Riskcontrolanalyzeitem
    Integer addRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem);

    //根据主键删除Riskcontrolanalyzeitem，参数是一个对象
    Integer deleteRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem);

    //根据主键删除Riskcontrolanalyzeitem，参数是主键
    Integer deleteRiskcontrolanalyzeitemByID(Integer itemID);

    Boolean deleteitemByAnalyzeID(Integer mAnalyzeID);

    //根据主键更新Riskcontrolanalyzeitem
    Integer updateRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem);

    //根据主键获取Riskcontrolanalyzeitem
    Riskcontrolanalyzeitem getRiskcontrolanalyzeitem(Integer itemID);

    //获取总条数
    Integer getRiskcontrolanalyzeitemCount();

    //分页获取数据
    List<Riskcontrolanalyzeitem> getRiskcontrolanalyzeitemByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Riskcontrolanalyzeitem 对象
    Integer getRiskcontrolanalyzeitemCountByRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem);

    //分页获取数据，参数是Riskcontrolanalyzeitem 对象 和开始页，结束页
    List<Riskcontrolanalyzeitem> getRiskcontrolanalyzeitemByPageAndRiskcontrolanalyzeitem(@Param("riskcontrolanalyzeitem") Riskcontrolanalyzeitem riskcontrolanalyzeitem, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Riskcontrolanalyzeitem>  getRiskcontrolanalyzeitemData(Riskcontrolanalyzeitem riskcontrolanalyzeitem);

    //获取管控条目情况
    List<Riskcontrolanalyzeitem> getItemByCheck(
            @Param("frameWorkID")String frameWorkID,
            @Param("checkYear")Integer checkYear,
            @Param("checkMonth")Integer checkMonth,
            @Param("MajorType")String MajorType);

    Integer updateOutofControlStatusISover(
            @Param("frameWorkID")String frameWorkID,
            @Param("lostControlItemID")Integer lostControlItemID);

    Boolean changeOutofControlStatusISover(
            @Param("status") Boolean status,
            @Param("lostControlItemID")Integer lostControlItemID,
            @Param("frameWorkID")String frameWorkID);

    Integer updateOutofControlStatusISoverByHiddentroubleID(
            @Param("frameWorkID")String frameWorkID,
            @Param("oHiddenTroubleID")Integer oHiddenTroubleID);
    Boolean deleteRiskcontrolanalyzeitemByLostControlItemID( @Param("lostControlItemID")Integer lostControlItemID,
                                                             @Param("framworkID")String framworkID);
}