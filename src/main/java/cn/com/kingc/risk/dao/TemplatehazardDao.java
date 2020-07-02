package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Templatehazard;
import java.util.List;
import java.util.Map;

/**
 * Title:
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 * Description:TemplatehazardDao层 对应数据库的 表
 * @date 2018-05-05 11:25:50 中国标准时间
 * @author
 * @version
 */
public interface TemplatehazardDao{

    /**
     * 新增一个Templatehazard
     * @param templatehazard  Templatehazard对象
     * @return 受影响的行数
     */
    Integer addTemplatehazard(Templatehazard templatehazard);

    /**
     * 批量新增Templatehazard
     * @param templatehazardList  Templatehazard集合
     */
    void addTemplatehazardList(List<Templatehazard> templatehazardList);

    /**
     * 删除Templatehazard数据
     * @param templatehazard Templatehazard对象
     * @return 受影响的行数
     */
    Integer deleteTemplatehazard(Templatehazard templatehazard);

    /**
     * 根据主键删除Templatehazard
     * @param hazardID  Templatehazard主键
     * @return 受影响的行数
     */
    Integer deleteTemplatehazardByID(Integer hazardID);

    /**
     * 批量删除Templatehazard
     * @param templatehazardList  Templatehazard集合
     *
     */
    void deleteTemplatehazardList(List<Templatehazard> templatehazardList);

    /**
     * 根据主键更新Templatehazard
     * @param  templatehazard  Templatehazard对象
     * @return 受影响的行数
     */
    Integer updateTemplatehazard(Templatehazard templatehazard);

    /**
     * 根据主键获取Templatehazard
     * @param  hazardID  Templatehazard对象主键
     * @return  Templatehazard对象
     */
    Templatehazard getTemplatehazard(Integer hazardID);

    /**
     * 获取共有多少条记录，参数是Templatehazard 对象
     * @param templatehazard Templatehazard 对象
     * @return 记录数
     */
    Integer getTemplatehazardCount(Templatehazard templatehazard);

    /**
     * 分页获取数据，参数是Templatehazard 对象和开始位置，结束位置
     * @param templatehazard Templatehazard 对象
     * @param pageBegin 开始位置
     * @param pageEnd 结束位置
     * @return Templatehazard集合
     */
    List<Templatehazard> getTemplatehazardByPage(@Param("templatehazard") Templatehazard templatehazard, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
     * 根据传入的Templatehazard 对象查询数据
     * @param templatehazard Templatehazard 对象
     * @return Templatehazard集合
     */
    List<Templatehazard> getTemplatehazardList(Templatehazard templatehazard);

    /**
     * 获取一个数据的不重复集合
     * @param attribute 对象属性名称
     * @return List<String>
     */
    List<String> getDistinctItemList(@Param("attribute") String attribute);

    /**
     * 判断对象是否已经存在
     * @param templatehazard Templatehazard 对象
     * @return 查询到的结果数
     */
    Integer  templatehazardIsExist(Templatehazard templatehazard);

    /**
     * 根据传入的对象获取数据
     * @param templatehazard
     * @return templatehazard 对象集合
     */
    List<Templatehazard> getTemplatehazardUnique(Templatehazard templatehazard);


    Templatehazard getTemplatehazardAndPlace(Integer hazardID);

    List<Templatehazard> getTemplatehazardAndPlaceByPage(
            @Param("templatehazard") Templatehazard templatehazard,
            @Param("pageBegin") Integer pageBegin,
            @Param("pageEnd") Integer pageEnd);

    List<String> getDistinctRiskObject(
            @Param("frameWorkID")String frameWorkID,
            @Param("riskObjType")String riskObjType);

    List<Templatehazard> getTemplatehazardByRiskObj(
            @Param("frameWorkID")String frameWorkID,
            @Param("riskObjName")String riskObjName);
}