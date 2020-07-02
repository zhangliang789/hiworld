package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.model.Templaterisksite;
import cn.com.kingc.risk.service.TemplaterisksiteService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by admistrator on 2017-09-01.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mvc.xml",
        "classpath:spring-mybatis.xml",
        "classpath:mybatis-config.xml"})
public class TemplateRiskSiteTest {
    @Autowired
    TemplaterisksiteService templaterisksiteService;

    @Test
    public void getChild() {
        Templaterisksite templaterisksite = templaterisksiteService.getTemplaterisksite(1);
        System.out.print(templaterisksite.toString());
    }
}
