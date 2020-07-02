package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Risksiteoutofcontrol;
import java.util.List;

/**
*
*  Risksiteoutofcontrol Service层
*
*/
public interface RisksiteoutofcontrolService {

    Boolean saveRiskSiteOutOfControl(Risksiteoutofcontrol risksiteoutofcontrol);
    //新增一个Risksiteoutofcontrol
    Boolean addRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol);

    //新增一个Risksiteoutofcontrol
    Boolean addRisksiteoutofcontrolByEKuang(Risksiteoutofcontrol risksiteoutofcontrol);

    //新增一个Risksiteoutofcontrol
    Boolean addRisksiteoutofcontrolByDHZ(Risksiteoutofcontrol risksiteoutofcontrol);

    //根据主键删除Risksiteoutofcontrol,参数是对象
    Boolean deleteRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol);

    //根据主键删除Risksiteoutofcontrol，参数是主键
    Boolean deleteRisksiteoutofcontrolByID(Integer checkRecordID);

    //根据主键更新Risksiteoutofcontrol
    Boolean updateRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol);

    //根据主键获取Risksiteoutofcontrol
    Risksiteoutofcontrol getRisksiteoutofcontrol(Integer checkRecordID);

    //获取总条数
    Integer getRisksiteoutofcontrolCount();

    //分页获取数据
    List<Risksiteoutofcontrol> getRisksiteoutofcontrolByPage(int pagesize, int page);

    //获取总条数，参数是Risksiteoutofcontrol 对象
    Integer getRisksiteoutofcontrolCountByRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol);

    //分页获取数据，参数是Risksiteoutofcontrol 对象
    List<Risksiteoutofcontrol> getRisksiteoutofcontrolByPageAndRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol);

    //根据条件查询数据
    List<Risksiteoutofcontrol>  getRisksiteoutofcontrolData(Risksiteoutofcontrol risksiteoutofcontrol);
}