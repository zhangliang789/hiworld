package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Risksiteoutofcontrolitem;
import java.util.List;
/**
* RisksiteoutofcontrolitemDao层
* 对应数据库的 risksiteoutofcontrolitem表
*/
public interface RisksiteoutofcontrolitemDao{

    //新增一个Risksiteoutofcontrolitem
    Integer addRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem);

    void  addRisksiteOutOfcontrolItemes(List<Risksiteoutofcontrolitem> list);

    //根据主键删除Risksiteoutofcontrolitem，参数是一个对象
    Integer deleteRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem);

    //根据主键删除Risksiteoutofcontrolitem，参数是主键
    Integer deleteRisksiteoutofcontrolitemByID(Integer itemID);

    Integer deleteRisksiteoutofcontrolitemByCheckRecordID(Integer CheckRecordID);

    //根据主键更新Risksiteoutofcontrolitem
    Integer updateRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem);

    //根据主键获取Risksiteoutofcontrolitem
    Risksiteoutofcontrolitem getRisksiteoutofcontrolitem(Integer itemID);

    //获取总条数
    Integer getRisksiteoutofcontrolitemCount();

    //分页获取数据
    List<Risksiteoutofcontrolitem> getRisksiteoutofcontrolitemByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Risksiteoutofcontrolitem 对象
    Integer getRisksiteoutofcontrolitemCountByRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem);

    //分页获取数据，参数是Risksiteoutofcontrolitem 对象 和开始页，结束页
    List<Risksiteoutofcontrolitem> getRisksiteoutofcontrolitemByPageAndRisksiteoutofcontrolitem(@Param("risksiteoutofcontrolitem") Risksiteoutofcontrolitem risksiteoutofcontrolitem, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Risksiteoutofcontrolitem>  getRisksiteoutofcontrolitemData(Risksiteoutofcontrolitem risksiteoutofcontrolitem);
}