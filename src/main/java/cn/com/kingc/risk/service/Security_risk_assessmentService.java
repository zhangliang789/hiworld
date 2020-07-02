package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Security_risk_assessment;
import cn.com.kingc.risk.model.TemplatehazardHL;
import org.platform4j.model.Framework;

import java.util.List;

/**
* Title:安全风险评估表
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:Security_risk_assessment Service层
* @date 2018-10-14 10:21:16 中国标准时间
* @author
* @version
*/
public interface Security_risk_assessmentService {
    /**
    * 新增一个Security_risk_assessment
    * @param security_risk_assessment  Security_risk_assessment对象
    * @return 是否新增成功 成功返回ture 失败返回false
    */
    Boolean addSecurity_risk_assessment(Security_risk_assessment security_risk_assessment);

    /**
    * 批量新增Security_risk_assessment
    * @param security_risk_assessmentList  Security_risk_assessment集合
    */
    int addSecurity_risk_assessmentList(List<Security_risk_assessment> security_risk_assessmentList);

    /**
    * 删除Security_risk_assessment数据
    * @param security_risk_assessment Security_risk_assessment对象
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    Boolean deleteSecurity_risk_assessment(Security_risk_assessment security_risk_assessment);

    /**
    * 根据主键删除Security_risk_assessment
    * @param risk_id  Security_risk_assessment主键
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    Boolean deleteSecurity_risk_assessmentByID(Integer risk_id);

    /**
    * 批量删除Security_risk_assessment
    * @param security_risk_assessmentList  Security_risk_assessment集合
    *
    */
    void deleteSecurity_risk_assessmentList(List<Security_risk_assessment> security_risk_assessmentList);

    /**
    * 根据主键更新Security_risk_assessment
    * @param  security_risk_assessment  Security_risk_assessment对象
    * @return 是否更新成功 成功返回ture 失败返回false
    */
    Boolean updateSecurity_risk_assessment(Security_risk_assessment security_risk_assessment);

    /**
    * 根据主键获取Security_risk_assessment
    * @param  risk_id  Security_risk_assessment对象主键
    * @return  Security_risk_assessment对象
    */
    Security_risk_assessment getSecurity_risk_assessment(Integer risk_id);

    /**
    * 获取共有多少条记录，参数是Security_risk_assessment 对象
    * @param security_risk_assessment Security_risk_assessment 对象
    * @return 记录数
    */
    Integer getSecurity_risk_assessmentCount(Security_risk_assessment security_risk_assessment);

    /**
    * 分页获取数据，参数是Security_risk_assessment 对象
    * @param security_risk_assessment Security_risk_assessment 对象
    * @return Security_risk_assessment集合
    */
    List<Security_risk_assessment> getSecurity_risk_assessmentByPage(Security_risk_assessment security_risk_assessment);

    /**
    * 根据传入的Security_risk_assessment 对象查询数据
    * @param security_risk_assessment Security_risk_assessment 对象
    * @return Security_risk_assessment集合
    */
    List<Security_risk_assessment>  getSecurity_risk_assessmentList(Security_risk_assessment security_risk_assessment);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(String attribute);

    /**
    * 判断对象是否已经存在
    * @param security_risk_assessment Security_risk_assessment 对象
    * @return 存在返回true 否则返回false
    */
    Boolean  security_risk_assessmentIsExist(Security_risk_assessment security_risk_assessment);

    /**
    * 根据传入的对象获取唯一数据
    * @param security_risk_assessment
    * @return security_risk_assessment 对象
    */
    Security_risk_assessment getSecurity_risk_assessmentUnique(Security_risk_assessment security_risk_assessment);

    //导入数据
    Object analysisData(Framework framework, String execlFileName);





}