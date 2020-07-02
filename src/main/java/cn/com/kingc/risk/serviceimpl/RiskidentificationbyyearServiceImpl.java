package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskidentificationbyyearDao;
import cn.com.kingc.risk.dao.RiskidentificationbyyearentryDao;
import cn.com.kingc.risk.model.Riskidentificationbyyearentry;
import cn.com.kingc.risk.model.Risksite;
import cn.com.kingc.risk.service.RiskidentificationbyyearService;
import cn.com.kingc.risk.model.Riskidentificationbyyear;
import cn.com.kingc.risk.service.RisksiteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
*
*Riskidentificationbyyear Service实现层
*/
@Service
public class RiskidentificationbyyearServiceImpl implements RiskidentificationbyyearService{
    @Autowired
    private RiskidentificationbyyearDao riskidentificationbyyearDao;

    @Autowired
    private RiskidentificationbyyearentryDao riskidentificationbyyearentryDao;

    @Autowired
    private RisksiteService risksiteService;

    //新增一个Riskidentificationbyyear
    @SystemServiceLog(description = "新增一个Riskidentificationbyyear")
    @Override
    public Boolean addRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear){
        return riskidentificationbyyearDao.addRiskidentificationbyyear(riskidentificationbyyear)>0;
    }

    //根据主键删除Riskidentificationbyyear
    @SystemServiceLog(description = "根据主键删除Riskidentificationbyyear")
    @Override
    public Boolean deleteRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear){
        riskidentificationbyyearentryDao.deleteRiskidentificationbyyearD(riskidentificationbyyear.getRiskIdentificationYearID());
        return riskidentificationbyyearDao.deleteRiskidentificationbyyear(riskidentificationbyyear)>0;
    }

    //根据主键删除Riskidentificationbyyear，参数是主键
    @SystemServiceLog(description = "根据主键删除Riskidentificationbyyear,参数是主键")
    @Override
    public Boolean deleteRiskidentificationbyyearByID(Integer riskIdentificationYearID){
        riskidentificationbyyearentryDao.deleteRiskidentificationbyyearD(riskIdentificationYearID);
        return riskidentificationbyyearDao.deleteRiskidentificationbyyearByID(riskIdentificationYearID)>0;
    }


    //根据主键更新Riskidentificationbyyear
    @SystemServiceLog(description = "根据主键更新Riskidentificationbyyear")
    @Override
    public Boolean updateRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear){
        return riskidentificationbyyearDao.updateRiskidentificationbyyear(riskidentificationbyyear)>0;
    }

    //根据主键获取Riskidentificationbyyear
    @SystemServiceLog(description = "根据主键获取Riskidentificationbyyear")
    @Override
    public Riskidentificationbyyear getRiskidentificationbyyear(Integer riskIdentificationYearID){

        Riskidentificationbyyear riskidentificationbyyear =
                riskidentificationbyyearDao.getRiskidentificationbyyear(riskIdentificationYearID);

        if(riskidentificationbyyear !=null && riskidentificationbyyear.getmYearEntry().size()>0){

                List <Riskidentificationbyyearentry> riskidentificationbyyearentrylist = riskidentificationbyyear.getmYearEntry();

            for(int i=0;i<riskidentificationbyyear.getmYearEntry().size();i++){

                Risksite risksite=risksiteService.getRisksite(riskidentificationbyyear.getmYearEntry().get(i).getRiskSiteID());

                Riskidentificationbyyearentry riskidentificationbyyearentry = new Riskidentificationbyyearentry();
                riskidentificationbyyearentry.setRiskSiteID(riskidentificationbyyear.getmYearEntry().get(i).getRiskSiteID());
                riskidentificationbyyearentry.setmRiskSite(risksite);

                riskidentificationbyyearentrylist.set(i,riskidentificationbyyearentry);

            }
            riskidentificationbyyear.setmYearEntry(riskidentificationbyyearentrylist);
        }
        return riskidentificationbyyear;
    }

    //获取总条数
    @SystemServiceLog(description = "获取Riskidentificationbyyear总条数")
    @Override
    public Integer getRiskidentificationbyyearCount(){
        return riskidentificationbyyearDao.getRiskidentificationbyyearCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Riskidentificationbyyear数据")
    @Override
    public List<Riskidentificationbyyear> getRiskidentificationbyyearByPage(int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return riskidentificationbyyearDao.getRiskidentificationbyyearByPage(pageBegin,pageEnd);
    }

    //根据主键获取总条数
    @SystemServiceLog(description = "根据主键获取Riskidentificationbyyear总条数")
    @Override
    public Integer getRiskidentificationbyyearCountbyid(Integer riskIdentificationYearID){
        return riskidentificationbyyearDao.getRiskidentificationbyyearCountbyid(riskIdentificationYearID);
    }

    //根据主键分页获取数据
    @SystemServiceLog(description = "根据主键分页获取Riskidentificationbyyear数据")
    @Override
    public List<Riskidentificationbyyear> getRiskidentificationbyyearByPagebyid(int riskIdentificationYearID,int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return riskidentificationbyyearDao.getRiskidentificationbyyearByPagebyid(riskIdentificationYearID,pageBegin,pageEnd);
    }


    //获取总条数，参数是Riskidentificationbyyear 对象
    @SystemServiceLog(description = "分页获取Riskidentificationbyyear数据,参数是Riskidentificationbyyear 对象")
    @Override
    public Integer getRiskidentificationbyyearCountByRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear){
         return riskidentificationbyyearDao.getRiskidentificationbyyearCountByRiskidentificationbyyear(riskidentificationbyyear);
    }

    //分页获取数据，参数是Riskidentificationbyyear 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Riskidentificationbyyear数据，参数是Riskidentificationbyyear 对象和页面大小和页码")
    @Override
    public List<Riskidentificationbyyear> getRiskidentificationbyyearByPageAndRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear){
        Integer pageBegin=(riskidentificationbyyear.getPage()-1)*riskidentificationbyyear.getPagesize();
        Integer pageEnd=riskidentificationbyyear.getPagesize();
        return riskidentificationbyyearDao.getRiskidentificationbyyearByPageAndRiskidentificationbyyear(riskidentificationbyyear,pageBegin,pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskidentificationbyyear数据")
    @Override
    public List<Riskidentificationbyyear>  getRiskidentificationbyyearData(Riskidentificationbyyear riskidentificationbyyear){
        return riskidentificationbyyearDao.getRiskidentificationbyyearData(riskidentificationbyyear);
    }
}