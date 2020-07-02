package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Synsetting;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:SynsettingDao层 对应数据库的 表
* @date 2018-01-09 16:58:13 中国标准时间
* @author
* @version
*/
public interface SynsettingDao{

    /**
    * 新增一个Synsetting
    * @param synsetting  Synsetting对象
    * @return 受影响的行数
    */
    Integer addSynsetting(Synsetting synsetting);

    /**
    * 批量新增Synsetting
    * @param synsettingList  Synsetting集合
    */
    void addSynsettingList(List<Synsetting> synsettingList);

    /**
    * 删除Synsetting数据
    * @param synsetting Synsetting对象
    * @return 受影响的行数
    */
    Integer deleteSynsetting(Synsetting synsetting);

    /**
    * 根据主键删除Synsetting
    * @param frameWorkID  Synsetting主键
    * @return 受影响的行数
    */
    Integer deleteSynsettingByID(String frameWorkID);

    /**
    * 批量删除Synsetting
    * @param synsettingList  Synsetting集合
    *
    */
    void deleteSynsettingList(List<Synsetting> synsettingList);

    /**
    * 根据主键更新Synsetting
    * @param  synsetting  Synsetting对象
    * @return 受影响的行数
    */
    Integer updateSynsetting(Synsetting synsetting);

    /**
    * 根据主键获取Synsetting
    * @param  frameWorkID  Synsetting对象主键
    * @return  Synsetting对象
    */
    Synsetting getSynsetting(String frameWorkID);


    /**
    * 判断对象是否已经存在
    * @param synsetting Synsetting 对象
    * @return 查询到的结果数
    */
    Integer  synsettingIsExist(Synsetting synsetting);


}