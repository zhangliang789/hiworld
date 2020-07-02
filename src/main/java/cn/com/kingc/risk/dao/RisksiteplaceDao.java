package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Risksiteplace;
import java.util.List;
/**
* RisksiteplaceDao层
* 对应数据库的 risksiteplace表
*/
public interface RisksiteplaceDao{

    //新增一个Risksiteplace
    Integer addRisksiteplace(Risksiteplace risksiteplace);

    //根据主键删除Risksiteplace，参数是一个对象
    Integer deleteRisksiteplace(Risksiteplace risksiteplace);

    //根据主键删除Risksiteplace，参数是主键
    Integer deleteRisksiteplaceByID(Integer riskSiteID);

    //根据主键更新Risksiteplace
    Integer updateRisksiteplace(Risksiteplace risksiteplace);

    //根据主键获取Risksiteplace
    Risksiteplace getRisksiteplace(Integer riskSiteID);

    //获取总条数
    Integer getRisksiteplaceCount();

    //分页获取数据
    List<Risksiteplace> getRisksiteplaceByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Risksiteplace 对象
    Integer getRisksiteplaceCountByRisksiteplace(Risksiteplace risksiteplace);

    //分页获取数据，参数是Risksiteplace 对象 和开始页，结束页
    List<Risksiteplace> getRisksiteplaceByPageAndRisksiteplace(@Param("risksiteplace") Risksiteplace risksiteplace, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Risksiteplace>  getRisksiteplaceData(Risksiteplace risksiteplace);
}