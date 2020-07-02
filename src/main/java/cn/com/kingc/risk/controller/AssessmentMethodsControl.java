package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.dao.RiskleversettingDao;
import cn.com.kingc.risk.model.Riskdegree;
import cn.com.kingc.risk.model.Riskdegreeitem;
import cn.com.kingc.risk.model.Riskleversetting;
import cn.com.kingc.risk.service.RiskdegreeService;
import cn.com.kingc.risk.service.RiskdegreeitemService;
//import org.kplatform4j.model.Framework;
import cn.com.kingc.risk.service.RiskleversettingService;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by txianwei on 2017/10/6.
 */
@RestController
@RequestMapping("/AssessmentMethods")
public class AssessmentMethodsControl {
    @Autowired
    private RiskdegreeService riskdegreeService;
    @Autowired
    private RiskdegreeitemService riskdegreeitemService;
    @Autowired
    private RiskleversettingService riskleversettingService;

    /**
     * 构建空对象
     */
    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public Object newRiskdegree(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Riskdegree riskdegree = new Riskdegree();
        riskdegree.setFrameWorkID(framework.getFramewordID());
        return riskdegree;
    }

    @RequestMapping(value = "/newRiskleversetting", method = RequestMethod.GET)
    public Object newRiskleversetting(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Riskleversetting riskleversetting = new Riskleversetting();
        riskleversetting.setCoalMineName(framework.getFrameWorkName());
        riskleversetting.setFrameWorkID(framework.getFramewordID());
        return riskleversetting;
    }

    /**
     * 根据传入的Riskleversetting 对象查询数据
     *
     * @param riskleversetting Riskleversetting 对象
     * @return Riskleversetting集合
     */
    @RequestMapping(value = "/getRiskleversettingList",method=RequestMethod.POST)
    public Object getRiskleversettingList(@RequestBody Riskleversetting  riskleversetting){
        try{
            return riskleversettingService.getRiskleversettingList(riskleversetting);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    @RequestMapping(value = "/updateRiskleversetting",method=RequestMethod.POST)
    public Object updateRiskleversetting(@RequestBody Riskleversetting  riskleversetting){
        try{
            return riskleversettingService.updateRiskleversetting(riskleversetting);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }
    //新增一个Riskdegreeitem
    @RequestMapping(value = "/riskleversettingIsExist",method=RequestMethod.POST)
    public Object riskleversettingIsExist(@RequestBody Riskleversetting  riskleversetting){
        try{
            return riskleversettingService.riskleversettingIsExist(riskleversetting);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }



    //新增一个Riskdegreeitem
    @RequestMapping(value = "/initializeaRiskLevelSetting",method=RequestMethod.POST)
    public Object initializeaRiskLevelSetting(HttpServletRequest request){
        try{
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameworkID=framework.getFramewordID();
            String frameworkName=framework.getFrameWorkName();
            return riskleversettingService.initializeaRiskLevelSetting(frameworkName,frameworkID);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    //新增一个Riskdegreeitem
    @RequestMapping(value = "/autoInitializeaRiskLevelSetting",method=RequestMethod.POST)
    public Boolean autoInitializeaRiskLevelSetting(HttpServletRequest request){
        try{
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            String frameworkID=framework.getFramewordID();
            String frameworkName=framework.getFrameWorkName();
            Riskleversetting riskleversetting = new Riskleversetting();
            riskleversetting.setCoalMineName(frameworkName);
            riskleversetting.setFrameWorkID(frameworkID);
            if(riskleversettingService.riskleversettingIsExist(riskleversetting)){
                return true;
            }else{
                return riskleversettingService.initializeaRiskLevelSetting(frameworkName,frameworkID)>0;
            }

        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }





    /**
     * 构建空对象
     */
    @RequestMapping(value = "/newItem", method = RequestMethod.GET)
    public Object newRiskdegreeitem(HttpServletRequest request) {
        return new Riskdegreeitem();
    }

    //新增一个Riskdegreeitem
    @RequestMapping(value = "/add",method=RequestMethod.POST)
    public Object addRiskdegreeitem(@RequestBody Riskdegreeitem  riskdegreeitem){
        try{
            return riskdegreeitemService.addRiskdegreeitem(riskdegreeitem);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    //删除一个Riskdegreeitem,参数是Riskdegreeitem 对象
    @RequestMapping(value = "/delete",method=RequestMethod.DELETE)
    public Object deleteRiskdegreeitem(@RequestBody Riskdegreeitem riskdegreeitem){
        try{
            return riskdegreeitemService.deleteRiskdegreeitem(riskdegreeitem);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    //修改一个Riskdegreeitem
    @RequestMapping(value = "/update",method=RequestMethod.PUT)
    public Object updateRiskdegreeitem(@RequestBody Riskdegreeitem  riskdegreeitem){
        try{
            return riskdegreeitemService.updateRiskdegreeitem(riskdegreeitem);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }


    @RequestMapping(value = "/all", method = RequestMethod.GET)
    public Object getAllRiskDegree(HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Riskdegree riskdegree = new Riskdegree();
            riskdegree.setFrameWorkID(framework.getFramewordID());
            riskdegree.setCoalMineName(framework.getFrameWorkName());
            return riskdegreeService.getRiskdegreeData(riskdegree);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }


}
