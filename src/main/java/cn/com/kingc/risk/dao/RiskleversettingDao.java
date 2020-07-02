package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskleversetting;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:RiskleversettingDao层 对应数据库的 表
* @date 2017-11-22 14:06:05 中国标准时间
* @author
* @version
*/
public interface RiskleversettingDao{

    /**
    * 新增一个Riskleversetting
    * @param riskleversetting  Riskleversetting对象
    * @return 受影响的行数
    */
    Integer addRiskleversetting(Riskleversetting riskleversetting);

    /**
    * 批量新增Riskleversetting
    * @param riskleversettingList  Riskleversetting集合
    */
    void addRiskleversettingList(List<Riskleversetting> riskleversettingList);

    /**
    * 删除Riskleversetting数据
    * @param riskleversetting Riskleversetting对象
    * @return 受影响的行数
    */
    Integer deleteRiskleversetting(Riskleversetting riskleversetting);

    /**
    * 根据主键删除Riskleversetting
    * @param riskLevelSettingID  Riskleversetting主键
    * @return 受影响的行数
    */
    Integer deleteRiskleversettingByID(Integer riskLevelSettingID);

    /**
    * 批量删除Riskleversetting
    * @param riskleversettingList  Riskleversetting集合
    *
    */
    void deleteRiskleversettingList(List<Riskleversetting> riskleversettingList);

    /**
    * 根据主键更新Riskleversetting
    * @param  riskleversetting  Riskleversetting对象
    * @return 受影响的行数
    */
    Integer updateRiskleversetting(Riskleversetting riskleversetting);

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
    * @param pageBegin 开始位置
    * @param pageEnd 结束位置
    * @return Riskleversetting集合
    */
    List<Riskleversetting> getRiskleversettingByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
    * 获取共有多少条记录，参数是Riskleversetting 对象
    * @param riskleversetting Riskleversetting 对象
    * @return 记录数
    */
    Integer getRiskleversettingCountByRiskleversetting(Riskleversetting riskleversetting);

    /**
    * 分页获取数据，参数是Riskleversetting 对象和开始位置，结束位置
    * @param riskleversetting Riskleversetting 对象
    * @param pageBegin 开始位置
    * @param pageEnd 结束位置
    * @return Riskleversetting集合
    */
    List<Riskleversetting> getRiskleversettingByPageAndRiskleversetting(@Param("riskleversetting") Riskleversetting riskleversetting, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
    * 根据传入的Riskleversetting 对象查询数据
    * @param riskleversetting Riskleversetting 对象
    * @return Riskleversetting集合
    */
    List<Riskleversetting> getRiskleversettingList(Riskleversetting riskleversetting);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(@Param("attribute") String attribute);

    /**
    * 判断对象是否已经存在
    * @param riskleversetting Riskleversetting 对象
    * @return 查询到的结果数
    */
    Integer  riskleversettingIsExist(Riskleversetting riskleversetting);

    /**
    * 根据传入的对象获取数据
    * @param riskleversetting
    * @return riskleversetting 对象集合
    */
    List<Riskleversetting> getRiskleversettingUnique(Riskleversetting riskleversetting);

    Integer initializeaRiskLevelSetting(
            @Param("coalMineName") String coalMineName,
            @Param("frameWorkID") String frameWorkID);
}