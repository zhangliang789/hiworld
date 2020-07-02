package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskcontrolplanebymonthDao;
import cn.com.kingc.risk.dao.RiskcontrolplanebymonthitemDao;
import cn.com.kingc.risk.dao.RisksiteDao;
import cn.com.kingc.risk.model.Riskcontrolplanebymonthitem;
import cn.com.kingc.risk.model.Risksite;
import cn.com.kingc.risk.service.RiskcontrolplanebymonthService;
import cn.com.kingc.risk.model.Riskcontrolplanebymonth;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
*
*Riskcontrolplanebymonth Service实现层
*/
@Service
public class RiskcontrolplanebymonthServiceImpl implements RiskcontrolplanebymonthService{
    @Autowired
    private RisksiteDao risksiteDao;

    @Autowired
    private RiskcontrolplanebymonthDao riskcontrolplanebymonthDao;

    @Autowired
    private RiskcontrolplanebymonthitemDao riskcontrolplanebymonthitemDao;
    //新增一个Riskcontrolplanebymonth
    @SystemServiceLog(description = "新增一个Riskcontrolplanebymonth")
    @Override
    public Boolean addRiskcontrolplanebymonth(Riskcontrolplanebymonth riskcontrolplanebymonth){
        return riskcontrolplanebymonthDao.addRiskcontrolplanebymonth(riskcontrolplanebymonth)>0;
    }

    //根据主键删除Riskcontrolplanebymonth
    @SystemServiceLog(description = "根据主键删除Riskcontrolplanebymonth")
    @Override
    public Boolean deleteRiskcontrolplanebymonth(Riskcontrolplanebymonth riskcontrolplanebymonth){
        if(riskcontrolplanebymonth!=null && riskcontrolplanebymonth.getMonthPlaneID()>0) {
            riskcontrolplanebymonthitemDao
                    .deleteRiskcontrolplanemonthitemByMonthID(riskcontrolplanebymonth.getMonthPlaneID());
        }

        return riskcontrolplanebymonthDao.deleteRiskcontrolplanebymonth(riskcontrolplanebymonth)>0;
    }

    //根据主键删除Riskcontrolplanebymonth，参数是主键
    @SystemServiceLog(description = "根据主键删除Riskcontrolplanebymonth,参数是主键")
    @Override
    public Boolean deleteRiskcontrolplanebymonthByID(Integer monthPlaneID){
        if(monthPlaneID>0) {
            riskcontrolplanebymonthDao.
                    deleteRisksiteoutofcontrolAndRiskcontrolanalyze(monthPlaneID);

            riskcontrolplanebymonthitemDao
                    .deleteRiskcontrolplanemonthitemByMonthID(monthPlaneID);
        }

        return riskcontrolplanebymonthDao.deleteRiskcontrolplanebymonthByID(monthPlaneID)>0;
    }
//根据主键删除Riskcontrolplanebymonth，参数是主键
    @SystemServiceLog(description = "根据主键删除Riskcontrolplanebymonth,参数是主键")
    @Override
    public Boolean deleteRiskitemAndOutofControl(Integer monthPlaneID){
        if(monthPlaneID>0) {
            riskcontrolplanebymonthDao.
                    deleteRisksiteoutofcontrolAndRiskcontrolanalyze(monthPlaneID);

            riskcontrolplanebymonthitemDao
                    .deleteRiskcontrolplanemonthitemByMonthID(monthPlaneID);
        }

        return true;
    }
    //根据主键更新Riskcontrolplanebymonth
    @SystemServiceLog(description = "根据主键更新Riskcontrolplanebymonth")
    @Override
    public Boolean updateRiskcontrolplanebymonth(Riskcontrolplanebymonth riskcontrolplanebymonth){
        return riskcontrolplanebymonthDao.updateRiskcontrolplanebymonth(riskcontrolplanebymonth)>0;
    }

    //根据主键获取Riskcontrolplanebymonth
    @SystemServiceLog(description = "根据主键获取Riskcontrolplanebymonth")
    @Override
    public Riskcontrolplanebymonth getRiskcontrolplanebymonth(Integer monthPlaneID){
        Riskcontrolplanebymonth riskMonth=riskcontrolplanebymonthDao
                .getRiskcontrolplanebymonth(monthPlaneID);
        if(riskMonth.getmMonthPlanItems()!=null && riskMonth.getmMonthPlanItems().size()>0){
            for (Riskcontrolplanebymonthitem item:riskMonth.getmMonthPlanItems()) {
                if(item.getRiskSiteID()>0){
                    Risksite risksite=risksiteDao.getRisksite(item.getRiskSiteID());
                    item.setmRiskSite(risksite);
                }
            }
        }
        return riskMonth;
    }

    //获取总条数
    @SystemServiceLog(description = "获取Riskcontrolplanebymonth总条数")
    @Override
    public Integer getRiskcontrolplanebymonthCount(){
        return riskcontrolplanebymonthDao.getRiskcontrolplanebymonthCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Riskcontrolplanebymonth数据")
    @Override
    public List<Riskcontrolplanebymonth> getRiskcontrolplanebymonthByPage(int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return riskcontrolplanebymonthDao.getRiskcontrolplanebymonthByPage(pageBegin,pageEnd);
    }

    //获取总条数，参数是Riskcontrolplanebymonth 对象
    @SystemServiceLog(description = "分页获取Riskcontrolplanebymonth数据,参数是Riskcontrolplanebymonth 对象")
    @Override
    public Integer getRiskcontrolplanebymonthCountByRiskcontrolplanebymonth(Riskcontrolplanebymonth riskcontrolplanebymonth){
         return riskcontrolplanebymonthDao.getRiskcontrolplanebymonthCountByRiskcontrolplanebymonth(riskcontrolplanebymonth);
    }

    //分页获取数据，参数是Riskcontrolplanebymonth 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Riskcontrolplanebymonth数据，参数是Riskcontrolplanebymonth 对象和页面大小和页码")
    @Override
    public List<Riskcontrolplanebymonth> getRiskcontrolplanebymonthByPageAndRiskcontrolplanebymonth(Riskcontrolplanebymonth riskcontrolplanebymonth){
        Integer pageBegin=(riskcontrolplanebymonth.getPage()-1)*riskcontrolplanebymonth.getPagesize();
        Integer pageEnd=riskcontrolplanebymonth.getPagesize();
        return riskcontrolplanebymonthDao.getRiskcontrolplanebymonthByPageAndRiskcontrolplanebymonth(riskcontrolplanebymonth,pageBegin,pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskcontrolplanebymonth数据")
    @Override
    public List<Riskcontrolplanebymonth>  getRiskcontrolplanebymonthData(Riskcontrolplanebymonth riskcontrolplanebymonth){
        return riskcontrolplanebymonthDao.getRiskcontrolplanebymonthData(riskcontrolplanebymonth);
    }

    @Override
    public Integer updateRiskcontrolplanebymonthItemStatus(String frameWorkID, Integer monthPlaneID, Integer itemID) {
        return riskcontrolplanebymonthDao.updateRiskcontrolplanebymonthItemStatus(
                frameWorkID,
                monthPlaneID,
                itemID);
    }


    @Override
    public List<Riskcontrolplanebymonth> getRiskControlMonthPlaneByUser(
            String frameWorkID,
            String monthPlanUnitName) {

        return riskcontrolplanebymonthDao.getRiskControlMonthPlaneByUser(
                frameWorkID,
                monthPlanUnitName
              );
    }

    @Override
    public List<Riskcontrolplanebymonth> getRiskControlMonthPlaneByDHZ(
            String frameWorkID,
            String monthPlanUnitName) {

        return riskcontrolplanebymonthDao.getRiskControlMonthPlaneByDHZ(
                frameWorkID,
                monthPlanUnitName
        );
    }
}