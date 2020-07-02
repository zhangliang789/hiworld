package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskcontrolanalyzeDao;
import cn.com.kingc.risk.dao.RiskcontrolanalyzeitemDao;
import cn.com.kingc.risk.dao.RisksiteoutofcontrolitemDao;
import cn.com.kingc.risk.model.Riskcontrolanalyzeitem;
import cn.com.kingc.risk.model.Riskcontrolplanebymonth;
import cn.com.kingc.risk.model.Risksiteoutofcontrolitem;
import cn.com.kingc.risk.service.RiskcontrolanalyzeService;
import cn.com.kingc.risk.model.Riskcontrolanalyze;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;

import java.util.List;

/**
 * Riskcontrolanalyze Service实现层
 */
@Service
public class RiskcontrolanalyzeServiceImpl implements RiskcontrolanalyzeService {
    @Autowired
    private RiskcontrolanalyzeDao riskcontrolanalyzeDao;
    @Autowired
    private RisksiteoutofcontrolitemDao risksiteoutofcontrolitemDao;
    @Autowired
    private RiskcontrolanalyzeitemDao riskcontrolanalyzeitemDao;

    //新增一个Riskcontrolanalyze
    @SystemServiceLog(description = "新增一个Riskcontrolanalyze")
    @Override
    public Boolean addRiskcontrolanalyze(Riskcontrolanalyze riskcontrolanalyze) {
        return riskcontrolanalyzeDao.addRiskcontrolanalyze(riskcontrolanalyze) > 0;
    }

    //根据主键删除Riskcontrolanalyze
    @SystemServiceLog(description = "根据主键删除Riskcontrolanalyze")
    @Override
    public Boolean deleteRiskcontrolanalyze(Riskcontrolanalyze riskcontrolanalyze) {
        List<Riskcontrolanalyzeitem> list = riskcontrolanalyze.getmAnalyzeItem();
        if (list != null) {
            for (Riskcontrolanalyzeitem riskcontrolanalyzeitem : list) {
                riskcontrolanalyzeitemDao.deleteRiskcontrolanalyzeitem(riskcontrolanalyzeitem);
            }
        }
        return riskcontrolanalyzeDao.deleteRiskcontrolanalyze(riskcontrolanalyze) > 0;
    }

    //根据主键删除Riskcontrolanalyze，参数是主键
    @SystemServiceLog(description = "根据主键删除Riskcontrolanalyze,参数是主键")
    @Override
    public Boolean deleteRiskcontrolanalyzeByID(Integer mAnalyzeID) {
        return riskcontrolanalyzeDao.deleteRiskcontrolanalyzeByID(mAnalyzeID) > 0;
    }


    //根据主键更新Riskcontrolanalyze
    @SystemServiceLog(description = "根据主键更新Riskcontrolanalyze")
    @Override
    public Boolean updateRiskcontrolanalyze(Riskcontrolanalyze riskcontrolanalyze) {
        return riskcontrolanalyzeDao.updateRiskcontrolanalyze(riskcontrolanalyze) > 0;
    }

    //根据主键获取Riskcontrolanalyze
    @SystemServiceLog(description = "根据主键获取Riskcontrolanalyze")
    @Override
    public Riskcontrolanalyze getRiskcontrolanalyze(Integer mAnalyzeID) {
        Riskcontrolanalyze riskcontrolanalyze = riskcontrolanalyzeDao.getRiskcontrolanalyze(mAnalyzeID);
        if (riskcontrolanalyze.getmAnalyzeItem() != null) {
            for (Riskcontrolanalyzeitem item : riskcontrolanalyze.getmAnalyzeItem()) {
                if (item.getLostControlItemID() > 0) {
                    Risksiteoutofcontrolitem lostItem =
                            risksiteoutofcontrolitemDao.getRisksiteoutofcontrolitem(item.getLostControlItemID());
                    item.setLostControlItem(lostItem);
                }
            }
        }
        return riskcontrolanalyze;
    }

    //获取总条数
    @SystemServiceLog(description = "获取Riskcontrolanalyze总条数")
    @Override
    public Integer getRiskcontrolanalyzeCount() {
        return riskcontrolanalyzeDao.getRiskcontrolanalyzeCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Riskcontrolanalyze数据")
    @Override
    public List<Riskcontrolanalyze> getRiskcontrolanalyzeByPage(int pagesize, int page) {
        Integer pageBegin = (page - 1) * pagesize;
        Integer pageEnd = pagesize;
        return riskcontrolanalyzeDao.getRiskcontrolanalyzeByPage(pageBegin, pageEnd);
    }

    //获取总条数，参数是Riskcontrolanalyze 对象
    @SystemServiceLog(description = "分页获取Riskcontrolanalyze数据,参数是Riskcontrolanalyze 对象")
    @Override
    public Integer getRiskcontrolanalyzeCountByRiskcontrolanalyze(Riskcontrolanalyze riskcontrolanalyze) {
        return riskcontrolanalyzeDao.getRiskcontrolanalyzeCountByRiskcontrolanalyze(riskcontrolanalyze);
    }

    //分页获取数据，参数是Riskcontrolanalyze 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Riskcontrolanalyze数据，参数是Riskcontrolanalyze 对象和页面大小和页码")
    @Override
    public List<Riskcontrolanalyze> getRiskcontrolanalyzeByPageAndRiskcontrolanalyze(Riskcontrolanalyze riskcontrolanalyze) {
        Integer pageBegin = (riskcontrolanalyze.getPage() - 1) * riskcontrolanalyze.getPagesize();
        Integer pageEnd = riskcontrolanalyze.getPagesize();
        return riskcontrolanalyzeDao.getRiskcontrolanalyzeByPageAndRiskcontrolanalyze(riskcontrolanalyze, pageBegin, pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskcontrolanalyze数据")
    @Override
    public List<Riskcontrolanalyze> getRiskcontrolanalyzeData(Riskcontrolanalyze riskcontrolanalyze) {
        return riskcontrolanalyzeDao.getRiskcontrolanalyzeData(riskcontrolanalyze);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据现场检查情况生成管控情况分析数据")
    @Override
    public List<String> getAnalyzeConclusion(String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType) {
        return riskcontrolanalyzeDao.getAnalyzeConclusion(frameWorkID, checkYear, checkMonth, MajorType);
    }

    //检查当月是否含有该条管控效果分析
    @SystemServiceLog(description = "根检查当月是否含有该条管控效果分析")
    @Override
    public List<Riskcontrolanalyze> checkData(String frameWorkID, String frameWorkName, String startTime, String endTime, String MajorType) {
        return riskcontrolanalyzeDao.checkData(frameWorkID, frameWorkName, startTime, endTime, MajorType);
    }

    @SystemServiceLog(description = "查看没有分析过且失控的计划")
    @Override
    public List<Riskcontrolplanebymonth> getNotAnalyzePlane(String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType, String monthPlanFrequency) {
        return riskcontrolanalyzeDao.getNotAnalyzePlane(frameWorkID, checkYear, checkMonth, MajorType, monthPlanFrequency);
    }

    @SystemServiceLog(description = "查看没有分析过且失控的计划")
    @Override
    public List<Riskcontrolplanebymonth> getNotAnalyzePlaneByPingMei(String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType, String monthPlanFrequency) {
        return riskcontrolanalyzeDao.getNotAnalyzePlaneByPingMei(frameWorkID, checkYear, checkMonth, MajorType, monthPlanFrequency);
    }


    @SystemServiceLog(description = "查看所有没有分析过的计划")
    @Override
    public List<Riskcontrolplanebymonth> getNotAnalyzePlaneWithallItem(String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType, String monthPlanFrequency) {
        return riskcontrolanalyzeDao.getNotAnalyzePlaneWithallItem(frameWorkID, checkYear, checkMonth, MajorType, monthPlanFrequency);
    }

    @SystemServiceLog(description = "根据月度计划分析主表")
    @Override
    public Integer AnalyzeMonthPlane(Integer CreaterID, String CreaterName, Integer CreateUnitID, String CreateUnitName, Integer monthPlaneID) {
        return riskcontrolanalyzeDao.AnalyzeMonthPlane(
                CreaterID,
                CreaterName,
                CreateUnitID,
                CreateUnitName,
                monthPlaneID
        );
    }

    @Override
    public Integer AnalyzeItemByOutofControl(Integer monthPlaneID, Integer mAnalyzeID) {
        return riskcontrolanalyzeDao.AnalyzeItemByOutofControl(monthPlaneID, mAnalyzeID);
    }

    @Override
    public Integer AnalyzeItemallStatus(Integer monthPlaneID, Integer mAnalyzeID){
        return riskcontrolanalyzeDao.AnalyzeItemallStatus(monthPlaneID,mAnalyzeID);
    }

    @SystemServiceLog(description = "查看没有分析过的所有的计划")
    @Override
    public List<Riskcontrolplanebymonth> getNotAnalyzePlanAllstatus(String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType, String monthPlanFrequency) {
        return riskcontrolanalyzeDao.getNotAnalyzePlanAllstatus(frameWorkID, checkYear, checkMonth, MajorType, monthPlanFrequency);
    }

    //根据主键获取Riskcontrolanalyze
    @SystemServiceLog(description = "根据主键获取Riskcontrolanalyze")
    @Override
    public Riskcontrolanalyze getallStatusRiskcontrolanalyze(Integer mAnalyzeID) {
        Riskcontrolanalyze riskcontrolanalyze = riskcontrolanalyzeDao.getRiskcontrolanalyze(mAnalyzeID);
        if (riskcontrolanalyze.getmAnalyzeItem() != null) {
            for (Riskcontrolanalyzeitem item : riskcontrolanalyze.getmAnalyzeItem()) {
                if (item.getLostControlItemID() > 0) {
                    Risksiteoutofcontrolitem lostItem =
                            risksiteoutofcontrolitemDao.getRisksiteoutofcontrolitem(item.getLostControlItemID());
                    item.setLostControlItem(lostItem);
                }
            }
        }
        return riskcontrolanalyze;
    }

    @SystemServiceLog(description = "查看没有分析过的所有的计划")
    @Override
    public List<Riskcontrolplanebymonth> getNotAnalyzePlanAllstatuss(String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType, String monthPlanFrequency) {
        return riskcontrolanalyzeDao.getNotAnalyzePlanAllstatuss(frameWorkID, checkYear, checkMonth, MajorType, monthPlanFrequency);
    }

    @SystemServiceLog(description = "查看没有分析过且失控的计划")
    @Override
    public List<Riskcontrolplanebymonth> getNotAnalyzePlanes(String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType, String monthPlanFrequency) {
        return riskcontrolanalyzeDao.getNotAnalyzePlanes(frameWorkID, checkYear, checkMonth, MajorType, monthPlanFrequency);
    }

}