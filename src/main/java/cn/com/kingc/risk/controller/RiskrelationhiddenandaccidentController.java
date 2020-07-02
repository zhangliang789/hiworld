package cn.com.kingc.risk.controller;

import cn.com.kingc.accident.model.AccidentDangerRisk;
import cn.com.kingc.accident.model.Accidents;
import cn.com.kingc.accident.service.AccidentDangerRiskService;
import cn.com.kingc.accident.service.AccidentsService;
import cn.com.kingc.hiddentrouble.model.Htdetail;
import cn.com.kingc.hiddentrouble.model.Htdetailallstep;
import cn.com.kingc.hiddentrouble.model.Htdetailflowinstance;
import cn.com.kingc.hiddentrouble.model.Htdetaillevelsetting;
import cn.com.kingc.hiddentrouble.service.HtdetailService;
import cn.com.kingc.hiddentrouble.service.HtdetaillevelsettingService;
import cn.com.kingc.risk.service.RiskrelationhiddenandaccidentService;
import cn.com.kingc.risk.model.Riskrelationhiddenandaccident;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* @Description:
* @date 2018-09-27 16:07:12 中国标准时间
* @author
* @version
*/
@RestController
@RequestMapping("/Riskrelationhiddenandaccident")
public class RiskrelationhiddenandaccidentController {

    @Autowired
    private RiskrelationhiddenandaccidentService riskrelationhiddenandaccidentService;

    @Autowired
    private AccidentDangerRiskService accidentDangerRiskService;

    @Autowired
    private HtdetaillevelsettingService htdetaillevelsettingService;

    @Autowired
    private HtdetailService htdetailService;

    @Autowired
    private AccidentsService accidentsService;

    /**
    * 构建空对象
    */
    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public Object newRiskrelationhiddenandaccident(Riskrelationhiddenandaccident riskrelationhiddenandaccident,HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        riskrelationhiddenandaccident.setFrameWorkID(framework.getFramewordID());
        riskrelationhiddenandaccident.setCoalMineName(framework.getFrameWorkName());
        return riskrelationhiddenandaccident;
    }
    /**
    * 新增一个Riskrelationhiddenandaccident
    * @param riskrelationhiddenandaccident  Riskrelationhiddenandaccident对象
    * @return 是否新增成功
    */
    @RequestMapping(value = "/add",method=RequestMethod.POST)
    public Object addRiskrelationhiddenandaccident(@RequestBody Riskrelationhiddenandaccident  riskrelationhiddenandaccident){
        try{
            return riskrelationhiddenandaccidentService.addRiskrelationhiddenandaccident(riskrelationhiddenandaccident);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * 新增一个Riskrelationhiddenandaccident
     * @param riskrelationhiddenandaccident  Riskrelationhiddenandaccident对象
     * @return 是否新增成功
     */
    @RequestMapping(value = "/addrelationhidden",method=RequestMethod.POST)
    public Object addrelationhidden(@RequestBody List<Riskrelationhiddenandaccident>  riskrelationhiddenandaccident){
        try{
            for(int i=0;i<riskrelationhiddenandaccident.size();i++){
                Riskrelationhiddenandaccident riskrelationhiddenandaccidentdel = new Riskrelationhiddenandaccident();
                riskrelationhiddenandaccidentdel.setHazardID(riskrelationhiddenandaccident.get(i).getHazardID());
                riskrelationhiddenandaccidentService.deleteRiskrelationhiddenandaccident(riskrelationhiddenandaccidentdel);

                riskrelationhiddenandaccidentService.addRiskrelationhiddenandaccident(riskrelationhiddenandaccident.get(i));
            }

            return true;
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }


    /**
    * 根据主键删除Riskrelationhiddenandaccident
    * @param riskRelationHiddenAndAccidentID  Riskrelationhiddenandaccident主键
    * @return 是否删除成功
    */
    @RequestMapping(value = "/delete/{riskRelationHiddenAndAccidentID}",method=RequestMethod.DELETE)
    public Object deleteRiskrelationhiddenandaccidentById(@PathVariable("riskRelationHiddenAndAccidentID") Integer riskRelationHiddenAndAccidentID){
        try{
            return riskrelationhiddenandaccidentService.deleteRiskrelationhiddenandaccidentByID(riskRelationHiddenAndAccidentID);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    /**
    * 根据主键删除Riskrelationhiddenandaccident
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident对象
    * @return 是否删除成功
    */
    @RequestMapping(value = "/delete",method=RequestMethod.DELETE)
    public Object deleteRiskrelationhiddenandaccident(@RequestBody Riskrelationhiddenandaccident  riskrelationhiddenandaccident){
        try{
            return riskrelationhiddenandaccidentService.deleteRiskrelationhiddenandaccident(riskrelationhiddenandaccident);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    /**
    * 根据主键更新Riskrelationhiddenandaccident
    * @param  riskrelationhiddenandaccident  Riskrelationhiddenandaccident对象
    * @return 是否更新成功
    */
    @RequestMapping(value = "/update",method=RequestMethod.PUT)
    public Object updateRiskrelationhiddenandaccident(@RequestBody Riskrelationhiddenandaccident  riskrelationhiddenandaccident){
        try{
            return riskrelationhiddenandaccidentService.updateRiskrelationhiddenandaccident(riskrelationhiddenandaccident);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    /**
    * 获取共有多少页，参数是Riskrelationhiddenandaccident 对象
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident 对象
    * @return 页数
    */
    @RequestMapping(value="/getRiskrelationhiddenandaccidentPageCount",method=RequestMethod.POST)
    public Object getRiskrelationhiddenandaccidentPageCount(@RequestBody Riskrelationhiddenandaccident riskrelationhiddenandaccident){
        try {
            int count=riskrelationhiddenandaccidentService.getRiskrelationhiddenandaccidentCount(riskrelationhiddenandaccident);
            int page = count /  riskrelationhiddenandaccident.getPagesize();
            int ls = count %  riskrelationhiddenandaccident.getPagesize();
            if (ls > 0) {
            page++;
            }
            return page;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    /**
    * 分页获取Riskrelationhiddenandaccident数据
    * @param riskrelationhiddenandaccident Riskrelationhiddenandaccident 对象
    * @return Riskrelationhiddenandaccident集合
    */
    @RequestMapping(value="/getRiskrelationhiddenandaccidentByPage",method=RequestMethod.POST)
    public Object getRiskrelationhiddenandaccidentByPage(@RequestBody Riskrelationhiddenandaccident riskrelationhiddenandaccident){
        try{
            return riskrelationhiddenandaccidentService.getRiskrelationhiddenandaccidentByPage(riskrelationhiddenandaccident);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    /*
    *获取事故原因
    * **/
    @RequestMapping(value="/accidentriskByid",method = RequestMethod.POST)
    public Object getaccidentriskByid(@RequestBody List<String> accidentriskidlist, HttpServletRequest request){
        try{
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Map map =new  HashMap();
            List<String> reasionlist = new ArrayList<>();
            Accidents accidents = new Accidents();
            accidents.setFframeWorkID(framework.getFramewordID());

            AccidentDangerRisk accidentDangerRisk = new AccidentDangerRisk();
            for(int i=0;i<accidentriskidlist.size();i++){
                accidentDangerRisk.setAccident_risk_id(accidentriskidlist.get(i));
                List<AccidentDangerRisk> list = accidentDangerRiskService.getAccidentDangerRiskList(accidentDangerRisk);
                if(list.size()>0){
                    String tex ="";
                    List<String> strlist  = new  ArrayList<>();
                    for(int j=0;j<list.size();j++){
                        accidents.setId(list.get(j).getAccident_id());
                        List<Accidents> acclist = accidentsService.getAccidentsList(accidents);


                        if(acclist.get(0).getProcess()!=null && j==0){
                            tex = acclist.get(0).getProcess();
                            strlist.add(acclist.get(0).getProcess());
                            //list.get(j).getAccident_reasion();
                        }else{
                            int num = 0;
                            for(int n=0;n<strlist.size();n++){
                                if(strlist.get(n).equals(acclist.get(0).getProcess())){
                                   num = 1;
                                }
                            }
                            if(num ==0){
                                tex = tex +"<br/>"+acclist.get(0).getProcess();
                                strlist.add(acclist.get(0).getProcess());
                            }
                        }
                    }
                    reasionlist.add(tex);
                }else{
                    reasionlist.add("");
                }
            }

            return reasionlist;
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * 获取隐患回填信息
     * */
    @RequestMapping(value="/updatehiddenByid",method = RequestMethod.POST)
    public Object updatehiddenByid(@RequestBody List<String> accidentriskidlist, HttpServletRequest request){
        try{
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Map map =new  HashMap();
            List<String> reasionlist = new ArrayList<>();
            List<Integer> hiddenid = new ArrayList<>();

            Riskrelationhiddenandaccident riskrelationhiddenandaccident = new Riskrelationhiddenandaccident();
            for(int i=0;i<accidentriskidlist.size();i++){
                riskrelationhiddenandaccident.setHazardUUID(accidentriskidlist.get(i));
                List<Riskrelationhiddenandaccident> list = riskrelationhiddenandaccidentService.getRiskrelationhiddenandaccidentList(riskrelationhiddenandaccident);
                if(list.size()>0){
                    //对应的风险只有一条
                    reasionlist.add(list.get(0).getFDescription());
                    hiddenid.add(list.get(0).getFHiddenTroubleID());
                }else{
                    reasionlist.add("");
                    hiddenid.add(0);
                }
            }
            map.put("reasionlist",reasionlist);
            map.put("hiddenid",hiddenid);
            return map;
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }


    //根据Htdetaillevelsetting对象，获取重大隐患等级
    @RequestMapping(value = "/htdetaillevelsetting",method=RequestMethod.POST)
    @ResponseBody
    public Object htdetaillevelsetting(Htdetaillevelsetting htdetaillevelsetting, HttpServletRequest request){
        try{
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            htdetaillevelsetting.setFFrameWorkID(framework.getFramewordID());
//            htdetaillevelsetting.setFCoalMineName(framework.getFrameWorkName());
            return htdetaillevelsettingService.getHtdetaillevelsettingList(htdetaillevelsetting);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    //创建一个Htdetail空对象
    @RequestMapping(value = "/newHtdetail")
    @ResponseBody
    public Object newHtdetail(HttpServletRequest request) {
        Htdetail htdetail = new Htdetail();
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        htdetail.setFFrameworkID(framework.getFramewordID());
        htdetail.setFCoalName(framework.getFrameWorkName());
        htdetail.setFHiddenTroubleID(0);
        return htdetail;
    }

    //获取Htdetail的页数，参数：Htdetail对象
    @RequestMapping(value = "/getHtdetailCountByNoAssign", method = RequestMethod.POST)
    @ResponseBody
    public Object getHtdetailCountByNoAssign(@RequestBody Htdetail htdetail) {
        try {
           // int count = htdetailService.getHtdetailCountByNoAssign(htdetail);
            int count = htdetailService.getHtdetailCountByHtdetail(htdetail);
            int page = count / htdetail.getPagesize();
            int ls = count % htdetail.getPagesize();
            if (ls > 0) {
                page++;
            }
            return page;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return 0;
    }


    //分页获取Htdetail数据
    @RequestMapping(value = "/getHtdetailNoAssignList", method = RequestMethod.POST)
    @ResponseBody
    public Object getHtdetailNoAssignList(@RequestBody Htdetail htdetail) {
        try {
           // return htdetailService.getHtdetailNoAssignList(htdetail);
            return htdetailService.getHtdetailByPageAndHtdetail(htdetail);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //创建一个Htdetail空对象
    @RequestMapping(value = "/newHtdetailallstep")
    @ResponseBody
    public Object newHtdetailallstep(HttpServletRequest request) {
        Htdetailallstep htdetailallstep = new Htdetailallstep();
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Htdetail htdetail = new Htdetail();
        htdetail.setFFrameworkID(framework.getFramewordID());
        htdetail.setFCoalName(framework.getFrameWorkName());
        Htdetailflowinstance htdetailflowinstance = new Htdetailflowinstance();
        htdetail.setCurrentStep(htdetailflowinstance);
        htdetailallstep.setmHtdetail(htdetail);
        //htdetailallstep.setFFrameworkID(framework.getFramewordID());
        return htdetailallstep;
    }

}