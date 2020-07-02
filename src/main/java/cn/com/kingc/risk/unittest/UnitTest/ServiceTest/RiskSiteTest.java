package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.dao.RiskAnalyzeDao;
import cn.com.kingc.risk.dao.RiskhazardDao;
import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.RiskcontrolmeasureService;
import cn.com.kingc.risk.service.RiskcontrolplanebymonthService;
import cn.com.kingc.risk.service.RisksiteService;
import cn.com.kingc.risk.service.TemplatehazardService;
import com.google.gson.Gson;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.platform4j.model.Place;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by admistrator on 2017-08-27.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
        "classpath:spring-mvc.xml",
        "classpath:spring-mybatis.xml",
        "classpath:mybatis-config.xml",
        "classpath:spring-dubbo.xml"})
    public class RiskSiteTest {
    @Autowired
    RisksiteService risksiteService;

    @Autowired
    RiskcontrolmeasureService riskcontrolmeasureService;

    @Autowired
    RiskcontrolplanebymonthService riskcontrolplanebymonthService;

    @Autowired
    RiskhazardDao riskhazardDao;

    @Autowired
    TemplatehazardService templatehazardService;

    @Autowired
    RiskAnalyzeDao riskAnalyzeDao;


    @Test
    public void getRiskSite() {
        Risksite risksite = risksiteService.getRisksite(1611);
//        risksite.setRiskSiteType(RiskSiteTypeEnum.ADDRESS);
        System.out.print("");

        System.out.print(risksite.toString());
    }

     @Test
    public void getRiskSite1() {
        List<String> param = new ArrayList<String>();
        param.add("abc");
        List<RiskAnalyzeByDamageType> result = riskAnalyzeDao.getRiskAnalyzeByDamageTypeByOrgIDItem(param,"");
//        risksite.setRiskSiteType(RiskSiteTypeEnum.ADDRESS);
        System.out.print(result);
    }


    @Test
    public void addRiskSite() {
        Risksite risksite = new Risksite();
        risksite.setFrameWorkID("11.112");
        risksite.setRiskSiteType(RiskSiteTypeEnum.ADDRESS);
        risksite.setParentID("0");
        risksite.setName("test");
        risksiteService.addRisksite(risksite);

        System.out.print("");
//        risksite.
    }

    @Test
    public void getRiskData(){
        Risksite selectRiskSite = new Risksite();
//        selectRiskSite.setRiskSiteType(RiskSiteTypeEnum.ADDRESS);
//        selectRiskSite.setRiskSiteTypeContent("掘进工作面");
        selectRiskSite.setRiskLevelSettingID(55);
        selectRiskSite.setFrameWorkID("abc");
        selectRiskSite.setParentID("0");

        List<Risksite> lst= risksiteService.getRisksiteData(selectRiskSite);
        System.out.print(lst);
    }

    @Test
    public void getTopRist() {
        List<Risksite> list = risksiteService.getTopRisksite("jingchengsoft", "11.112");

        System.out.print(list);
    }


    @Test
    public void getRiskByFullnumber() {
        List<Risksite> list = risksiteService.getByRisksiteFullNumber("jingchengsoft", "11.112", "001");
        System.out.print(list);
    }
    @Test
    public void getRist() {
        Risksite risksite = new Risksite();
        risksite.setRiskSiteType(RiskSiteTypeEnum.ADDRESS);
        risksite.setRiskSiteTypeContent("掘进工作面");

        List<Risksite> list = risksiteService.getRisksiteData(risksite);

        System.out.print(list);
    }

    @Test
    public void getSon(){
        Riskidentificationbyyearentry ENTRY=new Riskidentificationbyyearentry();
        ENTRY.setCoalMineName("");
        ENTRY.setFrameWorkID("");
        ENTRY.setRiskIdentificationYearEntryID(0);
        ENTRY.setPage(0);
        ENTRY.setPagesize(0);
        ENTRY.setmRiskSite(null);
        Gson gson=new Gson();
        String jsonS=gson.toJson(ENTRY,Riskidentificationbyyearentry.class);
        System.out.print(jsonS);
    }

    @Test
    public void  getMeasure(){
        Riskcontrolmeasure riskcontrolmeasure=riskcontrolmeasureService.getRiskcontrolmeasure(32);
        System.out.print(riskcontrolmeasure.toString());
    }

    @Test
    public void deleteRisk(){
        risksiteService.deleteRelationshipByRiskSite(
                "abc",
                1646,
                "005056.000001");
        risksiteService.deleteRiskMeasureByFullNumber("abc",
                1646,
                "005056.000001");
        risksiteService.deleteRiskHadarzByFullNumber("abc",
                1646,
                "005056.000001");
        risksiteService.deleteRiskSiteByFullNumber("abc",
                1646,
                "005056.000001");

        System.out.print("");
    }

    @Test
    public void getReletionShip(){
        List<String> lst=risksiteService.getRelationshipByRiskSite(
                "11.112",
                1417,
                "001417");

        System.out.print("");
    }


    @Test
    public  void  updateStatus(){
        riskhazardDao.UpdateRiskSiteStatusByFullNumber(
                "11.112",
                "003054.00001",
                "003054");

        System.out.print("");
    }

    @Test
    public void  getList(){

        Risksite risksite=new Risksite();
        risksite.setParentID("0");
        risksite.setFrameWorkID("abc");
        risksite.setPagesize(10);
        risksite.setPage(1);
        int count=risksiteService.getRisksiteCountByRisksite(risksite);
        List<Risksite> lst=risksiteService.getRisksiteByPageAndRisksite(risksite);

        System.out.print("");
    }


    @Test
    public  void  getRisksite(){
       Risksite risksite= risksiteService.getRisksite(4530);

        System.out.print("");
    }

    @Test
    public void  updateStatusByFullnumber(){
        risksiteService.updateStatusToWpgAfterAdd("abc","004135.000002");

        System.out.print("");
    }

    @Test
    public void updateChildRiskDamtypeTest(){
        risksiteService.updateChildRiskDamtype("abc","004135.000002");
        System.out.print("");
    }

    @Test
    public void getHaard(){
        Riskhazard riskhazard=new Riskhazard();
        riskhazard.setFrameWorkID("abc");
//        riskhazard.setPage(1);
//        riskhazard.setPagesize(500);
        List<Riskhazard>  lst=riskhazardDao.getRiskhazardByPageAndRiskhazard(riskhazard,1,200);
        System.out.print("");
    }

    @Test
    public void DeleteTest(){
        riskhazardDao.deleteRiskhazardByID(19286);
        System.out.print("");
    }

    @Test
    public void cutStringTest(){
        String strVaule="1122.002";
        String a=strVaule.substring(0,strVaule.indexOf("."));
        System.out.print("");
    }

    @Test
    public void getRiskControlMonthPlaneByUser(){
        List<Riskcontrolplanebymonth> lst=riskcontrolplanebymonthService.getRiskControlMonthPlaneByUser(
                "abc",
                "机电科");

        System.out.print("");
    }


}
