package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.SynSpecialevaluatereport;
import cn.com.kingc.risk.model.Syncyearhistory;
import cn.com.kingc.risk.model.Synreportmajoryearrisk;
import cn.com.kingc.risk.model.Synsetting;
import cn.com.kingc.risk.service.SynService;
import cn.com.kingc.risk.util.AesUtil;
import cn.com.kingc.risk.util.Properties;
import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
import org.platform4j.model.Emp;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;


/**
 * Created by txianwei on 2017/9/11.
 */
@RestController
@RequestMapping("Syn")
public class SynSetting {
    @Autowired
    private SynService synService;

    @RequestMapping(value = "/newSynsetting", method = RequestMethod.GET)
    @ResponseBody
    public Object getNewRiskhazard(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Synsetting synsetting = new Synsetting();
        synsetting.setCoalMineName(framework.getFrameWorkName());
        synsetting.setFrameWorkID(framework.getFramewordID());
        return synsetting;
    }
    @RequestMapping(value = "/getSyncyearhistoryList", method = RequestMethod.POST)
    @ResponseBody
    public Object getSyncyearhistoryList(Syncyearhistory syncyearhistory) {

        return synService.getSyncyearhistoryList(syncyearhistory);
    }
    @RequestMapping(value = "/newSyncyearhistory", method = RequestMethod.GET)
    @ResponseBody
    public Object getNewSyncyearhistory(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Syncyearhistory syncyearhistory = new Syncyearhistory();
        syncyearhistory.setCoalMineName(framework.getFrameWorkName());
        syncyearhistory.setFrameWorkID(framework.getFramewordID());
        return syncyearhistory;
    }

    @RequestMapping(value = "/getPWD", method = RequestMethod.POST)
    @ResponseBody
    public Object getPWD(HttpServletRequest request) {
        try {
            String password=null;
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");

            Properties properties = new Properties();
            String synPasswordJson= properties.getProperty("synPassword");
            Map map = JSON.parseObject(synPasswordJson);
            for (Object mapData : map.entrySet()) {
                Map.Entry<String, String> entry = (Map.Entry<String, String>) mapData;
                if(entry.getKey().equals(framework.getFramewordID())){
                    password=entry.getValue();
                }
            }
            return password;
        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }

    @RequestMapping(value = "/synsettingIsExist", method = RequestMethod.POST)
    @ResponseBody
    public Object synsettingIsExist(@RequestBody Synsetting synsetting, HttpServletRequest request) {

        try {

            return synService.synsettingIsExist(synsetting);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }

    @RequestMapping(value = "/addSynsetting", method = RequestMethod.POST)
    @ResponseBody
    public Object addSynsetting(@RequestBody Synsetting synsetting, HttpServletRequest request) {
        try {
            synsetting.setSynToken(getEncryptString(synsetting.getSynMineCode(), synsetting.getApiKey()));
            return synService.addSynsetting(synsetting);
        } catch (Exception e) {
            e.printStackTrace();


        }
        return false;
    }

    @RequestMapping(value = "/updateSynsetting", method = RequestMethod.POST)
    @ResponseBody
    public Object updateSynsetting(@RequestBody Synsetting synsetting, HttpServletRequest request) {
        try {
            synsetting.setSynToken(getEncryptString(synsetting.getSynMineCode(), synsetting.getApiKey()));
            return synService.updateSynsetting(synsetting);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }


    private String getEncryptString(String mineCode, String token) {
        try {
            String tempToken = "token=" + token + "&mineCode=" + mineCode;
            String ciphertext = null;
            System.out.println("十六位字符：" + AesUtil.toHexString(tempToken));
            String base64StrWithIV = AesUtil.encryptWithIV(tempToken, token);
            System.out.println("密钥" + token);
            System.out.println("明文:" + tempToken);
            System.out.println("加密后:\n" + base64StrWithIV);
            return base64StrWithIV;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "";
    }


    @RequestMapping(value = "/getSynsetting", method = RequestMethod.POST)
    @ResponseBody
    public Object getSynsetting(HttpServletRequest request) {

        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            return synService.getSynsetting(frameWorkID);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }

    //获取待上传年度辨识里的风险信息
    @RequestMapping(value = "/getWaittingForSynByYearHistory", method = RequestMethod.POST)
    @ResponseBody
    public Object getWaittingForSynByYearHistory(String year, String month, String Name, HttpServletRequest request) {

        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            return synService.getWaittingForSynByYearHistory(frameWorkID, year, month, Name);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }

    //获取待上传年度辨识里的风险信息
    @RequestMapping(value = "/SynYearData", method = RequestMethod.POST)
    @ResponseBody
    public Object SynYearData(@RequestBody List<Synreportmajoryearrisk> lst, HttpServletRequest request) {

        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            Emp emp = (Emp) session.getAttribute("emp");
            Integer posterID = emp.getfEmp_ID_Auto();
            String posterName = emp.getFEmp_Name();
            return synService.SynYearData(frameWorkID, posterID, posterName, lst);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }


    //获取待上传专项辨识的信息
    @RequestMapping(value = "/getWaittingForSynBySpeciallyHistory", method = RequestMethod.POST)
    @ResponseBody
    public Object getWaittingForSynBySpeciallyHistory(String year, String month, HttpServletRequest request) {

        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            List<SynSpecialevaluatereport> list = synService.getWaittingForSynBySpeciallyHistory(frameWorkID, year, month);
            return list;
        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }

    //获取待上传年度辨识里的风险信息
    @RequestMapping(value = "/SynSpeciallyData", method = RequestMethod.POST)
    @ResponseBody
    public Object SynSpeciallyData(@RequestBody List<SynSpecialevaluatereport> lst, HttpServletRequest request) {

        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            Emp emp = (Emp) session.getAttribute("emp");
            Integer posterID = emp.getfEmp_ID_Auto();
            String posterName = emp.getFEmp_Name();
            return synService.SynSpeciallyData(frameWorkID, posterID, posterName, lst);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }

    //获取待上传重大风险信息
    @RequestMapping(value = "/getWaittingForSynByRiskHazardHistory", method = RequestMethod.POST)
    @ResponseBody
    public Object getWaittingForSynByRiskHazardHistory(HttpServletRequest request) {

        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            return synService.getWaittingForSynByRiskHazardHistory(frameWorkID);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }

    //获取待上传风险清单信息
    @RequestMapping(value = "/getWaittingForSynByRiskHistory", method = RequestMethod.POST)
    @ResponseBody
    public Object getWaittingForSynByRiskHistory(HttpServletRequest request,String showMajor) {

        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            return synService.getWaittingForSynByRiskHistory(frameWorkID,showMajor);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }

    //根据选择风险点获取待上传风险信息
    @RequestMapping(value = "/getHazardInfoBySelectRisk", method = RequestMethod.POST)
    @ResponseBody
    public Object getHazardInfoBySelectRisk(String riskFullNumber, HttpServletRequest request) {

        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            return synService.getHazardInfoBySelectRisk(frameWorkID, riskFullNumber);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }

    //根据选择风险点获取已上传风险信息
    @RequestMapping(value = "/getReportedHazardInfo", method = RequestMethod.POST)
    @ResponseBody
    public Object getReportedHazardInfo(String riskFullNumber, HttpServletRequest request) {

        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            return synService.getReportedHazardInfo(frameWorkID, riskFullNumber);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }

    //调用待上传风险清单信息
    @RequestMapping(value = "/SynRiskData", method = RequestMethod.POST)
    @ResponseBody
    public Object SynRiskData(@RequestBody List<Map<String, Object>> HardazIDs, HttpServletRequest request) {

        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameWorkID = framework.getFramewordID();
            Emp emp = (Emp) session.getAttribute("emp");
            Integer posterID = emp.getfEmp_ID_Auto();
            String posterName = emp.getFEmp_Name();
            return synService.SynRiskData(frameWorkID, posterID, posterName, HardazIDs);
        } catch (Exception e) {
            e.printStackTrace();

        }
        return false;
    }
}
