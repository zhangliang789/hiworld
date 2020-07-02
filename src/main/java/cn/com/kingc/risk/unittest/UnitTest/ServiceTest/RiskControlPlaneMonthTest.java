package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.model.Riskcontrolplanebymonth;
import cn.com.kingc.risk.service.RiskcontrolplanebymonthService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by admistrator on 2017-08-27.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mvc.xml",
        "classpath:spring-mybatis.xml",
        "classpath:mybatis-config.xml",
        "classpath:spring-dubbo.xml"})
public class RiskControlPlaneMonthTest {
    @Autowired
    RiskcontrolplanebymonthService riskMonthService;

    @Test
    public  void   getList(){

        Riskcontrolplanebymonth riskcontrolplanebymonth= riskMonthService.getRiskcontrolplanebymonth(1);
        System.out.print(riskcontrolplanebymonth.toString());
    }


    @Test
    public void  testCount(){
        Riskcontrolplanebymonth riskcontrolplanebymonth=new Riskcontrolplanebymonth();
        riskcontrolplanebymonth.setFrameWorkID("00000000");
        riskcontrolplanebymonth.setCoalMineName("山东精诚电子科技有限公司");
        List<Riskcontrolplanebymonth> LST=riskMonthService.getRiskcontrolplanebymonthData(riskcontrolplanebymonth);
        System.out.print(LST);
    }

    @Test
    public void Test(){

    }
}
