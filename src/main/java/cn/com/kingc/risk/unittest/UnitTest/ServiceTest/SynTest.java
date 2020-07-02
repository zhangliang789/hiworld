package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;

import cn.com.kingc.risk.dao.SynDao;
import cn.com.kingc.risk.dao.SynsettingDao;
import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.SynService;
import cn.com.kingc.risk.util.AsyncClient;
import com.google.gson.Gson;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;
import java.util.Map;

/**
 * Created by admistrator on 2018-01-09.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mvc.xml",
        "classpath:spring-mybatis.xml",
        "classpath:mybatis-config.xml",
        "classpath:spring-dubboB.xml",
        "classpath:spring-dubbo.xml"})
public class SynTest {
    @Autowired
    SynDao synDao;

    @Autowired
    SynService synService;

    @Autowired
    SynsettingDao synsettingDao;

    @Test
    public void getWaittingForSynByRiskHistoryTest(){
        List<Map<String,Object>> lst= synDao.getWaittingForSynByRiskHistory("abc","1");
        System.out.println(lst);
    }

    @Test
    public void getHazardInfoBySelectRiskTest(){
        List<Map<String,Object>> lst=synDao.getHazardInfoBySelectRisk("abc","004993");
        System.out.println(lst);
    }
    @Test
    public void getWaittingForSynByYearHistoryTest(){
        List<Synreportmajoryearrisk> lst= synDao.getWaittingForSynByYearHistory("abc",null,null,null);
        synService.SynYearData("abc",123,"zhangtao",lst);

        System.out.println("over");
    }


    @Test
    public void getWaittingForSynBySpeciallyHistoryTest(){
        List<SynSpecialevaluatereport> lst=synDao.getWaittingForSynBySpeciallyHistory("abc",null,null);
        System.out.println("over");
    }


    @Test
    public void  testRepairData(){
//        SynAllRiskInfo lst= synDao.repairSynData("abc","18358");
        List<Synaddress> lst=synDao.repairSynAddress("abc","19232");
        System.out.println("over");
    }

    @Test
    public void repairSynSynhazardTest(){
        List<Synhazard> lst= synDao.repairSynHazard("abc","19232,123");
        System.out.println("over");
    }

    @Test
    public void repairSynAddressdepartrelTest(){
        List<Synaddressdepartrel> lst=synDao.repairSynAddressdepartrel("abc","19232");
        System.out.println("over");
    }

    @Test
    public void repairSynReportmajoryearriskTest(){
        List<Synreportmajoryearrisk> lst=synDao.repairSynReportmajoryearrisk(
                "abc",
                "19256,19257");


        System.out.println("over");
    }
}
