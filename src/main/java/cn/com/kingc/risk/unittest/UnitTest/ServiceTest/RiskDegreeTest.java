package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.model.Riskdegree;
import cn.com.kingc.risk.model.Riskdegreeitem;
import cn.com.kingc.risk.service.RiskdegreeService;
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
        "classpath:spring-mybatis.xml", "classpath:mybatis-config.xml" ,
        "classpath:spring-dubbo.xml"})
public class RiskDegreeTest {
    @Autowired
    RiskdegreeService riskdegreeService;

    @Test
    public  void   getList(){

        Riskdegree riskdegree= riskdegreeService.getRiskdegree(9);
        Riskdegreeitem item=riskdegree.checkRiskValue(100);
        System.out.print(item);
    }

    @Test
    public void  getRiskDegreeByCoalMineName(){
        Riskdegree riskdegree=riskdegreeService.getRiskdegreeByCoalMine("jingchengsoft","11.112");
        System.out.print(riskdegree);
    }
}
