package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskcontrolhistoryDao;
import cn.com.kingc.risk.service.RiskcontrolhistoryService;
import cn.com.kingc.risk.model.Riskcontrolhistory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
* Title:管控历史记录
* Copyright: Copyright (c) 2018 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:Riskcontrolhistory Service实现层
* @date 2018-09-05 13:29:53 中国标准时间
* @author
* @version
*/

@Service
public class RiskcontrolhistoryServiceImpl implements RiskcontrolhistoryService{
    @Autowired
    private RiskcontrolhistoryDao riskcontrolhistoryDao;

     //获取共有多少条记录，参数是Riskcontrolhistory 对象
    @Override
    public Integer getRiskcontrolhistoryCount(Riskcontrolhistory riskcontrolhistory){
        return riskcontrolhistoryDao.getRiskcontrolhistoryCount(riskcontrolhistory);
    }

    //带有时间段查询条件下获取总条数，参数是Riskcontrolhistory 对象
    @Override
    public Integer getRiskcontrolhistoryCountByTime(Riskcontrolhistory riskcontrolhistory){
        return riskcontrolhistoryDao.getRiskcontrolhistoryCountByTime(riskcontrolhistory);
    }

    //分页获取数据，参数是Riskcontrolhistory 对象
    @Override
    public List<Riskcontrolhistory> getRiskcontrolhistoryByPage(Riskcontrolhistory riskcontrolhistory){
        Integer pageBegin=(riskcontrolhistory.getPage()-1)*riskcontrolhistory.getPagesize();
        Integer pageEnd=riskcontrolhistory.getPagesize();
        return riskcontrolhistoryDao.getRiskcontrolhistoryByPage(riskcontrolhistory,pageBegin,pageEnd);
    }

    //带有时间段查询条件下分页获取数据，参数是Riskcontrolhistory 对象
    @Override
    public List<Riskcontrolhistory> getRiskcontrolhistoryByPageByTime(Riskcontrolhistory riskcontrolhistory) {
        Integer pageBegin=(riskcontrolhistory.getPage()-1)*riskcontrolhistory.getPagesize();
        Integer pageEnd=riskcontrolhistory.getPagesize();
        return riskcontrolhistoryDao.getRiskcontrolhistoryByPageByTime(riskcontrolhistory,pageBegin,pageEnd);
    }


    //根据主键删除Riskcontrolhistory
    @Override
    public Boolean deleteRiskcontrolhistoryByID(Integer id){
        return riskcontrolhistoryDao.deleteRiskcontrolhistoryByID(id)>0;
    }


    //根据传入的Riskcontrolhistory 对象查询数据
    @Override
    public List<Riskcontrolhistory> getRiskcontrolhistoryList(Riskcontrolhistory riskcontrolhistory){
        return riskcontrolhistoryDao.getRiskcontrolhistoryList(riskcontrolhistory);
    }


    /**
    * 新增一个Riskcontrolhistory
    * @param riskcontrolhistory  Riskcontrolhistory对象
    * @return 是否新增成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean addRiskcontrolhistory(Riskcontrolhistory riskcontrolhistory){
        return riskcontrolhistoryDao.addRiskcontrolhistory(riskcontrolhistory)>0;
    }

    /**
    * 批量新增Riskcontrolhistory
    * @param riskcontrolhistoryList  Riskcontrolhistory集合
    */
    @Override
    public void addRiskcontrolhistoryList(List<Riskcontrolhistory> riskcontrolhistoryList){
        riskcontrolhistoryDao.addRiskcontrolhistoryList(riskcontrolhistoryList);
    }

    /**
    * 删除Riskcontrolhistory对象
    * @param riskcontrolhistory Riskcontrolhistory对象
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean deleteRiskcontrolhistory(Riskcontrolhistory riskcontrolhistory){
        return riskcontrolhistoryDao.deleteRiskcontrolhistory(riskcontrolhistory)>0;
    }



    /**
    * 批量删除Riskcontrolhistory
    * @param riskcontrolhistoryList  Riskcontrolhistory集合
    *
    */
    @Override
    public void deleteRiskcontrolhistoryList(List<Riskcontrolhistory> riskcontrolhistoryList){
        riskcontrolhistoryDao.deleteRiskcontrolhistoryList(riskcontrolhistoryList);
    }

    /**
    * 根据主键更新Riskcontrolhistory
    * @param  riskcontrolhistory  Riskcontrolhistory对象
    * @return 是否更新成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean updateRiskcontrolhistory(Riskcontrolhistory riskcontrolhistory){
        return riskcontrolhistoryDao.updateRiskcontrolhistory(riskcontrolhistory)>0;
    }

    /**
    * 根据主键获取Riskcontrolhistory
    * @param  id  Riskcontrolhistory对象主键
    * @return  Riskcontrolhistory对象
    */
    @Override
    public Riskcontrolhistory getRiskcontrolhistory(Integer id){
        return riskcontrolhistoryDao.getRiskcontrolhistory(id);
    }

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    @Override
    public List<String> getDistinctItemList(String attribute){
        return riskcontrolhistoryDao.getDistinctItemList(attribute);
    }

    /**
    * 判断对象是否已经存在
    * @param riskcontrolhistory Riskcontrolhistory 对象
    * @return 存在返回true 否则返回false
    */
    @Override
    public Boolean  riskcontrolhistoryIsExist(Riskcontrolhistory riskcontrolhistory){
        return riskcontrolhistoryDao.riskcontrolhistoryIsExist(riskcontrolhistory)>0;
    }

    /**
    * 根据传入的对象获取一个唯一对象
    *
    * @param riskcontrolhistory
    * @return riskcontrolhistory 对象
    */
    @Override
    public Riskcontrolhistory getRiskcontrolhistoryUnique(Riskcontrolhistory riskcontrolhistory) {
        List<Riskcontrolhistory> riskcontrolhistoryList = riskcontrolhistoryDao.getRiskcontrolhistoryUnique(riskcontrolhistory);
        assert riskcontrolhistoryList!=null&&riskcontrolhistoryList.size()==1;
        return riskcontrolhistoryList.get(0);
     }
}