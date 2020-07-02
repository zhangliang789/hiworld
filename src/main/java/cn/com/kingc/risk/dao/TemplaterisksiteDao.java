package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Templaterisksite;
import java.util.List;
/**
* TemplaterisksiteDao层
* 对应数据库的 templaterisksite表
*/
public interface TemplaterisksiteDao{

    //新增一个Templaterisksite
    Integer addTemplaterisksite(Templaterisksite templaterisksite);

    //根据主键删除Templaterisksite，参数是一个对象
    Integer deleteTemplaterisksite(Templaterisksite templaterisksite);

    //根据主键删除Templaterisksite，参数是主键
    Integer deleteTemplaterisksiteByID(Integer riskTemplateID);

    //根据主键更新Templaterisksite
    Integer updateTemplaterisksite(Templaterisksite templaterisksite);

    //根据主键获取Templaterisksite
    Templaterisksite getTemplaterisksite(Integer riskTemplateID);

    //获取总条数
    Integer getTemplaterisksiteCount();

    //分页获取数据
    List<Templaterisksite> getTemplaterisksiteByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Templaterisksite 对象
    Integer getTemplaterisksiteCountByTemplaterisksite(Templaterisksite templaterisksite);

    //分页获取数据，参数是Templaterisksite 对象 和开始页，结束页
    List<Templaterisksite> getTemplaterisksiteByPageAndTemplaterisksite(@Param("templaterisksite") Templaterisksite templaterisksite, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Templaterisksite>  getTemplaterisksiteData(Templaterisksite templaterisksite);

    //根据地点类型查找对应的模板
    Templaterisksite getTemplaterisksiteByType(@Param("riskSiteType")String riskSiteType);
}