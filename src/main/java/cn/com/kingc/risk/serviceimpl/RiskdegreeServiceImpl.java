package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskdegreeDao;
import cn.com.kingc.risk.dao.RiskdegreeitemDao;
import cn.com.kingc.risk.model.Riskdegreeitem;
import cn.com.kingc.risk.service.RiskdegreeService;
import cn.com.kingc.risk.model.Riskdegree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;

import java.util.ArrayList;
import java.util.List;

/**
 * Riskdegree Service实现层
 */
@Service
public class RiskdegreeServiceImpl implements RiskdegreeService {
    @Autowired
    private RiskdegreeDao riskdegreeDao;
    @Autowired
    private RiskdegreeitemDao riskdegreeitemDao;

    //新增一个Riskdegree
    @SystemServiceLog(description = "新增一个Riskdegree")
    @Override
    public Boolean addRiskdegree(Riskdegree riskdegree) {
        return riskdegreeDao.addRiskdegree(riskdegree) > 0;
    }

    //根据主键删除Riskdegree
    @SystemServiceLog(description = "根据主键删除Riskdegree")
    @Override
    public Boolean deleteRiskdegree(Riskdegree riskdegree) {
        return riskdegreeDao.deleteRiskdegree(riskdegree) > 0;
    }

    //根据主键删除Riskdegree，参数是主键
    @SystemServiceLog(description = "根据主键删除Riskdegree,参数是主键")
    @Override
    public Boolean deleteRiskdegreeByID(Integer riskDegreeID) {
        return riskdegreeDao.deleteRiskdegreeByID(riskDegreeID) > 0;
    }


    //根据主键更新Riskdegree
    @SystemServiceLog(description = "根据主键更新Riskdegree")
    @Override
    public Boolean updateRiskdegree(Riskdegree riskdegree) {
        return riskdegreeDao.updateRiskdegree(riskdegree) > 0;
    }

    //根据主键获取Riskdegree
    @SystemServiceLog(description = "根据主键获取Riskdegree")
    @Override
    public Riskdegree getRiskdegree(Integer riskDegreeID) {

        return riskdegreeDao.getRiskdegree(riskDegreeID);
    }

    //根据主键获取Riskdegree
    @SystemServiceLog(description = "煤矿信息获取Riskdegree")
    @Override
    public Riskdegree getRiskdegreeByCoalMine(String coalMineName, String frameWorkID) {
        return riskdegreeDao.getRiskdegreeByCoalMine(coalMineName, frameWorkID);
    }

    //根据主键获取Riskdegree
    @SystemServiceLog(description = "煤矿信息,风险评估方法LEC/LS获取Riskdegree")
    @Override
    public Riskdegree getRiskdegreeByMethod(String frameWorkID, String hazardIdentificationMethod) {
        return riskdegreeDao.getRiskdegreeByMethod(frameWorkID, hazardIdentificationMethod);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Riskdegree总条数")
    @Override
    public Integer getRiskdegreeCount() {
        return riskdegreeDao.getRiskdegreeCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Riskdegree数据")
    @Override
    public List<Riskdegree> getRiskdegreeByPage(int pagesize, int page) {
        Integer pageBegin = (page - 1) * pagesize;
        Integer pageEnd = pagesize;
        return riskdegreeDao.getRiskdegreeByPage(pageBegin, pageEnd);
    }

    //获取总条数，参数是Riskdegree 对象
    @SystemServiceLog(description = "分页获取Riskdegree数据,参数是Riskdegree 对象")
    @Override
    public Integer getRiskdegreeCountByRiskdegree(Riskdegree riskdegree) {
        return riskdegreeDao.getRiskdegreeCountByRiskdegree(riskdegree);
    }

    //分页获取数据，参数是Riskdegree 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Riskdegree数据，参数是Riskdegree 对象和页面大小和页码")
    @Override
    public List<Riskdegree> getRiskdegreeByPageAndRiskdegree(Riskdegree riskdegree) {
        Integer pageBegin = (riskdegree.getPage() - 1) * riskdegree.getPagesize();
        Integer pageEnd = riskdegree.getPagesize();
        return riskdegreeDao.getRiskdegreeByPageAndRiskdegree(riskdegree, pageBegin, pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskdegree数据")
    @Override
    public List<Riskdegree> getRiskdegreeData(Riskdegree riskdegree) {
        //TODO 初始化RiskDegree
        List<Riskdegree> riskdegreeList = riskdegreeDao.getRiskdegreeData(riskdegree);
        //如果没有辨识方法就初始化辨识方法到数据库中
        if (riskdegreeList == null || riskdegreeList.size() == 0) {
//            Riskdegree rd = new Riskdegree();
//            rd.setFrameWorkID(riskdegree.getFrameWorkID());
//            rd.setCoalMineName(riskdegree.getCoalMineName());
//            rd.setHazardIdentificationMethod("风险矩阵分析法（LS）");
//            riskdegreeDao.addRiskdegree(rd);
//
//            List<Riskdegreeitem> riskdegreeitemList = new ArrayList<Riskdegreeitem>();
//            Riskdegreeitem riskdegreeitemzd = new Riskdegreeitem();
//            riskdegreeitemzd.setRiskColor("#FF0000");
//            riskdegreeitemzd.setRiskDegreeID(rd.getRiskDegreeID());
//            riskdegreeitemzd.setRiskLevel("重大风险");
//            riskdegreeitemzd.setRiskRangMAX(36);
//            riskdegreeitemzd.setRiskRangMIX(30);
//            riskdegreeitemzd.setCoalMineName(riskdegree.getCoalMineName());
//            riskdegreeitemzd.setFrameWorkID(riskdegree.getFrameWorkID());
//            riskdegreeitemList.add(riskdegreeitemzd);
//
//            Riskdegreeitem riskdegreeitemjd = new Riskdegreeitem();
//            riskdegreeitemjd.setRiskColor("#F1C232");
//            riskdegreeitemjd.setRiskDegreeID(rd.getRiskDegreeID());
//            riskdegreeitemjd.setRiskLevel("较大风险");
//            riskdegreeitemjd.setRiskRangMAX(25);
//            riskdegreeitemjd.setRiskRangMIX(18);
//            riskdegreeitemjd.setCoalMineName(riskdegree.getCoalMineName());
//            riskdegreeitemjd.setFrameWorkID(riskdegree.getFrameWorkID());
//            riskdegreeitemList.add(riskdegreeitemjd);
//
//            Riskdegreeitem riskdegreeitemyb = new Riskdegreeitem();
//            riskdegreeitemyb.setRiskColor("#FFFF00");
//            riskdegreeitemyb.setRiskDegreeID(rd.getRiskDegreeID());
//            riskdegreeitemyb.setRiskLevel("一般风险");
//            riskdegreeitemyb.setRiskRangMAX(16);
//            riskdegreeitemyb.setRiskRangMIX(8);
//            riskdegreeitemyb.setCoalMineName(riskdegree.getCoalMineName());
//            riskdegreeitemyb.setFrameWorkID(riskdegree.getFrameWorkID());
//            riskdegreeitemList.add(riskdegreeitemyb);
//
//            Riskdegreeitem riskdegreeitemd = new Riskdegreeitem();
//            riskdegreeitemd.setRiskColor("#3d85c6");
//            riskdegreeitemd.setRiskDegreeID(rd.getRiskDegreeID());
//            riskdegreeitemd.setRiskLevel("低风险");
//            riskdegreeitemd.setRiskRangMAX(6);
//            riskdegreeitemd.setRiskRangMIX(1);
//            riskdegreeitemd.setCoalMineName(riskdegree.getCoalMineName());
//            riskdegreeitemd.setFrameWorkID(riskdegree.getFrameWorkID());
//            riskdegreeitemList.add(riskdegreeitemd);
//
//            for (Riskdegreeitem riskdegreeitem : riskdegreeitemList) {
//                riskdegreeitemDao.addRiskdegreeitem(riskdegreeitem);
//            }
//
//            Riskdegree rdfx = new Riskdegree();
//            rdfx.setFrameWorkID(riskdegree.getFrameWorkID());
//            rdfx.setCoalMineName(riskdegree.getCoalMineName());
//            rdfx.setHazardIdentificationMethod("LEC风险评价法");
//            riskdegreeDao.addRiskdegree(rdfx);
//
//            List<Riskdegreeitem> riskdegreeitemLecList = new ArrayList<Riskdegreeitem>();
//            Riskdegreeitem riskdegreeitemjq=new  Riskdegreeitem();
//            riskdegreeitemjq.setRiskColor("#FF0000");
//            riskdegreeitemjq.setRiskDegreeID(rdfx.getRiskDegreeID());
//            riskdegreeitemjq.setRiskLevel("极其危险");
//            riskdegreeitemjq.setRiskRangMAX(10000);
//            riskdegreeitemjq.setRiskRangMIX(320);
//            riskdegreeitemjq.setCoalMineName(riskdegree.getCoalMineName());
//            riskdegreeitemjq.setFrameWorkID(riskdegree.getFrameWorkID());
//            riskdegreeitemLecList.add(riskdegreeitemjq);
//
//            Riskdegreeitem riskdegreeitemLeczd=new  Riskdegreeitem();
//            riskdegreeitemLeczd.setRiskColor("#FF0000");
//            riskdegreeitemLeczd.setRiskDegreeID(rdfx.getRiskDegreeID());
//            riskdegreeitemLeczd.setRiskLevel("重大风险");
//            riskdegreeitemLeczd.setRiskRangMAX(320);
//            riskdegreeitemLeczd.setRiskRangMIX(160);
//            riskdegreeitemLeczd.setCoalMineName(riskdegree.getCoalMineName());
//            riskdegreeitemLeczd.setFrameWorkID(riskdegree.getFrameWorkID());
//            riskdegreeitemLecList.add(riskdegreeitemLeczd);
//
//            Riskdegreeitem riskdegreeitemLecjd=new  Riskdegreeitem();
//            riskdegreeitemLecjd.setRiskColor("#F1C232");
//            riskdegreeitemLecjd.setRiskDegreeID(rdfx.getRiskDegreeID());
//            riskdegreeitemLecjd.setRiskLevel("较大风险");
//            riskdegreeitemLecjd.setRiskRangMAX(160);
//            riskdegreeitemLecjd.setRiskRangMIX(70);
//            riskdegreeitemLecjd.setCoalMineName(riskdegree.getCoalMineName());
//            riskdegreeitemLecjd.setFrameWorkID(riskdegree.getFrameWorkID());
//            riskdegreeitemLecList.add(riskdegreeitemLecjd);
//
//            Riskdegreeitem riskdegreeitemLecyb=new  Riskdegreeitem();
//            riskdegreeitemLecyb.setRiskColor("#FFFF00");
//            riskdegreeitemLecyb.setRiskDegreeID(rdfx.getRiskDegreeID());
//            riskdegreeitemLecyb.setRiskLevel("一般风险");
//            riskdegreeitemLecyb.setRiskRangMAX(70);
//            riskdegreeitemLecyb.setRiskRangMIX(20);
//            riskdegreeitemLecyb.setCoalMineName(riskdegree.getCoalMineName());
//            riskdegreeitemLecyb.setFrameWorkID(riskdegree.getFrameWorkID());
//            riskdegreeitemLecList.add(riskdegreeitemLecyb);
//
//            Riskdegreeitem riskdegreeitemLecd=new  Riskdegreeitem();
//            riskdegreeitemLecd.setRiskColor("#3d85c6");
//            riskdegreeitemLecd.setRiskDegreeID(rdfx.getRiskDegreeID());
//            riskdegreeitemLecd.setRiskLevel("低风险");
//            riskdegreeitemLecd.setRiskRangMAX(10000);
//            riskdegreeitemLecd.setRiskRangMIX(320);
//            riskdegreeitemLecd.setCoalMineName(riskdegree.getCoalMineName());
//            riskdegreeitemLecd.setFrameWorkID(riskdegree.getFrameWorkID());
//            riskdegreeitemLecList.add(riskdegreeitemLecd);
//
//            for (Riskdegreeitem riskdegreeitem : riskdegreeitemLecList) {
//                riskdegreeitemDao.addRiskdegreeitem(riskdegreeitem);
//            }
//            riskdegreeList = riskdegreeDao.getRiskdegreeData(riskdegree);
        }
        return riskdegreeList;
    }
}