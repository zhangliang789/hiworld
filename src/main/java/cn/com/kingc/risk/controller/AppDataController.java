package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.*;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
import org.platform4j.model.Enterprise_data_dictionary;
import org.platform4j.model.Enterprise_role;
import org.platform4j.model.Framework;
import org.platform4j.service.Enterprise_data_dictionaryService;
import org.platform4j.service.Enterprise_roleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by admistrator on 2018-01-25.
 */
@RestController
@RequestMapping("/AppController")
public class AppDataController {

    @Autowired
    RisksiteoutofcontrolService  risksiteoutofcontrolService;

    @Autowired
    RiskcontrolplanebymonthService riskcontrolplanebymonthService;

    @Autowired
    RiskcontrolplanebymonthitemService riskcontrolplanebymonthitemService;

    @Autowired
    private RisksiteService risksiteService;

    @Autowired
    private TrinedataversionService trinedataversionService;

    @Autowired
    private RiskcontrolhistoryService riskcontrolhistoryService;

    @Autowired
    private RiskcontrolhistoryattachmentService riskcontrolhistoryattachmentService;

    @Autowired
    private Enterprise_roleService enterprise_roleService;

    @Autowired
    private RiskhazardService riskhazardService;

    @Autowired
    RiskleversettingService riskleversettingService;

    @Autowired
    private Enterprise_data_dictionaryService enterprise_data_dictionaryService;


    @RequestMapping(value = "/getRiskControlMonthPlaneByRiskSiteAndDHZ/{frameWorkID}/{monthplaneID}/{monthplaneItemID}/{riskSiteID}", method = RequestMethod.GET)
    @ApiOperation(value = "获取管控计划对象下风险点下的风险集合", response = List.class, httpMethod = "GET", notes = "获取管控计划对象下风险点下的风险集合")
    public Object getRiskControlMonthPlaneByRiskSiteAndDHZ(
            @ApiParam(name = "frameWorkID", value = "企业ID") @PathVariable("frameWorkID") String frameWorkID,
            @ApiParam(name = "monthplaneID", value = "计划ID") @PathVariable("monthplaneID") Integer monthplaneID,
            @ApiParam(name = "monthplaneItemID", value = "计划从表ID") @PathVariable("monthplaneItemID") Integer monthplaneItemID,
            @ApiParam(name = "riskSiteID", value = "风险点ID") @PathVariable("riskSiteID") Integer riskSiteID) {
        try {

             Risksiteoutofcontrol risksiteoutofcontrol = new Risksiteoutofcontrol();
             risksiteoutofcontrol.setMonthPlaneID(monthplaneID);
             risksiteoutofcontrol.setMonthPlaneItemID(monthplaneItemID);
             List<Risksiteoutofcontrol> otoflist = risksiteoutofcontrolService.getRisksiteoutofcontrolData(risksiteoutofcontrol);

             //大于0已经有检查的风险
             if(otoflist.size()>0){
                 Risksite risksite =  risksiteService.getRisksite(riskSiteID);
                 if(risksite.getmChildRiskSite().size()>0){
                     for(int i=0;i<risksite.getmChildRiskSite().size();i++){

                         if(risksite.getmChildRiskSite().get(i).getmHazards().size()>0){
                             for(int j=0;j<risksite.getmChildRiskSite().get(i).getmHazards().size();j++){
                                 risksite.getmChildRiskSite().get(i).getmHazards().get(j).setRiskhazardStatus(false);
                             }
                         }
                     }
                 }

                 for(int k=0;k<otoflist.size();k++){

                     if(otoflist.get(k).getmControlitem().size()>0){

                         for(int a=0;a<otoflist.get(k).getmControlitem().size();a++){


                             if(risksite.getmChildRiskSite().size()>0){
                                 for(int i=0;i<risksite.getmChildRiskSite().size();i++){

                                     if(risksite.getmChildRiskSite().get(i).getmHazards().size()>0){
                                         for(int j=0;j<risksite.getmChildRiskSite().get(i).getmHazards().size();j++){

                                             if(!risksite.getmChildRiskSite().get(i).getmHazards().get(j).getRiskhazardStatus()){

                                                 int id = otoflist.get(k).getmControlitem().get(a).getHazardID();
                                                 int rid = risksite.getmChildRiskSite().get(i).getmHazards().get(j).getHazardID();
                                                 if( id == rid ){
                                                     risksite.getmChildRiskSite().get(i).getmHazards().get(j).setRiskhazardStatus(true);

                                                 }else{
                                                     risksite.getmChildRiskSite().get(i).getmHazards().get(j).setRiskhazardStatus(false);

                                                 }
                                             }


                                         }
                                     }
                                 }
                             }


                         }


                     }

                 }
                 return risksite.getmChildRiskSite();

             }else{
                 Risksite risksite =  risksiteService.getRisksite(riskSiteID);
                 if(risksite.getmChildRiskSite().size()>0){
                     for(int i=0;i<risksite.getmChildRiskSite().size();i++){

                         if(risksite.getmChildRiskSite().get(i).getmHazards().size()>0){
                             for(int j=0;j<risksite.getmChildRiskSite().get(i).getmHazards().size();j++){
                                 risksite.getmChildRiskSite().get(i).getmHazards().get(j).setRiskhazardStatus(false);
                             }
                         }
                     }
                 }

                 return risksite.getmChildRiskSite();
             }



        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }



    @RequestMapping(value = "/getRiskControlMonthPlaneByUser/{frameWorkID}/{monthPlanUnitName}", method = RequestMethod.GET)
    @ApiOperation(value = "获取月度管控计划对象", response = List.class, httpMethod = "GET", notes = "获取月度管控计划对象List")
    public Object getRiskControlMonthPlaneByUser(
            @ApiParam(name = "frameWorkID", value = "企业ID") @PathVariable("frameWorkID") String frameWorkID,
            @ApiParam(name = "monthPlanUnitName", value = "单位名称") @PathVariable("monthPlanUnitName") String monthPlanUnitName) {
        try {

            return riskcontrolplanebymonthService.getRiskControlMonthPlaneByUser(
                    frameWorkID,
                    monthPlanUnitName);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //风险点现场管控
    @RequestMapping(value = "/getRisksiteListByDHZ/{frameWorkID}/{riskName}/{managerUnitName}/{page}", method = RequestMethod.GET)
    @ApiOperation(value = "获取风险点集合", response = List.class, httpMethod = "GET", notes = "获取风险点集合")
    public Object getRisksiteListByDHZ(
            @ApiParam(name = "frameWorkID", value = "企业ID") @PathVariable("frameWorkID") String frameWorkID,
            @ApiParam(name = "riskName", value = "风险点名称") @PathVariable("riskName") String riskName,
            @ApiParam(name = "managerUnitName", value = "部门名称") @PathVariable("managerUnitName") String managerUnitName,
            @ApiParam(name = "page", value = "页数") @PathVariable("page") Integer page
            ) {
        try {

            Risksite risksite = new Risksite();
            risksite.setFrameWorkID(frameWorkID);
            if(riskName.equals("null")){
                risksite.setName("");
            }else{
                risksite.setName(riskName);
            }
            risksite.setManagerUnitName(managerUnitName);
            risksite.setPage(page);
            risksite.setPagesize(15);
            return risksiteService.getRiskSiteByYS(risksite);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //风险点清单
    @RequestMapping(value = "/getRisksiteDetailedListByDHZ/{frameWorkID}/{riskName}/{riskDamageType}/{riskLevelSettingID}/{page}", method = RequestMethod.GET)
    @ApiOperation(value = "获取风险点集合", response = List.class, httpMethod = "GET", notes = "获取风险点集合")
    public Object getRisksiteDetailedListByDHZ(
            @ApiParam(name = "frameWorkID", value = "企业ID") @PathVariable("frameWorkID") String frameWorkID,
            @ApiParam(name = "riskName", value = "风险点名称") @PathVariable("riskName") String riskName,
            @ApiParam(name = "riskDamageType", value = "灾害类型") @PathVariable("riskDamageType") String riskDamageType,
            @ApiParam(name = "riskLevelSettingID", value = "风险点等级ＩＤ") @PathVariable("riskLevelSettingID") Integer riskLevelSettingID,
            @ApiParam(name = "page", value = "页数") @PathVariable("page") Integer page
           ) {
        try {

            Risksite risksite = new Risksite();
            risksite.setCoalMineName(frameWorkID);
            risksite.setFrameWorkID(riskName);
            risksite.setRiskDamageType(riskDamageType);
            risksite.setRiskLevelSettingID(riskLevelSettingID);
            risksite.setPage(page);
            risksite.setPagesize(10);
            return risksiteService.getRiskSiteByYS(risksite);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //风险点清单all
    @RequestMapping(value = "/getRisksiteDetailedListPageByDHZ/{frameWorkID}/{riskName}/{riskDamageType}/{riskLevelSettingID}/{page}", method = RequestMethod.GET)
    @ApiOperation(value = "获取风险点集合", response = List.class, httpMethod = "GET", notes = "获取风险点集合")
    public Object getRisksiteDetailedListPageByDHZ(
            @ApiParam(name = "frameWorkID", value = "企业ID") @PathVariable("frameWorkID") String frameWorkID,
            @ApiParam(name = "riskName", value = "风险点名称") @PathVariable("riskName") String riskName,
            @ApiParam(name = "riskDamageType", value = "灾害类型") @PathVariable("riskDamageType") String riskDamageType,
            @ApiParam(name = "riskLevelSettingID", value = "风险点等级ＩＤ") @PathVariable("riskLevelSettingID") Integer riskLevelSettingID,
            @ApiParam(name = "page", value = "页数") @PathVariable("page") Integer page
    ) {
        try {

            Risksite risksite = new Risksite();
            risksite.setFrameWorkID(frameWorkID);
            if(riskName.equals("null")){
                risksite.setName("");
            }else{
                risksite.setName(riskName);
            }
            if(riskDamageType.equals("null")){
                risksite.setRiskDamageType("");
            }else{
                risksite.setRiskDamageType(riskDamageType);
            }
            if(riskLevelSettingID==0){
                risksite.setRiskLevelSettingID(0);
            }else{
                risksite.setRiskLevelSettingID(riskLevelSettingID);
            }
            risksite.setPage(page);
            risksite.setPagesize(15);
            return risksiteService.getRisksiteByPageAndRisksiteDHZ(risksite);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //获取风险点等级
    @RequestMapping(value = "/getNewRiskleversettingList/{frameWorkID}", method = RequestMethod.GET)
    @ApiOperation(value = "获取风险点等级", response = Risksite.class, httpMethod = "GET", notes = "获取风险点等级")
    public Object getNewRiskleversettingList(
            @ApiParam(name = "frameWorkID", value = "企业ID") @PathVariable("frameWorkID") String frameWorkID
            ) {
        Riskleversetting riskleversetting = new Riskleversetting();
        riskleversetting.setFrameWorkID(frameWorkID);
        try {
            List<Riskleversetting> riskleversettingList = riskleversettingService.getRiskleversettingList(riskleversetting);

            return riskleversettingList;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }


    //获取风险点灾害类型
    @RequestMapping(value = "/getdamageTypeList/{frameWorkID}", method = RequestMethod.GET)
    @ApiOperation(value = "获取灾害类型", response = Risksite.class, httpMethod = "GET", notes = "获取灾害类型")
    public Object getdamageTypeList(
            @ApiParam(name = "frameWorkID", value = "企业ID") @PathVariable("frameWorkID") String frameWorkID
    ) {
        try {
            List<Enterprise_data_dictionary> dictionary1 = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(frameWorkID, "灾害类型");

            return dictionary1;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }


    //分页获取风险管控清单数据
    @RequestMapping(value = "/getRiskSiteByRisksiteForA/{frameWorkID}/{pagesize}/{page}", method = RequestMethod.GET)
    @ApiOperation(value = "分页获取风险管控清单数据，返回List结合", response = List.class, httpMethod = "GET", notes = "分页获取风险管控清单数据，返回List结合")
    public Object getRiskSiteByRisksiteForA(
            @ApiParam(name = "frameWorkID", value = "企业ID") @PathVariable("frameWorkID") String frameWorkID,
            @ApiParam(name = "pagesize", value = "页数") @PathVariable("pagesize") int pagesize,
            @ApiParam(name = "page", value = "第几页") @PathVariable("page") int page
    ) {
        try {
            Risksite risksite = new Risksite();
            risksite.setFrameWorkID(frameWorkID);
            risksite.setPagesize(pagesize);
            risksite.setPage(page);

            List<Risksite> risksites = risksiteService.getRisksiteByPageAndRisksite(risksite);
            return risksites;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/getRiskControlMonthPlaneByDHZ/{frameWorkID}/{monthPlanUnitName}", method = RequestMethod.GET)
    @ApiOperation(value = "获取月度管控计划对象", response = List.class, httpMethod = "GET", notes = "获取月度管控计划对象List")
    public Object getRiskControlMonthPlaneByDHZ(
            @ApiParam(name = "frameWorkID", value = "企业ID") @PathVariable("frameWorkID") String frameWorkID,
            @ApiParam(name = "monthPlanUnitName", value = "单位名称") @PathVariable("monthPlanUnitName") String monthPlanUnitName) {
        try {

            return riskcontrolplanebymonthService.getRiskControlMonthPlaneByDHZ(
                    frameWorkID,
                    monthPlanUnitName);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }


    /**
     * @param mLostRiskSite
     */
    @RequestMapping(value = "/saveRisksiteoutofcontrol", method = RequestMethod.POST)
    @ApiOperation(value = "保存失控风险点及其Item里边的对象", response = boolean.class, httpMethod = "POST", notes = "新增失控风险点 显示失控危险源信息可以放到失控风险点的mControlitem里")
    @ResponseBody
    public Object saveRisksiteoutofcontrol(String mLostRiskSite) {
        try {
            Gson gson = new Gson();
            Type checkQuestionType = new TypeToken<List<Risksiteoutofcontrol>>() {
            }.getType();
            List<Risksiteoutofcontrol> _mLostRiskSite = gson.fromJson(mLostRiskSite, checkQuestionType);
            if (_mLostRiskSite != null && _mLostRiskSite.size() > 0) {
                for (Risksiteoutofcontrol outControl : _mLostRiskSite) {
                    //APP端上传成功后会删除本地数据
                    //所以服务端始终认为每次传上来的都是新的
                    outControl.setCheckRecordID(null);
                    List<Risksiteoutofcontrolitem> risksiteoutofcontrolitems = outControl.getmControlitem();
                    for (Risksiteoutofcontrolitem risksiteoutofcontrolitem : risksiteoutofcontrolitems) {
                        risksiteoutofcontrolitem.setItemID(null);
                        List<Risksiteoutofcontrolattachment> risksiteoutofcontrolattachments = risksiteoutofcontrolitem.getAccthes();
                        if (risksiteoutofcontrolattachments != null && risksiteoutofcontrolattachments.size() > 0) {
                            for (Risksiteoutofcontrolattachment risksiteoutofcontrolattachment : risksiteoutofcontrolattachments) {
                                risksiteoutofcontrolattachment.setAttchID(null);
                            }
                        }
                    }
                    risksiteoutofcontrolService.addRisksiteoutofcontrol(outControl);
                }

                return true;

            }
            return false;
        } catch (Exception ex) {
            System.out.print(ex.getMessage());
            return false;
        }
    }


    /**(饿矿)
     * @param mLostRiskSite
     */
    @RequestMapping(value = "/saveRisksiteoutofcontrolByEKuang", method = RequestMethod.POST)
    @ApiOperation(value = "保存失控风险点及其Item里边的对象", response = boolean.class, httpMethod = "POST", notes = "新增失控风险点 显示失控危险源信息可以放到失控风险点的mControlitem里")
    @ResponseBody
    public Object saveRisksiteoutofcontrolByEKuang(String mLostRiskSite) {
        try {
            Gson gson = new Gson();
            Type checkQuestionType = new TypeToken<List<Risksiteoutofcontrol>>() {
            }.getType();
            List<Risksiteoutofcontrol> _mLostRiskSite = gson.fromJson(mLostRiskSite, checkQuestionType);
            if (_mLostRiskSite != null && _mLostRiskSite.size() > 0) {
                for (Risksiteoutofcontrol outControl : _mLostRiskSite) {
                    //APP端上传成功后会删除本地数据
                    //所以服务端始终认为每次传上来的都是新的
//                    outControl.setCheckRecordID(null);
//                    List<Risksiteoutofcontrolitem> risksiteoutofcontrolitems = outControl.getmControlitem();
//                    for (Risksiteoutofcontrolitem risksiteoutofcontrolitem : risksiteoutofcontrolitems) {
//                        risksiteoutofcontrolitem.setItemID(null);
//                        List<Risksiteoutofcontrolattachment> risksiteoutofcontrolattachments = risksiteoutofcontrolitem.getAccthes();
//                        if (risksiteoutofcontrolattachments != null && risksiteoutofcontrolattachments.size() > 0) {
//                            for (Risksiteoutofcontrolattachment risksiteoutofcontrolattachment : risksiteoutofcontrolattachments) {
//                                risksiteoutofcontrolattachment.setAttchID(null);
//                            }
//                        }
//                    }
                    risksiteoutofcontrolService.addRisksiteoutofcontrolByEKuang(outControl);
                }

                return true;

            }
            return false;
        } catch (Exception ex) {
            System.out.print(ex.getMessage());
            return false;
        }
    }

    /**(大海则)
     * @param mLostRiskSite
     */
    @RequestMapping(value = "/saveRisksiteoutofcontrolByDHZ", method = RequestMethod.POST)
    @ApiOperation(value = "保存失控风险点及其Item里边的对象", response = boolean.class, httpMethod = "POST", notes = "新增失控风险点 显示失控危险源信息可以放到失控风险点的mControlitem里")
    @ResponseBody
    public Object saveRisksiteoutofcontrolByDHZ(String mLostRiskSite) {
        try {
            Gson gson = new Gson();
            Type checkQuestionType = new TypeToken<List<Risksiteoutofcontrol>>() {
            }.getType();
            List<Risksiteoutofcontrol> _mLostRiskSite = gson.fromJson(mLostRiskSite, checkQuestionType);
            if (_mLostRiskSite != null && _mLostRiskSite.size() > 0) {
                for (Risksiteoutofcontrol outControl : _mLostRiskSite) {
                    //APP端上传成功后会删除本地数据
                    //所以服务端始终认为每次传上来的都是新的
//                    outControl.setCheckRecordID(null);
//                    List<Risksiteoutofcontrolitem> risksiteoutofcontrolitems = outControl.getmControlitem();
//                    for (Risksiteoutofcontrolitem risksiteoutofcontrolitem : risksiteoutofcontrolitems) {
//                        risksiteoutofcontrolitem.setItemID(null);
//                        List<Risksiteoutofcontrolattachment> risksiteoutofcontrolattachments = risksiteoutofcontrolitem.getAccthes();
//                        if (risksiteoutofcontrolattachments != null && risksiteoutofcontrolattachments.size() > 0) {
//                            for (Risksiteoutofcontrolattachment risksiteoutofcontrolattachment : risksiteoutofcontrolattachments) {
//                                risksiteoutofcontrolattachment.setAttchID(null);
//                            }
//                        }
//                    }
                    risksiteoutofcontrolService.addRisksiteoutofcontrolByDHZ(outControl);
                }

                return true;

            }
            return false;
        } catch (Exception ex) {
            System.out.print(ex.getMessage());
            return false;
        }
    }

    /**
     * @param frameWorkID
     */
    @RequestMapping(value = "/getTrineDataVersion/{frameWorkID}", method = RequestMethod.GET)
    @ApiOperation(value = "获取分控版本号", response = Trinedataversion.class, httpMethod = "GET", notes = "获取分控版本号")
    @ResponseBody
    public Object getTrineDataVersion(@PathVariable("frameWorkID") String frameWorkID) {
        try {
            return trinedataversionService.getTrinedataversion(frameWorkID);
        } catch (Exception ex) {
            System.out.print(ex.getMessage());
            return null;
        }
    }

    /**
     * 保存历史管控情况数据
     *
     * @param riskcontrolhistory
     * @return
     */
    @RequestMapping(value = "/savaRiskcontrolhistory", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public Object saveRiskcontrolhistory(@RequestBody Riskcontrolhistory riskcontrolhistory) {
        try {
            riskcontrolhistory.setId(null);
            riskcontrolhistory.setFromApp(true);
            if (riskcontrolhistoryService.addRiskcontrolhistory(riskcontrolhistory)) {
                Integer riskcontrolhistoryId = riskcontrolhistory.getId();
                String frameId = riskcontrolhistory.getFrameworkID();
                List addAttachFileList = new ArrayList();
                List<Map<String, String>> attachFileList = riskcontrolhistory.getAttachFileList();
                for (Map<String, String> map : attachFileList) {
                    Riskcontrolhistoryattachment attachment = new Riskcontrolhistoryattachment();
                    attachment.setFrameworkID(frameId);
                    attachment.setControlHistoryID(riskcontrolhistoryId);
                    attachment.setAttachmentUUID(map.get("fileId"));
                    attachment.setAttachmentName(map.get("fileName"));
                    addAttachFileList.add(attachment);
                }
                if (addAttachFileList != null && addAttachFileList.size() > 0) {
                    riskcontrolhistoryattachmentService.addRiskcontrolhistoryattachmentList(addAttachFileList);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
        return true;
    }


    /**
     * 保存历史管控情况数据(饿矿)
     *
     * @param riskcontrolhistory
     * @return
     */
    @RequestMapping(value = "/saveRiskcontrolhistoryByEKuang", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public Object saveRiskcontrolhistoryByEKuang(@RequestBody Riskcontrolhistory riskcontrolhistory) {
        try {
            riskcontrolhistory.setId(null);
            riskcontrolhistory.setFromApp(true);
            if (riskcontrolhistoryService.addRiskcontrolhistory(riskcontrolhistory)) {

                Riskhazard riskhazard = riskhazardService.getRiskhazard(riskcontrolhistory.getRiskHazardID());
                if(riskcontrolhistory.getRiskState().equals("1")){
                    riskhazard.setRiskhazardStatus(true);
                }else{
                    riskhazard.setRiskhazardStatus(false);
                }
                riskhazardService.updateRiskhazard(riskhazard);


                Integer riskcontrolhistoryId = riskcontrolhistory.getId();
                String frameId = riskcontrolhistory.getFrameworkID();
                List addAttachFileList = new ArrayList();
                List<Map<String, String>> attachFileList = riskcontrolhistory.getAttachFileList();
                for (Map<String, String> map : attachFileList) {
                    Riskcontrolhistoryattachment attachment = new Riskcontrolhistoryattachment();
                    attachment.setFrameworkID(frameId);
                    attachment.setControlHistoryID(riskcontrolhistoryId);
                    attachment.setAttachmentUUID(map.get("fileId"));
                    attachment.setAttachmentName(map.get("fileName"));
                    addAttachFileList.add(attachment);
                }
                if (addAttachFileList != null && addAttachFileList.size() > 0) {
                    riskcontrolhistoryattachmentService.addRiskcontrolhistoryattachmentList(addAttachFileList);
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
        return true;
    }


    //分页获取管控历史数据
    @RequestMapping(value = "/getRiskHistoryByPage/{frameWorkID}", method = RequestMethod.GET)
    @ApiOperation(value = "分页获取管控历史数据，返回List结合", response = List.class, httpMethod = "GET", notes = "分页获取管控历史数据，返回List结合")
    public Object getRiskHistoryByPage(@ApiParam(name = "frameWorkID") @PathVariable("frameWorkID") String frameWorkID) {
        try {
            Riskcontrolhistory riskcontrolhistory = new Riskcontrolhistory();
            riskcontrolhistory.setFrameworkID(frameWorkID);
            riskcontrolhistory.setPage(1);
            riskcontrolhistory.setPagesize(5);
            List<Riskcontrolhistory> riskcontrolhistoryList = riskcontrolhistoryService.getRiskcontrolhistoryByPageByTime(riskcontrolhistory);
            return riskcontrolhistoryList;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    /**
     * 根据用户名获取用户角色
     * @param userName 用户名
     * @return
     */
    @RequestMapping(value = "/getLoginUserRoleString/{userName}",method = {RequestMethod.GET,RequestMethod.POST})
    public Object getLoginUserRoleString(@PathVariable("userName") String userName){
        try{
            List<Enterprise_role> roleList= enterprise_roleService.getRoleListForUser(userName, (String)null);
            String roleString = "";
            if (roleList != null) {
                for(int i = 1; i <= roleList.size(); ++i) {
                    if (i == roleList.size()) {
                        roleString = roleString + ((Enterprise_role)roleList.get(i - 1)).getFRole_Name();
                    } else {
                        roleString = roleString + ((Enterprise_role)roleList.get(i - 1)).getFRole_Name() + ";";
                    }
                }
            }
            return roleString;
        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

    //获取触屏隐患历史记录
    @RequestMapping(value = "/getRiskhazardForTouch", method = RequestMethod.POST)
    @ApiOperation(value = "获取触屏风险清单，返回List集合", response = List.class, httpMethod = "POST", notes = "获取触屏风险清单")
    public Object getRiskhazardForTouch(
            @RequestBody AppSearch appSearch

    ) {
        List<String> locationList = new ArrayList<>();
        List<String> catagoriesList = new ArrayList<>();
        String departmentName = appSearch.getDepartmentName();
        String fframeWorkID =appSearch.getFframeWorkID();
        String startTime = appSearch.getStartTime();
        String endTime = appSearch.getEndTime();
        if(appSearch.getLocationList() != null){
            locationList = appSearch.getLocationList();
        }
        if(appSearch.getCatagoriesList() != null){
            catagoriesList = appSearch.getCatagoriesList();
        }
        try {
            if (departmentName.contains("领导") || departmentName.contains("安检") || departmentName.contains("安监") || departmentName.equals("安全监察部")) {
                List<String> lst = riskhazardService.getRiskhazardForTouch(
                        fframeWorkID,
                        "",
                        startTime,
                        endTime,
                        locationList,
                        catagoriesList
                );
                return lst;
            } else {
                List<String> lst = riskhazardService.getRiskhazardForTouch(
                        fframeWorkID,
                        "",
                        startTime,
                        endTime,
                        locationList,
                        catagoriesList
                );
                return lst;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return 0;
        }

    }

    @RequestMapping(value = "/updateRiskhazard", method = {RequestMethod.POST})
    @ResponseBody
    public Object updateRiskhazard(@RequestBody List<AppSearch> appSearchList,HttpServletRequest request) {
        String signId = request.getParameter("signId");
        try {
            for (AppSearch appSearch :appSearchList){
                Riskhazard riskhazard = new Riskhazard();
                riskhazard.setFrameWorkID(appSearch.getFframeWorkID());
                riskhazard.setHazardID(appSearch.getHazardID());
                riskhazard.setStatus(appSearch.getStatus());
                //触屏签名存放
                riskhazard.setStandardName(signId);
                riskhazardService.updateRiskhazard(riskhazard);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
        return true;
    }


    /**
     * 实时查询风险管控计划下的风险
     *
     */
    @RequestMapping(value = "/getRiskInfoListOnPlan/{frameWorkID}/{planId}/{riskId}", method = RequestMethod.GET)
    @ApiOperation(value = "实时查询风险管控计划下的风险", response = List.class, httpMethod = "GET", notes = "实时查询风险管控计划下的风险")
    public Object getRiskInfoListOnPlan(
            @ApiParam(name = "frameWorkID", value = "企业ID") @PathVariable("frameWorkID") String frameWorkID,
            @ApiParam(name = "planId", value = "管控计划Id") @PathVariable("planId") int planId,
            @ApiParam(name = "riskId", value = "风险Id") @PathVariable("riskId") int riskId
    ) {
        try {
            Risksite risksite = risksiteService.getRisksite(riskId);
            Risksite risksiteInfo = risksiteService.getRiskSiteChildwithCheckStatusList(risksite,planId);
            return risksiteInfo;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }



}
