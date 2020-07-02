package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.Security_risk_assessmentDao;
import cn.com.kingc.risk.model.TemplatehazardHL;
import cn.com.kingc.risk.service.Security_risk_assessmentService;
import cn.com.kingc.risk.model.Security_risk_assessment;
import cn.com.kingc.risk.util.ExcelCell;
import cn.com.kingc.risk.util.ExcelRow;
import cn.com.kingc.risk.util.ExcelUtils;
import cn.com.kingc.risk.util.Properties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;

import java.io.File;
import java.io.IOException;
import java.util.*;

import org.platform4j.model.Framework;


/**
* Title:安全风险评估表
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:Security_risk_assessment Service实现层
* @date 2018-10-14 10:21:16 中国标准时间
* @author
* @version
*/

@Service
public class Security_risk_assessmentServiceImpl implements Security_risk_assessmentService {
    @Autowired
    private Security_risk_assessmentDao security_risk_assessmentDao;

    /**
     * 新增一个Security_risk_assessment
     *
     * @param security_risk_assessment Security_risk_assessment对象
     * @return 是否新增成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean addSecurity_risk_assessment(Security_risk_assessment security_risk_assessment) {
        return security_risk_assessmentDao.addSecurity_risk_assessment(security_risk_assessment) > 0;
    }

    /**
     * 批量新增Security_risk_assessment
     *
     * @param security_risk_assessmentList Security_risk_assessment集合
     */
    @Override
    public int addSecurity_risk_assessmentList(List<Security_risk_assessment> security_risk_assessmentList) {
        security_risk_assessmentDao.addSecurity_risk_assessmentList(security_risk_assessmentList);
        return security_risk_assessmentList.size();
    }

    /**
     * 删除Security_risk_assessment对象
     *
     * @param security_risk_assessment Security_risk_assessment对象
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean deleteSecurity_risk_assessment(Security_risk_assessment security_risk_assessment) {
        return security_risk_assessmentDao.deleteSecurity_risk_assessment(security_risk_assessment) > 0;
    }

    /**
     * 根据主键删除Security_risk_assessment
     *
     * @param risk_id Security_risk_assessment主键
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean deleteSecurity_risk_assessmentByID(Integer risk_id) {
        return security_risk_assessmentDao.deleteSecurity_risk_assessmentByID(risk_id) > 0;
    }

    /**
     * 批量删除Security_risk_assessment
     *
     * @param security_risk_assessmentList Security_risk_assessment集合
     */
    @Override
    public void deleteSecurity_risk_assessmentList(List<Security_risk_assessment> security_risk_assessmentList) {
        security_risk_assessmentDao.deleteSecurity_risk_assessmentList(security_risk_assessmentList);
    }

    /**
     * 根据主键更新Security_risk_assessment
     *
     * @param security_risk_assessment Security_risk_assessment对象
     * @return 是否更新成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean updateSecurity_risk_assessment(Security_risk_assessment security_risk_assessment) {
        return security_risk_assessmentDao.updateSecurity_risk_assessment(security_risk_assessment) > 0;
    }

    /**
     * 根据主键获取Security_risk_assessment
     *
     * @param risk_id Security_risk_assessment对象主键
     * @return Security_risk_assessment对象
     */
    @Override
    public Security_risk_assessment getSecurity_risk_assessment(Integer risk_id) {
        return security_risk_assessmentDao.getSecurity_risk_assessment(risk_id);
    }

    /**
     * 获取共有多少条记录，参数是Security_risk_assessment 对象
     *
     * @param security_risk_assessment Security_risk_assessment 对象
     * @return 记录数
     */
    @Override
    public Integer getSecurity_risk_assessmentCount(Security_risk_assessment security_risk_assessment) {
        return security_risk_assessmentDao.getSecurity_risk_assessmentCount(security_risk_assessment);
    }

    /**
     * 分页获取数据，参数是Security_risk_assessment 对象
     *
     * @param security_risk_assessment Security_risk_assessment 对象
     * @return Security_risk_assessment集合
     */
    @Override
    public List<Security_risk_assessment> getSecurity_risk_assessmentByPage(Security_risk_assessment security_risk_assessment) {
        Integer pageBegin = (security_risk_assessment.getPage() - 1) * security_risk_assessment.getPagesize();
        Integer pageEnd = security_risk_assessment.getPagesize();
        return security_risk_assessmentDao.getSecurity_risk_assessmentByPage(security_risk_assessment, pageBegin, pageEnd);
    }

    /**
     * 根据传入的Security_risk_assessment 对象查询数据
     *
     * @param security_risk_assessment Security_risk_assessment 对象
     * @return Security_risk_assessment集合
     */
    @Override
    public List<Security_risk_assessment> getSecurity_risk_assessmentList(Security_risk_assessment security_risk_assessment) {
        return security_risk_assessmentDao.getSecurity_risk_assessmentList(security_risk_assessment);
    }

    /**
     * 获取一个数据的不重复集合
     *
     * @param attribute 对象属性名称
     * @return List<String>
     */
    @Override
    public List<String> getDistinctItemList(String attribute) {
        return security_risk_assessmentDao.getDistinctItemList(attribute);
    }

    /**
     * 判断对象是否已经存在
     *
     * @param security_risk_assessment Security_risk_assessment 对象
     * @return 存在返回true 否则返回false
     */
    @Override
    public Boolean security_risk_assessmentIsExist(Security_risk_assessment security_risk_assessment) {
        return security_risk_assessmentDao.security_risk_assessmentIsExist(security_risk_assessment) > 0;
    }

    /**
     * 根据传入的对象获取一个唯一对象
     *
     * @param security_risk_assessment
     * @return security_risk_assessment 对象
     */
    @Override
    public Security_risk_assessment getSecurity_risk_assessmentUnique(Security_risk_assessment security_risk_assessment) {
        List<Security_risk_assessment> security_risk_assessmentList = security_risk_assessmentDao.getSecurity_risk_assessmentUnique(security_risk_assessment);
        assert security_risk_assessmentList != null && security_risk_assessmentList.size() == 1;
        return security_risk_assessmentList.get(0);
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
        List<ExcelRow> rowList = new ArrayList<ExcelRow>();

        try {
            //获取上传的文件
            Properties properties = new Properties();
            String path = properties.getProperty("fileUploadUrl");
            File file = new File(path + execlFileName);
            if (file.exists()) {
                ExcelUtils eu = new ExcelUtils();
                //从第四行开始读取
                eu.setStartReadPos(3);
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
                    List<Security_risk_assessment> detailList = new ArrayList<>();
                    for (int i = 0; i < rowList.size(); i++) {  //rowList是横向的对象是一个集合
                        ExcelRow row = rowList.get(i);
                        List<ExcelCell> cells = row.getCells();
                        if (cells != null && cells.size() > 0) {
                            Security_risk_assessment security_risk_assessment = new Security_risk_assessment();
                            for (int j = 0; j < cells.size(); j++) {
                                String cellContent = "";
                                if (cells.get(j).getValue() != "" && cells.get(j).getValue() != null) {
                                    cellContent = cells.get(j).getValue();
                                }
                                switch (j) {
                                    case 0:
                                        //部门
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_department(cellContent);
                                        }
                                        break;
                                    case 1:
                                        //工作任务
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_task(cellContent);
                                        }
                                        break;
                                    case 2:
                                        //工序
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_procedure(cellContent);
                                        }
                                        break;
                                    case 3:
                                        //风险
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_risk(cellContent);
                                        }
                                        break;
                                    case 4:
                                        //风险后果描述
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_consequences(cellContent);
                                        }
                                        break;
                                    case 5:
                                        //风险类型
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_type(cellContent);
                                        }
                                        break;
                                    case 6:
                                        //事故类型
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_accitype(cellContent);
                                        }
                                        break;
                                    case 7:
                                        //事故发生条件
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_condition(cellContent);
                                        }
                                        break;
                                    case 8:
                                        //可能性
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_possibility(cellContent);
                                        }
                                        break;
                                    //损失
                                    case 9:
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_loss(cellContent);
                                        }
                                        break;
                                    //风险值
                                    case 10:
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_value(cellContent);
                                        }
                                        break;
                                    //风险等级
                                    case 11:
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_grade(cellContent);
                                        }
                                        break;
                                    //管控对象
                                    case 12:
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_object(cellContent);
                                        }
                                        break;
                                    //管理标准
                                    case 13:
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_standard(cellContent);
                                        }
                                        break;
                                    //主要负责人
                                    case 14:
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_priperson(cellContent);
                                        }
                                        break;
                                    //直接管理人
                                    case 15:
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_dirmanager(cellContent);
                                        }
                                        break;
                                    //主要监管部门
                                    case 16:
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_major(cellContent);
                                        }
                                        break;
                                    //主要监管人
                                    case 17:
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_majorperson(cellContent);
                                        }
                                        break;
                                    //监管措施
                                    case 18:
                                        if (cellContent != null && cellContent != "") {
                                            security_risk_assessment.setRisk_measures(cellContent);
                                        }
                                        break;
                                }

                            }
                            detailList.add(security_risk_assessment);
                        }
                    }
                    //detailList收集完毕，可以处理
                   // this.saveExcelImportList(detailList);
                    this.addSecurity_risk_assessmentList(detailList);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
        return true;
    }




}