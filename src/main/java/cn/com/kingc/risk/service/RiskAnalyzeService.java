package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.RiskAnalyzeByDamageType;
import cn.com.kingc.risk.model.RiskAnalyzeByPlaceType;
import cn.com.kingc.risk.model.Risksite;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by admistrator on 2017-09-28.
 */
public interface RiskAnalyzeService {
    List<RiskAnalyzeByDamageType> getRiskAnalyzeByPlaceType(String frameWorkID);

    List<RiskAnalyzeByDamageType> getRiskAnalyzeByDamageType(String frameWorkID, String RiskDamageType);

    List<RiskAnalyzeByDamageType> getRiskAnalyzeByDamageTypeByOrgIDItem(List<String> orgIDItem, String RiskDamageType);

    List<RiskAnalyzeByDamageType> getRiskAnalyzeByTask(String frameWorkID);

    List<Map<String, Object>> getOutOfControlRiskAnalyze(
            String frameWorkID,
            String riskName);

    List<Map<String, Object>> getOutofControlByLostItemIDs(
            String frameWorkID,
            String[] LostItemIDs);

    /**
     * 按部门和岗位查找风险
     *
     * @param departmentName
     * @param RoleName
     * @return
     */
    List<Map<String, Object>> getRiskByDepartmentAndRole(
            String frameWorkID,
            String departmentName,
            String RoleName,
            String Category,
            String DamageType,
            String hazardName,
            String riskObj,
            String startTime,
            String endTime);

    /**
     * 按风险点查找，部门、角色不赋值就显示全部
     *
     * @param frameWorkID
     * @param RiskName
     * @param departmentName
     * @param RoleName
     * @return
     */
    List<Map<String, Object>> getRiskByPlace(
            Integer hazardID,
            String frameWorkID,
            String RiskName,
            String departmentName,
            String RoleName,
            String Category,
            String DamageType,
            String hazardName,
            String riskObj,
            String startTime,
            String endTime
    );

    List<Map<String, Object>> getRiskDetailByXinAn(String frameWorkID,
                                                   String coalname, String topName,String childName,String hazardName, String majorType,
                                                   String damageType, Integer riskLevelSettingID, String accidentType,
                                                   String startTime, String endTime, Integer pageBegin, Integer pageEnd);

    Integer getRiskDetailByXinAnCount(String frameWorkID,
                                      String coalname, String topName,String childName, String hazardName,String majorType,
                                      String damageType, Integer riskLevelSettingID, String accidentType,
                                      String startTime, String endTime);


    //梁家风险管控清单
    List<Map<String, Object>> getRiskDetailByLiangJia(String frameWorkID,
                                                   String coalname, String topName,String hazardName, String majorType,
                                                   String damageType, Integer riskLevelSettingID, String accidentType,
                                                   String startTime, String endTime, Integer pageBegin, Integer pageEnd);

    //梁家风险审核
    List<Map<String, Object>> getRiskReviewStatusByLiangJia(String frameWorkID,
                                                      String coalname, String topName,String hazardName, String majorType,
                                                      String damageType, Integer riskLevelSettingID, String accidentType,
                                                      String startTime, String endTime, Integer pageBegin, Integer pageEnd);

    //梁家风险审核状态修改
    boolean updateRiskReviewStatusByLiangJia(String frameWorkID,String hazardId,String measureId,String reviewStatus);

    Integer getRiskDetailByLiangJiaCount(String frameWorkID,
                                      String coalname, String topName, String hazardName,String majorType,
                                      String damageType, Integer riskLevelSettingID, String accidentType,
                                      String startTime, String endTime);

    /**
     * 获取提交后剩下的风险清单
     *
     * @param param     查询参数
     * @param pageBegin
     * @param pageEnd
     * @return
     */
    Object getUnSubmitRiskList(Map<String, Object> param, Integer pageBegin, Integer pageEnd);

    /**
     * 根据参数查询分页信息
     *
     * @param param
     * @return
     */
    Object getRiskSubmitCount(Map<String, Object> param);

    /**
     * 获取风险清单
     *
     * @param param     查询参数
     * @param pageBegin
     * @param pageEnd
     * @return
     */
    Object getRiskInfoList(Map<String, Object> param, Integer pageBegin, Integer pageEnd);
}
