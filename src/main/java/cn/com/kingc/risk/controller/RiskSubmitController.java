package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.service.RiskAnalyzeService;
import cn.com.kingc.risk.service.RiskhazardService;
import org.heart.common.utils.UtilsString;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @author Administrator
 * @date 2017/9/11
 */
@RestController
@RequestMapping("/risk")
public class RiskSubmitController {


    @Autowired
    private RiskAnalyzeService riskAnalyzeService;

    @Autowired
    private RiskhazardService riskhazardService;

    @RequestMapping(value = "/getRiskSubmitCount", method = RequestMethod.POST)
    public Object getRiskSubmitCount(HttpServletRequest request) {
        Map<String, Object> param = WebUtils.getParametersStartingWith(request, "search_");

        return riskAnalyzeService.getRiskSubmitCount(param);

    }

    @RequestMapping(value = "/getUnSubmitRiskList", method = RequestMethod.POST)
    public Object getUnSubmitRiskList(Integer page, Integer pageEnd, HttpServletRequest request) {
        Integer pageBegin = (page - 1) * pageEnd;
        Map<String, Object> param = WebUtils.getParametersStartingWith(request, "search_");
        return riskAnalyzeService.getUnSubmitRiskList(param, pageBegin, pageEnd);
    }

    /**
     * 上报到另一个系统.
     *
     * @param ids
     * @return
     */
    @RequestMapping("submit")
    public Boolean submit(String ids) {
        if (UtilsString.isBlank(ids)) {
            return false;
        }
        riskhazardService.updateSubmitStatusAndSubmit(ids);
        return true;
    }


}

