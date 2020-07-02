package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RisksiteoutofcontrolattachmentDao;
import cn.com.kingc.risk.service.RisksiteoutofcontrolattachmentService;
import cn.com.kingc.risk.model.Risksiteoutofcontrolattachment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
*
*Risksiteoutofcontrolattachment Service实现层
*/
@Service
public class RisksiteoutofcontrolattachmentServiceImpl implements RisksiteoutofcontrolattachmentService{
    @Autowired
    private RisksiteoutofcontrolattachmentDao risksiteoutofcontrolattachmentDao;

    //新增一个Risksiteoutofcontrolattachment
    @SystemServiceLog(description = "新增一个Risksiteoutofcontrolattachment")
    @Override
    public Boolean addRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment){
        return risksiteoutofcontrolattachmentDao.addRisksiteoutofcontrolattachment(risksiteoutofcontrolattachment)>0;
    }

    //批量新增Risksiteoutofcontrolattachment，参数是Risksiteoutofcontrolattachment集合
    @SystemServiceLog(description = "批量新增Risksiteoutofcontrolattachment，参数是Risksiteoutofcontrolattachment集合")
    @Override
    public void addRisksiteoutofcontrolattachmentList(List<Risksiteoutofcontrolattachment> risksiteoutofcontrolattachmentList){
        risksiteoutofcontrolattachmentDao.addRisksiteoutofcontrolattachmentList(risksiteoutofcontrolattachmentList);
    }

    //根据主键删除Risksiteoutofcontrolattachment
    @SystemServiceLog(description = "根据主键删除Risksiteoutofcontrolattachment")
    @Override
    public Boolean deleteRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment){
        return risksiteoutofcontrolattachmentDao.deleteRisksiteoutofcontrolattachment(risksiteoutofcontrolattachment)>0;
    }

    //根据主键删除Risksiteoutofcontrolattachment，参数是主键
    @SystemServiceLog(description = "根据主键删除Risksiteoutofcontrolattachment，参数是主键")
    @Override
    public Boolean deleteRisksiteoutofcontrolattachmentByID(Integer attchID){
        return risksiteoutofcontrolattachmentDao.deleteRisksiteoutofcontrolattachmentByID(attchID)>0;
    }


    //根据主键更新Risksiteoutofcontrolattachment
    @SystemServiceLog(description = "根据主键更新Risksiteoutofcontrolattachment")
    @Override
    public Boolean updateRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment){
        return risksiteoutofcontrolattachmentDao.updateRisksiteoutofcontrolattachment(risksiteoutofcontrolattachment)>0;
    }

    //根据主键获取Risksiteoutofcontrolattachment
    @SystemServiceLog(description = "根据主键获取Risksiteoutofcontrolattachment")
    @Override
    public Risksiteoutofcontrolattachment getRisksiteoutofcontrolattachment(Integer checkRecordID){
        return risksiteoutofcontrolattachmentDao.getRisksiteoutofcontrolattachment(checkRecordID);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Risksiteoutofcontrolattachment总条数")
    @Override
    public Integer getRisksiteoutofcontrolattachmentCount(){
        return risksiteoutofcontrolattachmentDao.getRisksiteoutofcontrolattachmentCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Risksiteoutofcontrolattachment数据")
    @Override
    public List<Risksiteoutofcontrolattachment> getRisksiteoutofcontrolattachmentByPage(int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return risksiteoutofcontrolattachmentDao.getRisksiteoutofcontrolattachmentByPage(pageBegin,pageEnd);
    }

    //获取总条数，参数是Risksiteoutofcontrolattachment 对象
    @SystemServiceLog(description = "分页获取Risksiteoutofcontrolattachment数据，参数是Risksiteoutofcontrolattachment 对象")
    @Override
    public Integer getRisksiteoutofcontrolattachmentCountByRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment){
         return risksiteoutofcontrolattachmentDao.getRisksiteoutofcontrolattachmentCountByRisksiteoutofcontrolattachment(risksiteoutofcontrolattachment);
    }

    //分页获取数据，参数是Risksiteoutofcontrolattachment 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Risksiteoutofcontrolattachment数据，参数是Risksiteoutofcontrolattachment 对象和页面大小和页码")
    @Override
    public List<Risksiteoutofcontrolattachment> getRisksiteoutofcontrolattachmentByPageAndRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment){
        Integer pageBegin=(risksiteoutofcontrolattachment.getPage()-1)*risksiteoutofcontrolattachment.getPagesize();
        Integer pageEnd=risksiteoutofcontrolattachment.getPagesize();
        return risksiteoutofcontrolattachmentDao.getRisksiteoutofcontrolattachmentByPageAndRisksiteoutofcontrolattachment(risksiteoutofcontrolattachment,pageBegin,pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Risksiteoutofcontrolattachment数据")
    @Override
    public List<Risksiteoutofcontrolattachment>  getRisksiteoutofcontrolattachmentList(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment){
        return risksiteoutofcontrolattachmentDao.getRisksiteoutofcontrolattachmentList(risksiteoutofcontrolattachment);
    }
}