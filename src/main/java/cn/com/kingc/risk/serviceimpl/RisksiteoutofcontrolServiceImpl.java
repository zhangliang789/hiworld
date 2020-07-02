package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.*;
import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.RisksiteoutofcontrolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;

import java.util.ArrayList;
import java.util.List;

/**
 * Risksiteoutofcontrol Service实现层
 */
@Service
public class RisksiteoutofcontrolServiceImpl implements RisksiteoutofcontrolService {
    @Autowired
    private RisksiteoutofcontrolDao risksiteoutofcontrolDao;
    @Autowired
    private RisksiteoutofcontrolitemDao risksiteoutofcontrolitemDao;
    @Autowired
    private RisksiteoutofcontrolattachmentDao risksiteoutofcontrolattachmentDao;
    @Autowired
    private RiskcontrolplanebymonthDao riskcontrolplanebymonthDao;
    @Autowired
    private RiskcontrolanalyzeitemDao riskcontrolanalyzeitemDao;
    @Autowired
    private RiskhazardDao riskhazardDao;

    @Override
    @SystemServiceLog(description = "saveRiskSiteOutOfControl,保存APP检查结果")
    public Boolean saveRiskSiteOutOfControl(Risksiteoutofcontrol risksiteoutofcontrol) {
        //如果存在删除
        Integer riskOutRecordID = 0;
        Risksiteoutofcontrol riskOut = new Risksiteoutofcontrol();
        riskOut.setFrameWorkID(risksiteoutofcontrol.getFrameWorkID());
        riskOut.setCheckTime(risksiteoutofcontrol.getCheckTime());
        riskOut.setCreateID(risksiteoutofcontrol.getCreateID());
        riskOut.setRiskSiteID(risksiteoutofcontrol.getRiskSiteID());

        List<Risksiteoutofcontrol> lst = risksiteoutofcontrolDao.getRisksiteoutofcontrolData(riskOut);
        if (lst != null && lst.size() > 0) {
            riskOutRecordID = lst.get(0).getCheckRecordID();
        } else {
            risksiteoutofcontrol.setCheckRecordID(0);
            risksiteoutofcontrolDao.addRisksiteoutofcontrol(risksiteoutofcontrol);
            riskOutRecordID = risksiteoutofcontrol.getCheckRecordID();
        }

        if (riskOutRecordID > 0) {
            if (risksiteoutofcontrol.getmControlitem() != null && risksiteoutofcontrol.getmControlitem().size() > 0) {
                for (Risksiteoutofcontrolitem item : risksiteoutofcontrol.getmControlitem()) {
                    item.setCheckRecordID(riskOutRecordID);
                    item.setItemID(0);
                    risksiteoutofcontrolitemDao.addRisksiteoutofcontrolitem(item);

                    Integer itemID = item.getItemID();
                    if (itemID > 0) {
                        if (item.getAccthes() != null && item.getAccthes().size() > 0) {
                            for (Risksiteoutofcontrolattachment attch : item.getAccthes()) {
                                attch.setCheckRecordID(riskOutRecordID);
                                attch.setItemID(itemID);
                                attch.setServiceUUID(attch.getServiceUUID().replace("''", ""));
                                attch.setAttchID(0);
                                risksiteoutofcontrolattachmentDao.addRisksiteoutofcontrolattachment(attch);
                                if (attch.getAttchID() <= 0) {
                                    return false;
                                }
                            }

                        }
                    } else{
                        return false;
                    }
                }
            }

            //更新计划状态为已经完成
            riskcontrolplanebymonthDao.updateRiskcontrolplanebymonthItemStatus(
                    risksiteoutofcontrol.getFrameWorkID(),
                    risksiteoutofcontrol.getMonthPlaneID(),
                    risksiteoutofcontrol.getMonthPlaneItemID());
        } else {
            return false;
        }

        return true;
    }

    //新增一个Risksiteoutofcontrol
    @SystemServiceLog(description = "新增一个Risksiteoutofcontrol")
    @Override
    public Boolean addRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol) {
        Integer checkRecordID = 0;
        Integer itemID = 0;
        Boolean flg = true;
        List<Risksiteoutofcontrol> list = new ArrayList<Risksiteoutofcontrol>();
        Risksiteoutofcontrol risksiteoutofcontrolTest = new Risksiteoutofcontrol();
        List<Risksiteoutofcontrolitem> risksiteoutofcontrolitems = risksiteoutofcontrol.getmControlitem();
/*
        risksiteoutofcontrolTest.setRiskSiteID(risksiteoutofcontrol.getRiskSiteID());
        risksiteoutofcontrolTest.setFrameWorkID(risksiteoutofcontrol.getFrameWorkID());
        risksiteoutofcontrolTest.setCreateID(risksiteoutofcontrol.getCreateID());
        risksiteoutofcontrolTest.setCreateName(risksiteoutofcontrol.getCreateName());
        risksiteoutofcontrolTest.setMajorType(risksiteoutofcontrol.getMajorType());
        risksiteoutofcontrolTest.setMonthPlaneID(risksiteoutofcontrol.getMonthPlaneID());
        risksiteoutofcontrolTest.setCheckTime(risksiteoutofcontrol.getCheckTime());
        list = risksiteoutofcontrolDao.getRisksiteoutofcontrolData(risksiteoutofcontrolTest);*/
       /* if (risksiteoutofcontrolitems.size() > 0) {
            for (Risksiteoutofcontrolitem risksiteoutofcontrolitem : risksiteoutofcontrolitems) {
                risksiteoutofcontrolitem.setCheckRecordID(risksiteoutofcontrol.getCheckRecordID());
                risksiteoutofcontrolitemDao.addRisksiteoutofcontrolitem(risksiteoutofcontrolitem);
                itemID = risksiteoutofcontrolitem.getItemID();
                List<Risksiteoutofcontrolattachment> risksiteoutofcontrolattachments = risksiteoutofcontrolitem.getAccthes();
                if (risksiteoutofcontrolattachments != null && risksiteoutofcontrolattachments.size() > 0) {
                    for (Risksiteoutofcontrolattachment risksiteoutofcontrolattachment : risksiteoutofcontrolattachments) {
                        risksiteoutofcontrolattachment.setCheckRecordID(checkRecordID);
                        risksiteoutofcontrolattachment.setItemID(itemID);
                        risksiteoutofcontrolattachmentDao.addRisksiteoutofcontrolattachment(risksiteoutofcontrolattachment);
                    }
                }
            }
        } else {*/
            if (risksiteoutofcontrolitems != null && risksiteoutofcontrolitems.size() > 0) {
                risksiteoutofcontrolDao.addRisksiteoutofcontrol(risksiteoutofcontrol);
                checkRecordID = risksiteoutofcontrol.getCheckRecordID();
                for (Risksiteoutofcontrolitem risksiteoutofcontrolitem : risksiteoutofcontrolitems) {
                    risksiteoutofcontrolitem.setCheckRecordID(checkRecordID);
                    risksiteoutofcontrolitemDao.addRisksiteoutofcontrolitem(risksiteoutofcontrolitem);
                    itemID = risksiteoutofcontrolitem.getItemID();
                    List<Risksiteoutofcontrolattachment> risksiteoutofcontrolattachments = risksiteoutofcontrolitem.getAccthes();
                    if (risksiteoutofcontrolattachments != null && risksiteoutofcontrolattachments.size() > 0) {
                        for (Risksiteoutofcontrolattachment risksiteoutofcontrolattachment : risksiteoutofcontrolattachments) {
                            risksiteoutofcontrolattachment.setCheckRecordID(checkRecordID);
                            risksiteoutofcontrolattachment.setItemID(itemID);
                            risksiteoutofcontrolattachmentDao.addRisksiteoutofcontrolattachment(risksiteoutofcontrolattachment);
                        }
                    }
                }
            }
            if (flg) {
                Integer monthPlanID = risksiteoutofcontrol.getMonthPlaneID();
                Riskcontrolplanebymonth riskcontrolplanebymonth = new Riskcontrolplanebymonth();
                riskcontrolplanebymonth.setMonthPlaneID(monthPlanID);
                riskcontrolplanebymonth.setMonthPlanStatus(true);
                riskcontrolplanebymonthDao.updateRiskcontrolplanebymonth(riskcontrolplanebymonth);

            }
        return true;
    }


    //新增一个Risksiteoutofcontrol
    @SystemServiceLog(description = "新增一个Risksiteoutofcontrol")
    @Override
    public Boolean addRisksiteoutofcontrolByEKuang(Risksiteoutofcontrol risksiteoutofcontrol) {
        Integer checkRecordID = 0;
        Integer itemID = 0;
        Boolean flg = true;
        List<Risksiteoutofcontrol> list = new ArrayList<Risksiteoutofcontrol>();
        Risksiteoutofcontrol risksiteoutofcontrolTest = new Risksiteoutofcontrol();
        List<Risksiteoutofcontrolitem> risksiteoutofcontrolitems = risksiteoutofcontrol.getmControlitem();
/*
        risksiteoutofcontrolTest.setRiskSiteID(risksiteoutofcontrol.getRiskSiteID());
        risksiteoutofcontrolTest.setFrameWorkID(risksiteoutofcontrol.getFrameWorkID());
        risksiteoutofcontrolTest.setCreateID(risksiteoutofcontrol.getCreateID());
        risksiteoutofcontrolTest.setCreateName(risksiteoutofcontrol.getCreateName());
        risksiteoutofcontrolTest.setMajorType(risksiteoutofcontrol.getMajorType());
        risksiteoutofcontrolTest.setMonthPlaneID(risksiteoutofcontrol.getMonthPlaneID());
        risksiteoutofcontrolTest.setCheckTime(risksiteoutofcontrol.getCheckTime());
        list = risksiteoutofcontrolDao.getRisksiteoutofcontrolData(risksiteoutofcontrolTest);*/
       /* if (risksiteoutofcontrolitems.size() > 0) {
            for (Risksiteoutofcontrolitem risksiteoutofcontrolitem : risksiteoutofcontrolitems) {
                risksiteoutofcontrolitem.setCheckRecordID(risksiteoutofcontrol.getCheckRecordID());
                risksiteoutofcontrolitemDao.addRisksiteoutofcontrolitem(risksiteoutofcontrolitem);
                itemID = risksiteoutofcontrolitem.getItemID();
                List<Risksiteoutofcontrolattachment> risksiteoutofcontrolattachments = risksiteoutofcontrolitem.getAccthes();
                if (risksiteoutofcontrolattachments != null && risksiteoutofcontrolattachments.size() > 0) {
                    for (Risksiteoutofcontrolattachment risksiteoutofcontrolattachment : risksiteoutofcontrolattachments) {
                        risksiteoutofcontrolattachment.setCheckRecordID(checkRecordID);
                        risksiteoutofcontrolattachment.setItemID(itemID);
                        risksiteoutofcontrolattachmentDao.addRisksiteoutofcontrolattachment(risksiteoutofcontrolattachment);
                    }
                }
            }
        } else {*/
        if (risksiteoutofcontrolitems != null && risksiteoutofcontrolitems.size() > 0) {
            risksiteoutofcontrolDao.addRisksiteoutofcontrol(risksiteoutofcontrol);
            checkRecordID = risksiteoutofcontrol.getCheckRecordID();
            for (Risksiteoutofcontrolitem risksiteoutofcontrolitem : risksiteoutofcontrolitems) {
                risksiteoutofcontrolitem.setCheckRecordID(checkRecordID);
                risksiteoutofcontrolitemDao.addRisksiteoutofcontrolitem(risksiteoutofcontrolitem);

                Riskhazard riskhazard = riskhazardDao.getRiskhazard(risksiteoutofcontrolitem.getHazardID());
                riskhazard.setRiskhazardStatus(risksiteoutofcontrolitem.isOutOfControlStatus());
                riskhazardDao.updateRiskhazard(riskhazard);

                itemID = risksiteoutofcontrolitem.getItemID();
                List<Risksiteoutofcontrolattachment> risksiteoutofcontrolattachments = risksiteoutofcontrolitem.getAccthes();
                if (risksiteoutofcontrolattachments != null && risksiteoutofcontrolattachments.size() > 0) {
                    for (Risksiteoutofcontrolattachment risksiteoutofcontrolattachment : risksiteoutofcontrolattachments) {
                        risksiteoutofcontrolattachment.setCheckRecordID(checkRecordID);
                        risksiteoutofcontrolattachment.setItemID(itemID);
                        risksiteoutofcontrolattachmentDao.addRisksiteoutofcontrolattachment(risksiteoutofcontrolattachment);
                    }
                }
            }
        }
        if (flg) {
            Integer monthPlanID = risksiteoutofcontrol.getMonthPlaneID();
            Riskcontrolplanebymonth riskcontrolplanebymonth = new Riskcontrolplanebymonth();
            riskcontrolplanebymonth.setMonthPlaneID(monthPlanID);
            riskcontrolplanebymonth.setMonthPlanStatus(true);
            riskcontrolplanebymonthDao.updateRiskcontrolplanebymonth(riskcontrolplanebymonth);

        }
        return true;
    }


    //新增一个Risksiteoutofcontrol(大海则)
    @SystemServiceLog(description = "新增一个Risksiteoutofcontrol")
    @Override
    public Boolean addRisksiteoutofcontrolByDHZ(Risksiteoutofcontrol risksiteoutofcontrol) {
        Integer checkRecordID = 0;
        Integer itemID = 0;
        Boolean flg = true;
        List<Risksiteoutofcontrol> list = new ArrayList<Risksiteoutofcontrol>();
        Risksiteoutofcontrol risksiteoutofcontrolTest = new Risksiteoutofcontrol();
        List<Risksiteoutofcontrolitem> risksiteoutofcontrolitems = risksiteoutofcontrol.getmControlitem();
/*
        risksiteoutofcontrolTest.setRiskSiteID(risksiteoutofcontrol.getRiskSiteID());
        risksiteoutofcontrolTest.setFrameWorkID(risksiteoutofcontrol.getFrameWorkID());
        risksiteoutofcontrolTest.setCreateID(risksiteoutofcontrol.getCreateID());
        risksiteoutofcontrolTest.setCreateName(risksiteoutofcontrol.getCreateName());
        risksiteoutofcontrolTest.setMajorType(risksiteoutofcontrol.getMajorType());
        risksiteoutofcontrolTest.setMonthPlaneID(risksiteoutofcontrol.getMonthPlaneID());
        risksiteoutofcontrolTest.setCheckTime(risksiteoutofcontrol.getCheckTime());
        list = risksiteoutofcontrolDao.getRisksiteoutofcontrolData(risksiteoutofcontrolTest);*/
       /* if (risksiteoutofcontrolitems.size() > 0) {
            for (Risksiteoutofcontrolitem risksiteoutofcontrolitem : risksiteoutofcontrolitems) {
                risksiteoutofcontrolitem.setCheckRecordID(risksiteoutofcontrol.getCheckRecordID());
                risksiteoutofcontrolitemDao.addRisksiteoutofcontrolitem(risksiteoutofcontrolitem);
                itemID = risksiteoutofcontrolitem.getItemID();
                List<Risksiteoutofcontrolattachment> risksiteoutofcontrolattachments = risksiteoutofcontrolitem.getAccthes();
                if (risksiteoutofcontrolattachments != null && risksiteoutofcontrolattachments.size() > 0) {
                    for (Risksiteoutofcontrolattachment risksiteoutofcontrolattachment : risksiteoutofcontrolattachments) {
                        risksiteoutofcontrolattachment.setCheckRecordID(checkRecordID);
                        risksiteoutofcontrolattachment.setItemID(itemID);
                        risksiteoutofcontrolattachmentDao.addRisksiteoutofcontrolattachment(risksiteoutofcontrolattachment);
                    }
                }
            }
        } else {*/
        if (risksiteoutofcontrolitems != null && risksiteoutofcontrolitems.size() > 0) {
            risksiteoutofcontrolDao.addRisksiteoutofcontrol(risksiteoutofcontrol);
            checkRecordID = risksiteoutofcontrol.getCheckRecordID();
            for (Risksiteoutofcontrolitem risksiteoutofcontrolitem : risksiteoutofcontrolitems) {
                risksiteoutofcontrolitem.setCheckRecordID(checkRecordID);
                risksiteoutofcontrolitemDao.addRisksiteoutofcontrolitem(risksiteoutofcontrolitem);

                Riskhazard riskhazard = riskhazardDao.getRiskhazard(risksiteoutofcontrolitem.getHazardID());
                riskhazard.setRiskhazardStatus(true);
                riskhazardDao.updateRiskhazard(riskhazard);

                itemID = risksiteoutofcontrolitem.getItemID();
                List<Risksiteoutofcontrolattachment> risksiteoutofcontrolattachments = risksiteoutofcontrolitem.getAccthes();
                if (risksiteoutofcontrolattachments != null && risksiteoutofcontrolattachments.size() > 0) {
                    for (Risksiteoutofcontrolattachment risksiteoutofcontrolattachment : risksiteoutofcontrolattachments) {
                        risksiteoutofcontrolattachment.setCheckRecordID(checkRecordID);
                        risksiteoutofcontrolattachment.setItemID(itemID);
                        risksiteoutofcontrolattachmentDao.addRisksiteoutofcontrolattachment(risksiteoutofcontrolattachment);
                    }
                }
            }
        }
        if (flg) {
            Integer monthPlanID = risksiteoutofcontrol.getMonthPlaneID();
            Riskcontrolplanebymonth riskcontrolplanebymonth = new Riskcontrolplanebymonth();
            riskcontrolplanebymonth.setMonthPlaneID(monthPlanID);
            riskcontrolplanebymonth.setMonthPlanStatus(true);
            riskcontrolplanebymonthDao.updateRiskcontrolplanebymonth(riskcontrolplanebymonth);

        }
        return true;
    }

    //根据主键删除Risksiteoutofcontrol
    @SystemServiceLog(description = "根据主键删除Risksiteoutofcontrol")
    @Override
    public Boolean deleteRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol) {

        //删除分析从表
        List<Risksiteoutofcontrolitem> list = risksiteoutofcontrol.getmControlitem();
        List<Risksiteoutofcontrolattachment> listAttch = new ArrayList<Risksiteoutofcontrolattachment>();
        String frameworkID = risksiteoutofcontrol.getFrameWorkID();
        if (list != null && list.size() > 0) {
            for (Risksiteoutofcontrolitem risksiteoutofcontrolitem : list) {
                //先删除附件
                listAttch = risksiteoutofcontrolitem.getAccthes();
                if (listAttch != null && listAttch.size() > 0) {
                    for (Risksiteoutofcontrolattachment risksiteoutofcontrolattachment : listAttch) {
                        risksiteoutofcontrolattachmentDao.
                                deleteRisksiteoutofcontrolattachmentByID(risksiteoutofcontrolattachment.getAttchID());
                    }
                }
                riskcontrolanalyzeitemDao.deleteRiskcontrolanalyzeitemByLostControlItemID(risksiteoutofcontrolitem.getItemID(), frameworkID);
            }
        }
        //再删除问题表
        risksiteoutofcontrolitemDao.
                deleteRisksiteoutofcontrolitemByCheckRecordID(risksiteoutofcontrol.getCheckRecordID());

        risksiteoutofcontrolDao.
                deleteRisksiteoutofcontrol(risksiteoutofcontrol);
        return true;
    }

    //根据主键删除Risksiteoutofcontrol，参数是主键
    @SystemServiceLog(description = "根据主键删除Risksiteoutofcontrol,参数是主键")
    @Override
    public Boolean deleteRisksiteoutofcontrolByID(Integer checkRecordID) {
        //先删除附件
        risksiteoutofcontrolattachmentDao.
                deleteRisksiteoutofcontrolattachmentByID(checkRecordID);
        //再删除问题表
        risksiteoutofcontrolitemDao.
                deleteRisksiteoutofcontrolitemByCheckRecordID(checkRecordID);

        return risksiteoutofcontrolDao.
                deleteRisksiteoutofcontrolByID(checkRecordID) > 0;
    }


    //根据主键更新Risksiteoutofcontrol
    @SystemServiceLog(description = "根据主键更新Risksiteoutofcontrol")
    @Override
    public Boolean updateRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol) {
        return risksiteoutofcontrolDao.updateRisksiteoutofcontrol(risksiteoutofcontrol) > 0;
    }

    //根据主键获取Risksiteoutofcontrol
    @SystemServiceLog(description = "根据主键获取Risksiteoutofcontrol")
    @Override
    public Risksiteoutofcontrol getRisksiteoutofcontrol(Integer checkRecordID) {
        return risksiteoutofcontrolDao.getRisksiteoutofcontrol(checkRecordID);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Risksiteoutofcontrol总条数")
    @Override
    public Integer getRisksiteoutofcontrolCount() {
        return risksiteoutofcontrolDao.getRisksiteoutofcontrolCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Risksiteoutofcontrol数据")
    @Override
    public List<Risksiteoutofcontrol> getRisksiteoutofcontrolByPage(int pagesize, int page) {
        Integer pageBegin = (page - 1) * pagesize;
        Integer pageEnd = pagesize;
        return risksiteoutofcontrolDao.getRisksiteoutofcontrolByPage(pageBegin, pageEnd);
    }

    //获取总条数，参数是Risksiteoutofcontrol 对象
    @SystemServiceLog(description = "分页获取Risksiteoutofcontrol数据,参数是Risksiteoutofcontrol 对象")
    @Override
    public Integer getRisksiteoutofcontrolCountByRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol) {
        return risksiteoutofcontrolDao.getRisksiteoutofcontrolCountByRisksiteoutofcontrol(risksiteoutofcontrol);
    }

    //分页获取数据，参数是Risksiteoutofcontrol 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Risksiteoutofcontrol数据，参数是Risksiteoutofcontrol 对象和页面大小和页码")
    @Override
    public List<Risksiteoutofcontrol> getRisksiteoutofcontrolByPageAndRisksiteoutofcontrol(Risksiteoutofcontrol risksiteoutofcontrol) {
        Integer pageBegin = (risksiteoutofcontrol.getPage() - 1) * risksiteoutofcontrol.getPagesize();
        Integer pageEnd = risksiteoutofcontrol.getPagesize();
        return risksiteoutofcontrolDao.getRisksiteoutofcontrolByPageAndRisksiteoutofcontrol(risksiteoutofcontrol, pageBegin, pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Risksiteoutofcontrol数据")
    @Override
    public List<Risksiteoutofcontrol> getRisksiteoutofcontrolData(Risksiteoutofcontrol risksiteoutofcontrol) {
        return risksiteoutofcontrolDao.getRisksiteoutofcontrolData(risksiteoutofcontrol);
    }
}