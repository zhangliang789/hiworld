package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Risksitemap;
import java.util.List;

/**
* Title:风险地图信息表
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:RisksitemapDao层 对应数据库的 risksitemap表
* @date 2017-10-11 10:35:30 中国标准时间
* @author
* @version
*/
public interface RisksitemapDao{

    //新增一个Risksitemap
    Integer addRisksitemap(Risksitemap risksitemap);

    //批量新增Risksitemap，参数是Risksitemap集合
    void addRisksitemapList(List<Risksitemap> risksitemapList);

    //根据主键删除Risksitemap，参数是一个对象
    Integer deleteRisksitemap(Risksitemap risksitemap);

    //根据主键删除Risksitemap，参数是主键
    Integer deleteRisksitemapByID(Integer riskSiteMapId);

    //根据主键更新Risksitemap
    Integer updateRisksitemap(Risksitemap risksitemap);

    //根据主键获取Risksitemap
    Risksitemap getRisksitemap(Integer riskSiteMapId);

    //获取总条数
    Integer getRisksitemapCount();

    //分页获取数据
    List<Risksitemap> getRisksitemapByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Risksitemap 对象
    Integer getRisksitemapCountByRisksitemap(Risksitemap risksitemap);

    //分页获取数据，参数是Risksitemap 对象 和开始页，结束页
    List<Risksitemap> getRisksitemapByPageAndRisksitemap(@Param("risksitemap") Risksitemap risksitemap, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //根据条件查询数据
    List<Risksitemap> getRisksitemapList(Risksitemap risksitemap);

    //获取一个数据的不重复集合
    List<String> getDistinctItemList(@Param("attribute") String attribute);

}