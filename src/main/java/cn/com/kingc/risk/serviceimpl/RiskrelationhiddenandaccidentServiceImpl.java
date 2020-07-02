package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskrelationhiddenandaccidentDao;
import cn.com.kingc.risk.service.RiskrelationhiddenandaccidentService;
import cn.com.kingc.risk.model.Riskrelationhiddenandaccident;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:Riskrelationhiddenandaccident Service实现层
* @date 2018-09-27 16:07:12 中国标准时间
* @author
* @version
*/

@Service("riskrelationhiddenandaccidentService")
public class RiskrelationhiddenandaccidentServiceImpl implements RiskrelationhiddenandaccidentService{
    @Autowired
    private RiskrelationhiddenandaccidentDao riskrelationhiddenandaccidentDao;

    /**
    * 新增一个Riskrelationhiddenandaccident
    * @param riskrelationhiddenandaccident  Riskrelationhiddenandaccident对象
    * @return 是否新增成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean addRiskrelationhiddenandaccident(Riskrelationhiddenandaccident riskrelationhiddenandaccident){
        return riskrelationhiddenandaccidentDao.addRiskrelationhiddenandaccident(riskrelationhiddenandaccident)>0;
    }

    /**
    * 批量新增Riskrelationhiddenandaccident
    * @param riskrelationhiddenandaccidentList  Riskrelationhiddenandaccident集合
    */
    @Override
    public void addRiskrelationhiddenandaccidentList(List<Riskrelationhiddenandaccident> riskrelationhiddenandaccidentList){
        riskrelationhiddenandaccidentDao.addRiskrelationhiddenandaccidentList(riskrelationhiddenandaccidentList);
    }

    /**
    * 删除Riskrelationhiddenandaccident对象
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident对象
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean deleteRiskrelationhiddenandaccident(Riskrelationhiddenandaccident riskrelationhiddenandaccident){
        return riskrelationhiddenandaccidentDao.deleteRiskrelationhiddenandaccident(riskrelationhiddenandaccident)>0;
    }

    /**
    * 根据主键删除Riskrelationhiddenandaccident
    * @param riskRelationHiddenAndAccidentID  Riskrelationhiddenandaccident主键
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean deleteRiskrelationhiddenandaccidentByID(Integer riskRelationHiddenAndAccidentID){
        return riskrelationhiddenandaccidentDao.deleteRiskrelationhiddenandaccidentByID(riskRelationHiddenAndAccidentID)>0;
    }

    /**
    * 批量删除Riskrelationhiddenandaccident
    * @param riskrelationhiddenandaccidentList  Riskrelationhiddenandaccident集合
    *
    */
    @Override
    public void deleteRiskrelationhiddenandaccidentList(List<Riskrelationhiddenandaccident> riskrelationhiddenandaccidentList){
        riskrelationhiddenandaccidentDao.deleteRiskrelationhiddenandaccidentList(riskrelationhiddenandaccidentList);
    }

    /**
    * 根据主键更新Riskrelationhiddenandaccident
    * @param  riskrelationhiddenandaccident  Riskrelationhiddenandaccident对象
    * @return 是否更新成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean updateRiskrelationhiddenandaccident(Riskrelationhiddenandaccident riskrelationhiddenandaccident){
        return riskrelationhiddenandaccidentDao.updateRiskrelationhiddenandaccident(riskrelationhiddenandaccident)>0;
    }

    /**
    * 根据主键获取Riskrelationhiddenandaccident
    * @param  riskRelationHiddenAndAccidentID  Riskrelationhiddenandaccident对象主键
    * @return  Riskrelationhiddenandaccident对象
    */
    @Override
    public Riskrelationhiddenandaccident getRiskrelationhiddenandaccident(Integer riskRelationHiddenAndAccidentID){
        return riskrelationhiddenandaccidentDao.getRiskrelationhiddenandaccident(riskRelationHiddenAndAccidentID);
    }



    /**
    * 获取共有多少条记录，参数是Riskrelationhiddenandaccident 对象
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident 对象
    * @return 记录数
    */
    @Override
    public Integer getRiskrelationhiddenandaccidentCount(Riskrelationhiddenandaccident riskrelationhiddenandaccident){
         return riskrelationhiddenandaccidentDao.getRiskrelationhiddenandaccidentCount(riskrelationhiddenandaccident);
    }

    /**
    * 分页获取数据，参数是Riskrelationhiddenandaccident 对象
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident 对象
    * @return Riskrelationhiddenandaccident集合
    */
    @Override
    public List<Riskrelationhiddenandaccident> getRiskrelationhiddenandaccidentByPage(Riskrelationhiddenandaccident riskrelationhiddenandaccident){
        Integer pageBegin=(riskrelationhiddenandaccident.getPage()-1)*riskrelationhiddenandaccident.getPagesize();
        Integer pageEnd=riskrelationhiddenandaccident.getPagesize();
        return riskrelationhiddenandaccidentDao.getRiskrelationhiddenandaccidentByPage(riskrelationhiddenandaccident,pageBegin,pageEnd);
    }

    /**
    * 根据传入的Riskrelationhiddenandaccident 对象查询数据
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident 对象
    * @return Riskrelationhiddenandaccident集合
    */
    @Override
    public List<Riskrelationhiddenandaccident>  getRiskrelationhiddenandaccidentList(Riskrelationhiddenandaccident riskrelationhiddenandaccident){
        return riskrelationhiddenandaccidentDao.getRiskrelationhiddenandaccidentList(riskrelationhiddenandaccident);
    }

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    @Override
    public List<String> getDistinctItemList(String attribute){
        return riskrelationhiddenandaccidentDao.getDistinctItemList(attribute);
    }

    /**
    * 判断对象是否已经存在
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident 对象
    * @return 存在返回true 否则返回false
    */
    @Override
    public Boolean  riskrelationhiddenandaccidentIsExist(Riskrelationhiddenandaccident riskrelationhiddenandaccident){
        return riskrelationhiddenandaccidentDao.riskrelationhiddenandaccidentIsExist(riskrelationhiddenandaccident)>0;
    }

    /**
    * 根据传入的对象获取一个唯一对象
    *
    * @param riskrelationhiddenandaccident
    * @return riskrelationhiddenandaccident 对象
    */
    @Override
    public Riskrelationhiddenandaccident getRiskrelationhiddenandaccidentUnique(Riskrelationhiddenandaccident riskrelationhiddenandaccident) {
        List<Riskrelationhiddenandaccident> riskrelationhiddenandaccidentList = riskrelationhiddenandaccidentDao.getRiskrelationhiddenandaccidentUnique(riskrelationhiddenandaccident);
        assert riskrelationhiddenandaccidentList!=null&&riskrelationhiddenandaccidentList.size()==1;
        return riskrelationhiddenandaccidentList.get(0);
     }
}