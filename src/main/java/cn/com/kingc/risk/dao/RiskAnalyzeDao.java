package cn.com.kingc.risk.dao;

import cn.com.kingc.risk.model.RiskAnalyzeByDamageType;
import cn.com.kingc.risk.model.RiskAnalyzeByPlaceType;

import org.apache.ibatis.annotations.Param;
import org.heart.mybatis.base.dao.MybatisBaseMapper;

import java.util.List;
import java.util.Map;

/**
 * Created by admistrator on 2017-09-28.
 */
public interface RiskAnalyzeDao extends MybatisBaseMapper<RiskAnalyzeByDamageType> {
    List<RiskAnalyzeByDamageType> getRiskAnalyzeByPlaceType(@Param("frameWorkID") String frameWorkID);

    List<RiskAnalyzeByDamageType> getRiskAnalyzeByDamageType(
            @Param("frameWorkID") String frameWorkID,
            @Param("RiskDamageType") String RiskDamageType
    );

    List<RiskAnalyzeByDamageType> getRiskAnalyzeByDamageTypeByOrgIDItem(
            @Param("orgIdItem") List<String> orgIdItem,
            @Param("RiskDamageType") String RiskDamageType
    );

    List<RiskAnalyzeByDamageType> getRiskAnalyzeByTask(String frameWorkID);

    List<Map<String, Object>> getOutOfControlRiskAnalyze(
            @Param("frameWorkID") String frameWorkID,
            @Param("riskName") String riskName);

    List<Map<String, Object>> getOutofControlByLostItemIDs(
            @Param("frameWorkID") String frameWorkID,
            @Param("LostItemIDs") String[] LostItemIDs);

    List<Map<String, Object>> getRiskByDepartmentAndRole(
            @Param("frameWorkID") String frameWorkID,
            @Param("departmentName") String departmentName,
            @Param("RoleName") String RoleName,
            @Param("Category") String Category,
            @Param("DamageType") String DamageType,
            @Param("hazardName") String hazardName,
            @Param("riskObj") String riskObj,
            @Param("startTime") String startTime,
            @Param("endTime") String endTime

    );

    List<Map<String, Object>> getRiskByPlace(
            @Param("hazardID") Integer hazardID,
            @Param("frameWorkID") String frameWorkID,
            @Param("RiskName") String RiskName,
            @Param("departmentName") String departmentName,
            @Param("RoleName") String RoleName,
            @Param("Category") String Category,
            @Param("DamageType") String DamageType,
            @Param("hazardName") String hazardName,
            @Param("riskObj") String riskObj,
            @Param("startTime") String startTime,
            @Param("endTime") String endTime
    );

    List<Map<String, Object>> getRiskDetailByXinAn(@Param("frameworkID") String frameWorkID,
                                                   @Param("coalname") String coalname, @Param("topName") String topName,@Param("childName") String childName,@Param("hazardName") String hazardName, @Param("majorType") String majorType,
                                                   @Param("damageType") String damageType, @Param("riskLevelSettingID") Integer riskLevelSettingID, @Param("accidentType") String accidentType,
                                                   @Param("startTime") String startTime, @Param("endTime") String endTime, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    Integer getRiskDetailByXinAnCount(@Param("frameworkID") String frameWorkID,
                                      @Param("coalname") String coalname, @Param("topName") String topName,@Param("childName") String childName,@Param("hazardName")String hazardName, @Param("majorType") String majorType,
                                      @Param("damageType") String damageType, @Param("riskLevelSettingID") Integer riskLevelSettingID, @Param("accidentType") String accidentType,
                                      @Param("startTime") String startTime, @Param("endTime") String endTime);


    List<Map<String, Object>> getRiskDetailByLiangJia(@Param("frameworkID") String frameWorkID,
                                                   @Param("coalname") String coalname, @Param("topName") String topName,@Param("hazardName") String hazardName, @Param("majorType") String majorType,
                                                   @Param("damageType") String damageType, @Param("riskLevelSettingID") Integer riskLevelSettingID, @Param("accidentType") String accidentType,
                                                   @Param("startTime") String startTime, @Param("endTime") String endTime, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    List<Map<String, Object>> getRiskReviewStatusByLiangJia(@Param("frameworkID") String frameWorkID,
                                                      @Param("coalname") String coalname, @Param("topName") String topName,
                                                      @Param("hazardName") String hazardName, @Param("majorType") String majorType,
                                                      @Param("damageType") String damageType, @Param("riskLevelSettingID") Integer riskLevelSettingID, @Param("accidentType") String accidentType,
                                                      @Param("startTime") String startTime, @Param("endTime") String endTime, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    void updateRiskReviewStatusByLiangJia(@Param("id")String id,@Param("frameworkId")String frameworkId,@Param("hazardId")String hazardId,@Param("measureId")String measureId,@Param("reviewStatus")String reviewStatus);

    Integer getRiskDetailByLiangJiaCount(@Param("frameworkID") String frameWorkID,
                                      @Param("coalname") String coalname, @Param("topName") String topName,@Param("hazardName")String hazardName, @Param("majorType") String majorType,
                                      @Param("damageType") String damageType, @Param("riskLevelSettingID") Integer riskLevelSettingID, @Param("accidentType") String accidentType,
                                      @Param("startTime") String startTime, @Param("endTime") String endTime);

    /**
     * 获取风控清单上报分页
     *
     * @param param
     * @return
     */
    Integer getRiskSubmitCount(@Param("param") Map<String, Object> param);

    /**
     * 获取风控清单上报集合
     *
     * @param param
     * @param pageBegin
     * @param pageEnd
     * @return
     */
    List<Map<String, Object>> getUnSubmitRiskList(@Param("param") Map<String, Object> param, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
     * 获取所有的风控清单上报集合
     *
     * @param param
     * @param pageBegin
     * @param pageEnd
     * @return
     */
    List<Map<String, Object>> getRiskInfoList(@Param("param") Map<String, Object> param, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    List<Map<String, Object>> getRiskHazardByLiangJia(@Param("frameworkID") String frameWorkID,
                                                      @Param("coalname") String coalname, @Param("topName") String topName,@Param("hazardName") String hazardName, @Param("majorType") String majorType,
                                                      @Param("damageType") String damageType, @Param("riskLevelSettingID") Integer riskLevelSettingID, @Param("accidentType") String accidentType,
                                                      @Param("startTime") String startTime, @Param("endTime") String endTime, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    Integer getRiskHazardByLiangJiaCount(@Param("frameworkID") String frameWorkID,
                                         @Param("coalname") String coalname, @Param("topName") String topName,@Param("hazardName")String hazardName, @Param("majorType") String majorType,
                                         @Param("damageType") String damageType, @Param("riskLevelSettingID") Integer riskLevelSettingID, @Param("accidentType") String accidentType,
                                         @Param("startTime") String startTime, @Param("endTime") String endTime);
}
