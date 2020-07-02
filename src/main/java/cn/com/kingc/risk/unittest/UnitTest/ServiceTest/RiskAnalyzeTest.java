package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.model.RiskAnalyzeByDamageType;
import cn.com.kingc.risk.model.RiskAnalyzeByPlaceType;
import cn.com.kingc.risk.model.Riskcontrolplanebymonth;
import cn.com.kingc.risk.service.RiskAnalyzeService;
import cn.com.kingc.risk.service.RiskcontrolanalyzeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;
import java.util.Map;

/**
 * Created by admistrator on 2017-09-28.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mvc.xml",
        "classpath:spring-mybatis.xml",
        "classpath:mybatis-config.xml",
        "classpath:spring-dubbo.xml"})
public class RiskAnalyzeTest {
    @Autowired
    RiskAnalyzeService riskAnalyzeService;

    @Autowired
    RiskcontrolanalyzeService riskcontrolanalyzeService;
    /*@Test
    public void byPlaceTest(){
      *//*  List<RiskAnalyzeByPlaceType> lst=riskAnalyzeService.getRiskAnalyzeByPlaceType("11.112");*//*
        System.out.print(lst);
    }*/


    @Test
    public void byDamageType(){
        List<RiskAnalyzeByDamageType> lst=riskAnalyzeService
                .getRiskAnalyzeByDamageType(
                        "11.112",
                        "火");
        System.out.print(lst);
    }

    @Test
    public  void testAnazlyMonthPlae(){
        List<Riskcontrolplanebymonth>  lst= riskcontrolanalyzeService.getNotAnalyzePlane(
                "abc",
                2017,
                11,
                "通风","上旬");

        System.out.print("");
    }
    /*@Test
    public  void getRiskDetailByXinAn(){
        List<Map<String,Object>>  lst= riskAnalyzeService.getRiskDetailByXinAn(
                "abc", "山西朔州平鲁区茂华下梨园煤业有限公司");

        System.out.print("");
    }*/

    @Test
    public  void testgetRiskByDepartmentAndRole(){
        List<Map<String,Object>> lst=riskAnalyzeService.getRiskByDepartmentAndRole(
                "abc",
                "",
                "生产副矿长",
                "",
                "",
                "",
                "",
                "",
                ""

        );

        System.out.print(lst);
    }

    @Test
    public void  testgetRiskByPlace(){
        List<Map<String,Object>> lst=riskAnalyzeService.getRiskByPlace(0,
                "abc",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                ""
        );

        System.out.print(lst);
    }
}
