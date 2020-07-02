package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Templaterisksite;

import java.util.List;

/**
*
*  Templaterisksite Service层
*
*/
public interface TemplaterisksiteService {
    //新增一个Templaterisksite
    Boolean addTemplaterisksite(Templaterisksite templaterisksite);

    //根据主键删除Templaterisksite,参数是对象
    Boolean deleteTemplaterisksite(Templaterisksite templaterisksite);

    //根据主键删除Templaterisksite，参数是主键
    Boolean deleteTemplaterisksiteByID(Integer riskTemplateID);

    //根据主键更新Templaterisksite
    Boolean updateTemplaterisksite(Templaterisksite templaterisksite);

    //根据主键获取Templaterisksite
    Templaterisksite getTemplaterisksite(Integer riskTemplateID);

    //获取总条数
    Integer getTemplaterisksiteCount();

    //分页获取数据
    List<Templaterisksite> getTemplaterisksiteByPage(int pagesize, int page);

    //获取总条数，参数是Templaterisksite 对象
    Integer getTemplaterisksiteCountByTemplaterisksite(Templaterisksite templaterisksite);

    //分页获取数据，参数是Templaterisksite 对象
    List<Templaterisksite> getTemplaterisksiteByPageAndTemplaterisksite(Templaterisksite templaterisksite);

    //根据条件查询数据
    List<Templaterisksite>  getTemplaterisksiteData(Templaterisksite templaterisksite);

    //根据地点类型查找对应的模板
    Templaterisksite getTemplaterisksiteByType(String riskSiteType);
}