package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskdegreeitemDao;
import cn.com.kingc.risk.service.RiskdegreeitemService;
import cn.com.kingc.risk.model.Riskdegreeitem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
*
*Riskdegreeitem Service实现层
*/
@Service
public class RiskdegreeitemServiceImpl implements RiskdegreeitemService{
    @Autowired
    private RiskdegreeitemDao riskdegreeitemDao;

    //新增一个Riskdegreeitem
    @SystemServiceLog(description = "新增一个Riskdegreeitem")
    @Override
    public Boolean addRiskdegreeitem(Riskdegreeitem riskdegreeitem){
        return riskdegreeitemDao.addRiskdegreeitem(riskdegreeitem)>0;
    }

    //根据主键删除Riskdegreeitem
    @SystemServiceLog(description = "根据主键删除Riskdegreeitem")
    @Override
    public Boolean deleteRiskdegreeitem(Riskdegreeitem riskdegreeitem){
        return riskdegreeitemDao.deleteRiskdegreeitem(riskdegreeitem)>0;
    }

    //根据主键删除Riskdegreeitem，参数是主键
    @SystemServiceLog(description = "根据主键删除Riskdegreeitem,参数是主键")
    @Override
    public Boolean deleteRiskdegreeitemByID(Integer riskDegreeItemID){
        return riskdegreeitemDao.deleteRiskdegreeitemByID(riskDegreeItemID)>0;
    }


    //根据主键更新Riskdegreeitem
    @SystemServiceLog(description = "根据主键更新Riskdegreeitem")
    @Override
    public Boolean updateRiskdegreeitem(Riskdegreeitem riskdegreeitem){
        return riskdegreeitemDao.updateRiskdegreeitem(riskdegreeitem)>0;
    }

    //根据主键获取Riskdegreeitem
    @SystemServiceLog(description = "根据主键获取Riskdegreeitem")
    @Override
    public Riskdegreeitem getRiskdegreeitem(Integer riskDegreeItemID){
        return riskdegreeitemDao.getRiskdegreeitem(riskDegreeItemID);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Riskdegreeitem总条数")
    @Override
    public Integer getRiskdegreeitemCount(){
        return riskdegreeitemDao.getRiskdegreeitemCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Riskdegreeitem数据")
    @Override
    public List<Riskdegreeitem> getRiskdegreeitemByPage(int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return riskdegreeitemDao.getRiskdegreeitemByPage(pageBegin,pageEnd);
    }

    //获取总条数，参数是Riskdegreeitem 对象
    @SystemServiceLog(description = "分页获取Riskdegreeitem数据,参数是Riskdegreeitem 对象")
    @Override
    public Integer getRiskdegreeitemCountByRiskdegreeitem(Riskdegreeitem riskdegreeitem){
         return riskdegreeitemDao.getRiskdegreeitemCountByRiskdegreeitem(riskdegreeitem);
    }

    //分页获取数据，参数是Riskdegreeitem 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Riskdegreeitem数据，参数是Riskdegreeitem 对象和页面大小和页码")
    @Override
    public List<Riskdegreeitem> getRiskdegreeitemByPageAndRiskdegreeitem(Riskdegreeitem riskdegreeitem){
        Integer pageBegin=(riskdegreeitem.getPage()-1)*riskdegreeitem.getPagesize();
        Integer pageEnd=riskdegreeitem.getPagesize();
        return riskdegreeitemDao.getRiskdegreeitemByPageAndRiskdegreeitem(riskdegreeitem,pageBegin,pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskdegreeitem数据")
    @Override
    public List<Riskdegreeitem>  getRiskdegreeitemData(Riskdegreeitem riskdegreeitem){
        return riskdegreeitemDao.getRiskdegreeitemList(riskdegreeitem);
    }
}