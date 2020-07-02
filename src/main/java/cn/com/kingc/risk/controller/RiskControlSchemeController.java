package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.service.RiskControlSchemeService;
import cn.com.kingc.risk.model.RiskControlScheme;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* @Description:
* @date 2019-02-20 16:20:08 中国标准时间
* @author
* @version
*/
@RestController
@RequestMapping("/RiskControlScheme")
public class RiskControlSchemeController {

    @Autowired
    private RiskControlSchemeService riskControlSchemeService;

    /**
    * 构建空对象
    */
    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public Object newRiskControlScheme(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        RiskControlScheme  riskControlScheme = new RiskControlScheme();
        riskControlScheme.setFrameWorkID(framework.getFramewordID());
        riskControlScheme.setCoalMineName(framework.getFrameWorkName());
        return riskControlScheme;
    }
    /**
    * 新增一个RiskControlScheme
    * @param riskControlScheme  RiskControlScheme对象
    * @return 是否新增成功
    */
    @RequestMapping(value = "/add",method=RequestMethod.POST)
    public Object addRiskControlScheme(@RequestBody RiskControlScheme  riskControlScheme){
        try{
            if(riskControlScheme.getID() != null){
                return riskControlSchemeService.updateRiskControlScheme(riskControlScheme);
            }else{
                return riskControlSchemeService.addRiskControlScheme(riskControlScheme);
            }

        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    /**
    * 根据主键删除RiskControlScheme
    * @param iD  RiskControlScheme主键
    * @return 是否删除成功
    */
    @RequestMapping(value = "/delete/{iD}",method=RequestMethod.DELETE)
    public Object deleteRiskControlSchemeById(@PathVariable("iD") String iD){
        try{
            return riskControlSchemeService.deleteRiskControlSchemeByID(iD);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    /**
    * 根据主键删除RiskControlScheme
    * @param riskControlScheme RiskControlScheme对象
    * @return 是否删除成功
    */
    @RequestMapping(value = "/delete",method=RequestMethod.DELETE)
    public Object deleteRiskControlScheme(@RequestBody RiskControlScheme  riskControlScheme){
        try{
            return riskControlSchemeService.deleteRiskControlScheme(riskControlScheme);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    /**
    * 根据主键更新RiskControlScheme
    * @param  riskControlScheme  RiskControlScheme对象
    * @return 是否更新成功
    */
    @RequestMapping(value = "/update",method=RequestMethod.PUT)
    public Object updateRiskControlScheme(@RequestBody RiskControlScheme  riskControlScheme){
        try{
            return riskControlSchemeService.updateRiskControlScheme(riskControlScheme);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return false;
    }

    /**
    * 获取共有多少页，参数是RiskControlScheme 对象
    * @param riskControlScheme RiskControlScheme 对象
    * @return 页数
    */
    @RequestMapping(value="/getRiskControlSchemePageCount",method=RequestMethod.POST)
    public Object getRiskControlSchemePageCount(@RequestBody RiskControlScheme riskControlScheme){
        try {
            int count=riskControlSchemeService.getRiskControlSchemeCount(riskControlScheme);
            int page = count /  riskControlScheme.getPagesize();
            int ls = count %  riskControlScheme.getPagesize();
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
    * 分页获取RiskControlScheme数据
    * @param riskControlScheme RiskControlScheme 对象
    * @return RiskControlScheme集合
    */
    @RequestMapping(value="/getRiskControlSchemeByPage",method=RequestMethod.POST)
    public Object getRiskControlSchemeByPage(@RequestBody RiskControlScheme riskControlScheme){
        try{
            return riskControlSchemeService.getRiskControlSchemeByPage(riskControlScheme);
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    /**
     * 根据ID查找管控方案
     * @param ID
     * @param request
     * @return
     */
    @RequestMapping(value = "/getRiskcontrolSchemeByID",method = RequestMethod.POST)
    @ResponseBody
    public Object getRiskcontrolplanebymonthByID(String ID, HttpServletRequest request){
        try{
            if(ID != null){
                RiskControlScheme riskControlScheme = riskControlSchemeService.getRiskControlScheme(ID);
                return riskControlScheme;
            }
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }
    /**
     * 跳转编辑页面
     * @param ID
     * @param request
     * @return
     */
    @RequestMapping(value = "/gotoEditPage",method = RequestMethod.POST)
    @ResponseBody
    public Object gotoEditPage(String ID, HttpServletRequest request){
        try{
            if(ID != null){
                request.getSession().setAttribute("riskControlSchemeID",ID);
            }else{
                request.getSession().setAttribute("riskControlSchemeID","");
            }
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

}