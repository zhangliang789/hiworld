package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Riskcontrolhistoryattachment;
import java.util.List;

/**
* Title:管控历史记录附件记录
* Copyright: Copyright (c) 2018 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:Riskcontrolhistoryattachment Service层
* @date 2018-09-05 14:38:09 中国标准时间
* @author
* @version
*/
public interface RiskcontrolhistoryattachmentService {
    /**
    * 新增一个Riskcontrolhistoryattachment
    * @param riskcontrolhistoryattachment  Riskcontrolhistoryattachment对象
    * @return 是否新增成功 成功返回ture 失败返回false
    */
    Boolean addRiskcontrolhistoryattachment(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    /**
    * 批量新增Riskcontrolhistoryattachment
    * @param riskcontrolhistoryattachmentList  Riskcontrolhistoryattachment集合
    */
    void addRiskcontrolhistoryattachmentList(List<Riskcontrolhistoryattachment> riskcontrolhistoryattachmentList);

    /**
    * 删除Riskcontrolhistoryattachment数据
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment对象
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    Boolean deleteRiskcontrolhistoryattachment(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    /**
    * 根据主键删除Riskcontrolhistoryattachment
    * @param id  Riskcontrolhistoryattachment主键
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    Boolean deleteRiskcontrolhistoryattachmentByID(Integer id);

    /**
    * 批量删除Riskcontrolhistoryattachment
    * @param riskcontrolhistoryattachmentList  Riskcontrolhistoryattachment集合
    *
    */
    void deleteRiskcontrolhistoryattachmentList(List<Riskcontrolhistoryattachment> riskcontrolhistoryattachmentList);

    /**
    * 根据主键更新Riskcontrolhistoryattachment
    * @param  riskcontrolhistoryattachment  Riskcontrolhistoryattachment对象
    * @return 是否更新成功 成功返回ture 失败返回false
    */
    Boolean updateRiskcontrolhistoryattachment(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    /**
    * 根据主键获取Riskcontrolhistoryattachment
    * @param  id  Riskcontrolhistoryattachment对象主键
    * @return  Riskcontrolhistoryattachment对象
    */
    Riskcontrolhistoryattachment getRiskcontrolhistoryattachment(Integer id);



    /**
    * 获取共有多少条记录，参数是Riskcontrolhistoryattachment 对象
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment 对象
    * @return 记录数
    */
    Integer getRiskcontrolhistoryattachmentCount(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    /**
    * 分页获取数据，参数是Riskcontrolhistoryattachment 对象
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment 对象
    * @return Riskcontrolhistoryattachment集合
    */
    List<Riskcontrolhistoryattachment> getRiskcontrolhistoryattachmentByPage(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    /**
    * 根据传入的Riskcontrolhistoryattachment 对象查询数据
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment 对象
    * @return Riskcontrolhistoryattachment集合
    */
    List<Riskcontrolhistoryattachment>  getRiskcontrolhistoryattachmentList(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    List<String> getDistinctItemList(String attribute);

    /**
    * 判断对象是否已经存在
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment 对象
    * @return 存在返回true 否则返回false
    */
    Boolean  riskcontrolhistoryattachmentIsExist(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    /**
    * 根据传入的对象获取唯一数据
    * @param riskcontrolhistoryattachment
    * @return riskcontrolhistoryattachment 对象
    */
    Riskcontrolhistoryattachment getRiskcontrolhistoryattachmentUnique(Riskcontrolhistoryattachment riskcontrolhistoryattachment);

    }