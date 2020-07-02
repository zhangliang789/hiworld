package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.dao.RiskleversettingDao;
import cn.com.kingc.risk.model.Riskdegree;
import cn.com.kingc.risk.model.Riskdegreeitem;
import cn.com.kingc.risk.model.Riskleversetting;
import cn.com.kingc.risk.service.RiskdegreeService;
import cn.com.kingc.risk.service.RiskleversettingService;
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
@ContextConfiguration(locations = {
        "classpath:spring-mvc.xml",
        "classpath:spring-mybatis.xml",
        "classpath:mybatis-config.xml",
        "classpath:spring-dubbo.xml"})
public class RiskLevelSettingTest {
    @Autowired
    RiskleversettingDao riskleversettingDao;

    @Autowired
    RiskleversettingService riskleversettingService;

    @Test
    public  void   getList(){
        Riskleversetting riskleversetting=new Riskleversetting();
        riskleversetting.setFrameWorkID("abc");
        List<Riskleversetting> lst= riskleversettingDao.getRiskleversettingList(riskleversetting);

        System.out.print(lst);
    }

    @Test
    public  void   getListInvild(){
        int count= riskleversettingService.initializeaRiskLevelSetting("aaab","cccc");

        System.out.print(count);
    }
}
