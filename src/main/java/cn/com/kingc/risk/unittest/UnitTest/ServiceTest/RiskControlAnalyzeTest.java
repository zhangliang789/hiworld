package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.model.Riskcontrolanalyze;
import cn.com.kingc.risk.service.RiskcontrolanalyzeService;
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
        "classpath:mybatis-config.xml"})
public class RiskControlAnalyzeTest {
    @Autowired
    RiskcontrolanalyzeService riskAnalyzeService;

    @Test
    public  void   getList(){

        Riskcontrolanalyze riskcontrolanalyze= riskAnalyzeService.getRiskcontrolanalyze(1);

        System.out.print(riskcontrolanalyze.toString());
    }
}
