package cn.com.kingc.risk.dao;

import cn.com.kingc.risk.model.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by admistrator on 2018-01-09.
 */
public interface SynDao {
    //获取待上传风险信息
    List<Map<String,Object>> getWaittingForSynByRiskHistory(@Param("frameWorkID") String frameWorkID,@Param("showMajor") String showMajor);

        //获取待上传重大风险信息
    List<Map<String,Object>> getWaittingForSynByRiskHazardHistory(String frameWorkID);

    List<Map<String,Object>> getHazardInfoBySelectRisk(
            @Param("frameWorkID") String frameWorkID,
            @Param("riskFullNumber") String riskFullNumber);

    List<Map<String,Object>> getReportedHazardInfo(@Param("frameWorkID") String frameWorkID,@Param("riskFullNumber") String riskFullNumber);

    //获取年度辨识
    List<Synreportmajoryearrisk> getWaittingForSynByYearHistory(@Param("frameWorkID")String frameWorkID,@Param("year") String year,@Param("month") String month,@Param("Name") String Name);

    //获取专项辨识信息
    List<SynSpecialevaluatereport> getWaittingForSynBySpeciallyHistory(@Param("frameWorkID")String frameWorkID,@Param("year") String year,@Param("month") String month);

    List<Synaddress> repairSynAddress(
            @Param("frameWorkID") String frameWorkID,
            @Param("hazards") String hazards);

    List<Synhazard> repairSynHazard(
            @Param("frameWorkID") String frameWorkID,
            @Param("hazards") String hazards);

    List<Synaddressdepartrel> repairSynAddressdepartrel(
            @Param("frameWorkID") String frameWorkID,
            @Param("hazards") String hazards);

    List<Synreportmajoryearrisk> repairSynReportmajoryearrisk(
            @Param("frameWorkID") String frameWorkID,
            @Param("hazards") String hazards);

}
