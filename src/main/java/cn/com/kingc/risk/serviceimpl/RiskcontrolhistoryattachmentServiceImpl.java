package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskcontrolhistoryattachmentDao;
import cn.com.kingc.risk.service.RiskcontrolhistoryattachmentService;
import cn.com.kingc.risk.model.Riskcontrolhistoryattachment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
* Title:管控历史记录附件记录
* Copyright: Copyright (c) 2018 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:Riskcontrolhistoryattachment Service实现层
* @date 2018-09-05 14:38:09 中国标准时间
* @author
* @version
*/

@Service
public class RiskcontrolhistoryattachmentServiceImpl implements RiskcontrolhistoryattachmentService{
    @Autowired
    private RiskcontrolhistoryattachmentDao riskcontrolhistoryattachmentDao;

    /**
    * 新增一个Riskcontrolhistoryattachment
    * @param riskcontrolhistoryattachment  Riskcontrolhistoryattachment对象
    * @return 是否新增成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean addRiskcontrolhistoryattachment(Riskcontrolhistoryattachment riskcontrolhistoryattachment){
        return riskcontrolhistoryattachmentDao.addRiskcontrolhistoryattachment(riskcontrolhistoryattachment)>0;
    }

    /**
    * 批量新增Riskcontrolhistoryattachment
    * @param riskcontrolhistoryattachmentList  Riskcontrolhistoryattachment集合
    */
    @Override
    public void addRiskcontrolhistoryattachmentList(List<Riskcontrolhistoryattachment> riskcontrolhistoryattachmentList){
        riskcontrolhistoryattachmentDao.addRiskcontrolhistoryattachmentList(riskcontrolhistoryattachmentList);
    }

    /**
    * 删除Riskcontrolhistoryattachment对象
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment对象
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean deleteRiskcontrolhistoryattachment(Riskcontrolhistoryattachment riskcontrolhistoryattachment){
        return riskcontrolhistoryattachmentDao.deleteRiskcontrolhistoryattachment(riskcontrolhistoryattachment)>0;
    }

    /**
    * 根据主键删除Riskcontrolhistoryattachment
    * @param id  Riskcontrolhistoryattachment主键
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean deleteRiskcontrolhistoryattachmentByID(Integer id){
        return riskcontrolhistoryattachmentDao.deleteRiskcontrolhistoryattachmentByID(id)>0;
    }

    /**
    * 批量删除Riskcontrolhistoryattachment
    * @param riskcontrolhistoryattachmentList  Riskcontrolhistoryattachment集合
    *
    */
    @Override
    public void deleteRiskcontrolhistoryattachmentList(List<Riskcontrolhistoryattachment> riskcontrolhistoryattachmentList){
        riskcontrolhistoryattachmentDao.deleteRiskcontrolhistoryattachmentList(riskcontrolhistoryattachmentList);
    }

    /**
    * 根据主键更新Riskcontrolhistoryattachment
    * @param  riskcontrolhistoryattachment  Riskcontrolhistoryattachment对象
    * @return 是否更新成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean updateRiskcontrolhistoryattachment(Riskcontrolhistoryattachment riskcontrolhistoryattachment){
        return riskcontrolhistoryattachmentDao.updateRiskcontrolhistoryattachment(riskcontrolhistoryattachment)>0;
    }

    /**
    * 根据主键获取Riskcontrolhistoryattachment
    * @param  id  Riskcontrolhistoryattachment对象主键
    * @return  Riskcontrolhistoryattachment对象
    */
    @Override
    public Riskcontrolhistoryattachment getRiskcontrolhistoryattachment(Integer id){
        return riskcontrolhistoryattachmentDao.getRiskcontrolhistoryattachment(id);
    }



    /**
    * 获取共有多少条记录，参数是Riskcontrolhistoryattachment 对象
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment 对象
    * @return 记录数
    */
    @Override
    public Integer getRiskcontrolhistoryattachmentCount(Riskcontrolhistoryattachment riskcontrolhistoryattachment){
         return riskcontrolhistoryattachmentDao.getRiskcontrolhistoryattachmentCount(riskcontrolhistoryattachment);
    }

    /**
    * 分页获取数据，参数是Riskcontrolhistoryattachment 对象
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment 对象
    * @return Riskcontrolhistoryattachment集合
    */
    @Override
    public List<Riskcontrolhistoryattachment> getRiskcontrolhistoryattachmentByPage(Riskcontrolhistoryattachment riskcontrolhistoryattachment){
        Integer pageBegin=(riskcontrolhistoryattachment.getPage()-1)*riskcontrolhistoryattachment.getPagesize();
        Integer pageEnd=riskcontrolhistoryattachment.getPagesize();
        return riskcontrolhistoryattachmentDao.getRiskcontrolhistoryattachmentByPage(riskcontrolhistoryattachment,pageBegin,pageEnd);
    }

    /**
    * 根据传入的Riskcontrolhistoryattachment 对象查询数据
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment 对象
    * @return Riskcontrolhistoryattachment集合
    */
    @Override
    public List<Riskcontrolhistoryattachment>  getRiskcontrolhistoryattachmentList(Riskcontrolhistoryattachment riskcontrolhistoryattachment){
        return riskcontrolhistoryattachmentDao.getRiskcontrolhistoryattachmentList(riskcontrolhistoryattachment);
    }

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    @Override
    public List<String> getDistinctItemList(String attribute){
        return riskcontrolhistoryattachmentDao.getDistinctItemList(attribute);
    }

    /**
    * 判断对象是否已经存在
    * @param riskcontrolhistoryattachment Riskcontrolhistoryattachment 对象
    * @return 存在返回true 否则返回false
    */
    @Override
    public Boolean  riskcontrolhistoryattachmentIsExist(Riskcontrolhistoryattachment riskcontrolhistoryattachment){
        return riskcontrolhistoryattachmentDao.riskcontrolhistoryattachmentIsExist(riskcontrolhistoryattachment)>0;
    }

    /**
    * 根据传入的对象获取一个唯一对象
    *
    * @param riskcontrolhistoryattachment
    * @return riskcontrolhistoryattachment 对象
    */
    @Override
    public Riskcontrolhistoryattachment getRiskcontrolhistoryattachmentUnique(Riskcontrolhistoryattachment riskcontrolhistoryattachment) {
        List<Riskcontrolhistoryattachment> riskcontrolhistoryattachmentList = riskcontrolhistoryattachmentDao.getRiskcontrolhistoryattachmentUnique(riskcontrolhistoryattachment);
        assert riskcontrolhistoryattachmentList!=null&&riskcontrolhistoryattachmentList.size()==1;
        return riskcontrolhistoryattachmentList.get(0);
     }
}