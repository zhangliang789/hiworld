package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.Riskcontrolmeasure;
import cn.com.kingc.risk.model.Risksite;
import cn.com.kingc.risk.service.RisksiteService;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * Created by txianwei on 2017/9/11.
 */
@RestController
@RequestMapping("restful")
public class RestDemo {
    @Autowired
    private RisksiteService risksiteService;

    @RequestMapping(value = "/Risk/{id}",method = RequestMethod.GET)
    @ApiOperation(value = "根据id获取Risksite对象",response = Risksite.class,httpMethod = "GET",notes = "根据id获取Risksite对象")
    public Object getRiskByid(@ApiParam(name = "id",value = "Risksite对象id") @PathVariable("id") Integer id){
        try{
            return risksiteService.getRisksite(id);
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }


    @RequestMapping(value = "/Risk/{id}",method = RequestMethod.DELETE)
    @ApiOperation(value = "删除RiskSite对象",response = Risksite.class,httpMethod = "DELETE",notes = "删除RiskSite对象")
    public Object deleteRiskByid(@ApiParam(name = "id",value = "Risksite对象id") @PathVariable("id") Integer id){
        try{
            return risksiteService.deleteRisksiteByID(id);
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/Risk/add",method = RequestMethod.POST)
    @ApiOperation(value = "新增RiskSite对象",response = boolean.class,httpMethod = "POST",notes = "新增RiskSite对象")
    public Object addRiskSite(@RequestBody Risksite risksite){
        try{
            return risksiteService.addRisksite(risksite);
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/Risk/update",method = RequestMethod.PUT)
    @ApiOperation(value = "更新RiskSite对象",response = boolean.class,httpMethod = "PUT",notes = "更新RiskSite对象")
    public Object updateRiskSite(@RequestBody Risksite risksite){
        try{
            return risksiteService.updateRisksite((Risksite) risksite);
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/Riskcontrolmeasure/update",method = RequestMethod.PUT)
    @ApiOperation(value = "更新Riskcontrolmeasure对象",response = boolean.class,httpMethod = "PUT",notes = "更新Riskcontrolmeasure对象")
    public Object updateRiskcontrolmeasure(@RequestBody Riskcontrolmeasure riskcontrolmeasure){
        try{
            System.out.println(riskcontrolmeasure.toString());
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/getNewRiskcontrolmeasure",method = RequestMethod.GET)
    @ApiOperation(value = "获取Riskcontrolmeasure空对象",response = boolean.class,httpMethod = "GET",notes = "获取Riskcontrolmeasure空对象")
    public Object getNewRiskcontrolmeasure(){
        try{
            Riskcontrolmeasure riskcontrolmeasure= new Riskcontrolmeasure();
            riskcontrolmeasure.setCoalMineName("山东精诚电子科技有限公司");
            riskcontrolmeasure.setFrameWorkID("10.92.15.1");
            riskcontrolmeasure.setMeasureName("测试");
            return  riskcontrolmeasure;
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

}
