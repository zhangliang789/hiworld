package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Templateriskcontrolmeasure;
import java.util.List;
/**
* TemplateriskcontrolmeasureDao层
* 对应数据库的 templateriskcontrolmeasure表
*/
public interface TemplateriskcontrolmeasureDao{

    //新增一个Templateriskcontrolmeasure
    Integer addTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure);

    //根据主键删除Templateriskcontrolmeasure，参数是一个对象
    Integer deleteTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure);

    //根据主键删除Templateriskcontrolmeasure，参数是主键
    Integer deleteTemplateriskcontrolmeasureByID(Integer measureID);

    Integer deleteTemplateriskcontrolmeasureByHazardID(Integer HazardID);
    //根据主键更新Templateriskcontrolmeasure
    Integer updateTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure);

    //根据主键获取Templateriskcontrolmeasure
    Templateriskcontrolmeasure getTemplateriskcontrolmeasure(Integer measureID);

    //获取总条数
    Integer getTemplateriskcontrolmeasureCount();

    //分页获取数据
    List<Templateriskcontrolmeasure> getTemplateriskcontrolmeasureByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Templateriskcontrolmeasure 对象
    Integer getTemplateriskcontrolmeasureCountByTemplateriskcontrolmeasure(Templateriskcontrolmeasure templateriskcontrolmeasure);

    //分页获取数据，参数是Templateriskcontrolmeasure 对象 和开始页，结束页
    List<Templateriskcontrolmeasure> getTemplateriskcontrolmeasureByPageAndTemplateriskcontrolmeasure(@Param("templateriskcontrolmeasure") Templateriskcontrolmeasure templateriskcontrolmeasure, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Templateriskcontrolmeasure>  getTemplateriskcontrolmeasureData(Templateriskcontrolmeasure templateriskcontrolmeasure);
}