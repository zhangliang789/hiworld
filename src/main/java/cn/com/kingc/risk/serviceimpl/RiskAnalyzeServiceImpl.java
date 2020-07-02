package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskAnalyzeDao;
import cn.com.kingc.risk.interceptor.ThreadContext;
import cn.com.kingc.risk.model.RiskAnalyzeByDamageType;
import cn.com.kingc.risk.model.RiskAnalyzeByPlaceType;
import cn.com.kingc.risk.model.Risksite;
import cn.com.kingc.risk.service.RiskAnalyzeService;
import com.mkaq.core.aop.SystemServiceLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by admistrator on 2017-09-28.
 */
@Service("riskAnalyzeService")
public class RiskAnalyzeServiceImpl implements RiskAnalyzeService {
    @Autowired
    RiskAnalyzeDao riskAnalyzeDao;

    @Override
    @SystemServiceLog(description = "按地点类型统计分析")
    public List<RiskAnalyzeByDamageType> getRiskAnalyzeByPlaceType(String frameWorkID) {
        return riskAnalyzeDao.getRiskAnalyzeByPlaceType(frameWorkID);
    }

    @Override
    @SystemServiceLog(description = "按灾害类型统计")
    public List<RiskAnalyzeByDamageType> getRiskAnalyzeByDamageType(
            String frameWorkID,
            String RiskDamageType) {
        return riskAnalyzeDao.getRiskAnalyzeByDamageType(frameWorkID, RiskDamageType);
    }

    @Override
    @SystemServiceLog(description = "统计不同的企业下的风险")
    public List<RiskAnalyzeByDamageType> getRiskAnalyzeByDamageTypeByOrgIDItem(
            List<String> orgIdItem,
            String RiskDamageType) {
        return riskAnalyzeDao.getRiskAnalyzeByDamageTypeByOrgIDItem(orgIdItem, RiskDamageType);
    }

    @Override
    @SystemServiceLog(description = "按任务类型取分析结果getRiskAnalyzeByTask")
    public List<RiskAnalyzeByDamageType> getRiskAnalyzeByTask(String frameWorkID) {
        return riskAnalyzeDao.getRiskAnalyzeByTask(frameWorkID);
    }

    @Override
    @SystemServiceLog(description = "失控情况分析getOutOfControlRiskAnalyze")
    public List<Map<String, Object>> getOutOfControlRiskAnalyze(String frameWorkID, String riskName) {
        return riskAnalyzeDao.getOutOfControlRiskAnalyze(frameWorkID, riskName);
    }

    @Override
    public List<Map<String, Object>> getOutofControlByLostItemIDs(String frameWorkID, String[] LostItemIDs) {
        return riskAnalyzeDao.getOutofControlByLostItemIDs(frameWorkID, LostItemIDs);
    }

    @Override
    @SystemServiceLog(description = "getRiskByDepartmentAndRole")
    public List<Map<String, Object>> getRiskByDepartmentAndRole(
            String frameWorkID,
            String departmentName,
            String RoleName,
            String Category,
            String DamageType,
            String hazardName,
            String riskObj,
            String startTime,
            String endTime) {
        return riskAnalyzeDao.getRiskByDepartmentAndRole(frameWorkID, departmentName, RoleName,
                Category, DamageType, hazardName, riskObj, startTime, endTime);
    }

    @Override
    @SystemServiceLog(description = "getRiskByPlace")
    public List<Map<String, Object>> getRiskByPlace(
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
            String endTime) {
        List<Map<String, Object>> list = riskAnalyzeDao.getRiskByPlace(hazardID, frameWorkID, RiskName,
                departmentName, RoleName, Category,
                DamageType, hazardName, riskObj, startTime, endTime);
        List<Map<String, Object>> lists = new ArrayList<>();
        // 当录入角色时对数据结果进行筛选
        if (RoleName != null && !RoleName.equals("")) {
            for (int i = 0; i < list.size(); i++) {
                String ManageDuty = list.get(i).get("ManageDuty").toString();
                if (ManageDuty.contains(",")) {
                    String[] str = ManageDuty.split(",");
                    for (int j = 0; j < str.length; j++) {
                        if (str[j].equals(RoleName)) {
                            lists.add(list.get(i));
                            break;
                        }
                    }
                } else {
                    if (ManageDuty.equals(RoleName)) {
                        lists.add(list.get(i));
                    }
                }
            }
        } else {
            lists = list;
        }
        // 去除可能产生的重复数据
//        List<Map<String, Object>> list2 = new ArrayList<>();
//        for(int i = 0;i < lists.size();i++){
//            if(!list2.contains(lists.get(i))){
//                list2.add(lists.get(i));
//            }
//        }

        return lists;

    }

    @Override
    @SystemServiceLog(description = "getRiskDetailByXinAn")
    public List<Map<String, Object>> getRiskDetailByXinAn(String frameWorkID,
                                                          String coalname, String topName,String childName, String hazardName,String majorType,
                                                          String damageType, Integer riskLevelSettingID, String accidentType,
                                                          String startTime, String endTime, Integer pageBegin, Integer pageEnd) {
        return riskAnalyzeDao.getRiskDetailByXinAn(frameWorkID, coalname,
                topName,childName,hazardName, majorType, damageType, riskLevelSettingID,
                accidentType, startTime, endTime, pageBegin, pageEnd);

    }


    @Override
    @SystemServiceLog(description = "getRiskDetailByXinAnCount")
    public Integer getRiskDetailByXinAnCount(String frameWorkID,
                                             String coalname, String topName,String childName, String hazardName, String majorType,
                                             String damageType, Integer riskLevelSettingID, String accidentType,
                                             String startTime, String endTime) {
        return riskAnalyzeDao.getRiskDetailByXinAnCount(frameWorkID, coalname,
                topName,childName,hazardName,majorType, damageType, riskLevelSettingID,
                accidentType, startTime, endTime);

    }

    @Override
    @SystemServiceLog(description = "getRiskDetailByLiangJia")
    public List<Map<String, Object>> getRiskDetailByLiangJia(String frameWorkID,
                                                          String coalname, String topName, String hazardName,String majorType,
                                                          String damageType, Integer riskLevelSettingID, String accidentType,
                                                          String startTime, String endTime, Integer pageBegin, Integer pageEnd) {
        return riskAnalyzeDao.getRiskDetailByLiangJia(frameWorkID, coalname,
                topName,hazardName, majorType, damageType, riskLevelSettingID,
                accidentType, startTime, endTime, pageBegin, pageEnd);

    }

    @Override
    @SystemServiceLog(description = "getRiskReviewStatusByLiangJia")
    public List<Map<String, Object>> getRiskReviewStatusByLiangJia(String frameWorkID,
                                                             String coalname, String topName, String hazardName,String majorType,
                                                             String damageType, Integer riskLevelSettingID, String accidentType,
                                                             String startTime, String endTime, Integer pageBegin, Integer pageEnd) {
        return riskAnalyzeDao.getRiskReviewStatusByLiangJia(frameWorkID, coalname,
                topName,hazardName, majorType, damageType, riskLevelSettingID,
                accidentType, startTime, endTime, pageBegin, pageEnd);

    }

    @Override
    public boolean updateRiskReviewStatusByLiangJia(String frameWorkID,String hazardId,String measureId,String reviewStatus){
        String id = UUID.randomUUID().toString();
        riskAnalyzeDao.updateRiskReviewStatusByLiangJia(id,frameWorkID,hazardId,measureId,reviewStatus);
        return true;
    }


    @Override
    public Integer getRiskDetailByLiangJiaCount(String frameWorkID,
                                             String coalname, String topName, String hazardName, String majorType,
                                             String damageType, Integer riskLevelSettingID, String accidentType,
                                             String startTime, String endTime) {
        return riskAnalyzeDao.getRiskDetailByLiangJiaCount(frameWorkID, coalname,
                topName,hazardName,majorType, damageType, riskLevelSettingID,
                accidentType, startTime, endTime);

    }


    @Override
    public Object getUnSubmitRiskList(Map<String, Object> param, Integer pageBegin, Integer pageEnd) {
        param.put("frameworkID", ThreadContext.getFramework().getFramewordID());
        param.put("coalname", ThreadContext.getFramework().getFrameWorkName());
        return riskAnalyzeDao.getUnSubmitRiskList(param, pageBegin, pageEnd);
    }

    @Override
    public Integer getRiskSubmitCount(Map<String, Object> param) {
        param.put("frameworkID", ThreadContext.getFramework().getFramewordID());
        param.put("coalname", ThreadContext.getFramework().getFrameWorkName());

        return riskAnalyzeDao.getRiskSubmitCount(param);
    }

    @Override
    public Object getRiskInfoList(Map<String, Object> param, Integer pageBegin, Integer pageEnd) {
        param.put("frameworkID", ThreadContext.getFramework().getFramewordID());
        param.put("coalname", ThreadContext.getFramework().getFrameWorkName());
        return riskAnalyzeDao.getRiskInfoList(param, pageBegin, pageEnd);
    }
}
