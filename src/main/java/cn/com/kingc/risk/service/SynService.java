package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.*;

import java.util.List;
import java.util.Map;

/**
 * Created by admistrator on 2018-01-08.
 */
public interface SynService {
    //获取上报设置
    /**
     * 判断对象是否已经存在
     * @param synsetting Synsetting 对象
     * @return 查询到的结果数
     */
    Integer  synsettingIsExist(Synsetting synsetting);

    /**
     * 新增一个Synsetting
     * @param synsetting  Synsetting对象
     * @return 受影响的行数
     */
    Integer addSynsetting(Synsetting synsetting);

    /**
     * 根据主键更新Synsetting
     * @param  synsetting  Synsetting对象
     * @return 受影响的行数
     */
    Integer updateSynsetting(Synsetting synsetting);

    /**
     * 根据主键获取Synsetting
     * @param  frameWorkID  Synsetting对象主键
     * @return  Synsetting对象
     */
    Synsetting getSynsetting(String frameWorkID);


    //获取待上传风险信息
    List<Map<String,Object>> getWaittingForSynByRiskHistory(String frameWorkID,String showMajor);

    //获取待上传重大风险信息
    List<Map<String,Object>> getWaittingForSynByRiskHazardHistory(String frameWorkID);

    List<Map<String,Object>> getHazardInfoBySelectRisk(String frameWorkID,
                                                        String riskFullNumber);

    List<Map<String,Object>> getReportedHazardInfo(String frameWorkID, String riskFullNumber);

    //获取年度辨识
    List<Synreportmajoryearrisk> getWaittingForSynByYearHistory(String frameWorkID,String year,String month,String Name);

    //获取专项辨识信息
    List<SynSpecialevaluatereport> getWaittingForSynBySpeciallyHistory(String frameWorkID,String year,String month);


    Boolean SynRiskData(String frameWorkID,
                        Integer posterID,
                        String posterName,
                        List<Map<String, Object>> HardazIDs);

    Boolean SynRRiskHazardData(List<Map<String,Object>> WaittingForSynByRisk);

    boolean SynYearData(String frameWorkID,Integer posterID,String posterName, List<Synreportmajoryearrisk> lst);

    boolean SynSpeciallyData(String frameWorkID,Integer posterID,String posterName,List<SynSpecialevaluatereport> WaittingForSynByRisk);

    List<Map<String,Object>> getSyncyearhistoryList(Syncyearhistory syncyearhistory);

}
