package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Customerextendedattributes;
import java.util.List;
/**
* CustomerextendedattributesDao层
* 对应数据库的 customerextendedattributes表
*/
public interface CustomerextendedattributesDao{

    //新增一个Customerextendedattributes
    Integer addCustomerextendedattributes(Customerextendedattributes customerextendedattributes);

    //根据主键删除Customerextendedattributes，参数是一个对象
    Integer deleteCustomerextendedattributes(Customerextendedattributes customerextendedattributes);

    //批量新增Customerextendedattributes，参数是Customerextendedattributes集合
    void addCustomerextendedattributesList(List<Customerextendedattributes> customerextendedattributesList);

    //根据主键删除Customerextendedattributes，参数是主键
    Integer deleteCustomerextendedattributesByID(Integer classPropertyID);

    //根据主键更新Customerextendedattributes
    Integer updateCustomerextendedattributes(Customerextendedattributes customerextendedattributes);

    //根据主键获取Customerextendedattributes
    Customerextendedattributes getCustomerextendedattributes(Integer classPropertyID);

    //获取总条数
    Integer getCustomerextendedattributesCount();

    //分页获取数据
    List<Customerextendedattributes> getCustomerextendedattributesByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Customerextendedattributes 对象
    Integer getCustomerextendedattributesCountByCustomerextendedattributes(Customerextendedattributes customerextendedattributes);

    //分页获取数据，参数是Customerextendedattributes 对象 和开始页，结束页
    List<Customerextendedattributes> getCustomerextendedattributesByPageAndCustomerextendedattributes(@Param("customerextendedattributes") Customerextendedattributes customerextendedattributes, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Customerextendedattributes>  getCustomerextendedattributesData(Customerextendedattributes customerextendedattributes);
}