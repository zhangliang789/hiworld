package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskidentificationbyspecially;
import java.util.List;
/**
* RiskidentificationbyspeciallyDao层
* 对应数据库的 riskidentificationbyspecially表
*/
public interface RiskidentificationbyspeciallyDao{

    //新增一个Riskidentificationbyspecially
    Integer addRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially);

    //根据主键删除Riskidentificationbyspecially，参数是一个对象
    Integer deleteRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially);

    //根据主键删除Riskidentificationbyspecially，参数是主键
    Integer deleteRiskidentificationbyspeciallyByID(Integer riskIdentificationSpeciallyID);

    //根据主键更新Riskidentificationbyspecially
    Integer updateRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially);

    //根据主键获取Riskidentificationbyspecially
    Riskidentificationbyspecially getRiskidentificationbyspecially(Integer riskIdentificationSpeciallyID);

    //获取总条数
    Integer getRiskidentificationbyspeciallyCount();

    //分页获取数据
    List<Riskidentificationbyspecially> getRiskidentificationbyspeciallyByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Riskidentificationbyspecially 对象
    Integer getRiskidentificationbyspeciallyCountByRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially);

    //分页获取数据，参数是Riskidentificationbyspecially 对象 和开始页，结束页
    List<Riskidentificationbyspecially> getRiskidentificationbyspeciallyByPageAndRiskidentificationbyspecially(@Param("riskidentificationbyspecially") Riskidentificationbyspecially riskidentificationbyspecially, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Riskidentificationbyspecially>  getRiskidentificationbyspeciallyData(Riskidentificationbyspecially riskidentificationbyspecially);
}