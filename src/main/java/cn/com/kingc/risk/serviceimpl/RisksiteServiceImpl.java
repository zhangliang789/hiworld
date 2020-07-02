package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskcontrolmeasureDao;
import cn.com.kingc.risk.dao.RiskhazardDao;
import cn.com.kingc.risk.dao.RisksiteDao;
import cn.com.kingc.risk.dao.RisksiteplaceDao;
import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.RiskhazardService;
import cn.com.kingc.risk.service.RisksiteService;
import org.platform4j.model.Place;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;

import java.util.*;

/**
 * Risksite Service实现层
 */
@Service("risksiteService")
public class RisksiteServiceImpl implements RisksiteService {
    @Autowired
    private RisksiteDao risksiteDao;
    @Autowired
    private RiskhazardDao riskhazardDao;
    @Autowired
    private RiskcontrolmeasureDao riskcontrolmeasureDao;
    @Autowired
    private RisksiteplaceDao risksiteplaceDao;

    @Autowired
    private RisksiteService risksiteService;

    @Autowired
    private RiskhazardService riskhazardService;

    //新增一个Risksite
    @SystemServiceLog(description = "新增一个Risksite")
    @Override
    public Risksite addRisksite(Risksite risksite) {
        risksiteDao.addRisksite(risksite);
        //如果主键大于0，说明插入成功了
        if (risksite.getRiskSiteID() > 0) {
            //根据RiskSite对应的危险源灾害类型更新风险点
            risksiteDao.updateRiskDamageTypeByRiskSiteID(risksite.getRiskSiteID());
            int parentID = 0;
            try {
                parentID = Integer.valueOf(risksite.getParentID());
            } catch (Exception ex) {

            }

            if (parentID > 0) {
                //如果有父风险点
                //根据自己更新父风险点的灾害类型
                risksiteDao.updateRiskSiteDamageTypeByRiskSiteID(parentID);
            }

        }

        return risksite;
    }

    //根据主键删除Risksite
    @SystemServiceLog(description = "根据主键删除Risksite")
    @Override
    public Boolean deleteRisksite(Risksite risksite) {
        return risksiteDao.deleteRisksite(risksite) > 0;
    }

    //根据主键删除Risksite，参数是主键
    @SystemServiceLog(description = "根据主键删除Risksite,参数是主键")
    @Override
    public Boolean deleteRisksiteByID(Integer riskSiteID) {

        return risksiteDao.deleteRisksiteByID(riskSiteID) > 0;
    }


    //根据主键更新Risksite
    @SystemServiceLog(description = "根据主键更新Risksite")
    @Override
    public Risksite updateRisksite(Risksite risksite) {
        risksiteDao.updateRisksite(risksite);
        return risksite;
    }


    //根据主键获取Risksite
    @SystemServiceLog(description = "根据主键获取Risksite")
    @Override
    public Risksite getRisksite(Integer riskSiteID) {
        Risksite risksite = new Risksite();
        risksite = risksiteDao.getRisksite(riskSiteID);
        List<Risksite> lst = new ArrayList<>();
        lst.add(risksite);
        //查找二级风险点
        RepairChildRiskSite(lst);
        return risksite;
    }

    @SystemServiceLog(description = "获取RiskSiteCheckStatus")
    @Override
    public List<Risksite> getRiskSiteCheckStatus(String frameworkID, String year, String month) {
        return risksiteDao.getRiskSiteCheckStatus(frameworkID, year, month);
    }

    @Override
    public Risksite getSimpleRisksite(Integer riskSiteID) {

        Risksite risksite = risksiteDao.getSimpleRisksite(riskSiteID);
        if (risksite != null) {
            List<Risksite> lst = new ArrayList<>();
            lst.add(risksite);
            RepairChildRiskSite(lst);
        }

        return risksite;
    }

    //获取总条数
    @SystemServiceLog(description = "获取Risksite总条数")
    @Override
    public Integer getRisksiteCount() {

        return risksiteDao.getRisksiteCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Risksite数据")
    @Override
    public List<Risksite> getRisksiteByPage(int pagesize, int page) {
        Integer pageBegin = (page - 1) * pagesize;
        Integer pageEnd = pagesize;
        return risksiteDao.getRisksiteByPage(pageBegin, pageEnd);
    }

    //获取总条数，参数是Risksite 对象
    @SystemServiceLog(description = "分页获取Risksite数据,参数是Risksite 对象")
    @Override
    public Integer getRisksiteCountByRisksite(Risksite risksite) {
        return risksiteDao.getRisksiteCountByRisksite(risksite);
    }

    //分页获取数据，参数是Risksite 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Risksite数据，参数是Risksite 对象和页面大小和页码")
    @Override
    public List<Risksite> getRisksiteByPageAndRisksite(Risksite risksite) {
        Integer pageBegin = (risksite.getPage() - 1) * risksite.getPagesize();
        Integer pageEnd = risksite.getPagesize();
        risksite.setParentID("0");
        List<Risksite> riskSiteList = risksiteDao.getRisksiteByPageAndRisksite(risksite, pageBegin, pageEnd);
        RepairChildRiskSite(riskSiteList);
        return riskSiteList;
    }

    //分页获取数据，参数是Risksite 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Risksite数据，参数是Risksite 对象和页面大小和页码")
    @Override
    public List<Risksite> getRisksiteByPageAndRisksiteDHZ(Risksite risksite) {
        Integer pageBegin = (risksite.getPage() - 1) * risksite.getPagesize();
        Integer pageEnd = risksite.getPagesize();
        risksite.setParentID("0");
        List<Risksite> riskSiteList = risksiteDao.getRisksiteByPageAndRisksite(risksite, pageBegin, pageEnd);
        RepairChildRiskSiteDHZ(riskSiteList);
        return riskSiteList;
    }

    //获取总条数，参数是Risksite 对象
    @SystemServiceLog(description = "分页获取Risksite数据,参数是Risksite 对象(责任部门支持模糊查询)")
    @Override
    public Integer getRisksiteCountByRisksitebyaboutme(Risksite risksite) {
        return risksiteDao.getRisksiteCountByRisksitebyaboutme(risksite);
    }

    //分页获取数据，参数是Risksite 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Risksite数据，参数是Risksite 对象和页面大小和页码(责任部门支持模糊查询)")
    @Override
    public List<Risksite> getRisksiteByPageAndRisksitebyaboutme(Risksite risksite) {
        Integer pageBegin = (risksite.getPage() - 1) * risksite.getPagesize();
        Integer pageEnd = risksite.getPagesize();
        risksite.setParentID("0");
        List<Risksite> riskSiteList = risksiteDao.getRisksiteByPageAndRisksitebyaboutme(risksite, pageBegin, pageEnd);
        RepairChildRiskSite(riskSiteList);
        return riskSiteList;
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Risksite数据")
    @Override
    public List<Risksite> getRisksiteData(Risksite risksite) {
        List<Risksite> riskSiteList = risksiteDao.getRisksiteData(risksite);
        RepairChildRiskSite(riskSiteList);
        return riskSiteList;
    }

    @Override
    public Integer getTopRisksiteByCount(Risksite risksite) {
        return risksiteDao.getRisksiteCountByRisksitebyaboutme(risksite);
    }
    //根据name条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Risksite数据")
    @Override
    public List<Risksite> getRisksiteByname(Risksite risksite) {

        List<Risksite> riskSiteList = risksiteDao.getTopRisksiteByname(risksite);
        RepairChildRiskSite(riskSiteList);
        return riskSiteList;
    }
    @SystemServiceLog(description = "根据条件查询数据Risksite数据")
    @Override
    public List<Risksite> getTopRisksiteByname(Risksite risksite) {

        List<Risksite> riskSiteList = risksiteDao.getTopRisksiteByname(risksite);
        return riskSiteList;
    }

    @SystemServiceLog(description = "根据条件查询数据Risksite数据")
    @Override
    public List<Risksite> getTopRisksiteByPage(Risksite risksite) {
        Integer pageBegin = (risksite.getPage() - 1) * risksite.getPagesize();
        Integer pageEnd = risksite.getPagesize();
        List<Risksite> riskSiteList = risksiteDao.getTopRisksiteByPage(risksite,pageBegin,pageEnd);
        return riskSiteList;
    }


    //查找煤矿顶级风险点
    @SystemServiceLog(description = "查找煤矿顶级风险点")
    @Override
    public List<Risksite> getTopRisksite(String coalMineName, String frameWorkID) {

        return risksiteDao.getTopRisksite(coalMineName, frameWorkID);
    }

    @Override
    public List<Risksite> getByRisksiteFullNumber(String coalMineName, String frameWorkID, String fullNumber) {

        return risksiteDao.getByRisksiteFullNumber(coalMineName, frameWorkID, fullNumber);
    }

    @Override
    public List<Risksite> getRisksiteDataOnly(Risksite risksite) {

        return risksiteDao.getRisksiteDataOnly(risksite);
    }

    @Override
    public Integer getHazardCount(String frameWorkID, String riskSiteFullNumber) {
        return risksiteDao.getHazardCount(frameWorkID, riskSiteFullNumber);
    }

    @Override
    public Integer getControlMeasureCount(String frameWorkID, String riskSiteFullNumber) {
        return risksiteDao.getControlMeasureCount(frameWorkID, riskSiteFullNumber);
    }

    @Override
    public List<String> getRSCRMaxFullNum(String frameWorkID, String riskSiteFullNumber) {
        return risksiteDao.getRSCRMaxFullNum(frameWorkID, riskSiteFullNumber);
    }

    @Override
    public Boolean deleteRelationshipByRiskSite(String frameWorkID, Integer riskSiteID, String riskSiteFullNumber) {
        //先删除月度分析//月度管控方案等信息
        return risksiteDao.deleteRelationshipByRiskSite(frameWorkID, riskSiteID, riskSiteFullNumber);
    }

    @Override
    public Boolean deleteRiskMeasureByFullNumber(String frameWorkID, Integer riskSiteID, String riskSiteFullNumber) {
        return riskcontrolmeasureDao.deleteRiskcontrolmeasureByFullNumber(riskSiteFullNumber) > 0 ? true : false;
    }

    @Override
    public Boolean deleteRiskHadarzByFullNumber(String frameWorkID, Integer riskSiteID, String riskSiteFullNumber) {
        return riskhazardDao.deleteRiskhazardByFullNumber(riskSiteFullNumber) > 0 ? true : false;
    }

    @Override
    public Boolean deleteRiskSiteByFullNumber(String frameWorkID, Integer riskSiteID, String riskSiteFullNumber) {
        risksiteDao.deleteRiskhazardByFullNumber(riskSiteFullNumber);
        return true;
    }

    @Override
    public List<String> getRelationshipByRiskSite(String frameWorkID, Integer riskSiteID, String riskSiteFullNumber) {
        return risksiteDao.getRelationshipByRiskSite(
                frameWorkID,
                riskSiteID,
                riskSiteFullNumber);
    }

    @Override
    public List<String> getPlaceList(String frameWorkID){
          return  risksiteDao.getPlaceList(frameWorkID);
    }


    private void RepairChildRiskSite(List<Risksite> riskSiteList) {
        if (riskSiteList != null && riskSiteList.size() > 0) {
            for (Risksite risk : riskSiteList) {
                if (risk.getParentID().equals("0")) {
                    Risksite selectRisk = new Risksite();
                    selectRisk.setFrameWorkID(risk.getFrameWorkID());
                    selectRisk.setParentID(String.valueOf(risk.getRiskSiteID()));
                    List<Risksite> childRisk = risksiteDao.getRisksiteData(selectRisk);
                    //如果存在就赋值
                    if (childRisk != null && childRisk.size() > 0) {
                        risk.setmChildRiskSite(childRisk);

                        for (Risksite cRisk : childRisk) {
                            Riskhazard riskhazard = new Riskhazard();
                            riskhazard.setFrameWorkID(cRisk.getFrameWorkID());
                            riskhazard.setRiskSiteID(cRisk.getRiskSiteID());
                            List<Riskhazard> lstRiskHazards = riskhazardDao.getRiskhazardData(riskhazard);
                            if (lstRiskHazards != null && lstRiskHazards.size() > 0) {
                                cRisk.setmHazards(lstRiskHazards);
                            }
                        }

                    }
                } else {
                    Riskhazard riskhazard = new Riskhazard();
                    riskhazard.setFrameWorkID(risk.getFrameWorkID());
                    riskhazard.setRiskSiteID(risk.getRiskSiteID());
                    List<Riskhazard> lstRiskHazards = riskhazardDao.getRiskhazardData(riskhazard);
                    if (lstRiskHazards != null && lstRiskHazards.size() > 0) {
                        risk.setmHazards(lstRiskHazards);
                    }
                }
            }
        }
    }

    private void RepairChildRiskSiteDHZ(List<Risksite> riskSiteList) {
        if (riskSiteList != null && riskSiteList.size() > 0) {
            for (Risksite risk : riskSiteList) {
                if (risk.getParentID().equals("0")) {
                    Risksite selectRisk = new Risksite();
                    selectRisk.setFrameWorkID(risk.getFrameWorkID());
                    selectRisk.setParentID(String.valueOf(risk.getRiskSiteID()));
                    List<Risksite> childRisk = risksiteDao.getRisksiteData(selectRisk);
                    //如果存在就赋值
                    if (childRisk != null && childRisk.size() > 0) {
                        risk.setmChildRiskSite(childRisk);
                        List<Riskhazard> rhlist = new ArrayList<>();
                        for (Risksite cRisk : childRisk) {
                            Riskhazard riskhazard = new Riskhazard();
                            riskhazard.setFrameWorkID(cRisk.getFrameWorkID());
                            riskhazard.setRiskSiteID(cRisk.getRiskSiteID());
                            List<Riskhazard> lstRiskHazards = riskhazardDao.getRiskhazardData(riskhazard);
                            if (lstRiskHazards != null && lstRiskHazards.size() > 0) {
                                cRisk.setmHazards(lstRiskHazards);
                                rhlist.addAll(lstRiskHazards);
                            }
                        }
                        risk.setmHazards(rhlist);
                    }
                } else {
                    Riskhazard riskhazard = new Riskhazard();
                    riskhazard.setFrameWorkID(risk.getFrameWorkID());
                    riskhazard.setRiskSiteID(risk.getRiskSiteID());
                    List<Riskhazard> lstRiskHazards = riskhazardDao.getRiskhazardData(riskhazard);
                    if (lstRiskHazards != null && lstRiskHazards.size() > 0) {
                        risk.setmHazards(lstRiskHazards);
                    }
                }
            }
        }
    }
    @Override
    public Integer updateStatusToWpgAfterAdd(String frameWorkID, String riskSiteFullNumber) {
        String fullNumber = riskSiteFullNumber;
        Integer count = 0;
        //因为现在最多二级风险点，所以只截取一次就够了
        //以后再弄成活的
        count = risksiteDao.updateStatusToWpgAfterAdd(frameWorkID, fullNumber);

        if (fullNumber.contains(".")) {
            fullNumber = fullNumber.substring(0, fullNumber.length() - fullNumber.lastIndexOf(".") - 1);
            count = risksiteDao.updateStatusToWpgAfterAdd(frameWorkID, fullNumber);
        }

        return count;
    }

    @Override
    public Boolean updateChildRiskDamtype(String frameWorkID, String riskSiteFullNumber) {
        if (riskSiteFullNumber != null && riskSiteFullNumber.length() > 0 && riskSiteFullNumber.contains(".")) {
            String damtype=risksiteDao.getChildRiskDamtype(frameWorkID,riskSiteFullNumber);
            String damage="";
            if(damtype!=""&&damtype!=null){
                String[] dmList=damtype.split(",");
                List<String> resultList=new ArrayList<String>();
                boolean flag;
                for(int i=0;i<dmList.length;i++){
                    flag=false;
                    for(int j=0;j<resultList.size();j++){
                        if(dmList[i].equals(resultList.get(j))){
                            flag=true;
                            break;
                        }
                    }
                    if(!flag){
                        resultList.add(dmList[i]);
                    }
                }
                String[] dList = (String[])resultList.toArray(new String[resultList.size()]);
                for(int n=0;n<dList.length;n++){
                    if(n<dList.length-1){
                        damage+=dList[n]+",";
                    }else{
                        damage+=dList[n];
                    }
                }
            }
            risksiteDao.updateChildRiskDamtype(frameWorkID, riskSiteFullNumber,damage);
            String ParentFullnumber = riskSiteFullNumber.substring(0, riskSiteFullNumber.indexOf("."));
            String topDamType= risksiteDao.getTopRiskDamtype(frameWorkID,
                    ParentFullnumber);
            String damage1="";
            if(topDamType!=""&&topDamType!=null){
                String[] dmList1=topDamType.split(",");
                List<String> resultList1=new ArrayList<String>();
                boolean flag;
                for(int i=0;i<dmList1.length;i++){
                    flag=false;
                    for(int j=0;j<resultList1.size();j++){
                        if(dmList1[i].equals(resultList1.get(j))){
                            flag=true;
                            break;
                        }
                    }
                    if(!flag){
                        resultList1.add(dmList1[i]);
                    }
                }
                String[] dList1 = (String[])resultList1.toArray(new String[resultList1.size()]);
                for(int n=0;n<dList1.length;n++){
                    if(n<dList1.length-1){
                        damage1+=dList1[n]+",";
                    }else{
                        damage1+=dList1[n];
                    }
                }
            }
            Integer count = risksiteDao.updateTopRiskDamtype(frameWorkID, ParentFullnumber,damage1);
            return true;
        }
            return false;
    }

    @Override
    public List<Risksite> getRisksiteDataExactly(Risksite risksite) {
        List<Risksite> riskSiteList = risksiteDao.getRisksiteDataExactly(risksite);
        RepairChildRiskSite(riskSiteList);
        return riskSiteList;
    }

    @Override
    public Integer  risksiteListByAccidentCount( RisksiteByAcction risksiteByAcction){
        List<RisksiteByAcction> list = risksiteDao.risksiteListByAccidentCount(risksiteByAcction);
        Integer number = list.size();
        return number;
    }

    @Override
    public List<RisksiteByAcction> risksiteListByAccidentPage(RisksiteByAcction risksiteByAcction){
        Integer pageBegin = (risksiteByAcction.getPage() - 1) * risksiteByAcction.getPagesize();
        Integer pageEnd = risksiteByAcction.getPagesize();
        return  risksiteDao.risksiteListByAccidentPage(risksiteByAcction,pageBegin,pageEnd);
    }

    @Override
    public Risksite getRiskSiteChildList(Risksite riskSite){

        Risksite mRiskSite = risksiteService.getRisksite(riskSite.getRiskSiteID());
        if(mRiskSite != null){
             Risksite site = new Risksite();
             site.setFrameWorkID(riskSite.getFrameWorkID());
             site.setParentID(riskSite.getRiskSiteID().toString());
             List<Risksite> riskObjectList = risksiteService.getRisksiteData(site);
             for(Risksite riskObj : riskObjectList){
                 Riskhazard riskhazard = new Riskhazard();
                 riskhazard.setRiskSiteID(riskObj.getRiskSiteID());
                 riskhazard.setFrameWorkID(riskObj.getFrameWorkID());
                 List<Riskhazard> riskhazardList = riskhazardDao.getRiskhazardData(riskhazard);
                 riskObj.setmHazards(riskhazardList);
             }
            mRiskSite.setmChildRiskSite(riskObjectList);
        }
        return mRiskSite;
    }

    @Override
    public void assessRiskObjectLevel(Risksite riskSite){
        List<Risksite> riskObjctList = riskSite.getmChildRiskSite();
        for(Risksite riskObjct : riskObjctList){
            boolean isExistNoStatus = false;
            List<Riskhazard> riskhazardList = riskObjct.getmHazards();

            if(riskhazardList == null || riskhazardList.size() == 0){
                //危险源被全删除后二级风险更新为未评估
                risksiteDao.updateStatusToWpgAfterAdd(riskSite.getFrameWorkID(), riskObjct.getFullNumber());
                //一级风险未评估
                risksiteDao.updateStatusToWpgAfterAdd(riskSite.getFrameWorkID(), riskSite.getFullNumber());

            }
            List<Map<String,Object>> riskObjStatusList = new ArrayList<>();
            for(Riskhazard riskhazard : riskhazardList){
                //处理该风险的上层风险级别
                riskhazardService.updateRiskSiteStatusByRiskhazard(riskhazard);
            }
        }

    }

    @Override
    public Risksite getRiskSiteChildwithCheckStatusList(Risksite riskSite,Integer monthPlaneID){

        Risksite mRiskSite = risksiteService.getRisksite(riskSite.getRiskSiteID());
        if(mRiskSite != null){
            Risksite site = new Risksite();
            site.setFrameWorkID(riskSite.getFrameWorkID());
            site.setParentID(riskSite.getRiskSiteID().toString());
            List<Risksite> riskObjectList = risksiteService.getRisksiteData(site);
            for(Risksite riskObj : riskObjectList){
                Riskhazard riskhazard = new Riskhazard();
                riskhazard.setRiskSiteID(riskObj.getRiskSiteID());
                riskhazard.setFrameWorkID(riskObj.getFrameWorkID());
                riskhazard.setMonthPlaneID(monthPlaneID);
                List<Riskhazard> riskhazardList = riskhazardDao.getRiskhazardwithCheckStatus(riskhazard);
                riskObj.setmHazards(riskhazardList);
            }
            mRiskSite.setmChildRiskSite(riskObjectList);
        }
        return mRiskSite;
    }

    //根据主键获取Risksite
    @SystemServiceLog(description = "根据主键获取Risksite")
    @Override
    public Risksite getRisksites(Integer riskSiteID) {
        Risksite risksite = new Risksite();
        risksite = risksiteDao.getRisksites(riskSiteID);
        List<Risksite> lst = new ArrayList<>();
        lst.add(risksite);
        //查找二级风险点
        RepairChildRiskSite(lst);
        return risksite;


    }



    @Override
    public List<Risksite> getRiskSiteByYS(Risksite risksite){
        Integer pageBegin = (risksite.getPage() - 1) * risksite.getPagesize();
        Integer pageEnd = risksite.getPagesize();
        return risksiteDao.getRiskSiteByYS(risksite,pageBegin,pageEnd);
    }

}