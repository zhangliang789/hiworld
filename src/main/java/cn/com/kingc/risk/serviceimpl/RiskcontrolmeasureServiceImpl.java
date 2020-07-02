package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.group.xinjiangdbcontrol.model.RiskControlMethod;
import cn.com.kingc.group.xinjiangdbcontrol.service.CollierySubmitService;
import cn.com.kingc.risk.dao.RiskcontrolmeasureDao;
import cn.com.kingc.risk.model.Riskhazard;
import cn.com.kingc.risk.service.RiskcontrolmeasureService;
import cn.com.kingc.risk.model.Riskcontrolmeasure;
import cn.com.kingc.risk.service.RiskhazardService;
import org.heart.common.utils.UtilsString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;

import java.util.Arrays;
import java.util.List;

/**
 * Riskcontrolmeasure Service实现层
 */
@Service("riskcontrolmeasureService")
public class RiskcontrolmeasureServiceImpl implements RiskcontrolmeasureService {
    @Autowired
    private RiskcontrolmeasureDao riskcontrolmeasureDao;

    @Autowired
    private CollierySubmitService collierySubmitService;

    @Autowired
    private RiskhazardService riskhazardService;

    //新增一个Riskcontrolmeasure
    @SystemServiceLog(description = "新增一个Riskcontrolmeasure")
    @Override
    public Boolean addRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure) {

        Boolean flag = riskcontrolmeasureDao.addRiskcontrolmeasure(riskcontrolmeasure) > 0;

        if (flag) {
            //验证当前隐患是否上报，
            Riskhazard riskhazard = riskhazardService.getRiskhazard(riskcontrolmeasure.getHazardID());
            if (riskhazard != null && UtilsString.equals(riskhazard.getIsSubmit(), Riskhazard.SUBMIT)) {
                List<RiskControlMethod> conversion = RiskControlMethodUtils.conversion(Arrays.asList(riskcontrolmeasure), String.valueOf(riskcontrolmeasure.getHazardID()));
                collierySubmitService.batchInsert(conversion);
            }
        }

        return flag;
    }

    //根据主键删除Riskcontrolmeasure
    @SystemServiceLog(description = "根据主键删除Riskcontrolmeasure")
    @Override
    public Boolean deleteRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure) {
        return riskcontrolmeasureDao.deleteRiskcontrolmeasure(riskcontrolmeasure) > 0;
    }

    //根据主键删除Riskcontrolmeasure，参数是主键
    @SystemServiceLog(description = "根据主键删除Riskcontrolmeasure,参数是主键")
    @Override
    public Boolean deleteRiskcontrolmeasureByID(Integer measureID) {
        return riskcontrolmeasureDao.deleteRiskcontrolmeasureByID(measureID) > 0;
    }


    //根据主键更新Riskcontrolmeasure
    @SystemServiceLog(description = "根据主键更新Riskcontrolmeasure")
    @Override
    public Boolean updateRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure) {
        boolean flag = riskcontrolmeasureDao.updateRiskcontrolmeasure(riskcontrolmeasure) > 0;
        if (flag) {
            //验证当前隐患是否上报，
            Riskhazard riskhazard = riskhazardService.getRiskhazard(riskcontrolmeasure.getHazardID());
            if (riskhazard != null && UtilsString.equals(riskhazard.getIsSubmit(), Riskhazard.SUBMIT)) {
                collierySubmitService.updateMethodContent(String.valueOf(riskcontrolmeasure.getMeasureID()),riskcontrolmeasure.getMeasureContent());
            }
        }
        return flag;
    }

    //根据主键获取Riskcontrolmeasure
    @SystemServiceLog(description = "根据主键获取Riskcontrolmeasure")
    @Override
    public Riskcontrolmeasure getRiskcontrolmeasure(Integer measureID) {
        return riskcontrolmeasureDao.getRiskcontrolmeasure(measureID);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Riskcontrolmeasure总条数")
    @Override
    public Integer getRiskcontrolmeasureCount() {
        return riskcontrolmeasureDao.getRiskcontrolmeasureCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Riskcontrolmeasure数据")
    @Override
    public List<Riskcontrolmeasure> getRiskcontrolmeasureByPage(int pagesize, int page) {
        Integer pageBegin = (page - 1) * pagesize;
        Integer pageEnd = pagesize;
        return riskcontrolmeasureDao.getRiskcontrolmeasureByPage(pageBegin, pageEnd);
    }

    //获取总条数，参数是Riskcontrolmeasure 对象
    @SystemServiceLog(description = "分页获取Riskcontrolmeasure数据,参数是Riskcontrolmeasure 对象")
    @Override
    public Integer getRiskcontrolmeasureCountByRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure) {
        return riskcontrolmeasureDao.getRiskcontrolmeasureCountByRiskcontrolmeasure(riskcontrolmeasure);
    }

    //分页获取数据，参数是Riskcontrolmeasure 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Riskcontrolmeasure数据，参数是Riskcontrolmeasure 对象和页面大小和页码")
    @Override
    public List<Riskcontrolmeasure> getRiskcontrolmeasureByPageAndRiskcontrolmeasure(Riskcontrolmeasure riskcontrolmeasure) {
        Integer pageBegin = (riskcontrolmeasure.getPage() - 1) * riskcontrolmeasure.getPagesize();
        Integer pageEnd = riskcontrolmeasure.getPagesize();
        return riskcontrolmeasureDao.getRiskcontrolmeasureByPageAndRiskcontrolmeasure(riskcontrolmeasure, pageBegin, pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskcontrolmeasure数据")
    @Override
    public List<Riskcontrolmeasure> getRiskcontrolmeasureData(Riskcontrolmeasure riskcontrolmeasure) {
        return riskcontrolmeasureDao.getRiskcontrolmeasureData(riskcontrolmeasure);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskcontrolmeasure数据")
    @Override
    public List<Riskcontrolmeasure> getRiskcontrolmeasureDatas(Riskcontrolmeasure riskcontrolmeasure) {
        return riskcontrolmeasureDao.getRiskcontrolmeasureDatas(riskcontrolmeasure);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskcontrolmeasure数据")
    @Override
    public List<Riskcontrolmeasure> getRiskcontrolmeasureDataCount(Riskcontrolmeasure riskcontrolmeasure) {
        return riskcontrolmeasureDao.getRiskcontrolmeasureDataCount(riskcontrolmeasure);
    }

}