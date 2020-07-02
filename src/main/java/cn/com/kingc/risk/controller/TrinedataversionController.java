package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.service.TrinedataversionService;
import cn.com.kingc.risk.model.Trinedataversion;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * Title:
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 *
 * @author
 * @Description:
 * @date 2018-06-28 09:25:27 中国标准时间
 */
@RestController
@RequestMapping("/Trinedataversion")
public class TrinedataversionController {

    @Autowired
    private TrinedataversionService trinedataversionService;

    /*
    * 初始化风险数据版本信息*/
    @RequestMapping(value = "/initVersionData", method = RequestMethod.POST)
    public Boolean initVersionData(HttpServletRequest request) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Framework framework = (Framework) request.getSession().getAttribute("framework");
            Trinedataversion trinedataversion = new Trinedataversion();
            trinedataversion.setFrameWorkID(framework.getFramewordID());
            trinedataversion.setCoalMineName(framework.getFrameWorkName());
            trinedataversion.setVersionTime(simpleDateFormat.format(new Date()));
            trinedataversion.setVersion(UUID.randomUUID().toString());
            trinedataversionService.deleteTrinedataversionByID(framework.getFramewordID());
            return trinedataversionService.addTrinedataversion(trinedataversion);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }

    /**
     * 构建空对象
     */
    @RequestMapping(value = "/new", method = RequestMethod.GET)
    public Object newTrinedataversion() {
        return new Trinedataversion();
    }

    /**
     * 新增一个Trinedataversion
     *
     * @param trinedataversion Trinedataversion对象
     * @return 是否新增成功
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public Object addTrinedataversion(@RequestBody Trinedataversion trinedataversion) {
        try {
            return trinedataversionService.addTrinedataversion(trinedataversion);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * 根据主键删除Trinedataversion
     *
     * @param frameWorkID Trinedataversion主键
     * @return 是否删除成功
     */
    @RequestMapping(value = "/delete/{frameWorkID}", method = RequestMethod.DELETE)
    public Object deleteTrinedataversionById(@PathVariable("frameWorkID") String frameWorkID) {
        try {
            return trinedataversionService.deleteTrinedataversionByID(frameWorkID);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * 根据主键删除Trinedataversion
     *
     * @param trinedataversion Trinedataversion对象
     * @return 是否删除成功
     */
    @RequestMapping(value = "/delete", method = RequestMethod.DELETE)
    public Object deleteTrinedataversion(@RequestBody Trinedataversion trinedataversion) {
        try {
            return trinedataversionService.deleteTrinedataversion(trinedataversion);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * 根据主键更新Trinedataversion
     *
     * @param trinedataversion Trinedataversion对象
     * @return 是否更新成功
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public Object updateTrinedataversion(HttpServletRequest request) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Framework framework = (Framework)request.getSession().getAttribute("framework");
            Trinedataversion trinedataversion = trinedataversionService.getTrinedataversion(framework.getFramewordID());
            if (trinedataversion!=null){
                trinedataversion.setVersionTime(simpleDateFormat.format(new Date()));
                trinedataversion.setVersion(UUID.randomUUID().toString());
                return trinedataversionService.updateTrinedataversion(trinedataversion);
            }else{
                trinedataversion = new Trinedataversion();
                trinedataversion.setFrameWorkID(framework.getFramewordID());
                trinedataversion.setCoalMineName(framework.getFrameWorkName());
                trinedataversion.setVersionTime(simpleDateFormat.format(new Date()));
                trinedataversion.setVersion(UUID.randomUUID().toString());
                return trinedataversionService.addTrinedataversion(trinedataversion);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * 获取共有多少页，参数是Trinedataversion 对象
     *
     * @param trinedataversion Trinedataversion 对象
     * @return 页数
     */
    @RequestMapping(value = "/getTrinedataversionPageCount", method = RequestMethod.POST)
    public Object getTrinedataversionPageCount(@RequestBody Trinedataversion trinedataversion) {
        try {
            int count = trinedataversionService.getTrinedataversionCount(trinedataversion);
            int page = count / trinedataversion.getPagesize();
            int ls = count % trinedataversion.getPagesize();
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
     * 分页获取Trinedataversion数据
     *
     * @param trinedataversion Trinedataversion 对象
     * @return Trinedataversion集合
     */
    @RequestMapping(value = "/getTrinedataversionByPage", method = RequestMethod.POST)
    public Object getTrinedataversionByPage(@RequestBody Trinedataversion trinedataversion) {
        try {
            return trinedataversionService.getTrinedataversionByPage(trinedataversion);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/getTrineDataVersionTime", method = RequestMethod.POST)
    public Object getTrineDataVersionTime(HttpServletRequest request) {
        try {
            Framework framework = (Framework) request.getSession().getAttribute("framework");
            Trinedataversion trinedataversion =  trinedataversionService.getTrinedataversion(framework.getFramewordID());
            if (trinedataversion!=null){
                return trinedataversion.getVersionTime();
            }else{
                return "未创建风控数据版本";
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
}