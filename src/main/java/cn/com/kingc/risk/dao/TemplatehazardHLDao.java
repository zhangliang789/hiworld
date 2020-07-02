package cn.com.kingc.risk.dao;

import cn.com.kingc.risk.model.Templatehazard;
import cn.com.kingc.risk.model.TemplatehazardHL;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TemplatehazardHLDao {

    /**
     * 新增一个TemplatehazardHL
     * @param item  TemplatehazardHL
     * @return 受影响的行数
     */
    Integer addTemplatehazardHL(@Param("item")TemplatehazardHL item);

    /**
     * 批量新增TemplatehazardHL
     * @param templatehazardHLList  TemplatehazardHL
     */
    void addTemplatehazardHLList(List<TemplatehazardHL> templatehazardHLList);

    /**
     * 删除TemplatehazardHL数据
     * @param templatehazardHL TemplatehazardHL
     * @return 受影响的行数
     */
    Integer deleteTemplatehazardHL(TemplatehazardHL templatehazardHL);

    /**
     * 根据主键删除TemplatehazardHL
     * @param id  TemplatehazardHL主键
     * @return 受影响的行数
     */
    Integer deleteTemplatehazardHLByID(Integer id);

    /**
     * 批量删除TemplatehazardHL
     * @param templatehazardHLList  TemplatehazardHL集合
     *
     */
    void deleteTemplatehazardHLList(List<TemplatehazardHL> templatehazardHLList);

    /**
     * 根据主键更新TemplatehazardHL
     * @param  templatehazardHL  TemplatehazardHL对象
     * @return 受影响的行数
     */
    Integer updateTemplatehazardHL(TemplatehazardHL templatehazardHL);

    /**
     * 根据主键获取TemplatehazardHL
     * @param  id  TemplatehazardHL对象主键
     * @return  TemplatehazardHL对象
     */
    TemplatehazardHL getTemplatehazardHL(Integer id);

    /**
     * 获取共有多少条记录，参数是TemplatehazardHL 对象
     * @param templatehazardHL TemplatehazardHL 对象
     * @return 记录数
     */
    Integer getTemplatehazardHLCount(@Param("templatehazardHL")TemplatehazardHL templatehazardHL);

    /**
     * 分页获取数据，参数是TemplatehazardHL 对象和开始位置，结束位置
     * @param templatehazardHL TemplatehazardHL 对象
     * @param pageBegin 开始位置
     * @param pageEnd 结束位置
     * @return TemplatehazardHL集合
     */
    List<TemplatehazardHL> getTemplatehazardHLByPage(@Param("templatehazardHL") TemplatehazardHL templatehazardHL, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);
    /**
     * 根据传入的TemplatehazardHL 对象查询数据
     * @param templatehazardHL TemplatehazardHL 对象
     * @return TemplatehazardHL集合
     */
    List<TemplatehazardHL> getTemplatehazardHLList(@Param("templatehazardHL")TemplatehazardHL templatehazardHL);

}
