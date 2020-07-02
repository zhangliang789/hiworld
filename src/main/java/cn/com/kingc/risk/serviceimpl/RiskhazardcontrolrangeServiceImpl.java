package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskhazardcontrolrangeDao;
import cn.com.kingc.risk.model.Riskhazardcontrolrange;
import cn.com.kingc.risk.service.RiskhazardcontrolrangeService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:RiskhazardcontrolrangeDao层 对应数据库的 表
* @date 2018-05-05 11:55:54 中国标准时间
* @author
* @version
*/
@Service("riskhazardcontrolrangeService")
public class RiskhazardcontrolrangeServiceImpl implements RiskhazardcontrolrangeService {
    @Autowired
    private RiskhazardcontrolrangeDao riskhazardcontrolrangeDao;

    @Override
    public Integer addRiskhazardcontrolrange(Riskhazardcontrolrange riskhazardcontrolrange) {
        return riskhazardcontrolrangeDao.addRiskhazardcontrolrange(riskhazardcontrolrange);
    }

    @Override
    public void addRiskhazardcontrolrangeList(List<Riskhazardcontrolrange> riskhazardcontrolrangeList) {
        riskhazardcontrolrangeDao.addRiskhazardcontrolrangeList(riskhazardcontrolrangeList);
    }

    @Override
    public Integer deleteRiskhazardcontrolrange(Riskhazardcontrolrange riskhazardcontrolrange) {
        return riskhazardcontrolrangeDao.deleteRiskhazardcontrolrange(riskhazardcontrolrange);
    }

    @Override
    public Integer deleteRiskhazardcontrolrangeByID(Integer riskSiteControlRangeID) {
        return riskhazardcontrolrangeDao.deleteRiskhazardcontrolrangeByID(riskSiteControlRangeID);
    }

    @Override
    public void deleteRiskhazardcontrolrangeList(List<Riskhazardcontrolrange> riskhazardcontrolrangeList) {
        riskhazardcontrolrangeDao.deleteRiskhazardcontrolrangeList(riskhazardcontrolrangeList);
    }

    @Override
    public Integer updateRiskhazardcontrolrange(Riskhazardcontrolrange riskhazardcontrolrange) {
        return riskhazardcontrolrangeDao.updateRiskhazardcontrolrange(riskhazardcontrolrange);
    }

    @Override
    public Riskhazardcontrolrange getRiskhazardcontrolrange(Integer riskSiteControlRangeID) {
        return riskhazardcontrolrangeDao.getRiskhazardcontrolrange(riskSiteControlRangeID);
    }

    @Override
    public Integer getRiskhazardcontrolrangeCount(Riskhazardcontrolrange riskhazardcontrolrange) {
        return riskhazardcontrolrangeDao.getRiskhazardcontrolrangeCount(riskhazardcontrolrange);
    }

    @Override
    public List<Riskhazardcontrolrange> getRiskhazardcontrolrangeByPage(Riskhazardcontrolrange riskhazardcontrolrange, Integer pageBegin, Integer pageEnd) {
        return riskhazardcontrolrangeDao.getRiskhazardcontrolrangeByPage(riskhazardcontrolrange,pageBegin,pageEnd);
    }

    @Override
    public List<Riskhazardcontrolrange> getRiskhazardcontrolrangeList(Riskhazardcontrolrange riskhazardcontrolrange) {
        return riskhazardcontrolrangeDao.getRiskhazardcontrolrangeList(riskhazardcontrolrange);
    }

    @Override
    public List<String> getDistinctItemList(String attribute) {
        return riskhazardcontrolrangeDao.getDistinctItemList(attribute);
    }

    @Override
    public Integer riskhazardcontrolrangeIsExist(Riskhazardcontrolrange riskhazardcontrolrange) {
        return riskhazardcontrolrangeDao.riskhazardcontrolrangeIsExist(riskhazardcontrolrange);
    }

    @Override
    public List<Riskhazardcontrolrange> getRiskhazardcontrolrangeUnique(Riskhazardcontrolrange riskhazardcontrolrange) {
        return riskhazardcontrolrangeDao.getRiskhazardcontrolrangeUnique(riskhazardcontrolrange);
    }

    @Override
    public Integer updateRiskhazardcontrolrangeByRiskId(Riskhazardcontrolrange riskhazardcontrolrange) {
        return riskhazardcontrolrangeDao.updateRiskhazardcontrolrangeByRiskId(riskhazardcontrolrange);
    }
}