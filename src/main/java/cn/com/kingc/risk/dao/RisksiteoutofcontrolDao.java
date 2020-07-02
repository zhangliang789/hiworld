package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Risksiteoutofcontrol;
import java.util.List;
/**
* RisksiteoutofcontrolDao层
* 对应数据库的 risksiteoutofcontrol表
*/
public interface RisksiteoutofcontrolDao{

    //新增一个Risksiteoutofcontrol
    Integer addRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol);


    //根据主键删除Risksiteoutofcontrol，参数是一个对象
    Integer deleteRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol);

    //根据主键删除Risksiteoutofcontrol，参数是主键
    Integer deleteRisksiteoutofcontrolByID(Integer checkRecordID);

    //根据主键更新Risksiteoutofcontrol
    Integer updateRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol);

    //根据主键获取Risksiteoutofcontrol
    Risksiteoutofcontrol getRisksiteoutofcontrol(Integer checkRecordID);

    //获取总条数
    Integer getRisksiteoutofcontrolCount();

    //分页获取数据
    List<Risksiteoutofcontrol> getRisksiteoutofcontrolByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Risksiteoutofcontrol 对象
    Integer getRisksiteoutofcontrolCountByRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol);

    //分页获取数据，参数是Risksiteoutofcontrol 对象 和开始页，结束页
    List<Risksiteoutofcontrol> getRisksiteoutofcontrolByPageAndRisksiteoutofcontrol
    (@Param("risksiteoutofcontrol") Risksiteoutofcontrol risksiteoutofcontrol,
     @Param("pageBegin") Integer pageBegin,
     @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Risksiteoutofcontrol>  getRisksiteoutofcontrolData(Risksiteoutofcontrol risksiteoutofcontrol);
}