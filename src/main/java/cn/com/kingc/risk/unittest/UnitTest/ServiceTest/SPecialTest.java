package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.model.Riskidentificationbyspecially;
import cn.com.kingc.risk.service.RiskidentificationbyspeciallyService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by admistrator on 2017-09-21.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mvc.xml",
        "classpath:spring-mybatis.xml",
        "classpath:mybatis-config.xml"})
public class SPecialTest {
    @Autowired
    RiskidentificationbyspeciallyService riskidentificationbyspeciallyService;

    @Test
    public void testAdd(){
        Riskidentificationbyspecially riskidentificationbyspecially=new Riskidentificationbyspecially();
        riskidentificationbyspecially.setFrameWorkID("11.112");
        riskidentificationbyspecially.setRiskIdentificationSpeciallyID(0);
        riskidentificationbyspecially.setIdentificationYear(2017);
        riskidentificationbyspecially.setIdentificationMonth("9");

        Boolean bl= riskidentificationbyspeciallyService.addRiskidentificationbyspecially(riskidentificationbyspecially);
        System.out.print(bl);

    }

    @Test
    public void  getSP(){
        Riskidentificationbyspecially riskidentificationbyspecially=new Riskidentificationbyspecially();
        riskidentificationbyspecially.setFrameWorkID("11.112");
        riskidentificationbyspecially.setPage(1);
        riskidentificationbyspecially.setPagesize(20);

        List<Riskidentificationbyspecially> lst=riskidentificationbyspeciallyService.getRiskidentificationbyspeciallyByPageAndRiskidentificationbyspecially(riskidentificationbyspecially);
        System.out.print("");
    }
}
