package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.model.Customerextendedclass;
import cn.com.kingc.risk.service.CustomerextendedclassService;
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
public class CustomerExtendClassTest {
    @Autowired
    CustomerextendedclassService exendClassService;

    @Test
    public  void   getList(){

        Customerextendedclass customerextendedclass=new Customerextendedclass();
        customerextendedclass.setFrameWorkID("abc");
        customerextendedclass.setClassName("Riskhazard");
        List<Customerextendedclass> lst= exendClassService.getCustomerextendedclassData(customerextendedclass);

        System.out.print(lst);
    }
}
