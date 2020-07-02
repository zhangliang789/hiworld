package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Templateriskcontrolmeasure;
import java.util.List;

/**
*
*  Templateriskcontrolmeasure Service层
*
*/
public interface TemplateriskcontrolmeasureService {
    //新增一个Templateriskcontrolmeasure
    Boolean addTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure);

    //根据主键删除Templateriskcontrolmeasure,参数是对象
    Boolean deleteTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure);

    //根据主键删除Templateriskcontrolmeasure，参数是主键
    Boolean deleteTemplateriskcontrolmeasureByID(Integer measureID);
    Boolean deleteTemplateriskcontrolmeasureByHazardID(Integer HazardID);
    //根据主键更新Templateriskcontrolmeasure
    Boolean updateTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure);

    //根据主键获取Templateriskcontrolmeasure
    Templateriskcontrolmeasure getTemplateriskcontrolmeasure(Integer measureID);

    //获取总条数
    Integer getTemplateriskcontrolmeasureCount();

    //分页获取数据
    List<Templateriskcontrolmeasure> getTemplateriskcontrolmeasureByPage(int pagesize, int page);

    //获取总条数，参数是Templateriskcontrolmeasure 对象
    Integer getTemplateriskcontrolmeasureCountByTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure);

    //分页获取数据，参数是Templateriskcontrolmeasure 对象
    List<Templateriskcontrolmeasure> getTemplateriskcontrolmeasureByPageAndTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure);

    //根据条件查询数据
    List<Templateriskcontrolmeasure>  getTemplateriskcontrolmeasureData(Templateriskcontrolmeasure templateriskcontrolmeasure);
}