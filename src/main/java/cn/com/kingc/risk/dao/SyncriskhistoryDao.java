package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Syncriskhistory;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:SyncriskhistoryDao层 对应数据库的 表
* @date 2018-01-10 09:34:56 中国标准时间
* @author
* @version
*/
public interface SyncriskhistoryDao{

    /**
    * 新增一个Syncriskhistory
    * @param syncriskhistory  Syncriskhistory对象
    * @return 受影响的行数
    */
    Integer addSyncriskhistory(Syncriskhistory syncriskhistory);

    /**
    * 批量新增Syncriskhistory
    * @param syncriskhistoryList  Syncriskhistory集合
    */
    void addSyncriskhistoryList(List<Syncriskhistory> syncriskhistoryList);

    /**
    * 删除Syncriskhistory数据
    * @param syncriskhistory Syncriskhistory对象
    * @return 受影响的行数
    */
    Integer deleteSyncriskhistory(Syncriskhistory syncriskhistory);

    /**
    * 根据主键删除Syncriskhistory
    * @param fSynHistoryID  Syncriskhistory主键
    * @return 受影响的行数
    */
    Integer deleteSyncriskhistoryByID(Integer fSynHistoryID);

    /**
    * 批量删除Syncriskhistory
    * @param syncriskhistoryList  Syncriskhistory集合
    *
    */
    void deleteSyncriskhistoryList(List<Syncriskhistory> syncriskhistoryList);

    /**
    * 根据主键更新Syncriskhistory
    * @param  syncriskhistory  Syncriskhistory对象
    * @return 受影响的行数
    */
    Integer updateSyncriskhistory(Syncriskhistory syncriskhistory);

    /**
    * 根据主键获取Syncriskhistory
    * @param  fSynHistoryID  Syncriskhistory对象主键
    * @return  Syncriskhistory对象
    */
    Syncriskhistory getSyncriskhistory(Integer fSynHistoryID);




    /**
    * 获取共有多少条记录，参数是Syncriskhistory 对象
    * @param syncriskhistory Syncriskhistory 对象
    * @return 记录数
    */
    Integer getSyncriskhistoryCount(Syncriskhistory syncriskhistory);

    /**
    * 分页获取数据，参数是Syncriskhistory 对象和开始位置，结束位置
    * @param syncriskhistory Syncriskhistory 对象
    * @param pageBegin 开始位置
    * @param pageEnd 结束位置
    * @return Syncriskhistory集合
    */
    List<Syncriskhistory> getSyncriskhistoryByPage(@Param("syncriskhistory") Syncriskhistory syncriskhistory, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
    * 根据传入的Syncriskhistory 对象查询数据
    * @param syncriskhistory Syncriskhistory 对象
    * @return Syncriskhistory集合
    */
    List<Syncriskhistory> getSyncriskhistoryList(Syncriskhistory syncriskhistory);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(@Param("attribute") String attribute);

    /**
    * 判断对象是否已经存在
    * @param syncriskhistory Syncriskhistory 对象
    * @return 查询到的结果数
    */
    Integer  syncriskhistoryIsExist(Syncriskhistory syncriskhistory);

    /**
    * 根据传入的对象获取数据
    * @param syncriskhistory
    * @return syncriskhistory 对象集合
    */
    List<Syncriskhistory> getSyncriskhistoryUnique(Syncriskhistory syncriskhistory);

}