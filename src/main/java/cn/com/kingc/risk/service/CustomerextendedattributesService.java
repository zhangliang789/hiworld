package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Customerextendedattributes;

import java.util.List;

/**
 * Customerextendedattributes Service层
 */
public interface CustomerextendedattributesService {
    //新增一个Customerextendedattributes
    Boolean addCustomerextendedattributes(Customerextendedattributes customerextendedattributes);

    //批量新增Customerextendedattributes，参数是Customerextendedattributes集合
    void addCustomerextendedattributesList(List<Customerextendedattributes> customerextendedattributesList);

    //根据主键删除Customerextendedattributes,参数是对象
    Boolean deleteCustomerextendedattributes(Customerextendedattributes customerextendedattributes);

    //根据主键删除Customerextendedattributes，参数是主键
    Boolean deleteCustomerextendedattributesByID(Integer classPropertyID);

    //根据主键更新Customerextendedattributes
    Boolean updateCustomerextendedattributes(Customerextendedattributes customerextendedattributes);

    //根据主键获取Customerextendedattributes
    Customerextendedattributes getCustomerextendedattributes(Integer classPropertyID);

    //获取总条数
    Integer getCustomerextendedattributesCount();

    //分页获取数据
    List<Customerextendedattributes> getCustomerextendedattributesByPage(int pagesize, int page);

    //获取总条数，参数是Customerextendedattributes 对象
    Integer getCustomerextendedattributesCountByCustomerextendedattributes(Customerextendedattributes customerextendedattributes);

    //分页获取数据，参数是Customerextendedattributes 对象
    List<Customerextendedattributes> getCustomerextendedattributesByPageAndCustomerextendedattributes(Customerextendedattributes customerextendedattributes);

    //根据条件查询数据
    List<Customerextendedattributes> getCustomerextendedattributesData(Customerextendedattributes customerextendedattributes);
}