package cn.com.kingc.risk.unittest.ControllerTest;

import cn.com.kingc.hiddentrouble.service.HtdetailService;
//import cn.com.kingc.hiddentrouble.model.Htdetail;
//import cn.com.kingc.hiddentrouble.service.HtdetailService;
import cn.com.kingc.risk.controller.RiskAssessmentControl;
import cn.com.kingc.risk.model.Riskhazard;
import cn.com.kingc.risk.model.Risksite;
import cn.com.kingc.risk.service.RiskhazardService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by admistrator on 2017-08-27.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mvc.xml",
        "classpath:spring-mybatis.xml",
        "classpath:mybatis-config.xml","classpath:spring-dubbo.xml" }
)
public class HazardIdentificationControlTest {
    /*@Autowired
    HazardIdentificationControl hazardIdentificationControl;*/

    /*@Autowired
    RisksiteDao risksiteDao;

    @Autowired
    TemplaterisksiteService templaterisksiteService;
    @Autowired*/
	//private DepartmentService departmentService;
    @Autowired
    private HtdetailService htdetailService;
    @Autowired
    RiskAssessmentControl riskAssessmentControl;
    @Autowired
    RiskhazardService riskhazardService;


    @Test
    public void addHazardInRiskSite(){
        //Risksite similarRisk=risksiteDao.getRisksite(1);
        //Risksite mRisk=risksiteDao.getRisksite(4);
        //hazardIdentificationControl.addHazardInRiskSite(mRisk,similarRisk.getmHazards());

        System.out.print("");
    }


    @Test
    public void copyRiskSiteBySimilarPlace() {
       // Risksite similarRisk=risksiteDao.getRisksite(1);
        Risksite newRisk=new Risksite();
        newRisk.setRiskSiteID(0);
        newRisk.setName("newriskSitecopychild");
        newRisk.setNumber("001");
        newRisk.setCoalMineName("jingchengsoft");
        newRisk.setFrameWorkID("11.112");
        //hazardIdentificationControl.copyRiskSiteBySimilarPlace(1, newRisk);

        System.out.print("");
    }


    @Test
    public void addTemplateRiskSiteToRiskSiteTest(){
        Risksite newRisk=new Risksite();
        newRisk.setRiskSiteID(0);
        newRisk.setName("newriskSitecopychild");
        newRisk.setNumber("001");
        newRisk.setCoalMineName("jingchengsoft");
        newRisk.setFrameWorkID("11.112");
        newRisk.setParentID("0");
        //Templaterisksite templaterisksite= templaterisksiteService.getTemplaterisksite(1);
        //hazardIdentificationControl.addTemplateRiskSiteToRiskSite(1,newRisk);
    }

   @Test
    public void assHard(){
       Riskhazard riskhazard=riskhazardService.getRiskhazard(18156);

       riskAssessmentControl.assessmentHazardLevel(riskhazard);
       System.out.print("");
   }



}
