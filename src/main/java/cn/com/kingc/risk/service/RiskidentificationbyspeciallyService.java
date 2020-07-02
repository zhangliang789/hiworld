package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskidentificationbyspecially;
import java.util.List;

/**
*
*  Riskidentificationbyspecially Service层
*
*/
public interface RiskidentificationbyspeciallyService {
    //新增一个Riskidentificationbyspecially
    Boolean addRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially);

    //根据主键删除Riskidentificationbyspecially,参数是对象
    Boolean deleteRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially);

    //根据主键删除Riskidentificationbyspecially，参数是主键
    Boolean deleteRiskidentificationbyspeciallyByID(Integer riskIdentificationSpeciallyID);

    //根据主键更新Riskidentificationbyspecially
    Boolean updateRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially);

    //根据主键获取Riskidentificationbyspecially
    Riskidentificationbyspecially getRiskidentificationbyspecially(Integer riskIdentificationSpeciallyID);

    //获取总条数
    Integer getRiskidentificationbyspeciallyCount();

    //分页获取数据
    List<Riskidentificationbyspecially> getRiskidentificationbyspeciallyByPage(int pagesize, int page);

    //获取总条数，参数是Riskidentificationbyspecially 对象
    Integer getRiskidentificationbyspeciallyCountByRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially);

    //分页获取数据，参数是Riskidentificationbyspecially 对象
    List<Riskidentificationbyspecially> getRiskidentificationbyspeciallyByPageAndRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially);

    //根据条件查询数据
    List<Riskidentificationbyspecially>  getRiskidentificationbyspeciallyData(Riskidentificationbyspecially riskidentificationbyspecially);

    //黄陵二矿分页获取数据
    List<Riskidentificationbyspecially> getRiskidentificationbyHLByPage(Riskidentificationbyspecially riskidentificationbyspecially);

    //黄陵二矿根据条件查询数据
    List<Riskidentificationbyspecially>  getRiskidentificationbyspeciallybyHLData(Riskidentificationbyspecially riskidentificationbyspecially);
}