package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.model.Risksiteoutofcontrol;
import cn.com.kingc.risk.model.Risksiteoutofcontrolitem;
import cn.com.kingc.risk.service.RisksiteoutofcontrolService;
import cn.com.kingc.risk.service.RisksiteoutofcontrolitemService;
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
public class RiskOutOfControlTest {
    @Autowired
    RisksiteoutofcontrolService risksiteoutofcontrolService;

    @Autowired
    RisksiteoutofcontrolitemService risksiteoutofcontrolitemService;

    @Test
    public  void   getList(){

        Risksiteoutofcontrol risksiteoutofcontrol=new Risksiteoutofcontrol();
        risksiteoutofcontrol.setFrameWorkID("11.112");
        risksiteoutofcontrol.setPage(1);
        risksiteoutofcontrol.setPagesize(10);

        List<Risksiteoutofcontrol> lst= risksiteoutofcontrolService
                .getRisksiteoutofcontrolByPageAndRisksiteoutofcontrol(risksiteoutofcontrol);


        System.out.print(risksiteoutofcontrol.toString());
    }

    @Test
    public  void getItem(){
        Risksiteoutofcontrolitem risksiteoutofcontrolitem=new Risksiteoutofcontrolitem();
        risksiteoutofcontrolitem.setFrameWorkID("abc");
        List<Risksiteoutofcontrolitem> lst=
                risksiteoutofcontrolitemService.getRisksiteoutofcontrolitemData(risksiteoutofcontrolitem);

        System.out.print("");
    }
}
