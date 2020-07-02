package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Riskidentificationbyyear;
import java.util.List;
/**
* RiskidentificationbyyearDao层
* 对应数据库的 riskidentificationbyyear表
*/
public interface RiskidentificationbyyearDao{

    //新增一个Riskidentificationbyyear
    Integer addRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear);

    //根据主键删除Riskidentificationbyyear，参数是一个对象
    Integer deleteRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear);

    //根据主键删除Riskidentificationbyyear，参数是主键
    Integer deleteRiskidentificationbyyearByID(Integer riskIdentificationYearID);

    //根据主键更新Riskidentificationbyyear
    Integer updateRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear);

    //根据主键获取Riskidentificationbyyear
    Riskidentificationbyyear getRiskidentificationbyyear(Integer riskIdentificationYearID);

    //获取总条数
    Integer getRiskidentificationbyyearCount();

    //分页获取数据
    List<Riskidentificationbyyear> getRiskidentificationbyyearByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //根据主键获取总条数
    Integer getRiskidentificationbyyearCountbyid(Integer riskIdentificationYearID);

    //根据主键分页获取数据
    List<Riskidentificationbyyear> getRiskidentificationbyyearByPagebyid(@Param("pageBegin") Integer riskIdentificationYearID,@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);



    //获取总条数，参数是Riskidentificationbyyear 对象
    Integer getRiskidentificationbyyearCountByRiskidentificationbyyear(Riskidentificationbyyear riskidentificationbyyear);

    //分页获取数据，参数是Riskidentificationbyyear 对象 和开始页，结束页
    List<Riskidentificationbyyear> getRiskidentificationbyyearByPageAndRiskidentificationbyyear(@Param("riskidentificationbyyear") Riskidentificationbyyear riskidentificationbyyear, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);


    //根据条件查询数据
    List<Riskidentificationbyyear>  getRiskidentificationbyyearData(Riskidentificationbyyear riskidentificationbyyear);
}