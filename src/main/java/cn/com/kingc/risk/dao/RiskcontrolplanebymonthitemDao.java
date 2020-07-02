package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskcontrolplanebymonthitem;
import java.util.List;
/**
* RiskcontrolplanebymonthitemDao层
* 对应数据库的 riskcontrolplanebymonthitem表
*/
public interface RiskcontrolplanebymonthitemDao{

    //新增一个Riskcontrolplanebymonthitem
    Integer addRiskcontrolplanebymonthitem(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem);

    Integer addRiskcontrolplanebymonthitemList(@Param("riskcontrolplanebymonthitems")List<Riskcontrolplanebymonthitem> riskcontrolplanebymonthitems);

    //根据主键删除Riskcontrolplanebymonthitem，参数是一个对象
    Integer deleteRiskcontrolplanebymonthitem(@Param("riskcontrolplanebymonthitem")Riskcontrolplanebymonthitem riskcontrolplanebymonthitem);

    //根据主键删除Riskcontrolplanebymonthitem，参数是主键
    Integer deleteRiskcontrolplanemonthitemByMonthID(Integer monthPlaneID);

    //根据主键删除Riskcontrolplanebymonthitem，参数是主键
    Integer deleteRiskcontrolplanebymonthitemByID(Integer itemID);

    //根据主键更新Riskcontrolplanebymonthitem
    Integer updateRiskcontrolplanebymonthitem(@Param("riskcontrolplanebymonthitem")Riskcontrolplanebymonthitem riskcontrolplanebymonthitem);

    //根据主键获取Riskcontrolplanebymonthitem
    Riskcontrolplanebymonthitem getRiskcontrolplanebymonthitem(Integer itemID);

    //获取总条数
    Integer getRiskcontrolplanebymonthitemCount();

    //分页获取数据
    List<Riskcontrolplanebymonthitem> getRiskcontrolplanebymonthitemByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Riskcontrolplanebymonthitem 对象
    Integer getRiskcontrolplanebymonthitemCountByRiskcontrolplanebymonthitem(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem);

    //分页获取数据，参数是Riskcontrolplanebymonthitem 对象 和开始页，结束页
    List<Riskcontrolplanebymonthitem> getRiskcontrolplanebymonthitemByPageAndRiskcontrolplanebymonthitem(@Param("riskcontrolplanebymonthitem") Riskcontrolplanebymonthitem riskcontrolplanebymonthitem, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Riskcontrolplanebymonthitem>  getRiskcontrolplanebymonthitemData(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem);
    
    //获取日历的所有数据
    List<Riskcontrolplanebymonthitem>  findriskcontrolplanebymonthitemAll();
}