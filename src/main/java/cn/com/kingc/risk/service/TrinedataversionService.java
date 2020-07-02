package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Trinedataversion;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:Trinedataversion Service层
* @date 2018-06-28 09:25:27 中国标准时间
* @author
* @version
*/
public interface TrinedataversionService {
    /**
    * 新增一个Trinedataversion
    * @param trinedataversion  Trinedataversion对象
    * @return 是否新增成功 成功返回ture 失败返回false
    */
    Boolean addTrinedataversion(Trinedataversion trinedataversion);

    /**
    * 批量新增Trinedataversion
    * @param trinedataversionList  Trinedataversion集合
    */
    void addTrinedataversionList(List<Trinedataversion> trinedataversionList);

    /**
    * 删除Trinedataversion数据
    * @param trinedataversion Trinedataversion对象
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    Boolean deleteTrinedataversion(Trinedataversion trinedataversion);

    /**
    * 根据主键删除Trinedataversion
    * @param frameWorkID  Trinedataversion主键
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    Boolean deleteTrinedataversionByID(String frameWorkID);

    /**
    * 批量删除Trinedataversion
    * @param trinedataversionList  Trinedataversion集合
    *
    */
    void deleteTrinedataversionList(List<Trinedataversion> trinedataversionList);

    /**
    * 根据主键更新Trinedataversion
    * @param  trinedataversion  Trinedataversion对象
    * @return 是否更新成功 成功返回ture 失败返回false
    */
    Boolean updateTrinedataversion(Trinedataversion trinedataversion);

    /**
    * 根据主键获取Trinedataversion
    * @param  frameWorkID  Trinedataversion对象主键
    * @return  Trinedataversion对象
    */
    Trinedataversion getTrinedataversion(String frameWorkID);



    /**
    * 获取共有多少条记录，参数是Trinedataversion 对象
    * @param trinedataversion Trinedataversion 对象
    * @return 记录数
    */
    Integer getTrinedataversionCount(Trinedataversion trinedataversion);

    /**
    * 分页获取数据，参数是Trinedataversion 对象
    * @param trinedataversion Trinedataversion 对象
    * @return Trinedataversion集合
    */
    List<Trinedataversion> getTrinedataversionByPage(Trinedataversion trinedataversion);

    /**
    * 根据传入的Trinedataversion 对象查询数据
    * @param trinedataversion Trinedataversion 对象
    * @return Trinedataversion集合
    */
    List<Trinedataversion>  getTrinedataversionList(Trinedataversion trinedataversion);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(String attribute);

    /**
    * 判断对象是否已经存在
    * @param trinedataversion Trinedataversion 对象
    * @return 存在返回true 否则返回false
    */
    Boolean  trinedataversionIsExist(Trinedataversion trinedataversion);

    /**
    * 根据传入的对象获取唯一数据
    * @param trinedataversion
    * @return trinedataversion 对象
    */
    Trinedataversion getTrinedataversionUnique(Trinedataversion trinedataversion);

    }