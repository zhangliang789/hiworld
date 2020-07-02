package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.CustomerextendedattributesService;
import cn.com.kingc.risk.service.CustomerextendedclassService;
import cn.com.kingc.risk.service.RisksiteService;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * Created by txianwei on 2017/9/4.
 */
@Controller
@RequestMapping("/demo")
public class NavicationControl {
    @Autowired
    private CustomerextendedattributesService customerextendedattributesService;
    @Autowired
    private CustomerextendedclassService customerextendedclassService;
    @Autowired
    private RisksiteService risksiteService;

    @RequestMapping("/goCustomAttribute")
    public String gotoCustomAttributeDemo() {
        return "demoCustomAttribute";
    }

    @RequestMapping("/goRisk")
    public String gotoRiskSiteDemo() {
        return "demoRisksite";
    }

    @RequestMapping("/goRestful")
    public String gotoRestFulDemo(){
        return "restDemo";
    }

    @RequestMapping("/newCustomerextendedattributes")
    @ResponseBody
    @ApiOperation(value = "获取一个空Customerextendedattributes对象", httpMethod = "GET", response = Customerextendedattributes.class, notes = "获取一个空Customerextendedattributes对象")
    public Object getNewCustomerextendedattributes() {
        Customerextendedattributes customerextendedattributes = new Customerextendedattributes();
        customerextendedattributes.setFrameWorkID("10.92.15.1");
        customerextendedattributes.setCoalMineName("山东精诚电子科技有限公司");
        customerextendedattributes.setClassPropertyDataType("String");
        return customerextendedattributes;
    }

    @RequestMapping("/newRiskSite")
    @ResponseBody
    @ApiOperation(value = "获取一个空Templaterisksite对象", httpMethod = "GET", response = Templaterisksite.class, notes = "获取一个空Templaterisksite对象")
    public Object getNewRiskSite() {
        Templaterisksite templaterisksite = new Templaterisksite();
        templaterisksite.setFrameWorkID("10.92.15.1");
        templaterisksite.setCoalMineName("山东精诚电子科技有限公司");
        List<Templaterisksite> riskSites=new ArrayList<Templaterisksite>();
        riskSites.add(new Templaterisksite());
        templaterisksite.setmChildRiskSite(riskSites);
        List<Templatehazard> templatehazardList=new ArrayList<>();
        templatehazardList.add(new Templatehazard());
        templaterisksite.setmHazards(templatehazardList);

        List<Templateriskcontrolmeasure> templateriskcontrolmeasureList=new ArrayList<>();
        templateriskcontrolmeasureList.add(new Templateriskcontrolmeasure());
        templaterisksite.setmRiskControlMeasure(templateriskcontrolmeasureList);
        return templaterisksite;
    }

    @RequestMapping("/newRiskSiteTest")
    @ResponseBody
    @ApiOperation(value = "获取一个空Risksite对象", httpMethod = "GET", response = Templaterisksite.class, notes = "获取一个空Risksite对象")
    public Object getNewRiskSiteTest() {
        Risksite templaterisksite = new Risksite();
        templaterisksite.setFrameWorkID("10.92.15.1");
        templaterisksite.setCoalMineName("山东精诚电子科技有限公司");
        List<Risksite> riskSites=new ArrayList<Risksite>();
        riskSites.add(new Risksite());
        templaterisksite.setmChildRiskSite(riskSites);
        List<Riskhazard> templatehazardList=new ArrayList<>();
        templatehazardList.add(new Riskhazard());
        templaterisksite.setmHazards(templatehazardList);

        List<Riskcontrolmeasure> templateriskcontrolmeasureList=new ArrayList<>();
        templateriskcontrolmeasureList.add(new Riskcontrolmeasure());
        templaterisksite.setmRiskControlMeasure(templateriskcontrolmeasureList);
        return templaterisksite;
    }



    @RequestMapping("/newRiskSiteCustomerextendedclass")
    @ResponseBody
    @ApiOperation(value = "获取一个空Customerextendedclass对象", httpMethod = "GET", response = Customerextendedclass.class, notes = "获取一个空Customerextendedclass对象")
    public Object newRiskSiteCustomerextendedclass() {
        Customerextendedclass customerextendedclass = new Customerextendedclass();
        customerextendedclass.setFrameWorkID("10.92.15.1");
        customerextendedclass.setClassFullName(Risksite.class.getName());
        customerextendedclass.setClassName(Risksite.class.getSimpleName());
        customerextendedclass.setCoalMineName("山东精诚电子科技有限公司");
        return customerextendedclass;
    }


    @RequestMapping("/randomAttr")
    @ResponseBody
    public Object getRandomattr() {
        Customerextendedattributes customerextendedattributes = new Customerextendedattributes();
        //customerextendedattributes.setUuid(UUID.randomUUID().toString());
        customerextendedattributes.setClassPropertyTitle("自定义字段");
        return customerextendedattributes;
    }

    @RequestMapping("/addCustomerextendedclass")
    @ResponseBody
    @ApiOperation(value = "保存自定义对象类Customerextendedclass", httpMethod = "GET", response = Customerextendedclass.class, notes = "保存Customerextendedclass，成功返回id，失败返回null")
    public Object addCustomerextendedclass(@ApiParam(required = true, name = "Customerextendedclass", value = "Customerextendedclass对象") @RequestBody Customerextendedclass customerextendedclass) {
        try {
            if (customerextendedclassService.addCustomerextendedclass(customerextendedclass)) {
                return customerextendedclass.getClassID();
            } else {
                return null;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/customerextendedattributesList", method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "批量保存自定义对象属性类Customerextendedattributes", httpMethod = "POST", notes = "批量保存自定义对象属性类Customerextendedattributes,无返回值")
    public Object addAttributes(@ApiParam(required = true,name ="customerextendedattributesList",value = "customerextendedattributes对象集合") @RequestBody List<Customerextendedattributes> customerextendedattributesList) {
        try {
            customerextendedattributesService.addCustomerextendedattributesList(customerextendedattributesList);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    /////////////////////////////////////////////////////////////////////////////////////////

    @RequestMapping(value = "/getRisksiteTabledata")
    @ResponseBody
    public Object getRisksiteTabledata() {
        try {
            Risksite risksite = new Risksite();
            risksite.setFrameWorkID("10.92.15.1");
            List<Risksite> risksites = risksiteService.getRisksiteData(risksite);
            return risksites;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/getRisksiteCustomerextendedattributes")
    @ResponseBody
    public Object getRisksiteCustomerextendedattributes() {
        try {
            //这个地方写死了，应该是根据主表customerextendedclass去查
            Customerextendedattributes customerextendedattributes = new Customerextendedattributes();
            customerextendedattributes.setClassID(7);
            return customerextendedattributesService.getCustomerextendedattributesData(customerextendedattributes);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/saveRiskSite")
    @ResponseBody
    public Object saveRiskSite(@RequestBody Risksite risksite) {
        try {
            return risksiteService.addRisksite(risksite);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/deleteRisksite")
    @ResponseBody
    public Object deleteRisksiteByID(Integer id) {
        try {
            return risksiteService.deleteRisksiteByID(id);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/updateRiskSite",method = RequestMethod.POST)
    @ResponseBody
    public Object updateRiskSite(@RequestBody Risksite risksite){
        try{
            return  risksiteService.updateRisksite(risksite);
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/getRiskSiteByID")
    @ResponseBody
    @ApiOperation(value = "根据id获取RiskSite对象", httpMethod = "GET", response = Risksite.class,notes = "根据id获取RiskSite对象")
    public Object getRiskSiteById(@ApiParam(name = "id",value = "RiskSite主键值") Integer id){
        try{
            return  risksiteService.getRisksite(id);
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/getRiskSiteById/ID/{id}")
    @ResponseBody
    @ApiOperation(value = "根据id获取RiskSite对象", httpMethod = "GET")
    public Object getRiskSiteByIdTest(@ApiParam(name = "id",value = "RiskSite主键值") @PathVariable("id") Integer id){
        try{
            return  risksiteService.getRisksite(id);
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }


}
