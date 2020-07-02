package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskrelationhiddenandaccident;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:Riskrelationhiddenandaccident Service层
* @date 2018-09-27 16:07:12 中国标准时间
* @author
* @version
*/
public interface RiskrelationhiddenandaccidentService {
    /**
    * 新增一个Riskrelationhiddenandaccident
    * @param riskrelationhiddenandaccident  Riskrelationhiddenandaccident对象
    * @return 是否新增成功 成功返回ture 失败返回false
    */
    Boolean addRiskrelationhiddenandaccident(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

    /**
    * 批量新增Riskrelationhiddenandaccident
    * @param riskrelationhiddenandaccidentList  Riskrelationhiddenandaccident集合
    */
    void addRiskrelationhiddenandaccidentList(List<Riskrelationhiddenandaccident> riskrelationhiddenandaccidentList);

    /**
    * 删除Riskrelationhiddenandaccident数据
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident对象
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    Boolean deleteRiskrelationhiddenandaccident(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

    /**
    * 根据主键删除Riskrelationhiddenandaccident
    * @param riskRelationHiddenAndAccidentID  Riskrelationhiddenandaccident主键
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    Boolean deleteRiskrelationhiddenandaccidentByID(Integer riskRelationHiddenAndAccidentID);

    /**
    * 批量删除Riskrelationhiddenandaccident
    * @param riskrelationhiddenandaccidentList  Riskrelationhiddenandaccident集合
    *
    */
    void deleteRiskrelationhiddenandaccidentList(List<Riskrelationhiddenandaccident> riskrelationhiddenandaccidentList);

    /**
    * 根据主键更新Riskrelationhiddenandaccident
    * @param  riskrelationhiddenandaccident  Riskrelationhiddenandaccident对象
    * @return 是否更新成功 成功返回ture 失败返回false
    */
    Boolean updateRiskrelationhiddenandaccident(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

    /**
    * 根据主键获取Riskrelationhiddenandaccident
    * @param  riskRelationHiddenAndAccidentID  Riskrelationhiddenandaccident对象主键
    * @return  Riskrelationhiddenandaccident对象
    */
    Riskrelationhiddenandaccident getRiskrelationhiddenandaccident(Integer riskRelationHiddenAndAccidentID);



    /**
    * 获取共有多少条记录，参数是Riskrelationhiddenandaccident 对象
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident 对象
    * @return 记录数
    */
    Integer getRiskrelationhiddenandaccidentCount(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

    /**
    * 分页获取数据，参数是Riskrelationhiddenandaccident 对象
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident 对象
    * @return Riskrelationhiddenandaccident集合
    */
    List<Riskrelationhiddenandaccident> getRiskrelationhiddenandaccidentByPage(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

    /**
    * 根据传入的Riskrelationhiddenandaccident 对象查询数据
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident 对象
    * @return Riskrelationhiddenandaccident集合
    */
    List<Riskrelationhiddenandaccident>  getRiskrelationhiddenandaccidentList(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(String attribute);

    /**
    * 判断对象是否已经存在
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident 对象
    * @return 存在返回true 否则返回false
    */
    Boolean  riskrelationhiddenandaccidentIsExist(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

    /**
    * 根据传入的对象获取唯一数据
    * @param riskrelationhiddenandaccident
    * @return riskrelationhiddenandaccident 对象
    */
    Riskrelationhiddenandaccident getRiskrelationhiddenandaccidentUnique(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

    }