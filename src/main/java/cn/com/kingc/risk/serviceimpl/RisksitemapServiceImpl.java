package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RisksitemapDao;
import cn.com.kingc.risk.service.RisksitemapService;
import cn.com.kingc.risk.model.Risksitemap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
* Title:风险地图信息表
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:Risksitemap Service实现层
* @date 2017-10-11 10:35:31 中国标准时间
* @author
* @version
*/

@Service
public class RisksitemapServiceImpl implements RisksitemapService{
    @Autowired
    private RisksitemapDao risksitemapDao;

    //新增一个Risksitemap
    @SystemServiceLog(description = "新增一个Risksitemap")
    @Override
    public Boolean addRisksitemap(Risksitemap risksitemap){
        return risksitemapDao.addRisksitemap(risksitemap)>0;
    }

    //批量新增Risksitemap，参数是Risksitemap集合
    @SystemServiceLog(description = "批量新增Risksitemap，参数是Risksitemap集合")
    @Override
    public void addRisksitemapList(List<Risksitemap> risksitemapList){
        risksitemapDao.addRisksitemapList(risksitemapList);
    }

    //根据主键删除Risksitemap
    @SystemServiceLog(description = "根据主键删除Risksitemap")
    @Override
    public Boolean deleteRisksitemap(Risksitemap risksitemap){
        return risksitemapDao.deleteRisksitemap(risksitemap)>0;
    }

    //根据主键删除Risksitemap，参数是主键
    @SystemServiceLog(description = "根据主键删除Risksitemap，参数是主键")
    @Override
    public Boolean deleteRisksitemapByID(Integer riskSiteMapId){
        return risksitemapDao.deleteRisksitemapByID(riskSiteMapId)>0;
    }


    //根据主键更新Risksitemap
    @SystemServiceLog(description = "根据主键更新Risksitemap")
    @Override
    public Boolean updateRisksitemap(Risksitemap risksitemap){
        return risksitemapDao.updateRisksitemap(risksitemap)>0;
    }

    //根据主键获取Risksitemap
    @SystemServiceLog(description = "根据主键获取Risksitemap")
    @Override
    public Risksitemap getRisksitemap(Integer riskSiteMapId){
        return risksitemapDao.getRisksitemap(riskSiteMapId);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Risksitemap总条数")
    @Override
    public Integer getRisksitemapCount(){
        return risksitemapDao.getRisksitemapCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Risksitemap数据")
    @Override
    public List<Risksitemap> getRisksitemapByPage(int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return risksitemapDao.getRisksitemapByPage(pageBegin,pageEnd);
    }

    //获取总条数，参数是Risksitemap 对象
    @SystemServiceLog(description = "分页获取Risksitemap数据，参数是Risksitemap 对象")
    @Override
    public Integer getRisksitemapCountByRisksitemap(Risksitemap risksitemap){
         return risksitemapDao.getRisksitemapCountByRisksitemap(risksitemap);
    }

    //分页获取数据，参数是Risksitemap 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Risksitemap数据，参数是Risksitemap 对象和页面大小和页码")
    @Override
    public List<Risksitemap> getRisksitemapByPageAndRisksitemap(Risksitemap risksitemap){
        Integer pageBegin=(risksitemap.getPage()-1)*risksitemap.getPagesize();
        Integer pageEnd=risksitemap.getPagesize();
        return risksitemapDao.getRisksitemapByPageAndRisksitemap(risksitemap,pageBegin,pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Risksitemap数据")
    @Override
    public List<Risksitemap>  getRisksitemapList(Risksitemap risksitemap){
        return risksitemapDao.getRisksitemapList(risksitemap);
    }

    //获取一个数据的不重复集合
    @Override
    public List<String> getDistinctItemList(String attribute){
        return risksitemapDao.getDistinctItemList(attribute);
    }
}