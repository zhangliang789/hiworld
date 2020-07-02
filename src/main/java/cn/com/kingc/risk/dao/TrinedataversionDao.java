package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Trinedataversion;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:TrinedataversionDao层 对应数据库的 表
* @date 2018-06-28 09:25:27 中国标准时间
* @author
* @version
*/
public interface TrinedataversionDao{

    /**
    * 新增一个Trinedataversion
    * @param trinedataversion  Trinedataversion对象
    * @return 受影响的行数
    */
    Integer addTrinedataversion(Trinedataversion trinedataversion);

    /**
    * 批量新增Trinedataversion
    * @param trinedataversionList  Trinedataversion集合
    */
    void addTrinedataversionList(List<Trinedataversion> trinedataversionList);

    /**
    * 删除Trinedataversion数据
    * @param trinedataversion Trinedataversion对象
    * @return 受影响的行数
    */
    Integer deleteTrinedataversion(Trinedataversion trinedataversion);

    /**
    * 根据主键删除Trinedataversion
    * @param frameWorkID  Trinedataversion主键
    * @return 受影响的行数
    */
    Integer deleteTrinedataversionByID(String frameWorkID);

    /**
    * 批量删除Trinedataversion
    * @param trinedataversionList  Trinedataversion集合
    *
    */
    void deleteTrinedataversionList(List<Trinedataversion> trinedataversionList);

    /**
    * 根据主键更新Trinedataversion
    * @param  trinedataversion  Trinedataversion对象
    * @return 受影响的行数
    */
    Integer updateTrinedataversion(Trinedataversion trinedataversion);

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
    * 分页获取数据，参数是Trinedataversion 对象和开始位置，结束位置
    * @param trinedataversion Trinedataversion 对象
    * @param pageBegin 开始位置
    * @param pageEnd 结束位置
    * @return Trinedataversion集合
    */
    List<Trinedataversion> getTrinedataversionByPage(@Param("trinedataversion") Trinedataversion trinedataversion,@Param("pageBegin") Integer pageBegin,@Param("pageEnd") Integer pageEnd);

    /**
    * 根据传入的Trinedataversion 对象查询数据
    * @param trinedataversion Trinedataversion 对象
    * @return Trinedataversion集合
    */
    List<Trinedataversion> getTrinedataversionList(Trinedataversion trinedataversion);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(@Param("attribute") String attribute);

    /**
    * 判断对象是否已经存在
    * @param trinedataversion Trinedataversion 对象
    * @return 查询到的结果数
    */
    Integer  trinedataversionIsExist(Trinedataversion trinedataversion);

    /**
    * 根据传入的对象获取数据
    * @param trinedataversion
    * @return trinedataversion 对象集合
    */
    List<Trinedataversion> getTrinedataversionUnique(Trinedataversion trinedataversion);

}