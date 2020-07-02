package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.model.Riskidentificationbyspecially;
import cn.com.kingc.risk.model.Riskidentificationbyyear;
import cn.com.kingc.risk.service.RiskidentificationbyspeciallyService;
import cn.com.kingc.risk.service.RiskidentificationbyyearService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by admistrator on 2017-08-27.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-mvc.xml",
        "classpath:spring-mybatis-risk.xml", "classpath:mybatis-config.xml" })
public class RiskIdentificationTest {
    @Autowired
    RiskidentificationbyyearService riskidentificationbyyearService;

    @Autowired
    RiskidentificationbyspeciallyService riskidentificationbyspeciallyService;

    @Test
    public  void   getList(){

        Riskidentificationbyyear year= riskidentificationbyyearService.getRiskidentificationbyyear(1);

        System.out.print(year.toString());
    }

    @Test
    public void  getSp(){
        Riskidentificationbyspecially sp=
        riskidentificationbyspeciallyService
                .getRiskidentificationbyspecially(1);

        System.out.print(sp.toString());

    }
}
