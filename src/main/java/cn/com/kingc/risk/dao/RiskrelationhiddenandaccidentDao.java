package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskrelationhiddenandaccident;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:RiskrelationhiddenandaccidentDao层 对应数据库的 表
* @date 2018-09-27 16:07:12 中国标准时间
* @author
* @version
*/
public interface RiskrelationhiddenandaccidentDao{

    /**
    * 新增一个Riskrelationhiddenandaccident
    * @param riskrelationhiddenandaccident  Riskrelationhiddenandaccident对象
    * @return 受影响的行数
    */
    Integer addRiskrelationhiddenandaccident(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

    /**
    * 批量新增Riskrelationhiddenandaccident
    * @param riskrelationhiddenandaccidentList  Riskrelationhiddenandaccident集合
    */
    void addRiskrelationhiddenandaccidentList(List<Riskrelationhiddenandaccident> riskrelationhiddenandaccidentList);

    /**
    * 删除Riskrelationhiddenandaccident数据
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident对象
    * @return 受影响的行数
    */
    Integer deleteRiskrelationhiddenandaccident(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

    /**
    * 根据主键删除Riskrelationhiddenandaccident
    * @param riskRelationHiddenAndAccidentID  Riskrelationhiddenandaccident主键
    * @return 受影响的行数
    */
    Integer deleteRiskrelationhiddenandaccidentByID(Integer riskRelationHiddenAndAccidentID);

    /**
    * 批量删除Riskrelationhiddenandaccident
    * @param riskrelationhiddenandaccidentList  Riskrelationhiddenandaccident集合
    *
    */
    void deleteRiskrelationhiddenandaccidentList(List<Riskrelationhiddenandaccident> riskrelationhiddenandaccidentList);

    /**
    * 根据主键更新Riskrelationhiddenandaccident
    * @param  riskrelationhiddenandaccident  Riskrelationhiddenandaccident对象
    * @return 受影响的行数
    */
    Integer updateRiskrelationhiddenandaccident(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

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
    * 分页获取数据，参数是Riskrelationhiddenandaccident 对象和开始位置，结束位置
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident 对象
    * @param pageBegin 开始位置
    * @param pageEnd 结束位置
    * @return Riskrelationhiddenandaccident集合
    */
    List<Riskrelationhiddenandaccident> getRiskrelationhiddenandaccidentByPage(@Param("riskrelationhiddenandaccident") Riskrelationhiddenandaccident riskrelationhiddenandaccident, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
    * 根据传入的Riskrelationhiddenandaccident 对象查询数据
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident 对象
    * @return Riskrelationhiddenandaccident集合
    */
    List<Riskrelationhiddenandaccident> getRiskrelationhiddenandaccidentList(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(@Param("attribute") String attribute);

    /**
    * 判断对象是否已经存在
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident 对象
    * @return 查询到的结果数
    */
    Integer  riskrelationhiddenandaccidentIsExist(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

    /**
    * 根据传入的对象获取数据
    * @param riskrelationhiddenandaccident
    * @return riskrelationhiddenandaccident 对象集合
    */
    List<Riskrelationhiddenandaccident> getRiskrelationhiddenandaccidentUnique(Riskrelationhiddenandaccident riskrelationhiddenandaccident);

}