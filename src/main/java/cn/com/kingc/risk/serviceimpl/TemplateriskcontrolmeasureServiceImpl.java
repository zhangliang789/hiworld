package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.TemplateriskcontrolmeasureDao;
import cn.com.kingc.risk.service.TemplateriskcontrolmeasureService;
import cn.com.kingc.risk.model.Templateriskcontrolmeasure;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
*
*Templateriskcontrolmeasure Service实现层
*/
@Service
public class TemplateriskcontrolmeasureServiceImpl implements TemplateriskcontrolmeasureService{
    @Autowired
    private TemplateriskcontrolmeasureDao templateriskcontrolmeasureDao;

    //新增一个Templateriskcontrolmeasure
    @SystemServiceLog(description = "新增一个Templateriskcontrolmeasure")
    @Override
    public Boolean addTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure){
        return templateriskcontrolmeasureDao.addTemplateriskcontrolmeasure(templateriskcontrolmeasure)>0;
    }

    //根据主键删除Templateriskcontrolmeasure
    @SystemServiceLog(description = "根据主键删除Templateriskcontrolmeasure")
    @Override
    public Boolean deleteTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure){
        return templateriskcontrolmeasureDao.deleteTemplateriskcontrolmeasure(templateriskcontrolmeasure)>0;
    }

    //根据外键HazardID删除模板措施
    @SystemServiceLog(description = "根据主键删除Templateriskcontrolmeasure")
    @Override
    public Boolean deleteTemplateriskcontrolmeasureByHazardID(Integer HazardID){
        return templateriskcontrolmeasureDao.deleteTemplateriskcontrolmeasureByHazardID(HazardID)>0;
    }

    //根据主键删除Templateriskcontrolmeasure，参数是主键
    @SystemServiceLog(description = "根据主键删除Templateriskcontrolmeasure,参数是主键")
    @Override
    public Boolean deleteTemplateriskcontrolmeasureByID(Integer measureID){
        return templateriskcontrolmeasureDao.deleteTemplateriskcontrolmeasureByID(measureID)>0;
    }


    //根据主键更新Templateriskcontrolmeasure
    @SystemServiceLog(description = "根据主键更新Templateriskcontrolmeasure")
    @Override
    public Boolean updateTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure){
        return templateriskcontrolmeasureDao.updateTemplateriskcontrolmeasure(templateriskcontrolmeasure)>0;
    }

    //根据主键获取Templateriskcontrolmeasure
    @SystemServiceLog(description = "根据主键获取Templateriskcontrolmeasure")
    @Override
    public Templateriskcontrolmeasure getTemplateriskcontrolmeasure(Integer measureID){
        return templateriskcontrolmeasureDao.getTemplateriskcontrolmeasure(measureID);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Templateriskcontrolmeasure总条数")
    @Override
    public Integer getTemplateriskcontrolmeasureCount(){
        return templateriskcontrolmeasureDao.getTemplateriskcontrolmeasureCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Templateriskcontrolmeasure数据")
    @Override
    public List<Templateriskcontrolmeasure> getTemplateriskcontrolmeasureByPage(int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return templateriskcontrolmeasureDao.getTemplateriskcontrolmeasureByPage(pageBegin,pageEnd);
    }

    //获取总条数，参数是Templateriskcontrolmeasure 对象
    @SystemServiceLog(description = "分页获取Templateriskcontrolmeasure数据,参数是Templateriskcontrolmeasure 对象")
    @Override
    public Integer getTemplateriskcontrolmeasureCountByTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure){
         return templateriskcontrolmeasureDao.getTemplateriskcontrolmeasureCountByTemplateriskcontrolmeasure(templateriskcontrolmeasure);
    }

    //分页获取数据，参数是Templateriskcontrolmeasure 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Templateriskcontrolmeasure数据，参数是Templateriskcontrolmeasure 对象和页面大小和页码")
    @Override
    public List<Templateriskcontrolmeasure> getTemplateriskcontrolmeasureByPageAndTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure){
        Integer pageBegin=(templateriskcontrolmeasure.getPage()-1)*templateriskcontrolmeasure.getPagesize();
        Integer pageEnd=templateriskcontrolmeasure.getPagesize();
        return templateriskcontrolmeasureDao.getTemplateriskcontrolmeasureByPageAndTemplateriskcontrolmeasure(templateriskcontrolmeasure,pageBegin,pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Templateriskcontrolmeasure数据")
    @Override
    public List<Templateriskcontrolmeasure>  getTemplateriskcontrolmeasureData(Templateriskcontrolmeasure templateriskcontrolmeasure){
        return templateriskcontrolmeasureDao.getTemplateriskcontrolmeasureData(templateriskcontrolmeasure);
    }
}