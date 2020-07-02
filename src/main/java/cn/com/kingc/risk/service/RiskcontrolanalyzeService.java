package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskcontrolanalyze;
import cn.com.kingc.risk.model.Riskcontrolplanebymonth;

import java.util.List;

/**
 * Riskcontrolanalyze Service层
 */
public interface RiskcontrolanalyzeService {
    //新增一个Riskcontrolanalyze
    Boolean addRiskcontrolanalyze(Riskcontrolanalyze riskcontrolanalyze);

    //根据主键删除Riskcontrolanalyze,参数是对象
    Boolean deleteRiskcontrolanalyze(Riskcontrolanalyze riskcontrolanalyze);

    //根据主键删除Riskcontrolanalyze，参数是主键
    Boolean deleteRiskcontrolanalyzeByID(Integer mAnalyzeID);

    //根据主键更新Riskcontrolanalyze
    Boolean updateRiskcontrolanalyze(Riskcontrolanalyze riskcontrolanalyze);

    //根据主键获取Riskcontrolanalyze
    Riskcontrolanalyze getRiskcontrolanalyze(Integer mAnalyzeID);

    //获取总条数
    Integer getRiskcontrolanalyzeCount();

    //分页获取数据
    List<Riskcontrolanalyze> getRiskcontrolanalyzeByPage(
            int pagesize,
            int page);

    //获取总条数，参数是Riskcontrolanalyze 对象
    Integer getRiskcontrolanalyzeCountByRiskcontrolanalyze(
            Riskcontrolanalyze riskcontrolanalyze);

    //分页获取数据，参数是Riskcontrolanalyze 对象
    List<Riskcontrolanalyze> getRiskcontrolanalyzeByPageAndRiskcontrolanalyze(
            Riskcontrolanalyze riskcontrolanalyze);

    //根据条件查询数据
    List<Riskcontrolanalyze> getRiskcontrolanalyzeData(Riskcontrolanalyze riskcontrolanalyze);

    List<String> getAnalyzeConclusion(
            String frameWorkID,
            Integer checkYear,
            Integer checkMonth,
            String MajorType);
    //检查当月是否存在了一条管控效果分析
    List<Riskcontrolanalyze> checkData(String frameWorkID,String frameWorkName,String startTime,String endTime,String MajorType);


    /**
     * 查看没有分析过且失控的计划
     * @param frameWorkID
     * @param checkYear
     * @param checkMonth
     * @param MajorType
     * @param monthPlanFrequency
     * @return
     */
    List<Riskcontrolplanebymonth> getNotAnalyzePlane( String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType, String monthPlanFrequency);


    /**
     * 查看没有分析过且失控的计划
     * @param frameWorkID
     * @param checkYear
     * @param checkMonth
     * @param MajorType
     * @param monthPlanFrequency
     * @return
     */
    List<Riskcontrolplanebymonth> getNotAnalyzePlaneByPingMei( String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType, String monthPlanFrequency);


    /**
     * 查看所有没有分析过的计划
     * @param frameWorkID
     * @param checkYear
     * @param checkMonth
     * @param MajorType
     * @param monthPlanFrequency
     * @return
     */
    List<Riskcontrolplanebymonth> getNotAnalyzePlaneWithallItem( String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType, String monthPlanFrequency);

    Integer AnalyzeMonthPlane(
            Integer CreaterID,
            String CreaterName,
            Integer CreateUnitID,
            String CreateUnitName,
            Integer monthPlaneID);

    Integer AnalyzeItemByOutofControl(
            Integer monthPlaneID,
            Integer mAnalyzeID);


    /**
     * 查看没有分析过的所有的计划
     * @param frameWorkID
     * @param checkYear
     * @param checkMonth
     * @param MajorType
     * @param monthPlanFrequency
     * @return
     */
    List<Riskcontrolplanebymonth> getNotAnalyzePlanAllstatus( String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType, String monthPlanFrequency);


    //根据主键获取所有Riskcontrolanalyze
    Riskcontrolanalyze getallStatusRiskcontrolanalyze(Integer mAnalyzeID);

    Integer AnalyzeItemallStatus(Integer monthPlaneID, Integer mAnalyzeID);
    List<Riskcontrolplanebymonth> getNotAnalyzePlanAllstatuss( String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType, String monthPlanFrequency);
    List<Riskcontrolplanebymonth> getNotAnalyzePlanes( String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType, String monthPlanFrequency);

}