package cn.com.kingc.risk.controller;

import org.platform4j.model.Department;
import org.platform4j.model.Framework;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by txianwei on 2017/9/12.
 */
@Controller
@RequestMapping("/menu")
public class MenuController {

    @RequestMapping("/Logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.setAttribute("user", null);
        session.setAttribute("CURRENT_USER", null);
        session.setAttribute("baseOrg", null);
        session.setAttribute("framework", null);
        session.setAttribute("userInfo", null);
        session.setAttribute("username", null);
        return "Login";
    }

    //风险管控index页面
    @RequestMapping("/Risk-index.do")
    public String gotoRiskindex() {
        return "Risk-index";
    }

    //风险辨识
    @RequestMapping("/HazardIdentification.do")
    public String gotoHazardIdentification() {
        return "HazardIdentification";
    }

    //风险辨识(梁家)
    @RequestMapping("/HazardIdentificationByLiangJia.do")
    public String gotoHazardIdentificationByLiangJia() {
        return "HazardIdentificationByLiangJia";
    }

    //风险辨识(e)
    @RequestMapping("/HazardIdentificationByEkuang.do")
    public String gotoHazardIdentificationByEkuang() {
        return "HazardIdentificationByEkuang";
    }



    //风险点台账
    @RequestMapping("/RisksiteParameter.do")
    public String gotoRisksiteParameter() {
        return "RisksiteParameter";
    }

    //辛安风险辨识
    @RequestMapping("/HazardIdentificationByXinAn.do")
    public String gotoHazardIdentificationByXinAn() {
        return "HazardIdentificationByXinAn";
    }

    //黄陵二矿重点管控对象
    @RequestMapping("/HazardIdentificationByHuangling.do")
    public String gotoHazardIdentificationByHuangling() {
        return "HazardIdentificationByHuangling";
    }

    //辛安风险辨识指定地点
    @RequestMapping("/HazardIdentificationByXinAnPlace.action")
    public String gotoTemplateHazardControllerByPlace() {
        return "HazardIdentificationByXinAnPlace";
    }

    //辛安风险辨识
    @RequestMapping("/RiskDetailedListByXinAn.do")
    public String gotoRiskDetailedListByXinAn() {
        return "RiskDetailedListByXinAn";
    }

    /**
     * 风险上报
     *
     * @return
     */
    @RequestMapping("/RiskSubmit.do")
    public String gotoRiskSubmit() {
        return "RiskSubmit";
    }

    @RequestMapping("/RiskDetailedListToXinAn.do")
    public String gotoRiskDetailedListToXinAn() {
        return "RiskDetailedListToXinAn";
    }


    //风险评价
    @RequestMapping("/RiskAssessment.do")
    public String gotoRiskAssessment() {
        return "RiskAssessment";
    }

    //风险管控措施制定
    @RequestMapping("/RiskControlMeasure.do")
    public String gotoRiskControlMeasure() {
        return "RiskControlMeasure";
    }

    //风险管控清单
    @RequestMapping("/RiskDetailedList.do")
    public String gotoRiskDetailedList() {
        return "RiskDetailedList";
    }

    //风险管控清单(梁家)
    @RequestMapping("/RiskDetailedListByLiangJia.do")
    public String gotoRiskDetailedListByLiangJia() {
        return "RiskDetailedListByLiangJia";
    }
    //危害因素库(梁家)
    @RequestMapping("/RiskHazardFactorBankByLiangJia.do")
    public String gotoRiskHazardFactorBankByLiangJia() {
        return "RiskHazardFactorBankByLiangJia";
    }
    //风险审核(梁家)
    @RequestMapping("/RiskHazardReviewByLiangJia.do")
    public String gotoRiskHazardReviewByLiangJia() {
        return "RiskHazardReviewByLiangJia";
    }

    //年度辨识
    @RequestMapping("/RiskIdentificationByYear.do")
    public String gotoRiskIdentificationByYear() {
        return "RiskIdentificationByYear";
    }

    //黄陵二矿年度辨识
    @RequestMapping("/RiskIdentificationByYearByHL.do")
    public String RiskIdentificationByYearByHL() {
        return "RiskIdentificationByYearByHL";
    }

    //年度辨识-维护
    @RequestMapping("/RiskIdentificationByYearEntry.do")
    public String gotoRiskIdentificationByYearEntry() {
        return "RiskIdentificationByYearEntry";
    }


    //年度辨识-维护-补充辨识
    @RequestMapping("/RiskIdentificationByYearEntryTotal.do")
    public String gotoRiskIdentificationByYearEntryTotal() {
        return "RiskIdentificationByYearTotal";
    }

    //年段辨识-维护（饿矿）
    @RequestMapping("/RiskIdentificationByYearEntryByEkuang.do")
    public String gotoRiskIdentificationByYearEntryByEkuang(){ return "RiskIdentificationByYearEntryByEkuang"; }

    //导入线下辨识结果
    @RequestMapping("/ImportOffLineData.do")
    public String gotoImportOffLineData() {
        return "ImportOffLineData";
    }

    //导入线下辨识结果二级页面
    @RequestMapping("/ImportOffLineDataComplete")
    public String gotoImportOffLineDataComplete() {
        return "ImportOffLineDataComplete";
    }

    //系统属性扩展
    @RequestMapping("/SystemAttributeDevelop.do")
    public String gotoSystemAttributeDevelop() {
        return "SystemAttributeDevelop";
    }

    @RequestMapping("/RiskIdentificationBySpeciallyByHL.do")
    public String gotoRiskIdentificationBySpeciallyByHL() {
        return "RiskIdentificationBySpeciallyByHL";
    }

    //专项辨识
    @RequestMapping("/RiskIdentificationBySpecially.do")
    public String gotoRiskIdentificationBySpecially() {
        return "RiskIdentificationBySpecially";
    }

    //黄陵二矿专项辨识维护页面
    @RequestMapping("/RiskIdentificationBySpeciallyEntryByHL.action")
    public String gotoRiskIdentificationBySpeciallyEntryByHL() {
        return "RiskIdentificationBySpeciallyEntryByHL";
    }

    //专项辨识维护页面
    @RequestMapping("/RiskIdentificationBySpeciallyEntry.action")
    public String gotoRiskIdentificationBySpeciallyEntry() {
        return "RiskIdentificationBySpeciallyEntry";
    }

    //专项辩识维护页面（俄矿）
    @RequestMapping("/RiskIdentificationBySpeciallyEntryByEkuang.action")
    public String gotoRiskIdentificationBySpeciallyEntryByEkukang() { return "RiskIdentificationBySpeciallyEntryByEkuang";}

    //黄陵二矿安全风险管控计划
    @RequestMapping("/RiskControlPlaneByMonthByHL.do")
    public String gotRiskControlPlaneByMonthByHL() {
        return "RiskControlPlaneByMonthByHL";
    }

    //安全风险管控计划
    @RequestMapping("/RiskControlPlaneByMonth.do")
    public String gotRiskControlPlaneByMonth() {
        return "RiskControlPlaneByMonth";
    }


    //安全风险管控计划(芒来煤矿)
    @RequestMapping("/RiskControlPlaneByMonthByMangLai.do")
    public String gotRiskControlPlaneByMonthByMangLai() {
        return "RiskControlPlaneByMonthByMangLai";
    }
   //芒来煤矿安全风险管控计划维护
   @RequestMapping("/RiskControlPlaneByMonthAddByMangLai.action")
   public String gotRiskControlPlaneByMonthAddByMangLai() {
       return "RiskControlPlaneByMonthAddByMangLai";
   }
    //黄陵二矿安全风险管控计划维护
    @RequestMapping("/RiskControlPlaneByMonthByHLAdd.action")
    public String gotRiskControlPlaneByMonthByHLAdd() {
        return "RiskControlPlaneByMonthByHLAdd";
    }

    //安全风险管控计划维护
    @RequestMapping("/RiskControlPlaneByMonthAdd.action")
    public String gotRiskControlPlaneByMonthAdd() {
        return "RiskControlPlaneByMonthAdd";
    }

    //现场检查结果管理
    @RequestMapping("/RiskCheckResult.do")
    public String gotRiskCheckResult() {
        return "RiskCheckResult";
    }

    //现场检查结果管理维护
    @RequestMapping("/RiskCheckResultAdd.action")
    public String gotRiskCheckResultAdd() {
        return "RiskCheckResultAdd";
    }

    //现场检查结果新增
    @RequestMapping("/RiskCheckResultNew.action")
    public String gotRiskCheckResultNew() {
        return "RiskCheckResultNew";
    }

    //管控效果分析
    @RequestMapping("/RiskControlAnalyze.do")
    public String gotRiskControlAnalyze() {
        return "RiskControlAnalyze";
    }

    //管控效果分析新增
    @RequestMapping("/RiskControlAnalyzeAdd.action")
    public String gotRiskControlAnalyzeAdd() {
        return "RiskControlAnalyzeAdd";
    }

    //管控方案管理
    @RequestMapping("/RiskControlSchemeManagement.do")
    public String gotoRiskControlSchemeManagement(){return "RiskControlSchemeManagement";}

    //管控方案管理新增
    @RequestMapping("/RiskControlSchemeAdd.action")
    public String gotoRiskControlSchemeAdd(){return "RiskControlSchemeAdd";}

    //管控效果分析(平煤)
    @RequestMapping("/RiskControlAnalyzeByPingMei.do")
    public String gotRiskControlAnalyzeByPingMei() {
        return "RiskControlAnalyzeByPingMei";
    }

    //管控效果分析新增(平煤)
    @RequestMapping("/RiskControlAnalyzeAddByPingMei.action")
    public String gotRiskControlAnalyzeAddByPingMei() {
        return "RiskControlAnalyzeAddByPingMei";
    }

    //管控效果分析(芒来)
    @RequestMapping("/RiskControlAnalyzeByMangLai.do")
    public String gotRiskControlAnalyzeByMangLai() {
        return "RiskControlAnalyzeByMangLai";
    }

    //管控效果分析新增(芒来)
    @RequestMapping("/RiskControlAnalyzeAddByMangLai.action")
    public String gotRiskControlAnalyzeAddByMangLai() {
        return "RiskControlAnalyzeAddByMangLai";
    }

    //风险日历
    @RequestMapping("/RiskCalendar.do")
    public String gotRiskCalendar() {
        return "RiskCalendar";
    }

    //历史管控情况
    @RequestMapping("/Riskcontrolhistory.do")
    public String gotRiskcontrolhistory() {
        return "Riskcontrolhistory";
    }

    //历史管控-详情
    @RequestMapping("/RiskcontrolhistoryDetail.do")
    public String gotRiskcontrolhistoryDetail() {
        return "RiskcontrolhistoryDetail";
    }

    //风险点查询
    @RequestMapping("/RiskSiteSearch.do")
    public String gotoRiskSiteSearch() {
        return "RiskSiteSearch";
    }

    //风险点查询(黄陵)
    @RequestMapping("/RiskSiteSearchByHuangLing.do")
    public String RiskSiteSearchByHuangLing() {
        return "RiskSiteSearchByHuangLing";
    }


    //风险管控状态分析
    @RequestMapping("/RiskStatisticalAndAnalysis.do")
    public String gotoRiskStatisticalAndAnalysis() {
        return "RiskStatisticalAndAnalysis";
    }

    //与我相关的风险
    @RequestMapping("/RiskSiteAboutMe.do")
    public ModelAndView gotoRiskSiteAboutMe(HttpServletRequest request) {
//        return "RiskSiteAboutMe";
        Map<String, Object> returnMap = new HashMap<String, Object>();
        HttpSession session = request.getSession();
        Department department = (Department) session.getAttribute("department");
        Framework framework = (Framework) session.getAttribute("framework");
        String frameworkID = framework.getFramewordID();
        String rolestring = session.getAttribute("rolestring").toString();
        String departmentName = department.getFOrg_Name();
        // rolestring
        returnMap.put("idepartmentName", departmentName);
        returnMap.put("iRoleName", rolestring);
        returnMap.put("frameWorkID", frameworkID);
        return new ModelAndView("RiskSiteAboutMe", returnMap);
    }


    //危险源三级跳转
    @RequestMapping("/RiskControlMeasureShowMRiskSite.action")
    public String gotoRiskControlMeasureShowMRiskSite() {
        return "RiskControlMeasureShowMRiskSite";
    }

    //危险源三级跳转
    @RequestMapping("/RiskControlMeasure1.action")
    public String gotoRiskControlMeasure1() {
        return "RiskControlMeasure1";
    }

    //显示详细危险源
    @RequestMapping("/RiskHazardControlMeasureInfo.action")
    public String RiskHazardControlMeasureInfo() {
        return "RiskHazardControlMeasureInfo";
    }

    //二级风险点
    @RequestMapping("/RiskAssessmentShowMRiskSite.action")
    public String gotoRiskAssessmentShowMRiskSite() {
        return "RiskAssessmentShowMRiskSite";
    }

    //危险源三级跳转
    @RequestMapping("/RiskAssessment1.action")
    public String gotoRiskAssessment1() {
        return "RiskAssessment1";
    }

    //危险源三级跳转
    @RequestMapping("/RiskDetailedList1.action")
    public String gotoRiskDetailedList1() {
        return "RiskDetailedList1";
    }

    //危险源三级跳转
    @RequestMapping("/RiskDetailedListShowMRiskSite.action")
    public String gotoRiskDetailedListShowMRiskSite() {
        return "RiskDetailedListShowMRiskSite";
    }

    //危险源三级跳转
    @RequestMapping("/RiskSiteAboutMe1.action")
    public String gotoRiskSiteAboutMe1() {
        return "RiskSiteAboutMe1";
    }

    //危险源三级跳转
    @RequestMapping("/RiskSiteAboutMeShowMRiskSite.action")
    public String gotoRiskSiteAboutMeShowMRiskSite() {
        return "RiskSiteAboutMeShowMRiskSite";
    }

    //风险现场管控页面
    @RequestMapping("/RiskSpotControl.action")
    public String gotoRiskSpotControl() {
        return "RiskSpotControl";
    }

    //评估方法管理
    @RequestMapping("/AssessmentMethods.do")
    public String gotoAssessmentMethods() {
        return "AssessmentMethods";
    }

    //风险地图文件导入
    @RequestMapping("/ImportRiskSiteMap")
    public String gotoImportRiskSiteMap() {
        return "ImportRiskSiteMap";
    }

    //风险地图
    @RequestMapping("/RiskSiteMap.do")
    public String gotoRiskSiteMap() {
        return "RiskSiteMap";
    }

    //煤监局双重预防数据上报 -年度辨识上报
    @RequestMapping("/SynYearRisk.do")
    public String gotoSynYearRisk() {
        return "SynYearRisk";
    }

    //煤监局双重预防数据上报 -专项辨识上报
    @RequestMapping("/SynSpecialEvaluate.do")
    public String gotoSynSpecialEvaluate() {
        return "SynSpecialEvaluate";
    }

    //煤监局双重预防数据上报 -风险信息上报
    @RequestMapping("/SynRisk.do")
    public String gotoSynRisk() {
        return "SynRisk";
    }

    //煤监局双重预防数据上报 -上报设置
    @RequestMapping("/SynSetting.do")
    public String gotoSynSetting() {
        return "SynSetting";
    }

    //初始化风险数据
    @RequestMapping("/initData.do")
    public String gotoInitData() {
        return "initData";
    }

    //风险系统数据版本更新
    @RequestMapping("/UpdateTrineDataVersion.do")
    public String gotoUpdateTrineDataVersion() {
        return "UpdateTrineDataVersion";
    }

    //黄陵二矿专项辨识页面
    @RequestMapping("/RiskIdentificationBySpeciallyForHuangLing.do")
    public String goToHlkRiskIdentificationBySpecially() {
        return "RiskIdentificationBySpeciallyForHuangLing";
    }

    //与我相关的风险
    @RequestMapping("/RiskAboutMeByXinAn.do")
    public ModelAndView gotoRiskAboutMeByXinAn(HttpServletRequest request) {
        Map<String, Object> returnMap = new HashMap<String, Object>();
        HttpSession session = request.getSession();
        Department department = (Department) session.getAttribute("department");
        Framework framework = (Framework) session.getAttribute("framework");
        String frameworkID = framework.getFramewordID();
        String rolestring = session.getAttribute("rolestring").toString();
        String departmentName = department.getFOrg_Name();
        // rolestring
        returnMap.put("idepartmentName", departmentName);
        returnMap.put("iRoleName", rolestring);
        returnMap.put("frameWorkID", frameworkID);
        return new ModelAndView("RiskAboutMeByXinAn", returnMap);
    }

    //跳转安全风险评估表
    @RequestMapping("/Security_Risk_Assessment.do")
    public String gotoSecurity_Risk_Assessment() {
        return "Security_Risk_Assessment";
    }

    //跳转新增安全风险评估表
    @RequestMapping("/Security_Risk_AssessmentAdd.action")
    public String gotoSecurity_Risk_AssessmentAdd() {
        return "Security_Risk_AssessmentAdd";
    }

  /*  //煤监局双重上报
    @RequestMapping("/SynForSD.do")
    public String gotoSynSettingForSD() {
        return "SynForSD";
    }*/
     //数据更新
    @RequestMapping("/UpdateReport.do")
    public String gotoUpdateReport() {
        return "UpdateReport";
    }
    //微信短信接口
    @RequestMapping("/wechat.do")
    public String gotowechat() {
        return "wechat";
    }
}
