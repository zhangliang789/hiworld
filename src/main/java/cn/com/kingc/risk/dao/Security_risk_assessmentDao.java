package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Security_risk_assessment;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* Title:安全风险评估表
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:Security_risk_assessmentDao层 对应数据库的 安全风险评估表表
* @date 2018-10-14 10:21:16 中国标准时间
* @author
* @version
*/
@Service
public interface Security_risk_assessmentDao{

    /**
    * 新增一个Security_risk_assessment
    * @param security_risk_assessment  Security_risk_assessment对象
    * @return 受影响的行数
    */
    Integer addSecurity_risk_assessment(Security_risk_assessment security_risk_assessment);

    /**
    * 批量新增Security_risk_assessment
    * @param security_risk_assessmentList  Security_risk_assessment集合
    */
    void addSecurity_risk_assessmentList(List<Security_risk_assessment> security_risk_assessmentList);

    /**
    * 删除Security_risk_assessment数据
    * @param security_risk_assessment Security_risk_assessment对象
    * @return 受影响的行数
    */
    Integer deleteSecurity_risk_assessment(Security_risk_assessment security_risk_assessment);

    /**
    * 根据主键删除Security_risk_assessment
    * @param risk_id  Security_risk_assessment主键
    * @return 受影响的行数
    */
    Integer deleteSecurity_risk_assessmentByID(Integer risk_id);

    /**
    * 批量删除Security_risk_assessment
    * @param security_risk_assessmentList  Security_risk_assessment集合
    *
    */
    void deleteSecurity_risk_assessmentList(List<Security_risk_assessment> security_risk_assessmentList);

    /**
    * 根据主键更新Security_risk_assessment
    * @param  security_risk_assessment  Security_risk_assessment对象
    * @return 受影响的行数
    */
    Integer updateSecurity_risk_assessment(Security_risk_assessment security_risk_assessment);

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
    * 分页获取数据，参数是Security_risk_assessment 对象和开始位置，结束位置
    * @param security_risk_assessment Security_risk_assessment 对象
    * @param pageBegin 开始位置
    * @param pageEnd 结束位置
    * @return Security_risk_assessment集合
    */
    List<Security_risk_assessment> getSecurity_risk_assessmentByPage(@Param("security_risk_assessment") Security_risk_assessment security_risk_assessment, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
    * 根据传入的Security_risk_assessment 对象查询数据
    * @param security_risk_assessment Security_risk_assessment 对象
    * @return Security_risk_assessment集合
    */
    List<Security_risk_assessment> getSecurity_risk_assessmentList(Security_risk_assessment security_risk_assessment);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(@Param("attribute") String attribute);

    /**
    * 判断对象是否已经存在
    * @param security_risk_assessment Security_risk_assessment 对象
    * @return 查询到的结果数
    */
    Integer  security_risk_assessmentIsExist(Security_risk_assessment security_risk_assessment);

    /**
    * 根据传入的对象获取数据
    * @param security_risk_assessment
    * @return security_risk_assessment 对象集合
    */
    List<Security_risk_assessment> getSecurity_risk_assessmentUnique(Security_risk_assessment security_risk_assessment);

}