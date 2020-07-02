package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskhazard;
import cn.com.kingc.risk.model.Riskhazardcontrolrange;

import java.util.List;

/**
 * Riskhazard Service层
 */
public interface RiskhazardService {
    //新增一个Riskhazard
    Boolean addRiskhazard(Riskhazard riskhazard);

    //新增一个RiskhazardList
    void addRiskhazardList(List<Riskhazard> list);

    //根据主键删除Riskhazard,参数是对象
    Boolean deleteRiskhazard(Riskhazard riskhazard);

    //根据主键删除Riskhazard，参数是主键
    Boolean deleteRiskhazardByID(Integer hazardID);

    //根据主键更新Riskhazard
    Boolean updateRiskhazard(Riskhazard riskhazard);

    //根据主键获取Riskhazard
    Riskhazard getRiskhazard(Integer hazardID);

    //获取Riskhazards
    List<Riskhazard> getHazards(String frameWorkID, String riskSiteFullNumber);

    //获取总条数
    Integer getRiskhazardCount();

    //分页获取数据
    List<Riskhazard> getRiskhazardByPage(int pagesize, int page);

    //获取总条数，参数是Riskhazard 对象
    Integer getRiskhazardCountByRiskhazard(Riskhazard riskhazard);

    //分页获取数据，参数是Riskhazard 对象
    List<Riskhazard> getRiskhazardByPageAndRiskhazard(Riskhazard riskhazard);

    //根据条件查询数据
    List<Riskhazard> getRiskhazardData(Riskhazard riskhazard);

    Boolean updateRiskSiteStatusByRiskhazard(Riskhazard riskhazard);

    List<Riskhazard> getRiskhazardByPageAndRiskControlRange(Riskhazardcontrolrange riskhazardcontrolrange);

    List<Riskhazard> getOutOfTimeRiskHazard(Riskhazard riskhazard);

    /**
     * 修改提交状态并提交
     *
     * @param ids
     */
    void updateSubmitStatusAndSubmit(String ids);
    /*
     * 触屏全部隐患接口
     * */
    public List<String> getRiskhazardForTouch(
            String fframeWorkID,
            String departmentName,
            String startTime,
            String endTime,
            List<String> locationList,
            List<String> catagoriesList
    );
}