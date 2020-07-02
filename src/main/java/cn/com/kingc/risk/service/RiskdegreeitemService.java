package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskdegreeitem;
import java.util.List;

/**
*
*  Riskdegreeitem Service层
*
*/
public interface RiskdegreeitemService {
    //新增一个Riskdegreeitem
    Boolean addRiskdegreeitem(Riskdegreeitem riskdegreeitem);

    //根据主键删除Riskdegreeitem,参数是对象
    Boolean deleteRiskdegreeitem(Riskdegreeitem riskdegreeitem);

    //根据主键删除Riskdegreeitem，参数是主键
    Boolean deleteRiskdegreeitemByID(Integer riskDegreeItemID);

    //根据主键更新Riskdegreeitem
    Boolean updateRiskdegreeitem(Riskdegreeitem riskdegreeitem);

    //根据主键获取Riskdegreeitem
    Riskdegreeitem getRiskdegreeitem(Integer riskDegreeItemID);

    //获取总条数
    Integer getRiskdegreeitemCount();

    //分页获取数据
    List<Riskdegreeitem> getRiskdegreeitemByPage(int pagesize, int page);

    //获取总条数，参数是Riskdegreeitem 对象
    Integer getRiskdegreeitemCountByRiskdegreeitem(Riskdegreeitem riskdegreeitem);

    //分页获取数据，参数是Riskdegreeitem 对象
    List<Riskdegreeitem> getRiskdegreeitemByPageAndRiskdegreeitem(Riskdegreeitem riskdegreeitem);

    //根据条件查询数据
    List<Riskdegreeitem>  getRiskdegreeitemData(Riskdegreeitem riskdegreeitem);
}