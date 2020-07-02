package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskdegree;
import java.util.List;

/**
*
*  Riskdegree Service层
*
*/
public interface RiskdegreeService {
    //新增一个Riskdegree
    Boolean addRiskdegree(Riskdegree riskdegree);

    //根据主键删除Riskdegree,参数是对象
    Boolean deleteRiskdegree(Riskdegree riskdegree);

    //根据主键删除Riskdegree，参数是主键
    Boolean deleteRiskdegreeByID(Integer riskDegreeID);

    //根据主键更新Riskdegree
    Boolean updateRiskdegree(Riskdegree riskdegree);

    //根据主键获取Riskdegree
    Riskdegree getRiskdegree(Integer riskDegreeID);

    Riskdegree getRiskdegreeByCoalMine(String coalMineName,String frameWorkID);

    Riskdegree getRiskdegreeByMethod(String frameWorkID,String hazardIdentificationMethod);
    //获取总条数
    Integer getRiskdegreeCount();

    //分页获取数据
    List<Riskdegree> getRiskdegreeByPage(int pagesize, int page);

    //获取总条数，参数是Riskdegree 对象
    Integer getRiskdegreeCountByRiskdegree(Riskdegree riskdegree);

    //分页获取数据，参数是Riskdegree 对象
    List<Riskdegree> getRiskdegreeByPageAndRiskdegree(Riskdegree riskdegree);

    //根据条件查询数据
    List<Riskdegree>  getRiskdegreeData(Riskdegree riskdegree);
}