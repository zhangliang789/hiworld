package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Risksiteplace;
import java.util.List;

/**
*
*  Risksiteplace Service层
*
*/
public interface RisksiteplaceService {
    //新增一个Risksiteplace
    Boolean addRisksiteplace(Risksiteplace risksiteplace);

    //根据主键删除Risksiteplace,参数是对象
    Boolean deleteRisksiteplace(Risksiteplace risksiteplace);

    //根据主键删除Risksiteplace，参数是主键
    Boolean deleteRisksiteplaceByID(Integer riskSiteID);

    //根据主键更新Risksiteplace
    Boolean updateRisksiteplace(Risksiteplace risksiteplace);

    //根据主键获取Risksiteplace
    Risksiteplace getRisksiteplace(Integer riskSiteID);

    //获取总条数
    Integer getRisksiteplaceCount();

    //分页获取数据
    List<Risksiteplace> getRisksiteplaceByPage(int pagesize, int page);

    //获取总条数，参数是Risksiteplace 对象
    Integer getRisksiteplaceCountByRisksiteplace(Risksiteplace risksiteplace);

    //分页获取数据，参数是Risksiteplace 对象
    List<Risksiteplace> getRisksiteplaceByPageAndRisksiteplace(Risksiteplace risksiteplace);

    //根据条件查询数据
    List<Risksiteplace>  getRisksiteplaceData(Risksiteplace risksiteplace);
}