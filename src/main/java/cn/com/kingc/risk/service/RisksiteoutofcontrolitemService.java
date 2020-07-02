package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Risksiteoutofcontrolitem;
import java.util.List;

/**
*
*  Risksiteoutofcontrolitem Service层
*
*/
public interface RisksiteoutofcontrolitemService {
    //新增一个Risksiteoutofcontrolitem
    Boolean addRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem);

    void  addRisksiteOutOfcontrolItemes(List<Risksiteoutofcontrolitem> list);

    //根据主键删除Risksiteoutofcontrolitem,参数是对象
    Boolean deleteRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem);

    //根据主键删除Risksiteoutofcontrolitem，参数是主键
    Boolean deleteRisksiteoutofcontrolitemByID(Integer itemID);

    Integer deleteRiskSiteOutOfControlItemByCheckRecordID(Integer checkRecordID);

    //根据主键更新Risksiteoutofcontrolitem
    Boolean updateRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem);

    //根据主键获取Risksiteoutofcontrolitem
    Risksiteoutofcontrolitem getRisksiteoutofcontrolitem(Integer itemID);

    //获取总条数
    Integer getRisksiteoutofcontrolitemCount();

    //分页获取数据
    List<Risksiteoutofcontrolitem> getRisksiteoutofcontrolitemByPage(int pagesize, int page);

    //获取总条数，参数是Risksiteoutofcontrolitem 对象
    Integer getRisksiteoutofcontrolitemCountByRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem);

    //分页获取数据，参数是Risksiteoutofcontrolitem 对象
    List<Risksiteoutofcontrolitem> getRisksiteoutofcontrolitemByPageAndRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem);

    //根据条件查询数据
    List<Risksiteoutofcontrolitem>  getRisksiteoutofcontrolitemData(Risksiteoutofcontrolitem risksiteoutofcontrolitem);

}