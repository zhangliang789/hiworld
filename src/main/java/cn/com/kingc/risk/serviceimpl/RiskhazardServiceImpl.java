package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.group.xinjiangdbcontrol.model.CollieryAndRiskDTO;
import cn.com.kingc.group.xinjiangdbcontrol.model.RiskControlMethod;
import cn.com.kingc.group.xinjiangdbcontrol.service.CollierySubmitService;
import cn.com.kingc.risk.dao.RiskhazardDao;
import cn.com.kingc.risk.dao.RiskleversettingDao;
import cn.com.kingc.risk.dao.RisksiteDao;
import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.RiskAnalyzeService;
import cn.com.kingc.risk.service.RiskcontrolmeasureService;
import cn.com.kingc.risk.service.RiskhazardService;
import org.apache.commons.collections.CollectionUtils;
import org.heart.common.utils.UtilsString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.*;

/**
 * Riskhazard Service实现层
 */
@Service("riskhazardService")
public class RiskhazardServiceImpl implements RiskhazardService {

    @Autowired
    private RisksiteDao risksiteDao;
    @Autowired
    private RiskhazardDao riskhazardDao;

    @Autowired
    private RiskleversettingDao riskleversettingDao;

    @Autowired
    private RiskcontrolmeasureService riskcontrolmeasureService;

    @Autowired
    private RiskAnalyzeService riskAnalyzeService;


    @Autowired
    private CollierySubmitService collierySubmitService;

    //新增一个Riskhazard
    @SystemServiceLog(description = "新增一个Riskhazard")
    @Override
    public Boolean addRiskhazard(Riskhazard riskhazard) {
        riskhazardDao.addRiskhazard(riskhazard);
        //如果危险源保存成功
        if (riskhazard.getHazardID() > 0 && riskhazard.getRiskSiteID() > 0) {
            //根据危险源更新风险点灾害类型
            if (riskhazard.getRiskSiteFullNumber() != "") {
                String FullNumber = riskhazard.getRiskSiteFullNumber();
                String FrameWorkID = riskhazard.getFrameWorkID();
                String damtype = risksiteDao.getChildRiskDamtype(FrameWorkID, FullNumber);
                String damage = "";
                if (damtype != "" && damtype != null) {
                    String[] dmList = damtype.split(",");
                    List<String> resultList = new ArrayList<String>();
                    boolean flag;
                    for (int i = 0; i < dmList.length; i++) {
                        flag = false;
                        for (int j = 0; j < resultList.size(); j++) {
                            if (dmList[i].equals(resultList.get(j))) {
                                flag = true;
                                break;
                            }
                        }
                        if (!flag) {
                            resultList.add(dmList[i]);
                        }
                    }
                    String[] dList = (String[]) resultList.toArray(new String[resultList.size()]);
                    for (int n = 0; n < dList.length; n++) {
                        if (n < dList.length - 1) {
                            damage += dList[n] + ",";
                        } else {
                            damage += dList[n];
                        }
                    }
                }
                risksiteDao.updateChildRiskDamtype(FrameWorkID, FullNumber, damage);
                if (riskhazard.getRiskSiteFullNumber().contains(".")) {
                    String topDamType = risksiteDao.getTopRiskDamtype(FrameWorkID,
                            FullNumber.substring(0, FullNumber.indexOf(".")));
                    String damage1 = "";
                    if (topDamType != "" && topDamType != null) {
                        String[] dmList1 = topDamType.split(",");
                        List<String> resultList1 = new ArrayList<String>();
                        boolean flag;
                        for (int i = 0; i < dmList1.length; i++) {
                            flag = false;
                            for (int j = 0; j < resultList1.size(); j++) {
                                if (dmList1[i].equals(resultList1.get(j))) {
                                    flag = true;
                                    break;
                                }
                            }
                            if (!flag) {
                                resultList1.add(dmList1[i]);
                            }
                        }
                        String[] dList1 = (String[]) resultList1.toArray(new String[resultList1.size()]);
                        for (int n = 0; n < dList1.length; n++) {
                            if (n < dList1.length - 1) {
                                damage1 += dList1[n] + ",";
                            } else {
                                damage1 += dList1[n];
                            }
                        }
                    }
                    risksiteDao.updateTopRiskDamtype(
                            FrameWorkID,
                            FullNumber.substring(0, FullNumber.indexOf(".")), damage1);
                }
            }
            return true;
        }

        return false;
    }

    //新增一个RiskhazardList
    @SystemServiceLog(description = "新增一个RiskhazardList")
    @Override
    public void addRiskhazardList(List<Riskhazard> list) {
        if (list != null && list.size() > 0) {
            riskhazardDao.addRiskhazardList(list);
        }
    }

    //根据主键删除Riskhazard
    @SystemServiceLog(description = "根据主键删除Riskhazard")
    @Override
    public Boolean deleteRiskhazard(Riskhazard riskhazard) {
        return riskhazardDao.deleteRiskhazard(riskhazard) > 0;
    }

    //根据主键删除Riskhazard，参数是主键
    @SystemServiceLog(description = "根据主键删除Riskhazard,参数是主键")
    @Override
    public Boolean deleteRiskhazardByID(Integer hazardID) {

        return riskhazardDao.deleteRiskhazardByID(hazardID) > 0;
    }


    //根据主键更新Riskhazard
    @SystemServiceLog(description = "根据主键更新Riskhazard")
    @Override
    public Boolean updateRiskhazard(Riskhazard riskhazard) {

        return riskhazardDao.updateRiskhazard(riskhazard) > 0;
    }

    //根据主键获取Riskhazard
    @SystemServiceLog(description = "根据主键获取Riskhazard")
    @Override
    public Riskhazard getRiskhazard(Integer hazardID) {

        return riskhazardDao.getRiskhazard(hazardID);
    }

    //获取Riskhazards
    @Override
    public List<Riskhazard> getHazards(String frameWorkID, String riskSiteFullNumber) {
        return riskhazardDao.getHazards(frameWorkID, riskSiteFullNumber);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Riskhazard总条数")
    @Override
    public Integer getRiskhazardCount() {
        return riskhazardDao.getRiskhazardCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Riskhazard数据")
    @Override
    public List<Riskhazard> getRiskhazardByPage(int pagesize, int page) {
        Integer pageBegin = (page - 1) * pagesize;
        Integer pageEnd = pagesize;
        return riskhazardDao.getRiskhazardByPage(pageBegin, pageEnd);
    }

    //获取总条数，参数是Riskhazard 对象
    @SystemServiceLog(description = "分页获取Riskhazard数据,参数是Riskhazard 对象")
    @Override
    public Integer getRiskhazardCountByRiskhazard(Riskhazard riskhazard) {
        return riskhazardDao.getRiskhazardCountByRiskhazard(riskhazard);
    }

    //分页获取数据，参数是Riskhazard 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Riskhazard数据，参数是Riskhazard 对象和页面大小和页码")
    @Override
    public List<Riskhazard> getRiskhazardByPageAndRiskhazard(Riskhazard riskhazard) {
        Integer pageBegin = (riskhazard.getPage() - 1) * riskhazard.getPagesize();
        Integer pageEnd = riskhazard.getPagesize();
        return riskhazardDao.getRiskhazardByPageAndRiskhazard(riskhazard, pageBegin, pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskhazard数据")
    @Override
    public List<Riskhazard> getRiskhazardData(Riskhazard riskhazard) {
        return riskhazardDao.getRiskhazardData(riskhazard);
    }

    @Override
    public Boolean updateRiskSiteStatusByRiskhazard(Riskhazard riskhazard) {
        if (riskhazard != null) {
            String frameWorkID = riskhazard.getFrameWorkID();
            //根据危险源对应的风险点Fullnumber
            String fullNumber = riskhazard.getRiskSiteFullNumber();
            //计算父级风险点编码
            String parentNumber = fullNumber;
            if (fullNumber.indexOf(".") > -1) {
                parentNumber = fullNumber.substring(0, fullNumber.indexOf("."));//11111111111.2222111
            }

            if (updateStatus(frameWorkID, fullNumber, parentNumber)) {
                //更新风险等级
                riskhazardDao.updateRiskSiteRiskLevelAndValueByFullNumber(
                        frameWorkID,
                        fullNumber,
                        parentNumber);
            }
        }

        return true;
    }

    private Boolean updateStatus(String frameWorkID, String fullNumber, String parentNumber) {
        Integer count = riskhazardDao.UpdateRiskSiteStatusByFullNumber(
                frameWorkID,
                fullNumber,
                parentNumber);

        return count > 0 ? true : false;
    }


    @Override
    public List<Riskhazard> getRiskhazardByPageAndRiskControlRange(Riskhazardcontrolrange riskhazardcontrolrange) {
        return riskhazardDao.getRiskhazardByPageAndRiskControlRange(riskhazardcontrolrange);
    }

    @Override
    public List<Riskhazard> getOutOfTimeRiskHazard(Riskhazard riskhazard) {
        return riskhazardDao.getRiskhazardData(riskhazard);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateSubmitStatusAndSubmit(String ids) {
        String[] idsArr = ids.split(",");
        for (String id : idsArr) {
            Riskhazard riskhazard = new Riskhazard();
            riskhazard.setHazardID(Integer.valueOf(id));
            riskhazard.setIsSubmit(Riskhazard.SUBMIT);
            riskhazardDao.updateByPrimaryKeySelective(riskhazard);
        }

        Example example = new Example(Riskhazard.class);
        example.createCriteria().andIn("hazardID", Arrays.asList(idsArr));
        List<Riskhazard> riskhazards = riskhazardDao.selectByExample(example);


        List<CollieryAndRiskDTO> dtos = new ArrayList<>();
        CollieryAndRiskDTO collieryAndRiskDTO;
        for (Riskhazard riskhazard : riskhazards) {
            Map<String, Object> param = new HashMap<>();
            param.put("hazardID",riskhazard.getHazardID());
            List unsubmitRiskList = (List)riskAnalyzeService.getRiskInfoList(param, 0, 1);
            Map<String,Object> map = (Map<String,Object>)unsubmitRiskList.get(0);
            collieryAndRiskDTO = new CollieryAndRiskDTO();
            collieryAndRiskDTO.setCollieryId(riskhazard.getFrameWorkID());
            collieryAndRiskDTO.setRiskId(String.valueOf(riskhazard.getHazardID()));
            collieryAndRiskDTO.setTopRiskSiteID(map.get("TopRiskSiteID").toString());
            collieryAndRiskDTO.setTopName(map.get("TopName").toString());
            collieryAndRiskDTO.setChildName(map.get("ChildName").toString());
            collieryAndRiskDTO.setChildRiskSiteID(map.get("ChildRiskSiteID").toString());
            collieryAndRiskDTO.setHazardID(map.get("HazardID").toString());
            collieryAndRiskDTO.setHazardDesc(map.get("HazardDesc").toString());
            collieryAndRiskDTO.setHazardName(map.get("HazardName").toString());
            collieryAndRiskDTO.setHazardIdentifyMethod(map.get("HazardIdentifyMethod").toString());
            collieryAndRiskDTO.setHazardMajorType(map.get("HazardMajorType").toString());
            collieryAndRiskDTO.setHazardDamageType(map.get("HazardDamageType").toString());
            collieryAndRiskDTO.setHazardExpose(map.get("HazardExpose").toString());
            collieryAndRiskDTO.setHazardLossConsequence(map.get("HazardLossConsequence").toString());
            collieryAndRiskDTO.setHazardPossibility(map.get("HazardPossibility").toString());
            collieryAndRiskDTO.setHazardSseverity(map.get("HazardSseverity").toString());
            collieryAndRiskDTO.setHazardRiskValue(map.get("HazardRiskValue").toString());
            collieryAndRiskDTO.setHAccidentType(map.get("HAccidentType").toString());
            collieryAndRiskDTO.setRiskColor(map.get("RiskColor").toString());
            collieryAndRiskDTO.setRiskLevel(map.get("RiskLevel").toString());
            collieryAndRiskDTO.setControlRangeStartDay(map.get("ControlRangeStartDay").toString());
            collieryAndRiskDTO.setControlRangeEndDay(map.get("ControlRangeEndDay").toString());
            collieryAndRiskDTO.setKJControlRang(map.get("KJControlRang").toString());
            collieryAndRiskDTO.setZYControlRang(map.get("ZYControlRang").toString());
            collieryAndRiskDTO.setQDControlRang(map.get("QDControlRang").toString());
            collieryAndRiskDTO.setBZControlRang(map.get("BZControlRang").toString());
            collieryAndRiskDTO.setGRControlRang(map.get("GRControlRang").toString());

            /*查询风险等级*/
            Riskleversetting riskleversetting = riskleversettingDao.getRiskleversetting(riskhazard.getRiskLevelSettingID());
            if (riskleversetting != null) {
                collieryAndRiskDTO.setRiskLeave(riskleversetting.getRiskLevel());
            }

            /*查询风险管控措施*/
            List<RiskControlMethod> riskControlMethods = selectRiskControlMethods(riskhazard.getHazardID());
            collieryAndRiskDTO.setControlMethodIds(riskControlMethods);

            collieryAndRiskDTO.setCollieryName(riskhazard.getCoalMineName());
            collieryAndRiskDTO.setRiskName(riskhazard.getName());
            if (UtilsString.isNoneBlank(riskhazard.getDamageType())) {
                collieryAndRiskDTO.setDisasters(riskhazard.getDamageType() + ",");
            }
            dtos.add(collieryAndRiskDTO);
        }

        collierySubmitService.submitCollieryRisk(dtos);
    }

    @Override
    public List<String> getRiskhazardForTouch(String fframeWorkID, String departmentName, String startTime, String endTime, List<String> locationList, List<String> catagoriesList) {
        return riskhazardDao.getRiskhazardForTouch(
                fframeWorkID,
                departmentName,
                startTime,
                endTime,
                locationList,
                catagoriesList
        );
    }

    private List<RiskControlMethod> selectRiskControlMethods(Integer hazardID) {

        Riskcontrolmeasure riskcontrolmeasure = new Riskcontrolmeasure();
        riskcontrolmeasure.setHazardID(hazardID);
        List<Riskcontrolmeasure> riskcontrolmeasureData = riskcontrolmeasureService.getRiskcontrolmeasureData(riskcontrolmeasure);

        if (CollectionUtils.isEmpty(riskcontrolmeasureData)) {
            return null;
        }

        return RiskControlMethodUtils.conversion(riskcontrolmeasureData, String.valueOf(hazardID));
    }
}


/**
 * 风险管控转换类
 * Riskcontrolmeasure==>>RiskControlMethod
 */
class RiskControlMethodUtils {

    public static List<RiskControlMethod> conversion(List<Riskcontrolmeasure> data, String hazardID) {
        if (CollectionUtils.isEmpty(data)) {
            return null;
        }

        List<RiskControlMethod> list = new ArrayList<>();

        RiskControlMethod riskControlMethod;
        for (Riskcontrolmeasure riskcontrol : data) {
            riskControlMethod = new RiskControlMethod();
            riskControlMethod.setContent(riskcontrol.getMeasureContent());
            riskControlMethod.setRiskId(hazardID);
            riskControlMethod.setType(riskcontrol.getMeasureType());
            riskControlMethod.setCreateTime(riskcontrol.getMeasureCreateTime());
            riskControlMethod.setMethodId(String.valueOf(riskcontrol.getMeasureID()));
            list.add(riskControlMethod);
        }
        return list;
    }

}