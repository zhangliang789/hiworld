package cn.com.kingc.risk.dao;

import cn.com.kingc.risk.model.Riskcontrolplanebymonth;
import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskcontrolanalyze;

import java.util.List;

/**
 * RiskcontrolanalyzeDao层
 * 对应数据库的 riskcontrolanalyze表
 */
public interface RiskcontrolanalyzeDao {

    //新增一个Riskcontrolanalyze
    Integer addRiskcontrolanalyze(Riskcontrolanalyze riskcontrolanalyze);

    //根据主键删除Riskcontrolanalyze，参数是一个对象
    Integer deleteRiskcontrolanalyze(Riskcontrolanalyze riskcontrolanalyze);

    //根据主键删除Riskcontrolanalyze，参数是主键
    Integer deleteRiskcontrolanalyzeByID(Integer mAnalyzeID);

    //根据主键更新Riskcontrolanalyze
    Integer updateRiskcontrolanalyze(Riskcontrolanalyze riskcontrolanalyze);

    //根据主键获取Riskcontrolanalyze
    Riskcontrolanalyze getRiskcontrolanalyze(Integer mAnalyzeID);

    //获取总条数
    Integer getRiskcontrolanalyzeCount();

    //分页获取数据
    List<Riskcontrolanalyze> getRiskcontrolanalyzeByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Riskcontrolanalyze 对象
    Integer getRiskcontrolanalyzeCountByRiskcontrolanalyze(Riskcontrolanalyze riskcontrolanalyze);

    //分页获取数据，参数是Riskcontrolanalyze 对象 和开始页，结束页
    List<Riskcontrolanalyze> getRiskcontrolanalyzeByPageAndRiskcontrolanalyze(@Param("riskcontrolanalyze") Riskcontrolanalyze riskcontrolanalyze, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Riskcontrolanalyze> getRiskcontrolanalyzeData(Riskcontrolanalyze riskcontrolanalyze);

    //获取管控情况
    List<String> getAnalyzeConclusion(
            @Param("frameWorkID") String frameWorkID,
            @Param("checkYear") Integer checkYear,
            @Param("checkMonth") Integer checkMonth,
            @Param("MajorType") String MajorType);

    //检查当月是否含有该条管控个效果分析
    List<Riskcontrolanalyze> checkData(@Param("frameWorkID") String frameWorkID,
                      @Param("frameWorkName") String frameWorkName,
                      @Param("startTime") String startTime,
                      @Param("endTime") String endTime,
                      @Param("MajorType") String MajorType);

    /**
     * 查看没有分析过且失控的计划
     * @param frameWorkID
     * @param checkYear
     * @param checkMonth
     * @param MajorType
     * @param monthPlanFrequency
     * @return
     */
    List<Riskcontrolplanebymonth> getNotAnalyzePlane( @Param("frameWorkID") String frameWorkID, @Param("checkYear") Integer checkYear, @Param("checkMonth") Integer checkMonth, @Param("MajorType") String MajorType, @Param("monthPlanFrequency")String monthPlanFrequency);


    /**
     * 查看所有没有分析过的计划
     * @param frameWorkID
     * @param checkYear
     * @param checkMonth
     * @param MajorType
     * @param monthPlanFrequency
     * @return
     */
    List<Riskcontrolplanebymonth> getNotAnalyzePlaneWithallItem( @Param("frameWorkID") String frameWorkID, @Param("checkYear") Integer checkYear, @Param("checkMonth") Integer checkMonth, @Param("MajorType") String MajorType, @Param("monthPlanFrequency")String monthPlanFrequency);

    /**
     * 查看没有分析过且失控的计划
     * @param frameWorkID
     * @param checkYear
     * @param checkMonth
     * @param MajorType
     * @param monthPlanFrequency
     * @return
     */
    List<Riskcontrolplanebymonth> getNotAnalyzePlaneByPingMei( @Param("frameWorkID") String frameWorkID, @Param("checkYear") Integer checkYear, @Param("checkMonth") Integer checkMonth, @Param("MajorType") String MajorType, @Param("monthPlanFrequency")String monthPlanFrequency);


    Integer AnalyzeMonthPlane(
            @Param("CreaterID") Integer CreaterID,
            @Param("CreaterName") String CreaterName,
            @Param("CreateUnitID") Integer CreateUnitID,
            @Param("CreateUnitName") String CreateUnitName,
            @Param("monthPlaneID") Integer monthPlaneID);

    Integer AnalyzeItemByOutofControl(
            @Param("monthPlaneID") Integer monthPlaneID,
            @Param("mAnalyzeID") Integer mAnalyzeID);

    /**
     * 查看没有分析过的所有计划
     * @param frameWorkID
     * @param checkYear
     * @param checkMonth
     * @param MajorType
     * @param monthPlanFrequency
     * @return
     */
    List<Riskcontrolplanebymonth> getNotAnalyzePlanAllstatus( @Param("frameWorkID") String frameWorkID, @Param("checkYear") Integer checkYear, @Param("checkMonth") Integer checkMonth, @Param("MajorType") String MajorType, @Param("monthPlanFrequency")String monthPlanFrequency);

    Integer AnalyzeItemallStatus(
            @Param("monthPlaneID") Integer monthPlaneID,
            @Param("mAnalyzeID") Integer mAnalyzeID);
    List<Riskcontrolplanebymonth> getNotAnalyzePlanAllstatuss( @Param("frameWorkID") String frameWorkID, @Param("checkYear") Integer checkYear, @Param("checkMonth") Integer checkMonth, @Param("MajorType") String MajorType, @Param("monthPlanFrequency")String monthPlanFrequency);
    List<Riskcontrolplanebymonth> getNotAnalyzePlanes( @Param("frameWorkID") String frameWorkID, @Param("checkYear") Integer checkYear, @Param("checkMonth") Integer checkMonth, @Param("MajorType") String MajorType, @Param("monthPlanFrequency")String monthPlanFrequency);

}
