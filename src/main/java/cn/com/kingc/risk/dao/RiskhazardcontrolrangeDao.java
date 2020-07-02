package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskhazardcontrolrange;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:RiskhazardcontrolrangeDao层 对应数据库的 表
* @date 2018-05-05 11:55:54 中国标准时间
* @author
* @version
*/
public interface RiskhazardcontrolrangeDao{

    /**
    * 新增一个Riskhazardcontrolrange
    * @param riskhazardcontrolrange  Riskhazardcontrolrange对象
    * @return 受影响的行数
    */
    Integer addRiskhazardcontrolrange(Riskhazardcontrolrange riskhazardcontrolrange);

    /**
    * 批量新增Riskhazardcontrolrange
    * @param riskhazardcontrolrangeList  Riskhazardcontrolrange集合
    */
    void addRiskhazardcontrolrangeList(List<Riskhazardcontrolrange> riskhazardcontrolrangeList);

    /**
    * 删除Riskhazardcontrolrange数据
    * @param riskhazardcontrolrange Riskhazardcontrolrange对象
    * @return 受影响的行数
    */
    Integer deleteRiskhazardcontrolrange(Riskhazardcontrolrange riskhazardcontrolrange);

    /**
    * 根据主键删除Riskhazardcontrolrange
    * @param riskSiteControlRangeID  Riskhazardcontrolrange主键
    * @return 受影响的行数
    */
    Integer deleteRiskhazardcontrolrangeByID(Integer riskSiteControlRangeID);

    /**
    * 批量删除Riskhazardcontrolrange
    * @param riskhazardcontrolrangeList  Riskhazardcontrolrange集合
    *
    */
    void deleteRiskhazardcontrolrangeList(List<Riskhazardcontrolrange> riskhazardcontrolrangeList);

    /**
    * 根据主键更新Riskhazardcontrolrange
    * @param  riskhazardcontrolrange  Riskhazardcontrolrange对象
    * @return 受影响的行数
    */
    Integer updateRiskhazardcontrolrange(Riskhazardcontrolrange riskhazardcontrolrange);

    /**
    * 根据主键获取Riskhazardcontrolrange
    * @param  riskSiteControlRangeID  Riskhazardcontrolrange对象主键
    * @return  Riskhazardcontrolrange对象
    */
    Riskhazardcontrolrange getRiskhazardcontrolrange(Integer riskSiteControlRangeID);




    /**
    * 获取共有多少条记录，参数是Riskhazardcontrolrange 对象
    * @param riskhazardcontrolrange Riskhazardcontrolrange 对象
    * @return 记录数
    */
    Integer getRiskhazardcontrolrangeCount(Riskhazardcontrolrange riskhazardcontrolrange);

    /**
    * 分页获取数据，参数是Riskhazardcontrolrange 对象和开始位置，结束位置
    * @param riskhazardcontrolrange Riskhazardcontrolrange 对象
    * @param pageBegin 开始位置
    * @param pageEnd 结束位置
    * @return Riskhazardcontrolrange集合
    */
    List<Riskhazardcontrolrange> getRiskhazardcontrolrangeByPage(@Param("riskhazardcontrolrange") Riskhazardcontrolrange riskhazardcontrolrange, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
    * 根据传入的Riskhazardcontrolrange 对象查询数据
    * @param riskhazardcontrolrange Riskhazardcontrolrange 对象
    * @return Riskhazardcontrolrange集合
    */
    List<Riskhazardcontrolrange> getRiskhazardcontrolrangeList(Riskhazardcontrolrange riskhazardcontrolrange);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(@Param("attribute") String attribute);

    /**
    * 判断对象是否已经存在
    * @param riskhazardcontrolrange Riskhazardcontrolrange 对象
    * @return 查询到的结果数
    */
    Integer  riskhazardcontrolrangeIsExist(Riskhazardcontrolrange riskhazardcontrolrange);

    /**
    * 根据传入的对象获取数据
    * @param riskhazardcontrolrange
    * @return riskhazardcontrolrange 对象集合
    */
    List<Riskhazardcontrolrange> getRiskhazardcontrolrangeUnique(Riskhazardcontrolrange riskhazardcontrolrange);

    Integer updateRiskhazardcontrolrangeByRiskId(Riskhazardcontrolrange riskhazardcontrolrange);
}