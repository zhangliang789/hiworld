package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Risksitemap;
import java.util.List;

/**
* Title:风险地图信息表
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:Risksitemap Service层
* @date 2017-10-11 10:35:31 中国标准时间
* @author
* @version
*/
public interface RisksitemapService {
    //新增一个Risksitemap
    Boolean addRisksitemap(Risksitemap risksitemap);

    //批量新增Risksitemap，参数是Risksitemap集合
    void addRisksitemapList(List<Risksitemap> risksitemapList);

    //根据主键删除Risksitemap,参数是对象
    Boolean deleteRisksitemap(Risksitemap risksitemap);

    //根据主键删除Risksitemap，参数是主键
    Boolean deleteRisksitemapByID(Integer riskSiteMapId);

    //根据主键更新Risksitemap
    Boolean updateRisksitemap(Risksitemap risksitemap);

    //根据主键获取Risksitemap
    Risksitemap getRisksitemap(Integer riskSiteMapId);

    //获取总条数
    Integer getRisksitemapCount();

    //分页获取数据
    List<Risksitemap> getRisksitemapByPage(int pagesize, int page);

    //获取总条数，参数是Risksitemap 对象
    Integer getRisksitemapCountByRisksitemap(Risksitemap risksitemap);

    //分页获取数据，参数是Risksitemap 对象
    List<Risksitemap> getRisksitemapByPageAndRisksitemap(Risksitemap risksitemap);

    //根据条件查询数据
    List<Risksitemap>  getRisksitemapList(Risksitemap risksitemap);

    //获取一个数据的不重复集合
    List<String> getDistinctItemList(String attribute);
}