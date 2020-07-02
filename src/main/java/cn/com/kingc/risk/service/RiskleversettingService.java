package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskleversetting;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:Riskleversetting Service层
* @date 2017-11-22 14:24:08 中国标准时间
* @author
* @version
*/
public interface RiskleversettingService {
    /**
    * 新增一个Riskleversetting
    * @param riskleversetting  Riskleversetting对象
    * @return 是否新增成功 成功返回ture 失败返回false
    */
    Boolean addRiskleversetting(Riskleversetting riskleversetting);

    /**
    * 批量新增Riskleversetting
    * @param riskleversettingList  Riskleversetting集合
    */
    void addRiskleversettingList(List<Riskleversetting> riskleversettingList);

    /**
    * 删除Riskleversetting数据
    * @param riskleversetting Riskleversetting对象
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    Boolean deleteRiskleversetting(Riskleversetting riskleversetting);

    /**
    * 根据主键删除Riskleversetting
    * @param riskLevelSettingID  Riskleversetting主键
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    Boolean deleteRiskleversettingByID(Integer riskLevelSettingID);

    /**
    * 批量删除Riskleversetting
    * @param riskleversettingList  Riskleversetting集合
    *
    */
    void deleteRiskleversettingList(List<Riskleversetting> riskleversettingList);

    /**
    * 根据主键更新Riskleversetting
    * @param  riskleversetting  Riskleversetting对象
    * @return 是否更新成功 成功返回ture 失败返回false
    */
    Boolean updateRiskleversetting(Riskleversetting riskleversetting);

    /**
    * 根据主键获取Riskleversetting
    * @param  riskLevelSettingID  Riskleversetting对象主键
    * @return  Riskleversetting对象
    */
    Riskleversetting getRiskleversetting(Integer riskLevelSettingID);

    /**
    * 获取共有多少条记录
    * @return 记录数
    */
    Integer getRiskleversettingCount();

    /**
    * 分页获取Riskleversetting数据
    * @param pagesize 页面大小
    * @param page 页码
    * @return Riskleversetting集合
    */
    List<Riskleversetting> getRiskleversettingByPage(int pagesize, int page);

    /**
    * 获取共有多少条记录，参数是Riskleversetting 对象
    * @param riskleversetting Riskleversetting 对象
    * @return 记录数
    */
    Integer getRiskleversettingCountByRiskleversetting(Riskleversetting riskleversetting);

    /**
    * 分页获取数据，参数是Riskleversetting 对象
    * @param riskleversetting Riskleversetting 对象
    * @return Riskleversetting集合
    */
    List<Riskleversetting> getRiskleversettingByPageAndRiskleversetting(Riskleversetting riskleversetting);

    /**
    * 根据传入的Riskleversetting 对象查询数据
    * @param riskleversetting Riskleversetting 对象
    * @return Riskleversetting集合
    */
    List<Riskleversetting>  getRiskleversettingList(Riskleversetting riskleversetting);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(String attribute);

    /**
    * 判断对象是否已经存在
    * @param riskleversetting Riskleversetting 对象
    * @return 存在返回true 否则返回false
    */
    Boolean  riskleversettingIsExist(Riskleversetting riskleversetting);

    /**
    * 根据传入的对象获取唯一数据
    * @param riskleversetting
    * @return riskleversetting 对象
    */
    Riskleversetting getRiskleversettingUnique(Riskleversetting riskleversetting);

    Integer initializeaRiskLevelSetting(
            String coalMineName,
            String frameWorkID);
    }