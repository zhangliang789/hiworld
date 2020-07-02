package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Customerextendedclass;
import java.util.List;

/**
*
*  Customerextendedclass Service层
*
*/
public interface CustomerextendedclassService {
    //新增一个Customerextendedclass
    Boolean addCustomerextendedclass(Customerextendedclass customerextendedclass);

    //根据主键删除Customerextendedclass,参数是对象
    Boolean deleteCustomerextendedclass(Customerextendedclass customerextendedclass);

    //根据主键删除Customerextendedclass，参数是主键
    Boolean deleteCustomerextendedclassByID(Integer classID);

    //根据主键更新Customerextendedclass
    Boolean updateCustomerextendedclass(Customerextendedclass customerextendedclass);

    //根据主键获取Customerextendedclass
    Customerextendedclass getCustomerextendedclass(Integer classID);

    //获取总条数
    Integer getCustomerextendedclassCount();

    //分页获取数据
    List<Customerextendedclass> getCustomerextendedclassByPage(int pagesize, int page);

    //获取总条数，参数是Customerextendedclass 对象
    Integer getCustomerextendedclassCountByCustomerextendedclass(Customerextendedclass customerextendedclass);

    //分页获取数据，参数是Customerextendedclass 对象
    List<Customerextendedclass> getCustomerextendedclassByPageAndCustomerextendedclass(Customerextendedclass customerextendedclass);

    //根据条件查询数据
    List<Customerextendedclass>  getCustomerextendedclassData(Customerextendedclass customerextendedclass);

    Integer initializeaCustomerextendedclass(
            String coalMineName,
            String frameWorkID);
}