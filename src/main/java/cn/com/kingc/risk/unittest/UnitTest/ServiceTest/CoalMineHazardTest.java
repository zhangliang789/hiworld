package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.model.Riskhazard;
import cn.com.kingc.risk.model.Riskhazardcontrolrange;
import cn.com.kingc.risk.service.RiskhazardService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * Created by admistrator on 2017-08-27.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
        "classpath:spring-mvc.xml",
        "classpath:spring-mybatis.xml",
        "classpath:mybatis-config.xml",
        "classpath:spring-dubbo.xml"})
public class CoalMineHazardTest {
    @Autowired
    RiskhazardService riskhazardService;
    @Test
    public  void   addRiskhazardList(){
        List<Riskhazard> list=new ArrayList<>();
        Riskhazard riskhazard=new Riskhazard();
//        riskhazard.setHazardID(3);
        riskhazard.setHazardUUID("avvvvvvaaa");
        riskhazard.setRiskSiteID(1);
        riskhazard.setCoalMineName("jingchengsoft");
        riskhazard.setFrameWorkID("11.112");
        list.add(riskhazard);
        UUID.randomUUID();
        riskhazardService.addRiskhazardList(list);
        UUID.randomUUID().toString();
        System.out.print("");
    }

    @Test
    public  void  getHaz()
    {
        Riskhazard riskhazard=riskhazardService.getRiskhazard(19902);

        System.out.print("");
    }

    @Test
    public void getHazardByControlRane(){
        Riskhazardcontrolrange range=new Riskhazardcontrolrange();
        range.setFrameWorkID("abc");
        range.setControlRangeName("矿长级");
        List<Riskhazard> lst=riskhazardService.getRiskhazardByPageAndRiskControlRange(range);

        System.out.print("");
    }
    @Test
    public void getOutOfTimeRiskHazard(){
        Riskhazard riskhazard = new Riskhazard();
        riskhazard.setFrameWorkID("abc");
        List<Riskhazard> list = riskhazardService.getOutOfTimeRiskHazard(riskhazard);
        System.out.print("");


    }

}
