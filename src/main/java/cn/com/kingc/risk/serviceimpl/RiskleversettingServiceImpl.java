package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskleversettingDao;
import cn.com.kingc.risk.model.Riskdegree;
import cn.com.kingc.risk.model.Riskdegreeitem;
import cn.com.kingc.risk.service.RiskdegreeService;
import cn.com.kingc.risk.service.RiskdegreeitemService;
import cn.com.kingc.risk.service.RiskleversettingService;
import cn.com.kingc.risk.model.Riskleversetting;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;

import java.util.List;

/**
 * Title:
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 * Description:Riskleversetting Service实现层
 *
 * @author
 * @date 2017-11-22 14:24:08 中国标准时间
 */

@Service("riskleversettingService")
public class RiskleversettingServiceImpl implements RiskleversettingService {
    @Autowired
    private RiskleversettingDao riskleversettingDao;

    @Autowired
    private RiskdegreeService riskdegreeService;


    @Autowired
    private RiskdegreeitemService riskdegreeitemService;

    /**
     * 新增一个Riskleversetting
     *
     * @param riskleversetting Riskleversetting对象
     * @return 是否新增成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean addRiskleversetting(Riskleversetting riskleversetting) {
        return riskleversettingDao.addRiskleversetting(riskleversetting) > 0;
    }

    /**
     * 批量新增Riskleversetting
     *
     * @param riskleversettingList Riskleversetting集合
     */
    @Override
    public void addRiskleversettingList(List<Riskleversetting> riskleversettingList) {
        riskleversettingDao.addRiskleversettingList(riskleversettingList);
    }

    /**
     * 删除Riskleversetting对象
     *
     * @param riskleversetting Riskleversetting对象
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean deleteRiskleversetting(Riskleversetting riskleversetting) {
        return riskleversettingDao.deleteRiskleversetting(riskleversetting) > 0;
    }

    /**
     * 根据主键删除Riskleversetting
     *
     * @param riskLevelSettingID Riskleversetting主键
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean deleteRiskleversettingByID(Integer riskLevelSettingID) {
        return riskleversettingDao.deleteRiskleversettingByID(riskLevelSettingID) > 0;
    }

    /**
     * 批量删除Riskleversetting
     *
     * @param riskleversettingList Riskleversetting集合
     */
    @Override
    public void deleteRiskleversettingList(List<Riskleversetting> riskleversettingList) {
        riskleversettingDao.deleteRiskleversettingList(riskleversettingList);
    }

    /**
     * 根据主键更新Riskleversetting
     *
     * @param riskleversetting Riskleversetting对象
     * @return 是否更新成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean updateRiskleversetting(Riskleversetting riskleversetting) {
        return riskleversettingDao.updateRiskleversetting(riskleversetting) > 0;
    }

    /**
     * 根据主键获取Riskleversetting
     *
     * @param riskLevelSettingID Riskleversetting对象主键
     * @return Riskleversetting对象
     */
    @Override
    public Riskleversetting getRiskleversetting(Integer riskLevelSettingID) {
        return riskleversettingDao.getRiskleversetting(riskLevelSettingID);
    }

    /**
     * 获取共有多少条记录
     *
     * @return 记录数
     */
    @Override
    public Integer getRiskleversettingCount() {
        return riskleversettingDao.getRiskleversettingCount();
    }

    /**
     * 分页获取Riskleversetting数据
     *
     * @param pagesize 页面大小
     * @param page     页码
     * @return Riskleversetting集合
     */
    @Override
    public List<Riskleversetting> getRiskleversettingByPage(int pagesize, int page) {
        Integer pageBegin = (page - 1) * pagesize;
        Integer pageEnd = pagesize;
        return riskleversettingDao.getRiskleversettingByPage(pageBegin, pageEnd);
    }

    /**
     * 获取共有多少条记录，参数是Riskleversetting 对象
     *
     * @param riskleversetting Riskleversetting 对象
     * @return 记录数
     */
    @Override
    public Integer getRiskleversettingCountByRiskleversetting(Riskleversetting riskleversetting) {
        return riskleversettingDao.getRiskleversettingCountByRiskleversetting(riskleversetting);
    }

    /**
     * 分页获取数据，参数是Riskleversetting 对象
     *
     * @param riskleversetting Riskleversetting 对象
     * @return Riskleversetting集合
     */
    @Override
    public List<Riskleversetting> getRiskleversettingByPageAndRiskleversetting(Riskleversetting riskleversetting) {
        Integer pageBegin = (riskleversetting.getPage() - 1) * riskleversetting.getPagesize();
        Integer pageEnd = riskleversetting.getPagesize();
        return riskleversettingDao.getRiskleversettingByPageAndRiskleversetting(riskleversetting, pageBegin, pageEnd);
    }

    /**
     * 根据传入的Riskleversetting 对象查询数据
     *
     * @param riskleversetting Riskleversetting 对象
     * @return Riskleversetting集合
     */
    @Override
    public List<Riskleversetting> getRiskleversettingList(Riskleversetting riskleversetting) {
        return riskleversettingDao.getRiskleversettingList(riskleversetting);
    }

    /**
     * 获取一个数据的不重复集合
     *
     * @param attribute 对象属性名称
     * @return List<String>
     */
    @Override
    public List<String> getDistinctItemList(String attribute) {
        return riskleversettingDao.getDistinctItemList(attribute);
    }

    /**
     * 判断对象是否已经存在
     *
     * @param riskleversetting Riskleversetting 对象
     * @return 存在返回true 否则返回false
     */
    @Override
    public Boolean riskleversettingIsExist(Riskleversetting riskleversetting) {
        return riskleversettingDao.riskleversettingIsExist(riskleversetting) > 0;
    }

    /**
     * 根据传入的对象获取一个唯一对象
     *
     * @param riskleversetting
     * @return riskleversetting 对象
     */
    @Override
    public Riskleversetting getRiskleversettingUnique(Riskleversetting riskleversetting) {
        List<Riskleversetting> riskleversettingList = riskleversettingDao.getRiskleversettingUnique(riskleversetting);
        assert riskleversettingList != null && riskleversettingList.size() == 1;
        return riskleversettingList.get(0);
    }

    @Override
    public Integer initializeaRiskLevelSetting(String coalMineName, String frameWorkID) {
        Integer count = riskleversettingDao.initializeaRiskLevelSetting(coalMineName, frameWorkID);
        inputDeaflutValue(frameWorkID);
        return count;
    }

    private void inputDeaflutValue(String frameWorkID){
        Riskdegree riskdegreeLS = riskdegreeService.getRiskdegreeByMethod(frameWorkID, "LS");
        if (riskdegreeLS.getRiskDegreeID() > 0) {
            Riskdegreeitem item = new Riskdegreeitem();
            item.setFrameWorkID(riskdegreeLS.getFrameWorkID());
            item.setRiskDegreeID(riskdegreeLS.getRiskDegreeID());
            List<Riskdegreeitem> lstLS = riskdegreeitemService.getRiskdegreeitemData(item);
            if (lstLS != null && lstLS.size() > 0) {
                for (Riskdegreeitem itLS : lstLS) {
                    if (itLS.getmRiskLevelSetting().getRiskLevel().contains("重大")) {
                        itLS.setRiskRangMAX(36);
                        itLS.setRiskRangMIX(30);
                    }else if (itLS.getmRiskLevelSetting().getRiskLevel().contains("较大")) {
                        itLS.setRiskRangMAX(25);
                        itLS.setRiskRangMIX(18);
                    }
                    else if (itLS.getmRiskLevelSetting().getRiskLevel().contains("一般")) {
                        itLS.setRiskRangMAX(16);
                        itLS.setRiskRangMIX(8);
                    }
                    else if(itLS.getmRiskLevelSetting().getRiskLevel().contains("低")) {
                        itLS.setRiskRangMAX(6);
                        itLS.setRiskRangMIX(1);
                    }

                    riskdegreeitemService.updateRiskdegreeitem(itLS);
                }
            }

        }

        Riskdegree riskdegreeLEC = riskdegreeService.getRiskdegreeByMethod(frameWorkID, "LEC");
        if (riskdegreeLEC.getRiskDegreeID() > 0) {
            Riskdegreeitem itemLEC = new Riskdegreeitem();
            itemLEC.setFrameWorkID(riskdegreeLEC.getFrameWorkID());
            itemLEC.setRiskDegreeID(riskdegreeLEC.getRiskDegreeID());
            List<Riskdegreeitem> lstLEC = riskdegreeitemService.getRiskdegreeitemData(itemLEC);
            if (lstLEC != null && lstLEC.size() > 0) {
                for (Riskdegreeitem itLEC : lstLEC) {
                    if (itLEC.getmRiskLevelSetting().getRiskLevel().contains("重大")) {
                        itLEC.setRiskRangMAX(10000);
                        itLEC.setRiskRangMIX(270);
                    }
                    else if (itLEC.getmRiskLevelSetting().getRiskLevel().contains("较大")) {
                        itLEC.setRiskRangMAX(269);
                        itLEC.setRiskRangMIX(141);
                    }
                    else if (itLEC.getmRiskLevelSetting().getRiskLevel().contains("一般")) {
                        itLEC.setRiskRangMAX(140);
                        itLEC.setRiskRangMIX(71);
                    }
                    else if (itLEC.getmRiskLevelSetting().getRiskLevel().contains("低")) {
                        itLEC.setRiskRangMAX(70);
                        itLEC.setRiskRangMIX(0);
                    }

                    riskdegreeitemService.updateRiskdegreeitem(itLEC);
                }
            }

        }
    }
}