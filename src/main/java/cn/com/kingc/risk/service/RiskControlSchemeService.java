package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.RiskControlScheme;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:RiskControlScheme Service层
* @date 2019-02-20 16:20:08 中国标准时间
* @author
* @version
*/
public interface RiskControlSchemeService {
    /**
    * 新增一个RiskControlScheme
    * @param riskControlScheme  RiskControlScheme对象
    * @return 是否新增成功 成功返回ture 失败返回false
    */
    Boolean addRiskControlScheme(RiskControlScheme riskControlScheme);

    /**
    * 批量新增RiskControlScheme
    * @param riskControlSchemeList  RiskControlScheme集合
    */
    void addRiskControlSchemeList(List<RiskControlScheme> riskControlSchemeList);

    /**
    * 删除RiskControlScheme数据
    * @param riskControlScheme RiskControlScheme对象
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    Boolean deleteRiskControlScheme(RiskControlScheme riskControlScheme);

    /**
    * 根据主键删除RiskControlScheme
    * @param iD  RiskControlScheme主键
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    Boolean deleteRiskControlSchemeByID(String iD);

    /**
    * 批量删除RiskControlScheme
    * @param riskControlSchemeList  RiskControlScheme集合
    *
    */
    void deleteRiskControlSchemeList(List<RiskControlScheme> riskControlSchemeList);

    /**
    * 根据主键更新RiskControlScheme
    * @param  riskControlScheme  RiskControlScheme对象
    * @return 是否更新成功 成功返回ture 失败返回false
    */
    Boolean updateRiskControlScheme(RiskControlScheme riskControlScheme);

    /**
    * 根据主键获取RiskControlScheme
    * @param  iD  RiskControlScheme对象主键
    * @return  RiskControlScheme对象
    */
    RiskControlScheme getRiskControlScheme(String iD);



    /**
    * 获取共有多少条记录，参数是RiskControlScheme 对象
    * @param riskControlScheme RiskControlScheme 对象
    * @return 记录数
    */
    Integer getRiskControlSchemeCount(RiskControlScheme riskControlScheme);

    /**
    * 分页获取数据，参数是RiskControlScheme 对象
    * @param riskControlScheme RiskControlScheme 对象
    * @return RiskControlScheme集合
    */
    List<RiskControlScheme> getRiskControlSchemeByPage(RiskControlScheme riskControlScheme);

    /**
    * 根据传入的RiskControlScheme 对象查询数据
    * @param riskControlScheme RiskControlScheme 对象
    * @return RiskControlScheme集合
    */
    List<RiskControlScheme>  getRiskControlSchemeList(RiskControlScheme riskControlScheme);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(String attribute);

    /**
    * 判断对象是否已经存在
    * @param riskControlScheme RiskControlScheme 对象
    * @return 存在返回true 否则返回false
    */
    Boolean  riskControlSchemeIsExist(RiskControlScheme riskControlScheme);

    /**
    * 根据传入的对象获取唯一数据
    * @param riskControlScheme
    * @return riskControlScheme 对象
    */
    RiskControlScheme getRiskControlSchemeUnique(RiskControlScheme riskControlScheme);

    }