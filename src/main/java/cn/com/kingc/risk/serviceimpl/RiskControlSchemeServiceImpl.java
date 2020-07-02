package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskControlSchemeDao;
import cn.com.kingc.risk.service.RiskControlSchemeService;
import cn.com.kingc.risk.model.RiskControlScheme;
import org.heart.common.utils.UtilsString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:RiskControlScheme Service实现层
* @date 2019-02-20 16:20:08 中国标准时间
* @author
* @version
*/

@Service
public class RiskControlSchemeServiceImpl implements RiskControlSchemeService{
    @Autowired
    private RiskControlSchemeDao riskControlSchemeDao;

    /**
    * 新增一个RiskControlScheme
    * @param riskControlScheme  RiskControlScheme对象
    * @return 是否新增成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean addRiskControlScheme(RiskControlScheme riskControlScheme){
        riskControlScheme.setID(UtilsString.getUUID());
        return riskControlSchemeDao.addRiskControlScheme(riskControlScheme)>0;
    }

    /**
    * 批量新增RiskControlScheme
    * @param riskControlSchemeList  RiskControlScheme集合
    */
    @Override
    public void addRiskControlSchemeList(List<RiskControlScheme> riskControlSchemeList){
        riskControlSchemeDao.addRiskControlSchemeList(riskControlSchemeList);
    }

    /**
    * 删除RiskControlScheme对象
    * @param riskControlScheme RiskControlScheme对象
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean deleteRiskControlScheme(RiskControlScheme riskControlScheme){
        return riskControlSchemeDao.deleteRiskControlScheme(riskControlScheme)>0;
    }

    /**
    * 根据主键删除RiskControlScheme
    * @param iD  RiskControlScheme主键
    * @return 是否删除成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean deleteRiskControlSchemeByID(String iD){
        return riskControlSchemeDao.deleteRiskControlSchemeByID(iD)>0;
    }

    /**
    * 批量删除RiskControlScheme
    * @param riskControlSchemeList  RiskControlScheme集合
    *
    */
    @Override
    public void deleteRiskControlSchemeList(List<RiskControlScheme> riskControlSchemeList){
        riskControlSchemeDao.deleteRiskControlSchemeList(riskControlSchemeList);
    }

    /**
    * 根据主键更新RiskControlScheme
    * @param  riskControlScheme  RiskControlScheme对象
    * @return 是否更新成功 成功返回ture 失败返回false
    */
    @Override
    public Boolean updateRiskControlScheme(RiskControlScheme riskControlScheme){
        return riskControlSchemeDao.updateRiskControlScheme(riskControlScheme)>0;
    }

    /**
    * 根据主键获取RiskControlScheme
    * @param  iD  RiskControlScheme对象主键
    * @return  RiskControlScheme对象
    */
    @Override
    public RiskControlScheme getRiskControlScheme(String iD){
        RiskControlScheme riskControlScheme = riskControlSchemeDao.getRiskControlScheme(iD);
        return riskControlScheme;
    }



    /**
    * 获取共有多少条记录，参数是RiskControlScheme 对象
    * @param riskControlScheme RiskControlScheme 对象
    * @return 记录数
    */
    @Override
    public Integer getRiskControlSchemeCount(RiskControlScheme riskControlScheme){
         return riskControlSchemeDao.getRiskControlSchemeCount(riskControlScheme);
    }

    /**
    * 分页获取数据，参数是RiskControlScheme 对象
    * @param riskControlScheme RiskControlScheme 对象
    * @return RiskControlScheme集合
    */
    @Override
    public List<RiskControlScheme> getRiskControlSchemeByPage(RiskControlScheme riskControlScheme){
        Integer pageBegin=(riskControlScheme.getPage()-1)*riskControlScheme.getPagesize();
        Integer pageEnd=riskControlScheme.getPagesize();
        return riskControlSchemeDao.getRiskControlSchemeByPage(riskControlScheme,pageBegin,pageEnd);
    }

    /**
    * 根据传入的RiskControlScheme 对象查询数据
    * @param riskControlScheme RiskControlScheme 对象
    * @return RiskControlScheme集合
    */
    @Override
    public List<RiskControlScheme>  getRiskControlSchemeList(RiskControlScheme riskControlScheme){
        return riskControlSchemeDao.getRiskControlSchemeList(riskControlScheme);
    }

    /**
    * 获取一个数据的不重复集合
    * @param attribute 对象属性名称
    * @return List<String>
    */
    @Override
    public List<String> getDistinctItemList(String attribute){
        return riskControlSchemeDao.getDistinctItemList(attribute);
    }

    /**
    * 判断对象是否已经存在
    * @param riskControlScheme RiskControlScheme 对象
    * @return 存在返回true 否则返回false
    */
    @Override
    public Boolean  riskControlSchemeIsExist(RiskControlScheme riskControlScheme){
        return riskControlSchemeDao.riskControlSchemeIsExist(riskControlScheme)>0;
    }

    /**
    * 根据传入的对象获取一个唯一对象
    *
    * @param riskControlScheme
    * @return riskControlScheme 对象
    */
    @Override
    public RiskControlScheme getRiskControlSchemeUnique(RiskControlScheme riskControlScheme) {
        List<RiskControlScheme> riskControlSchemeList = riskControlSchemeDao.getRiskControlSchemeUnique(riskControlScheme);
        assert riskControlSchemeList!=null&&riskControlSchemeList.size()==1;
        return riskControlSchemeList.get(0);
     }
}