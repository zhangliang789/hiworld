package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskdegree;
import java.util.List;
/**
* RiskdegreeDao层
* 对应数据库的 riskdegree表
*/
public interface RiskdegreeDao{

    //新增一个Riskdegree
    Integer addRiskdegree(Riskdegree riskdegree);

    //根据主键删除Riskdegree，参数是一个对象
    Integer deleteRiskdegree(Riskdegree riskdegree);

    //根据主键删除Riskdegree，参数是主键
    Integer deleteRiskdegreeByID(Integer riskDegreeID);

    //根据主键更新Riskdegree
    Integer updateRiskdegree(Riskdegree riskdegree);

    //根据主键获取Riskdegree
    Riskdegree getRiskdegree(Integer riskDegreeID);

    //根据主键获取Riskdegree
    Riskdegree getRiskdegreeByCoalMine(@Param("coalMineName")String coalMineName,@Param("frameWorkID")String frameWorkID);

    //根据主键获取Riskdegree
    Riskdegree getRiskdegreeByMethod(@Param("frameWorkID")String frameWorkID,@Param("hazardIdentificationMethod")String hazardIdentificationMethod);

    //获取总条数
    Integer getRiskdegreeCount();

    //分页获取数据
    List<Riskdegree> getRiskdegreeByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Riskdegree 对象
    Integer getRiskdegreeCountByRiskdegree(Riskdegree riskdegree);

    //分页获取数据，参数是Riskdegree 对象 和开始页，结束页
    List<Riskdegree> getRiskdegreeByPageAndRiskdegree(@Param("riskdegree") Riskdegree riskdegree, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Riskdegree>  getRiskdegreeData(Riskdegree riskdegree);
}