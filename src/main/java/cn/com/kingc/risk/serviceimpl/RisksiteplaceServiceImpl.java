package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RisksiteplaceDao;
import cn.com.kingc.risk.service.RisksiteplaceService;
import cn.com.kingc.risk.model.Risksiteplace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
*
*Risksiteplace Service实现层
*/
@Service("risksiteplaceService")
public class RisksiteplaceServiceImpl implements RisksiteplaceService{
    @Autowired
    private RisksiteplaceDao risksiteplaceDao;

    //新增一个Risksiteplace
    @SystemServiceLog(description = "新增一个Risksiteplace")
    @Override
    public Boolean addRisksiteplace(Risksiteplace risksiteplace){
        return risksiteplaceDao.addRisksiteplace(risksiteplace)>0;
    }

    //根据主键删除Risksiteplace
    @SystemServiceLog(description = "根据主键删除Risksiteplace")
    @Override
    public Boolean deleteRisksiteplace(Risksiteplace risksiteplace){
        return risksiteplaceDao.deleteRisksiteplace(risksiteplace)>0;
    }

    //根据主键删除Risksiteplace，参数是主键
    @SystemServiceLog(description = "根据主键删除Risksiteplace,参数是主键")
    @Override
    public Boolean deleteRisksiteplaceByID(Integer riskSiteID){
        return risksiteplaceDao.deleteRisksiteplaceByID(riskSiteID)>0;
    }


    //根据主键更新Risksiteplace
    @SystemServiceLog(description = "根据主键更新Risksiteplace")
    @Override
    public Boolean updateRisksiteplace(Risksiteplace risksiteplace){
        return risksiteplaceDao.updateRisksiteplace(risksiteplace)>0;
    }

    //根据主键获取Risksiteplace
    @SystemServiceLog(description = "根据主键获取Risksiteplace")
    @Override
    public Risksiteplace getRisksiteplace(Integer riskSiteID){
        return risksiteplaceDao.getRisksiteplace(riskSiteID);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Risksiteplace总条数")
    @Override
    public Integer getRisksiteplaceCount(){
        return risksiteplaceDao.getRisksiteplaceCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Risksiteplace数据")
    @Override
    public List<Risksiteplace> getRisksiteplaceByPage(int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return risksiteplaceDao.getRisksiteplaceByPage(pageBegin,pageEnd);
    }

    //获取总条数，参数是Risksiteplace 对象
    @SystemServiceLog(description = "分页获取Risksiteplace数据,参数是Risksiteplace 对象")
    @Override
    public Integer getRisksiteplaceCountByRisksiteplace(Risksiteplace risksiteplace){
         return risksiteplaceDao.getRisksiteplaceCountByRisksiteplace(risksiteplace);
    }

    //分页获取数据，参数是Risksiteplace 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Risksiteplace数据，参数是Risksiteplace 对象和页面大小和页码")
    @Override
    public List<Risksiteplace> getRisksiteplaceByPageAndRisksiteplace(Risksiteplace risksiteplace){
        Integer pageBegin=(risksiteplace.getPage()-1)*risksiteplace.getPagesize();
        Integer pageEnd=risksiteplace.getPagesize();
        return risksiteplaceDao.getRisksiteplaceByPageAndRisksiteplace(risksiteplace,pageBegin,pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Risksiteplace数据")
    @Override
    public List<Risksiteplace>  getRisksiteplaceData(Risksiteplace risksiteplace){
        return risksiteplaceDao.getRisksiteplaceData(risksiteplace);
    }
}