package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Syncspecialhistory;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:SyncspecialhistoryDao层 对应数据库的 表
* @date 2018-01-09 18:28:06 中国标准时间
* @author
* @version
*/
public interface SyncspecialhistoryDao{

    /**
    * 新增一个Syncspecialhistory
    * @param syncspecialhistory  Syncspecialhistory对象
    * @return 受影响的行数
    */
    Integer addSyncspecialhistory(Syncspecialhistory syncspecialhistory);

    /**
    * 批量新增Syncspecialhistory
    * @param syncspecialhistoryList  Syncspecialhistory集合
    */
    void addSyncspecialhistoryList(List<Syncspecialhistory> syncspecialhistoryList);

    /**
    * 删除Syncspecialhistory数据
    * @param syncspecialhistory Syncspecialhistory对象
    * @return 受影响的行数
    */
    Integer deleteSyncspecialhistory(Syncspecialhistory syncspecialhistory);

    /**
    * 根据主键删除Syncspecialhistory
    * @param coalMineName  Syncspecialhistory主键
    * @return 受影响的行数
    */
    Integer deleteSyncspecialhistoryByID(String coalMineName);

    /**
    * 批量删除Syncspecialhistory
    * @param syncspecialhistoryList  Syncspecialhistory集合
    *
    */
    void deleteSyncspecialhistoryList(List<Syncspecialhistory> syncspecialhistoryList);

    /**
    * 根据主键更新Syncspecialhistory
    * @param  syncspecialhistory  Syncspecialhistory对象
    * @return 受影响的行数
    */
    Integer updateSyncspecialhistory(Syncspecialhistory syncspecialhistory);

    /**
    * 根据主键获取Syncspecialhistory
    * @param  coalMineName  Syncspecialhistory对象主键
    * @return  Syncspecialhistory对象
    */
    Syncspecialhistory getSyncspecialhistory(String coalMineName);




    /**
    * 获取共有多少条记录，参数是Syncspecialhistory 对象
    * @param syncspecialhistory Syncspecialhistory 对象
    * @return 记录数
    */
    Integer getSyncspecialhistoryCount(Syncspecialhistory syncspecialhistory);

    /**
    * 分页获取数据，参数是Syncspecialhistory 对象和开始位置，结束位置
    * @param syncspecialhistory Syncspecialhistory 对象
    * @param pageBegin 开始位置
    * @param pageEnd 结束位置
    * @return Syncspecialhistory集合
    */
    List<Syncspecialhistory> getSyncspecialhistoryByPage(@Param("syncspecialhistory") Syncspecialhistory syncspecialhistory, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
    * 根据传入的Syncspecialhistory 对象查询数据
    * @param syncspecialhistory Syncspecialhistory 对象
    * @return Syncspecialhistory集合
    */
    List<Syncspecialhistory> getSyncspecialhistoryList(Syncspecialhistory syncspecialhistory);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(@Param("attribute") String attribute);

    /**
    * 判断对象是否已经存在
    * @param syncspecialhistory Syncspecialhistory 对象
    * @return 查询到的结果数
    */
    Integer  syncspecialhistoryIsExist(Syncspecialhistory syncspecialhistory);

    /**
    * 根据传入的对象获取数据
    * @param syncspecialhistory
    * @return syncspecialhistory 对象集合
    */
    List<Syncspecialhistory> getSyncspecialhistoryUnique(Syncspecialhistory syncspecialhistory);

}