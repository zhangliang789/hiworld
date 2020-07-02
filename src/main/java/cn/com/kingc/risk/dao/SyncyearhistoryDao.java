package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Syncyearhistory;
import java.util.List;
import java.util.Map;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:SyncyearhistoryDao层 对应数据库的 表
* @date 2018-01-09 17:36:18 中国标准时间
* @author
* @version
*/
public interface SyncyearhistoryDao{

    /**
    * 新增一个Syncyearhistory
    * @param syncyearhistory  Syncyearhistory对象
    * @return 受影响的行数
    */
    Integer addSyncyearhistory(Syncyearhistory syncyearhistory);

    /**
    * 批量新增Syncyearhistory
    * @param syncyearhistoryList  Syncyearhistory集合
    */
    void addSyncyearhistoryList(List<Syncyearhistory> syncyearhistoryList);

    /**
    * 删除Syncyearhistory数据
    * @param syncyearhistory Syncyearhistory对象
    * @return 受影响的行数
    */
    Integer deleteSyncyearhistory(Syncyearhistory syncyearhistory);

    /**
    * 根据主键删除Syncyearhistory
    * @param coalMineName  Syncyearhistory主键
    * @return 受影响的行数
    */
    Integer deleteSyncyearhistoryByID(String coalMineName);

    /**
    * 批量删除Syncyearhistory
    * @param syncyearhistoryList  Syncyearhistory集合
    *
    */
    void deleteSyncyearhistoryList(List<Syncyearhistory> syncyearhistoryList);

    /**
    * 根据主键更新Syncyearhistory
    * @param  syncyearhistory  Syncyearhistory对象
    * @return 受影响的行数
    */
    Integer updateSyncyearhistory(Syncyearhistory syncyearhistory);

    /**
    * 根据主键获取Syncyearhistory
    * @param  coalMineName  Syncyearhistory对象主键
    * @return  Syncyearhistory对象
    */
    Syncyearhistory getSyncyearhistory(String coalMineName);




    /**
    * 获取共有多少条记录，参数是Syncyearhistory 对象
    * @param syncyearhistory Syncyearhistory 对象
    * @return 记录数
    */
    Integer getSyncyearhistoryCount(Syncyearhistory syncyearhistory);

    /**
    * 分页获取数据，参数是Syncyearhistory 对象和开始位置，结束位置
    * @param syncyearhistory Syncyearhistory 对象
    * @param pageBegin 开始位置
    * @param pageEnd 结束位置
    * @return Syncyearhistory集合
    */
    List<Syncyearhistory> getSyncyearhistoryByPage(@Param("syncyearhistory") Syncyearhistory syncyearhistory, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
    * 根据传入的Syncyearhistory 对象查询数据
    * @param syncyearhistory Syncyearhistory 对象
    * @return Syncyearhistory集合
    */
    List<Map<String,Object>> getSyncyearhistoryList(Syncyearhistory syncyearhistory);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(@Param("attribute") String attribute);

    /**
    * 判断对象是否已经存在
    * @param syncyearhistory Syncyearhistory 对象
    * @return 查询到的结果数
    */
    Integer  syncyearhistoryIsExist(Syncyearhistory syncyearhistory);

    /**
    * 根据传入的对象获取数据
    * @param syncyearhistory
    * @return syncyearhistory 对象集合
    */
    List<Syncyearhistory> getSyncyearhistoryUnique(Syncyearhistory syncyearhistory);

}