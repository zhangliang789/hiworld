package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskcontrolhistoryattachment;
import java.util.List;

/**
* Title:管控历史记录附件记录
* Copyright: Copyright (c) 2018 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:RiskcontrolhistoryattachmentDao层 对应数据库的 管控历史记录附件记录表
* @date 2018-09-05 13:29:59 中国标准时间
* @author
* @version
*/
public interface RiskcontrolhistoryattachmentDao{

    /**
    * 新增一个Riskcontrolhistoryattachment
    * @param riskcontrolhistoryattachment  Riskcontrolhistoryattachment对象
    * @return 受影响的行数
    */
    Integer addRiskcontrolhistoryattachment(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    /**
    * 批量新增Riskcontrolhistoryattachment
    * @param riskcontrolhistoryattachmentList  Riskcontrolhistoryattachment集合
    */
    void addRiskcontrolhistoryattachmentList(List<Riskcontrolhistoryattachment> riskcontrolhistoryattachmentList);

    /**
    * 删除Riskcontrolhistoryattachment数据
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment对象
    * @return 受影响的行数
    */
    Integer deleteRiskcontrolhistoryattachment(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    /**
    * 根据主键删除Riskcontrolhistoryattachment
    * @param iD  Riskcontrolhistoryattachment主键
    * @return 受影响的行数
    */
    Integer deleteRiskcontrolhistoryattachmentByID(Integer iD);

    /**
    * 批量删除Riskcontrolhistoryattachment
    * @param riskcontrolhistoryattachmentList  Riskcontrolhistoryattachment集合
    *
    */
    void deleteRiskcontrolhistoryattachmentList(List<Riskcontrolhistoryattachment> riskcontrolhistoryattachmentList);

    /**
    * 根据主键更新Riskcontrolhistoryattachment
    * @param  riskcontrolhistoryattachment  Riskcontrolhistoryattachment对象
    * @return 受影响的行数
    */
    Integer updateRiskcontrolhistoryattachment(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    /**
    * 根据主键获取Riskcontrolhistoryattachment
    * @param  iD  Riskcontrolhistoryattachment对象主键
    * @return  Riskcontrolhistoryattachment对象
    */
    Riskcontrolhistoryattachment getRiskcontrolhistoryattachment(Integer iD);




    /**
    * 获取共有多少条记录，参数是Riskcontrolhistoryattachment 对象
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment 对象
    * @return 记录数
    */
    Integer getRiskcontrolhistoryattachmentCount(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    /**
    * 分页获取数据，参数是Riskcontrolhistoryattachment 对象和开始位置，结束位置
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment 对象
    * @param pageBegin 开始位置
    * @param pageEnd 结束位置
    * @return Riskcontrolhistoryattachment集合
    */
    List<Riskcontrolhistoryattachment> getRiskcontrolhistoryattachmentByPage(@Param("riskcontrolhistoryattachment") Riskcontrolhistoryattachment riskcontrolhistoryattachment, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    /**
    * 根据传入的Riskcontrolhistoryattachment 对象查询数据
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment 对象
    * @return Riskcontrolhistoryattachment集合
    */
    List<Riskcontrolhistoryattachment> getRiskcontrolhistoryattachmentList(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(@Param("attribute") String attribute);

    /**
    * 判断对象是否已经存在
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment 对象
    * @return 查询到的结果数
    */
    Integer  riskcontrolhistoryattachmentIsExist(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    /**
    * 根据传入的对象获取数据
    * @param riskcontrolhistoryattachment
    * @return riskcontrolhistoryattachment 对象集合
    */
    List<Riskcontrolhistoryattachment> getRiskcontrolhistoryattachmentUnique(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

}