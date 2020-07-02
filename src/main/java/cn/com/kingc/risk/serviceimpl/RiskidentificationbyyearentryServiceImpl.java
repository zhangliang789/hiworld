package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskidentificationbyyearentryDao;
import cn.com.kingc.risk.model.Riskidentificationbyyearentry;
import cn.com.kingc.risk.service.RiskidentificationbyyearentryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
*
*Riskidentificationbyyearentry Service实现层
*/
@Service
public class RiskidentificationbyyearentryServiceImpl implements RiskidentificationbyyearentryService{
    @Autowired
    private RiskidentificationbyyearentryDao riskidentificationbyyearentryDao;


    //新增一个Riskidentificationbyyearentry
    @SystemServiceLog(description = "新增一个Riskidentificationbyyearentry")
    @Override
    public Boolean addRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry){
        return riskidentificationbyyearentryDao.addRiskidentificationbyyearentry(riskidentificationbyyearentry)>0;
    }

    //根据主键删除Riskidentificationbyyearentry
    @SystemServiceLog(description = "根据主键删除Riskidentificationbyyearentry")
    @Override
    public Boolean deleteRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry){
        return riskidentificationbyyearentryDao.deleteRiskidentificationbyyearentry(riskidentificationbyyearentry)>0;
    }

    //根据主键删除Riskidentificationbyyearentry，参数是主键
    @SystemServiceLog(description = "根据主键删除Riskidentificationbyyearentry,参数是主键")
    @Override
    public Boolean deleteRiskidentificationbyyearentryByID(Integer riskIdentificationYearEntryID){

        return riskidentificationbyyearentryDao.deleteRiskidentificationbyyearentryByID(riskIdentificationYearEntryID)>0;
    }


    @Override
    public Integer deleteRiskidentificationbyyearID(Integer riskIdentificationYearID) {
        return riskidentificationbyyearentryDao.deleteRiskidentificationbyyearD(riskIdentificationYearID);
    }

    //根据主键更新Riskidentificationbyyearentry
    @SystemServiceLog(description = "根据主键更新Riskidentificationbyyearentry")
    @Override
    public Boolean updateRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry){
        return riskidentificationbyyearentryDao.updateRiskidentificationbyyearentry(riskidentificationbyyearentry)>0;
    }

    //根据主键获取Riskidentificationbyyearentry
    @SystemServiceLog(description = "根据主键获取Riskidentificationbyyearentry")
    @Override
    public Riskidentificationbyyearentry getRiskidentificationbyyearentry(Integer riskIdentificationYearEntryID){
        return riskidentificationbyyearentryDao.getRiskidentificationbyyearentry(riskIdentificationYearEntryID);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Riskidentificationbyyearentry总条数")
    @Override
    public Integer getRiskidentificationbyyearentryCount(){
        return riskidentificationbyyearentryDao.getRiskidentificationbyyearentryCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Riskidentificationbyyearentry数据")
    @Override
    public List<Riskidentificationbyyearentry> getRiskidentificationbyyearentryByPage(int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return riskidentificationbyyearentryDao.getRiskidentificationbyyearentryByPage(pageBegin,pageEnd);
    }

    //获取总条数，参数是Riskidentificationbyyearentry 对象
    @SystemServiceLog(description = "分页获取Riskidentificationbyyearentry数据,参数是Riskidentificationbyyearentry 对象")
    @Override
    public Integer getRiskidentificationbyyearentryCountByRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry){
         return riskidentificationbyyearentryDao.getRiskidentificationbyyearentryCountByRiskidentificationbyyearentry(riskidentificationbyyearentry);
    }

    //分页获取数据，参数是Riskidentificationbyyearentry 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Riskidentificationbyyearentry数据，参数是Riskidentificationbyyearentry 对象和页面大小和页码")
    @Override
    public List<Riskidentificationbyyearentry> getRiskidentificationbyyearentryByPageAndRiskidentificationbyyearentry(Riskidentificationbyyearentry riskidentificationbyyearentry){
        Integer pageBegin=(riskidentificationbyyearentry.getPage()-1)*riskidentificationbyyearentry.getPagesize();
        Integer pageEnd=riskidentificationbyyearentry.getPagesize();
        return riskidentificationbyyearentryDao.getRiskidentificationbyyearentryByPageAndRiskidentificationbyyearentry(riskidentificationbyyearentry,pageBegin,pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskidentificationbyyearentry数据")
    @Override
    public List<Riskidentificationbyyearentry>  getRiskidentificationbyyearentryData(Riskidentificationbyyearentry riskidentificationbyyearentry){
        return riskidentificationbyyearentryDao.getRiskidentificationbyyearentryData(riskidentificationbyyearentry);
    }
}