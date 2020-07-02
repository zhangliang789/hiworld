package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskcontrolanalyzeitemDao;
import cn.com.kingc.risk.dao.RisksiteoutofcontrolattachmentDao;
import cn.com.kingc.risk.dao.RisksiteoutofcontrolitemDao;
import cn.com.kingc.risk.service.RisksiteoutofcontrolitemService;
import cn.com.kingc.risk.model.Risksiteoutofcontrolitem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;

import java.util.List;

/**
 * Risksiteoutofcontrolitem Service实现层
 */
@Service
public class RisksiteoutofcontrolitemServiceImpl implements RisksiteoutofcontrolitemService {
    @Autowired
    private RisksiteoutofcontrolitemDao risksiteoutofcontrolitemDao;

    @Autowired
    private RisksiteoutofcontrolattachmentDao risksiteoutofcontrolattachmentDao;

    @Autowired
    private RiskcontrolanalyzeitemDao riskcontrolanalyzeitemDao;


    //新增一个Risksiteoutofcontrolitem
    @SystemServiceLog(description = "新增一个Risksiteoutofcontrolitem")
    @Override
    public Boolean addRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem) {
        return risksiteoutofcontrolitemDao.addRisksiteoutofcontrolitem(risksiteoutofcontrolitem) > 0;
    }

    //新增一个Risksiteoutofcontrolitem
    @SystemServiceLog(description = "按List<Risksiteoutofcontrolitem>增加")
    @Override
    public void addRisksiteOutOfcontrolItemes(List<Risksiteoutofcontrolitem> list) {
        risksiteoutofcontrolitemDao.addRisksiteOutOfcontrolItemes(list);
    }

    //根据主键删除Risksiteoutofcontrolitem
    @SystemServiceLog(description = "根据主键删除Risksiteoutofcontrolitem")
    @Override
    public Boolean deleteRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem) {
        //先删除附件表
        risksiteoutofcontrolattachmentDao.deleteRisksiteoutofcontrolattachmentByItemID(risksiteoutofcontrolitem.getItemID());
        //再删除问题表
        return risksiteoutofcontrolitemDao.deleteRisksiteoutofcontrolitemByID(risksiteoutofcontrolitem.getItemID()) > 0;
    }

    //根据主键删除Risksiteoutofcontrolitem，参数是主键
    @SystemServiceLog(description = "根据主键删除Risksiteoutofcontrolitem,参数是主键")
    @Override
    public Boolean deleteRisksiteoutofcontrolitemByID(Integer itemID) {
        //先删除附件表
        risksiteoutofcontrolattachmentDao.deleteRisksiteoutofcontrolattachmentByID(itemID);
        return risksiteoutofcontrolitemDao.deleteRisksiteoutofcontrolitemByID(itemID) > 0;
    }

    @Override
    public Integer deleteRiskSiteOutOfControlItemByCheckRecordID(Integer checkRecordID) {
        return risksiteoutofcontrolitemDao.deleteRisksiteoutofcontrolitemByCheckRecordID(checkRecordID);
    }

    //根据主键更新Risksiteoutofcontrolitem
    @SystemServiceLog(description = "根据主键更新Risksiteoutofcontrolitem")
    @Override
    public Boolean updateRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem) {
        return risksiteoutofcontrolitemDao.updateRisksiteoutofcontrolitem(risksiteoutofcontrolitem) > 0;
    }

    //根据主键获取Risksiteoutofcontrolitem
    @SystemServiceLog(description = "根据主键获取Risksiteoutofcontrolitem")
    @Override
    public Risksiteoutofcontrolitem getRisksiteoutofcontrolitem(Integer itemID) {
        return risksiteoutofcontrolitemDao.getRisksiteoutofcontrolitem(itemID);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Risksiteoutofcontrolitem总条数")
    @Override
    public Integer getRisksiteoutofcontrolitemCount() {
        return risksiteoutofcontrolitemDao.getRisksiteoutofcontrolitemCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Risksiteoutofcontrolitem数据")
    @Override
    public List<Risksiteoutofcontrolitem> getRisksiteoutofcontrolitemByPage(int pagesize, int page) {
        Integer pageBegin = (page - 1) * pagesize;
        Integer pageEnd = pagesize;
        return risksiteoutofcontrolitemDao.getRisksiteoutofcontrolitemByPage(pageBegin, pageEnd);
    }

    //获取总条数，参数是Risksiteoutofcontrolitem 对象
    @SystemServiceLog(description = "分页获取Risksiteoutofcontrolitem数据,参数是Risksiteoutofcontrolitem 对象")
    @Override
    public Integer getRisksiteoutofcontrolitemCountByRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem) {
        return risksiteoutofcontrolitemDao.getRisksiteoutofcontrolitemCountByRisksiteoutofcontrolitem(risksiteoutofcontrolitem);
    }

    //分页获取数据，参数是Risksiteoutofcontrolitem 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Risksiteoutofcontrolitem数据，参数是Risksiteoutofcontrolitem 对象和页面大小和页码")
    @Override
    public List<Risksiteoutofcontrolitem> getRisksiteoutofcontrolitemByPageAndRisksiteoutofcontrolitem(Risksiteoutofcontrolitem risksiteoutofcontrolitem) {
        Integer pageBegin = (risksiteoutofcontrolitem.getPage() - 1) * risksiteoutofcontrolitem.getPagesize();
        Integer pageEnd = risksiteoutofcontrolitem.getPagesize();
        return risksiteoutofcontrolitemDao.getRisksiteoutofcontrolitemByPageAndRisksiteoutofcontrolitem(risksiteoutofcontrolitem, pageBegin, pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Risksiteoutofcontrolitem数据")
    @Override
    public List<Risksiteoutofcontrolitem> getRisksiteoutofcontrolitemData(Risksiteoutofcontrolitem risksiteoutofcontrolitem) {
        return risksiteoutofcontrolitemDao.getRisksiteoutofcontrolitemData(risksiteoutofcontrolitem);
    }
}