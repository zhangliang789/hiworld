package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Customerextendedclass;

import java.util.List;

/**
 * CustomerextendedclassDao层
 * 对应数据库的 customerextendedclass表
 */
public interface CustomerextendedclassDao {

    //新增一个Customerextendedclass
    Integer addCustomerextendedclass(Customerextendedclass customerextendedclass);

    //根据主键删除Customerextendedclass，参数是一个对象
    Integer deleteCustomerextendedclass(Customerextendedclass customerextendedclass);

    //根据主键删除Customerextendedclass，参数是主键
    Integer deleteCustomerextendedclassByID(Integer classID);

    //根据主键更新Customerextendedclass
    Integer updateCustomerextendedclass(Customerextendedclass customerextendedclass);

    //根据主键获取Customerextendedclass
    Customerextendedclass getCustomerextendedclass(Integer classID);

    //获取总条数
    Integer getCustomerextendedclassCount();

    //分页获取数据
    List<Customerextendedclass> getCustomerextendedclassByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Customerextendedclass 对象
    Integer getCustomerextendedclassCountByCustomerextendedclass(Customerextendedclass customerextendedclass);

    //分页获取数据，参数是Customerextendedclass 对象 和开始页，结束页
    List<Customerextendedclass> getCustomerextendedclassByPageAndCustomerextendedclass(@Param("customerextendedclass") Customerextendedclass customerextendedclass, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Customerextendedclass> getCustomerextendedclassData(Customerextendedclass customerextendedclass);

    Integer initializeaCustomerextendedclass(
            @Param("coalMineName") String coalMineName,
            @Param("frameWorkID") String frameWorkID);
}