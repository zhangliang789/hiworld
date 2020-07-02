package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.RiskControlScheme;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:RiskControlSchemeDao层 对应数据库的 表
* @date 2019-02-20 16:20:08 中国标准时间
* @author
* @version
*/
public interface RiskControlSchemeDao{

    /**
    * 新增一个RiskControlScheme对象
    * @param riskControlScheme RiskControlScheme对象
    * @return 受影响的行数
    */
    Integer addRiskControlScheme(RiskControlScheme riskControlScheme);

    /**
    * 批量新增RiskControlScheme
    * @param riskControlSchemeList  RiskControlScheme集合
    */
    void addRiskControlSchemeList(List<RiskControlScheme> riskControlSchemeList);

    /**
    * 删除RiskControlScheme数据
    * @param riskControlScheme RiskControlScheme对象
    * @return 受影响的行数
    */
    Integer deleteRiskControlScheme(RiskControlScheme riskControlScheme);

    /**
    * 根据主键删除RiskControlScheme
    * @param iD  RiskControlScheme主键
    * @return 受影响的行数
    */
    Integer deleteRiskControlSchemeByID(String iD);

    /**
    * 批量删除RiskControlScheme
    * @param riskControlSchemeList  RiskControlScheme
    *
    */
    void deleteRiskControlSchemeList(List<RiskControlScheme> riskControlSchemeList);

    /**
    * 根据主键更新RiskControlScheme
    * @param  riskControlScheme  RiskControlScheme对象
    * @return 受影响的行数
    */
    Integer updateRiskControlScheme(RiskControlScheme riskControlScheme);

    /**
    * 根据主键获取RiskControlScheme
    * @param  ID  RiskControlScheme对象主键
    * @return  RiskControlScheme对象
    */
    RiskControlScheme getRiskControlScheme(String ID);




    /**
    * 获取共有多少条记录，参数是RiskControlScheme 对象
    * @param riskControlScheme RiskControlScheme 对象
    * @return 记录数
    */
    Integer getRiskControlSchemeCount(RiskControlScheme riskControlScheme);

    /**
    * 分页获取数据，参数是RiskControlScheme 对象和开始位置，结束位置
    * @param riskControlScheme RiskControlScheme 对象
    * @param pageBegin 开始位置
    * @param pageEnd 结束位置
    * @return RiskControlScheme集合
    */
    List<RiskControlScheme> getRiskControlSchemeByPage(@Param("riskControlScheme") RiskControlScheme riskControlScheme, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
    * 根据传入的RiskControlScheme 对象查询数据
    * @param riskControlScheme RiskControlScheme 对象
    * @return RiskControlScheme集合
    */
    List<RiskControlScheme> getRiskControlSchemeList(RiskControlScheme riskControlScheme);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(@Param("attribute") String attribute);

    /**
    * 判断对象是否已经存在
    * @param riskControlScheme RiskControlScheme 对象
    * @return 查询到的结果数
    */
    Integer  riskControlSchemeIsExist(RiskControlScheme riskControlScheme);

    /**
    * 根据传入的对象获取数据
    * @param riskControlScheme
    * @return riskControlScheme 对象集合
    */
    List<RiskControlScheme> getRiskControlSchemeUnique(RiskControlScheme riskControlScheme);

}