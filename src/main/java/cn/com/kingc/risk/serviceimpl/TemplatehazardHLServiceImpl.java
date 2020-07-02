package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.TemplatehazardHLDao;
import cn.com.kingc.risk.model.Templatehazard;
import cn.com.kingc.risk.model.TemplatehazardHL;
import cn.com.kingc.risk.model.Templateriskcontrolmeasure;
import cn.com.kingc.risk.service.TemplatehazardHLService;
import cn.com.kingc.risk.util.ExcelCell;
import cn.com.kingc.risk.util.ExcelRow;
import cn.com.kingc.risk.util.ExcelUtils;
import cn.com.kingc.risk.util.Properties;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class TemplatehazardHLServiceImpl implements TemplatehazardHLService {

    @Autowired
    TemplatehazardHLDao templatehazardHLDao;
    /**
     * 新增一个TemplatehazardHL
     *
     * @param templatehazardHL TemplatehazardHL对象
     * @return 是否新增成功 成功返回ture 失败返回false
     */
    @Override
    public Integer addTemplatehazardHL(TemplatehazardHL templatehazardHL){
        templatehazardHLDao.addTemplatehazardHL(templatehazardHL);
        return templatehazardHL.getId();
    }

    /**
     * 批量新增TemplatehazardHL
     *
     * @param templatehazardHLList TemplatehazardHL集合
     */
    @Override
    public int addTemplatehazardHLList(List<TemplatehazardHL> templatehazardHLList){
         templatehazardHLDao.addTemplatehazardHLList(templatehazardHLList);
         return templatehazardHLList.size();
    }

    /**
     * 删除TemplatehazardHL数据
     *
     * @param templatehazardHL TemplatehazardHL对象
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean deleteTemplatehazardHL(TemplatehazardHL templatehazardHL){
         return templatehazardHLDao.deleteTemplatehazardHL(templatehazardHL) > 0;
    }

    /**
     * 根据主键删除TemplatehazardHL
     *
     * @param id TemplatehazardHL主键
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean deleteTemplatehazardHLByID(Integer id){
        return templatehazardHLDao.deleteTemplatehazardHLByID(id) > 0;
    }

    /**
     * 批量删除TemplatehazardHL
     *
     * @param templatehazardHLList TemplatehazardHL集合
     */
    @Override
    public void deleteTemplatehazardHLList(List<TemplatehazardHL> templatehazardHLList){
        templatehazardHLDao.deleteTemplatehazardHLList(templatehazardHLList);
    }

    /**
     * 根据主键更新TemplatehazardHL
     *
     * @param templatehazardHL TemplatehazardHL对象
     * @return 是否更新成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean updateTemplatehazardHL(TemplatehazardHL templatehazardHL){
        return templatehazardHLDao.updateTemplatehazardHL(templatehazardHL) > 0;
    }

    /**
     * 根据主键获取TemplatehazardHL
     *
     * @param id TemplatehazardHL对象主键
     * @return TemplatehazardHL对象
     */
    @Override
    public TemplatehazardHL getTemplatehazardHL(Integer id){
        return templatehazardHLDao.getTemplatehazardHL(id);
    }

    /**
     * 获取共有多少条记录，参数是TemplatehazardHL对象
     *
     * @param templatehazardHL TemplatehazardHL对象
     * @return 记录数
     */
    @Override
    public Integer getTemplatehazardHLCount(TemplatehazardHL templatehazardHL){

        return templatehazardHLDao.getTemplatehazardHLCount(templatehazardHL);
    }

    /**
     * 分页获取数据，参数是TemplatehazardHL 对象
     *
     * @param templatehazardHL TemplatehazardHL 对象
     * @return TemplatehazardHL集合
     */
    @Override
    public List<TemplatehazardHL> getTemplatehazardHLByPage(TemplatehazardHL templatehazardHL){
        Integer pageBegin = (templatehazardHL.getPage() - 1) * templatehazardHL.getPagesize();
        Integer pageEnd = templatehazardHL.getPagesize();
        return templatehazardHLDao.getTemplatehazardHLByPage(templatehazardHL,pageBegin,pageEnd);
    }

    /**
     * 根据传入的TemplatehazardHL 对象查询数据
     *
     * @param templatehazardHL TemplatehazardHL 对象
     * @return TemplatehazardHL集合
     */
    @Override
    public List<TemplatehazardHL> getTemplatehazardHLList(TemplatehazardHL templatehazardHL){
        return templatehazardHLDao.getTemplatehazardHLList(templatehazardHL);
    }

    @Override
    public int saveOrUpdateHazardHLList(TemplatehazardHL templatehazardHL){
        //如果是修改，将已有的删除重新保存
        List<TemplatehazardHL> oldDetailList =  templatehazardHL.getDetailList();
        for(TemplatehazardHL oldDetail : oldDetailList){
            if(oldDetail.getId() != null){
                this.deleteTemplatehazardHLByID(oldDetail.getId());
                oldDetail.setId(null);
            }
        }
        String workflowId = UUID.randomUUID().toString();
        List<TemplatehazardHL> detailList = templatehazardHL.getDetailList();
        for(int i=0;i<detailList.size();i++){
            TemplatehazardHL detail = detailList.get(i);
            detail.setWorkflowId(workflowId);
            detail.setWorkflowContent(templatehazardHL.getWorkflowContent());
            detail.setStepNum(i);
        }
        return this.addTemplatehazardHLList(detailList);
    }


    /**
     * 解析上传的excel文件
     *
     * @param execlFileName
     * @return
     */
    @Override
    public Object analysisData(Framework framework, String execlFileName) {
        String orgID = framework.getFramewordID();
        List<Templatehazard> temList = new ArrayList<Templatehazard>();
        List<Templateriskcontrolmeasure> temmeasure = new ArrayList<Templateriskcontrolmeasure>();
        List list = new ArrayList();
        List<ExcelRow> rowList = new ArrayList<ExcelRow>();

        try {
            //获取上传的文件
            Properties properties = new Properties();
            String path = properties.getProperty("fileUploadUrl");
            File file = new File(path + execlFileName);
            if (file.exists()) {
                ExcelUtils eu = new ExcelUtils();
                //从第二行开始读取
                eu.setStartReadPos(2);
                String xlspath = path + execlFileName;           //通过文件的路径取遍历创建表格
                try {
                    rowList = eu.readExcelRows(xlspath);
                } catch (IOException e) {
                    e.printStackTrace();
                }
                if (rowList != null) {
                    //获取表格的第一行的值（表单标题）
//                    ExcelRow rows = rowList.get(0);
//                    List<ExcelCell> cellzo = rows.getCells();
                    String oldWorkflowContent = "";
                    List<TemplatehazardHL> detailList = new ArrayList<>();
                    for (int i = 0; i < rowList.size(); i++) {  //rowList是横向的对象是一个集合
                        ExcelRow row = rowList.get(i);
                        List<ExcelCell> cells = row.getCells();
                        if (cells != null && cells.size() > 0) {
                            TemplatehazardHL templatehazardHL = new TemplatehazardHL();
                            for(int j=0;j<cells.size();j++){
                                String cellContent = "";
                                if (cells.get(j).getValue() != "" && cells.get(j).getValue() != null) {
                                    cellContent = cells.get(j).getValue();
                                }

                                switch (j){
                                    case 1:
                                        //管控对象
                                        if(cellContent != null && cellContent != ""){
                                            templatehazardHL.setControlObjectName(cellContent);
                                        }
                                        break;
                                    case 2:
                                        //工作流程
                                        if(cellContent != null && cellContent != ""){
//                                            if(!cellContent.equals(oldWorkflowContent)){
                                            oldWorkflowContent = cellContent;
                                            templatehazardHL.setWorkflowContent(oldWorkflowContent);
//                                            }
                                        }else{
                                            templatehazardHL.setWorkflowContent(oldWorkflowContent);
                                        }
                                        break;
                                    case 3:
                                        //工作步骤
                                        if(cellContent != null && cellContent != ""){
                                            templatehazardHL.setWorkStep(cellContent);
                                        }
                                        break;
                                    case 4:
                                        //可能造成的事故及后果
                                        if(cellContent != null && cellContent != ""){
                                            templatehazardHL.setWorkResult(cellContent);
                                        }
                                        break;
                                    case 5:
                                        //事故发生可能性
                                        if(cellContent != null && cellContent != ""){
                                            templatehazardHL.setResultAbility(cellContent);
                                        }
                                        break;
                                    case 6:
                                        //事故后果严重性
                                        if(cellContent != null && cellContent != ""){
                                            templatehazardHL.setResultSeriously(cellContent);
                                        }
                                        break;
                                    case 7:
                                        //风险度
                                        if(cellContent != null && cellContent != ""){
                                            templatehazardHL.setResultRisklradio(cellContent);
                                        }
                                        break;
                                    case 8:
                                        //风险等级
                                        if(cellContent != null && cellContent != ""){
                                            templatehazardHL.setResultRisklevel(cellContent);
                                        }
                                        break;
                                    case 9:
                                        if(cellContent != null && cellContent != ""){
                                            templatehazardHL.setControlMeasure(cellContent);
                                        }
                                        break;
                                }

                            }
                            detailList.add(templatehazardHL);
                        }
                    }
                    //detailList收集完毕，可以处理
                    this.saveExcelImportList(detailList);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
        return true;
    }

    @Override
    public void saveExcelImportList(List<TemplatehazardHL> templatehazardHLList){
        Map<String,String> map = new HashMap();
        for(TemplatehazardHL detail : templatehazardHLList){
            if(detail.getWorkflowContent() != null && detail.getWorkflowContent() != ""){
                map.put(detail.getWorkflowContent(),detail.getWorkflowContent());
            }
        }

        //对map进行遍历分组
        for (final Map.Entry<String, String> entry : map.entrySet()) {
            TemplatehazardHL hazardHLtotal = new TemplatehazardHL();
            List<TemplatehazardHL> detailList = new ArrayList<>();
            for(TemplatehazardHL hazardHL: templatehazardHLList){
                if(entry.getKey().equals(hazardHL.getWorkflowContent())){
                    detailList.add(hazardHL);
                }
                hazardHLtotal.setWorkflowContent(entry.getKey());
                hazardHLtotal.setDetailList(detailList);
            }
            this.saveOrUpdateHazardHLList(hazardHLtotal);
        }

    }
}
