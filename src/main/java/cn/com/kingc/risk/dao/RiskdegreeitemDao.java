package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskdegreeitem;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:RiskdegreeitemDao层 对应数据库的 表
* @date 2017-11-22 14:14:47 中国标准时间
* @author
* @version
*/
public interface RiskdegreeitemDao{

    /**
    * 新增一个Riskdegreeitem
    * @param riskdegreeitem  Riskdegreeitem对象
    * @return 受影响的行数
    */
    Integer addRiskdegreeitem(Riskdegreeitem riskdegreeitem);

    /**
    * 批量新增Riskdegreeitem
    * @param riskdegreeitemList  Riskdegreeitem集合
    */
    void addRiskdegreeitemList(List<Riskdegreeitem> riskdegreeitemList);

    /**
    * 删除Riskdegreeitem数据
    * @param riskdegreeitem Riskdegreeitem对象
    * @return 受影响的行数
    */
    Integer deleteRiskdegreeitem(Riskdegreeitem riskdegreeitem);

    /**
    * 根据主键删除Riskdegreeitem
    * @param riskDegreeItemID  Riskdegreeitem主键
    * @return 受影响的行数
    */
    Integer deleteRiskdegreeitemByID(Integer riskDegreeItemID);

    /**
    * 批量删除Riskdegreeitem
    * @param riskdegreeitemList  Riskdegreeitem集合
    *
    */
    void deleteRiskdegreeitemList(List<Riskdegreeitem> riskdegreeitemList);

    /**
    * 根据主键更新Riskdegreeitem
    * @param  riskdegreeitem  Riskdegreeitem对象
    * @return 受影响的行数
    */
    Integer updateRiskdegreeitem(Riskdegreeitem riskdegreeitem);

    /**
    * 根据主键获取Riskdegreeitem
    * @param  riskDegreeItemID  Riskdegreeitem对象主键
    * @return  Riskdegreeitem对象
    */
    Riskdegreeitem getRiskdegreeitem(Integer riskDegreeItemID);

    /**
    * 获取共有多少条记录
    * @return 记录数
    */
    Integer getRiskdegreeitemCount();

    /**
    * 分页获取Riskdegreeitem数据
    * @param pageBegin 开始位置
    * @param pageEnd 结束位置
    * @return Riskdegreeitem集合
    */
    List<Riskdegreeitem> getRiskdegreeitemByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
    * 获取共有多少条记录，参数是Riskdegreeitem 对象
    * @param riskdegreeitem Riskdegreeitem 对象
    * @return 记录数
    */
    Integer getRiskdegreeitemCountByRiskdegreeitem(Riskdegreeitem riskdegreeitem);

    /**
    * 分页获取数据，参数是Riskdegreeitem 对象和开始位置，结束位置
    * @param riskdegreeitem Riskdegreeitem 对象
    * @param pageBegin 开始位置
    * @param pageEnd 结束位置
    * @return Riskdegreeitem集合
    */
    List<Riskdegreeitem> getRiskdegreeitemByPageAndRiskdegreeitem(@Param("riskdegreeitem") Riskdegreeitem riskdegreeitem, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
    * 根据传入的Riskdegreeitem 对象查询数据
    * @param riskdegreeitem Riskdegreeitem 对象
    * @return Riskdegreeitem集合
    */
    List<Riskdegreeitem> getRiskdegreeitemList(Riskdegreeitem riskdegreeitem);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(@Param("attribute") String attribute);

    /**
    * 判断对象是否已经存在
    * @param riskdegreeitem Riskdegreeitem 对象
    * @return 查询到的结果数
    */
    Integer  riskdegreeitemIsExist(Riskdegreeitem riskdegreeitem);

    /**
    * 根据传入的对象获取数据
    * @param riskdegreeitem
    * @return riskdegreeitem 对象集合
    */
    List<Riskdegreeitem> getRiskdegreeitemUnique(Riskdegreeitem riskdegreeitem);

}