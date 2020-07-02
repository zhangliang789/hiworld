package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Event;

import cn.com.kingc.risk.model.Riskcontrolplanebymonthitem;

import java.text.ParseException;
import java.util.List;

/**
*
*  Riskcontrolplanebymonthitem Service层
*
*/
public interface RiskcontrolplanebymonthitemService {
    //新增一个Riskcontrolplanebymonthitem
    Boolean addRiskcontrolplanebymonthitem(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem);

    boolean addRiskcontrolplanebymonthitemList(List<Riskcontrolplanebymonthitem> riskcontrolplanebymonthitemS);

    //根据主键删除Riskcontrolplanebymonthitem,参数是对象
    Boolean deleteRiskcontrolplanebymonthitem(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem);

    //根据主键删除Riskcontrolplanebymonthitem，参数是主键
    Integer deleteRiskcontrolplanemonthitemByMonthID(Integer monthPlaneID);

    //根据主键删除Riskcontrolplanebymonthitem，参数是主键
    Boolean deleteRiskcontrolplanebymonthitemByID(Integer itemID);

    //根据主键更新Riskcontrolplanebymonthitem
    Boolean updateRiskcontrolplanebymonthitem(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem);

    //根据主键获取Riskcontrolplanebymonthitem
    Riskcontrolplanebymonthitem getRiskcontrolplanebymonthitem(Integer itemID);

    //获取总条数
    Integer getRiskcontrolplanebymonthitemCount();

    //分页获取数据
    List<Riskcontrolplanebymonthitem> getRiskcontrolplanebymonthitemByPage(int pagesize, int page);

    //获取总条数，参数是Riskcontrolplanebymonthitem 对象
    Integer getRiskcontrolplanebymonthitemCountByRiskcontrolplanebymonthitem(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem);

    //分页获取数据，参数是Riskcontrolplanebymonthitem 对象
    List<Riskcontrolplanebymonthitem> getRiskcontrolplanebymonthitemByPageAndRiskcontrolplanebymonthitem(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem);

    //根据条件查询数据
    List<Riskcontrolplanebymonthitem>  getRiskcontrolplanebymonthitemData(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem);
    
  //获取日历的所有数据
    List<Riskcontrolplanebymonthitem>  findriskcontrolplanebymonthitemAll() throws ParseException;
}