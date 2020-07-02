package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskhazardcontrolrange;
import cn.com.kingc.risk.model.Templatehazard;
import org.platform4j.model.Place;

import java.util.List;

/**
 * Title:
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 * Description:Templatehazard Service层
 *
 * @author
 * @date 2018-05-05 11:25:50 中国标准时间
 */
public interface TemplatehazardService {
    /**
     * 新增一个Templatehazard
     *
     * @param templatehazard Templatehazard对象
     * @return 是否新增成功 成功返回ture 失败返回false
     */
    Integer addTemplatehazard(Templatehazard templatehazard);

    /**
     * 批量新增Templatehazard
     *
     * @param templatehazardList Templatehazard集合
     */
    void addTemplatehazardList(List<Templatehazard> templatehazardList);

    /**
     * 删除Templatehazard数据
     *
     * @param templatehazard Templatehazard对象
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    Boolean deleteTemplatehazard(Templatehazard templatehazard);

    /**
     * 根据主键删除Templatehazard
     *
     * @param hazardID Templatehazard主键
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    Boolean deleteTemplatehazardByID(Integer hazardID);

    /**
     * 批量删除Templatehazard
     *
     * @param templatehazardList Templatehazard集合
     */
    void deleteTemplatehazardList(List<Templatehazard> templatehazardList);

    /**
     * 根据主键更新Templatehazard
     *
     * @param templatehazard Templatehazard对象
     * @return 是否更新成功 成功返回ture 失败返回false
     */
    Boolean updateTemplatehazard(Templatehazard templatehazard);

    /**
     * 根据主键获取Templatehazard
     *
     * @param hazardID Templatehazard对象主键
     * @return Templatehazard对象
     */
    Templatehazard getTemplatehazard(Integer hazardID);


    /**
     * 获取共有多少条记录，参数是Templatehazard 对象
     *
     * @param templatehazard Templatehazard 对象
     * @return 记录数
     */
    Integer getTemplatehazardCount(Templatehazard templatehazard);

    /**
     * 分页获取数据，参数是Templatehazard 对象
     *
     * @param templatehazard Templatehazard 对象
     * @return Templatehazard集合
     */
    List<Templatehazard> getTemplatehazardByPage(Templatehazard templatehazard);

    /**
     * 根据传入的Templatehazard 对象查询数据
     *
     * @param templatehazard Templatehazard 对象
     * @return Templatehazard集合
     */
    List<Templatehazard> getTemplatehazardList(Templatehazard templatehazard);

    /**
     * 获取一个数据的不重复集合
     *
     * @param attribute 对象属性名称
     * @return List<String>
     */
    List<String> getDistinctItemList(String attribute);

    /**
     * 判断对象是否已经存在
     *
     * @param templatehazard Templatehazard 对象
     * @return 存在返回true 否则返回false
     */
    Boolean templatehazardIsExist(Templatehazard templatehazard);

    /**
     * 根据传入的对象获取唯一数据
     *
     * @param templatehazard
     * @return templatehazard 对象
     */
    Templatehazard getTemplatehazardUnique(Templatehazard templatehazard);


    /**
     * 根据先辨识的风险获取分配地点和管控措施
     *
     * @param hazardID
     * @return
     */
    Templatehazard getTemplatehazardAndPlace(Integer hazardID);

    /**
     * 根据先辨识的风险获取分配地点和管控措施
     *
     * @param templatehazard
     * @return
     */
    List<Templatehazard> getTemplatehazardAndPlaceByPage(Templatehazard templatehazard);

    /**
     * 把预先辨识的风险，分配到地点上去
     *
     * @param templatehazard
     * @param places
     * @return
     */
    Boolean addRiskToPlaceList(Templatehazard templatehazard,
                               List<Place> places);

    /**
     * 为分配过的风险指定管控范围
     * @param riskhazardcontrolrange
     * @return
     */
    Boolean addRiskhazardcontrolrange(Riskhazardcontrolrange riskhazardcontrolrange);

    List<String> getDistinctRiskObject(
            String frameWorkID,
            String riskObjType);

    List<Templatehazard> getTemplatehazardByRiskObj(
            String frameWorkID,
            String riskObjName);
}

