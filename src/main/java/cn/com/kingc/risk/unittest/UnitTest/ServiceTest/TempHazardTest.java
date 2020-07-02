package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.model.Riskhazardcontrolrange;
import cn.com.kingc.risk.model.Templatehazard;
import cn.com.kingc.risk.serviceimpl.TemplatehazardServiceImpl;

import org.junit.Test;
import org.junit.runner.RunWith;
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
        "classpath:spring-dubbo.xml",
        "classpath:spring-dubboB.xml"})
public class TempHazardTest {
    @Autowired
    TemplatehazardServiceImpl templatehazardService;

    @Test
    public  void   getList(){

        Templatehazard hazard= templatehazardService.getTemplatehazard(1);
        System.out.print(hazard.toString());
    }


    @Test
    public  void   getTemplatehazardAndPlace(){

        Templatehazard hazard= templatehazardService.getTemplatehazardAndPlace(1);
        System.out.print(hazard.toString());
    }

    @Test
    public  void   getTemplatehazardAndPlaceByPage(){
        Templatehazard hazard=new Templatehazard();
        hazard.setFrameWorkID("abc");
        hazard.setPage(1);
        hazard.setPagesize(10);

        List<Templatehazard> lst= templatehazardService.getTemplatehazardAndPlaceByPage(hazard);
        System.out.print(lst.toString());
    }

    @Test
    public void  addRiskToPlaceList(){

        Templatehazard templatehazard=templatehazardService.getTemplatehazard(1);
        List<Place> lst=new ArrayList<>();
        Place placeA=new Place();
        placeA.setFPlace_GUID("abc-place3");
        placeA.setFPlace_Name("placeA1");
        lst.add(placeA);
        Place placeB=new Place();
        placeB.setFPlace_GUID("abc-place4");
        placeB.setFPlace_Name("placeB1");
        lst.add(placeB);


        templatehazardService.addRiskToPlaceList(templatehazard,lst);
    }

    @Test
    public void  addRiskhazardcontrolrange(){
        Riskhazardcontrolrange riskhazardcontrolrange=new Riskhazardcontrolrange();
        riskhazardcontrolrange.setFrameWorkID("abc");
        riskhazardcontrolrange.setCoalMineName("山东精诚");
        riskhazardcontrolrange.setControlRangeName("ceshi");
        riskhazardcontrolrange.setHazardID(20697);
        riskhazardcontrolrange.setRiskSiteID(6079);
        riskhazardcontrolrange.setHazardUUID("56af8380-3d31-433a-a5fa-3b5dddd73295");
        riskhazardcontrolrange.setRiskSiteFullNumber("006078.006079");
        templatehazardService.addRiskhazardcontrolrange(riskhazardcontrolrange);

        System.out.print(riskhazardcontrolrange);
    }
}
