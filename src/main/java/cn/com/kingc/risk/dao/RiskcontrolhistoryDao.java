package cn.com.kingc.risk.dao;

import cn.com.kingc.risk.model.Riskcontrolplanebymonth;
import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskcontrolhistory;
import java.util.List;

/**
* Title:管控历史记录
* Copyright: Copyright (c) 2018 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:RiskcontrolhistoryDao层 对应数据库的 管控历史记录表
* @date 2018-09-05 13:29:53 中国标准时间
* @author
* @version
*/
public interface RiskcontrolhistoryDao{


    // 获取共有多少条记录，参数是Riskcontrolhistory 对象
    Integer getRiskcontrolhistoryCount(@Param("riskcontrolhistory")Riskcontrolhistory riskcontrolhistory);
    // 带有时间段查询条件下获取共有多少条记录，参数是Riskcontrolhistory 对象
    Integer getRiskcontrolhistoryCountByTime(@Param("riskcontrolhistory") Riskcontrolhistory riskcontrolhistory);


    // 分页获取数据，参数是Riskcontrolhistory 对象和开始位置，结束位置
    List<Riskcontrolhistory> getRiskcontrolhistoryByPage(@Param("riskcontrolhistory") Riskcontrolhistory riskcontrolhistory, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //带有时间段查询条件下分页获取数据，参数是Riskcontrolhistory 对象和开始位置，结束位置
    List<Riskcontrolhistory> getRiskcontrolhistoryByPageByTime(@Param("riskcontrolhistory") Riskcontrolhistory riskcontrolhistory, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //根据主键删除Riskcontrolhistory
    Integer deleteRiskcontrolhistoryByID(Integer id);

     //根据传入的Riskcontrolhistory 对象查询数据
    List<Riskcontrolhistory> getRiskcontrolhistoryList(@Param("riskcontrolhistory") Riskcontrolhistory riskcontrolhistory);

    /**
    * 新增一个Riskcontrolhistory
    * @param item  Riskcontrolhistory对象
    * @return 受影响的行数
    */
    Integer addRiskcontrolhistory(@Param("item")Riskcontrolhistory item);

    /**
    * 批量新增Riskcontrolhistory
    * @param riskcontrolhistoryList  Riskcontrolhistory集合
    */
    void addRiskcontrolhistoryList(List<Riskcontrolhistory> riskcontrolhistoryList);

    /**
    * 删除Riskcontrolhistory数据
    * @param riskcontrolhistory Riskcontrolhistory对象
    * @return 受影响的行数
    */
    Integer deleteRiskcontrolhistory(Riskcontrolhistory riskcontrolhistory);


    /**
    * 批量删除Riskcontrolhistory
    * @param riskcontrolhistoryList  Riskcontrolhistory集合
    *
    */
    void deleteRiskcontrolhistoryList(List<Riskcontrolhistory> riskcontrolhistoryList);

    //获取总条数，参数Riskcontrolhistory 对象
//    Integer getRiskcontrolhistoryByPage(Riskcontrolhistory riskcontrolhistory);

                                                                     /**
    * 根据主键更新Riskcontrolhistory
    * @param  riskcontrolhistory  Riskcontrolhistory对象
    * @return 受影响的行数
    */
    Integer updateRiskcontrolhistory(Riskcontrolhistory riskcontrolhistory);

    /**
    * 根据主键获取Riskcontrolhistory
    * @param  id  Riskcontrolhistory对象主键
    * @return  Riskcontrolhistory对象
    */
    Riskcontrolhistory getRiskcontrolhistory(Integer id);
    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(@Param("attribute") String attribute);

    /**
    * 判断对象是否已经存在
    * @param riskcontrolhistory Riskcontrolhistory 对象
    * @return 查询到的结果数
    */
    Integer  riskcontrolhistoryIsExist(Riskcontrolhistory riskcontrolhistory);

    /**
    * 根据传入的对象获取数据
    * @param riskcontrolhistory
    * @return riskcontrolhistory 对象集合
    */
    List<Riskcontrolhistory> getRiskcontrolhistoryUnique(Riskcontrolhistory riskcontrolhistory);

}