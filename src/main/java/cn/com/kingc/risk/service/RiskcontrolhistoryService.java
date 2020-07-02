package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskcontrolhistory;
import java.util.List;

/**
* Title:管控历史记录
* Copyright: Copyright (c) 2018 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:Riskcontrolhistory Service层
* @date 2018-09-05 13:29:53 中国标准时间
* @author
* @version
*/
public interface RiskcontrolhistoryService {

    //获取有多少条历史管控情况
    Integer getRiskcontrolhistoryCount(Riskcontrolhistory riskcontrolhistory);

    //带有时间段查询条件下获取总条数
    Integer getRiskcontrolhistoryCountByTime(Riskcontrolhistory riskcontrolhistory);

    //分页获取数据，参数是Riskcontrolhistory 对象
    List<Riskcontrolhistory> getRiskcontrolhistoryByPage(Riskcontrolhistory riskcontrolhistory);

    //带有时间段查询条件下分页获取数据，参数是Riskcontrolhistory 对象
    List<Riskcontrolhistory> getRiskcontrolhistoryByPageByTime(Riskcontrolhistory riskcontrolhistory);


    //根据id删除Riskcontrolhistory
    Boolean deleteRiskcontrolhistoryByID(Integer id);

    //根据传入的Riskcontrolhistory 对象查询数据
    List<Riskcontrolhistory>  getRiskcontrolhistoryList(Riskcontrolhistory riskcontrolhistory);


    /**
    * 新增一个Riskcontrolhistory
    * @param riskcontrolhistory  Riskcontrolhistory对象
    * @return 是否新增成功 成功返回ture 失败返回false
    */
    Boolean addRiskcontrolhistory(Riskcontrolhistory riskcontrolhistory);

    /**
    * 批量新增Riskcontrolhistory
    * @param riskcontrolhistoryList  Riskcontrolhistory集合
    */
    void addRiskcontrolhistoryList(List<Riskcontrolhistory> riskcontrolhistoryList);

    /**
    * 删除Riskcontrolhistory数据
    * @param riskcontrolhistory Riskcontrolhistory对象
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    Boolean deleteRiskcontrolhistory(Riskcontrolhistory riskcontrolhistory);

    /**
    * 批量删除Riskcontrolhistory
    * @param riskcontrolhistoryList  Riskcontrolhistory集合
    *
    */
    void deleteRiskcontrolhistoryList(List<Riskcontrolhistory> riskcontrolhistoryList);

    /**
    * 根据主键更新Riskcontrolhistory
    * @param  riskcontrolhistory  Riskcontrolhistory对象
    * @return 是否更新成功 成功返回ture 失败返回false
    */
    Boolean updateRiskcontrolhistory(Riskcontrolhistory riskcontrolhistory);

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
    List<String> getDistinctItemList(String attribute);

    /**
    * 判断对象是否已经存在
    * @param riskcontrolhistory Riskcontrolhistory 对象
    * @return 存在返回true 否则返回false
    */
    Boolean  riskcontrolhistoryIsExist(Riskcontrolhistory riskcontrolhistory);

    /**
    * 根据传入的对象获取唯一数据
    * @param riskcontrolhistory
    * @return riskcontrolhistory 对象
    */
    Riskcontrolhistory getRiskcontrolhistoryUnique(Riskcontrolhistory riskcontrolhistory);

}