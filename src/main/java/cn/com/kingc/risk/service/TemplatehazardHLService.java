package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Templatehazard;
import cn.com.kingc.risk.model.TemplatehazardHL;
import org.platform4j.model.Framework;

import java.util.List;

public interface TemplatehazardHLService {

    /**
     * 新增一个TemplatehazardHL
     *
     * @param templatehazardHL TemplatehazardHL对象
     * @return 是否新增成功 成功返回ture 失败返回false
     */
    Integer addTemplatehazardHL(TemplatehazardHL templatehazardHL);

    /**
     * 批量新增TemplatehazardHL
     *
     * @param templatehazardHLList TemplatehazardHL集合
     */
    int addTemplatehazardHLList(List<TemplatehazardHL> templatehazardHLList);

    /**
     * controller使用
     * @param templatehazardHL
     * @return
     */
    int saveOrUpdateHazardHLList(TemplatehazardHL templatehazardHL);

    /**
     * 删除TemplatehazardHL数据
     *
     * @param templatehazardHL TemplatehazardHL对象
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    Boolean deleteTemplatehazardHL(TemplatehazardHL templatehazardHL);

    /**
     * 根据主键删除TemplatehazardHL
     *
     * @param id TemplatehazardHL主键
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    Boolean deleteTemplatehazardHLByID(Integer id);

    /**
     * 批量删除TemplatehazardHL
     *
     * @param templatehazardHLList TemplatehazardHL集合
     */
    void deleteTemplatehazardHLList(List<TemplatehazardHL> templatehazardHLList);

    /**
     * 根据主键更新TemplatehazardHL
     *
     * @param templatehazardHL TemplatehazardHL对象
     * @return 是否更新成功 成功返回ture 失败返回false
     */
    Boolean updateTemplatehazardHL(TemplatehazardHL templatehazardHL);

    /**
     * 根据主键获取TemplatehazardHL
     *
     * @param id TemplatehazardHL对象主键
     * @return TemplatehazardHL对象
     */
    TemplatehazardHL getTemplatehazardHL(Integer id);

    /**
     * 获取共有多少条记录，参数是TemplatehazardHL对象
     *
     * @param templatehazardHL TemplatehazardHL对象
     * @return 记录数
     */
    Integer getTemplatehazardHLCount(TemplatehazardHL templatehazardHL);

    /**
     * 分页获取数据，参数是TemplatehazardHL 对象
     *
     * @param templatehazardHL TemplatehazardHL 对象
     * @return TemplatehazardHL集合
     */
    List<TemplatehazardHL> getTemplatehazardHLByPage(TemplatehazardHL templatehazardHL);

    /**
     * 根据传入的TemplatehazardHL 对象查询数据
     *
     * @param templatehazardHL TemplatehazardHL 对象
     * @return TemplatehazardHL集合
     */
    List<TemplatehazardHL> getTemplatehazardHLList(TemplatehazardHL templatehazardHL);

    /**
     * 处理要导入的数据
     * @param framework
     * @param execlFileName
     * @return
     */
    Object analysisData(Framework framework, String execlFileName);

    /**
     * 保存excel导入数据
     * @param templatehazardHLList
     */
    void saveExcelImportList(List<TemplatehazardHL> templatehazardHLList);


}
