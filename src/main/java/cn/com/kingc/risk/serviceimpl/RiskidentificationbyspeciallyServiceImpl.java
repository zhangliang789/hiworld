package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskidentificationbyspeciallyDao;
import cn.com.kingc.risk.dao.RisksiteDao;
import cn.com.kingc.risk.model.Risksite;
import cn.com.kingc.risk.service.RiskidentificationbyspeciallyService;
import cn.com.kingc.risk.model.Riskidentificationbyspecially;
import cn.com.kingc.risk.service.RisksiteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
*
*Riskidentificationbyspecially Service实现层
*/
@Service
public class RiskidentificationbyspeciallyServiceImpl implements RiskidentificationbyspeciallyService{
    @Autowired
    private RiskidentificationbyspeciallyDao riskidentificationbyspeciallyDao;
    @Autowired
    private RisksiteService risksiteService;

    //新增一个Riskidentificationbyspecially
    @SystemServiceLog(description = "新增一个Riskidentificationbyspecially")
    @Override
    public Boolean addRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially){
        return riskidentificationbyspeciallyDao.addRiskidentificationbyspecially(riskidentificationbyspecially)>0;
    }

    //根据主键删除Riskidentificationbyspecially
    @SystemServiceLog(description = "根据主键删除Riskidentificationbyspecially")
    @Override
    public Boolean deleteRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially){
        return riskidentificationbyspeciallyDao.deleteRiskidentificationbyspecially(riskidentificationbyspecially)>0;
    }

    //根据主键删除Riskidentificationbyspecially，参数是主键
    @SystemServiceLog(description = "根据主键删除Riskidentificationbyspecially,参数是主键")
    @Override
    public Boolean deleteRiskidentificationbyspeciallyByID(Integer riskIdentificationSpeciallyID){
        return riskidentificationbyspeciallyDao.deleteRiskidentificationbyspeciallyByID(riskIdentificationSpeciallyID)>0;
    }


    //根据主键更新Riskidentificationbyspecially
    @SystemServiceLog(description = "根据主键更新Riskidentificationbyspecially")
    @Override
    public Boolean updateRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially){
        return riskidentificationbyspeciallyDao.updateRiskidentificationbyspecially(riskidentificationbyspecially)>0;
    }

    //根据主键获取Riskidentificationbyspecially
    @SystemServiceLog(description = "根据主键获取Riskidentificationbyspecially")
    @Override
    public Riskidentificationbyspecially getRiskidentificationbyspecially(Integer riskIdentificationSpeciallyID){
        Riskidentificationbyspecially riskidentificationbyspecially=riskidentificationbyspeciallyDao.
                getRiskidentificationbyspecially(riskIdentificationSpeciallyID);
        if(riskidentificationbyspecially!=null && riskidentificationbyspecially.getRiskSiteID()>0){
            Risksite risksite=risksiteService.getRisksite(riskidentificationbyspecially.getRiskSiteID());
            riskidentificationbyspecially.setmRiskSite(risksite);
        }
        return riskidentificationbyspecially;
    }

    //获取总条数
    @SystemServiceLog(description = "获取Riskidentificationbyspecially总条数")
    @Override
    public Integer getRiskidentificationbyspeciallyCount(){
        return riskidentificationbyspeciallyDao.getRiskidentificationbyspeciallyCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Riskidentificationbyspecially数据")
    @Override
    public List<Riskidentificationbyspecially> getRiskidentificationbyspeciallyByPage(int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return riskidentificationbyspeciallyDao.getRiskidentificationbyspeciallyByPage(pageBegin,pageEnd);
    }

    //获取总条数，参数是Riskidentificationbyspecially 对象
    @SystemServiceLog(description = "分页获取Riskidentificationbyspecially数据,参数是Riskidentificationbyspecially 对象")
    @Override
    public Integer getRiskidentificationbyspeciallyCountByRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially){
         return riskidentificationbyspeciallyDao
                 .getRiskidentificationbyspeciallyCountByRiskidentificationbyspecially(riskidentificationbyspecially);
    }

    //分页获取数据，参数是Riskidentificationbyspecially 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Riskidentificationbyspecially数据，参数是Riskidentificationbyspecially 对象和页面大小和页码")
    @Override
    public List<Riskidentificationbyspecially> getRiskidentificationbyspeciallyByPageAndRiskidentificationbyspecially(Riskidentificationbyspecially riskidentificationbyspecially){
        Integer pageBegin=(riskidentificationbyspecially.getPage()-1)*riskidentificationbyspecially.getPagesize();
        Integer pageEnd=riskidentificationbyspecially.getPagesize();
        List<Riskidentificationbyspecially> lstSp= riskidentificationbyspeciallyDao.getRiskidentificationbyspeciallyByPageAndRiskidentificationbyspecially(riskidentificationbyspecially,pageBegin,pageEnd);
        if(lstSp!=null && lstSp.size()>0){
            for (Riskidentificationbyspecially sp:lstSp) {
                if(sp!=null && sp.getRiskSiteID()>0){
                    Risksite risksite=risksiteService.getRisksite(sp.getRiskSiteID());
                    sp.setmRiskSite(risksite);
                }
            }
        }

        return lstSp;
    }

    //黄陵二矿分页获取数据，不考虑risksite,参数是Riskidentificationbyspecially 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Riskidentificationbyspecially数据，参数是Riskidentificationbyspecially 对象和页面大小和页码")
    @Override
    public List<Riskidentificationbyspecially> getRiskidentificationbyHLByPage(Riskidentificationbyspecially riskidentificationbyspecially){
        Integer pageBegin=(riskidentificationbyspecially.getPage()-1)*riskidentificationbyspecially.getPagesize();
        Integer pageEnd=riskidentificationbyspecially.getPagesize();
        List<Riskidentificationbyspecially> lstSp= riskidentificationbyspeciallyDao.getRiskidentificationbyspeciallyByPageAndRiskidentificationbyspecially(riskidentificationbyspecially,pageBegin,pageEnd);

        return lstSp;
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskidentificationbyspecially数据")
    @Override
    public List<Riskidentificationbyspecially>  getRiskidentificationbyspeciallyData(Riskidentificationbyspecially riskidentificationbyspecially){
        List<Riskidentificationbyspecially> lstSp=riskidentificationbyspeciallyDao.getRiskidentificationbyspeciallyData(riskidentificationbyspecially);
        if(lstSp!=null && lstSp.size()>0){
            for (Riskidentificationbyspecially sp:lstSp) {
                if(sp!=null && sp.getRiskSiteID()>0){
                    Risksite risksite=risksiteService.getRisksite(sp.getRiskSiteID());
                    sp.setmRiskSite(risksite);
                }
            }
        }

        return lstSp;
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskidentificationbyspecially数据")
    @Override
    public List<Riskidentificationbyspecially>  getRiskidentificationbyspeciallybyHLData(Riskidentificationbyspecially riskidentificationbyspecially){
        List<Riskidentificationbyspecially> lstSp=riskidentificationbyspeciallyDao.getRiskidentificationbyspeciallyData(riskidentificationbyspecially);
        return lstSp;
    }
}