package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.TemplaterisksiteDao;
import cn.com.kingc.risk.service.TemplaterisksiteService;
import cn.com.kingc.risk.model.Templaterisksite;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;

import java.util.List;

/**
 * Templaterisksite Service实现层
 */
@Service
public class TemplaterisksiteServiceImpl implements TemplaterisksiteService {
    @Autowired
    private TemplaterisksiteDao templaterisksiteDao;

    //新增一个Templaterisksite
    @SystemServiceLog(description = "新增一个Templaterisksite")
    @Override
    public Boolean addTemplaterisksite(Templaterisksite templaterisksite) {
        return templaterisksiteDao.addTemplaterisksite(templaterisksite) > 0;
    }

    //根据主键删除Templaterisksite
    @SystemServiceLog(description = "根据主键删除Templaterisksite")
    @Override
    public Boolean deleteTemplaterisksite(Templaterisksite templaterisksite) {
        return templaterisksiteDao.deleteTemplaterisksite(templaterisksite) > 0;
    }

    //根据主键删除Templaterisksite，参数是主键
    @SystemServiceLog(description = "根据主键删除Templaterisksite,参数是主键")
    @Override
    public Boolean deleteTemplaterisksiteByID(Integer riskTemplateID) {
        return templaterisksiteDao.deleteTemplaterisksiteByID(riskTemplateID) > 0;
    }


    //根据主键更新Templaterisksite
    @SystemServiceLog(description = "根据主键更新Templaterisksite")
    @Override
    public Boolean updateTemplaterisksite(Templaterisksite templaterisksite) {
        return templaterisksiteDao.updateTemplaterisksite(templaterisksite) > 0;
    }

    //根据主键获取Templaterisksite
    @SystemServiceLog(description = "根据主键获取Templaterisksite")
    @Override
    public Templaterisksite getTemplaterisksite(Integer riskTemplateID) {
        return templaterisksiteDao.getTemplaterisksite(riskTemplateID);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Templaterisksite总条数")
    @Override
    public Integer getTemplaterisksiteCount() {
        return templaterisksiteDao.getTemplaterisksiteCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Templaterisksite数据")
    @Override
    public List<Templaterisksite> getTemplaterisksiteByPage(int pagesize, int page) {
        Integer pageBegin = (page - 1) * pagesize;
        Integer pageEnd = pagesize;
        return templaterisksiteDao.getTemplaterisksiteByPage(pageBegin, pageEnd);
    }

    //获取总条数，参数是Templaterisksite 对象
    @SystemServiceLog(description = "分页获取Templaterisksite数据,参数是Templaterisksite 对象")
    @Override
    public Integer getTemplaterisksiteCountByTemplaterisksite(Templaterisksite templaterisksite) {
        return templaterisksiteDao.getTemplaterisksiteCountByTemplaterisksite(templaterisksite);
    }

    //分页获取数据，参数是Templaterisksite 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Templaterisksite数据，参数是Templaterisksite 对象和页面大小和页码")
    @Override
    public List<Templaterisksite> getTemplaterisksiteByPageAndTemplaterisksite(Templaterisksite templaterisksite) {
        Integer pageBegin = (templaterisksite.getPage() - 1) * templaterisksite.getPagesize();
        Integer pageEnd = templaterisksite.getPagesize();
        return templaterisksiteDao.getTemplaterisksiteByPageAndTemplaterisksite(templaterisksite, pageBegin, pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Templaterisksite数据")
    @Override
    public List<Templaterisksite> getTemplaterisksiteData(Templaterisksite templaterisksite) {
        return templaterisksiteDao.getTemplaterisksiteData(templaterisksite);
    }

    //根据地点类型查找风险点模板
    @SystemServiceLog(description = "根据条件查询数据Templaterisksite数据")
    @Override
    public Templaterisksite getTemplaterisksiteByType(String riskSiteType) {
        return templaterisksiteDao.getTemplaterisksiteByType(riskSiteType);
    }
}