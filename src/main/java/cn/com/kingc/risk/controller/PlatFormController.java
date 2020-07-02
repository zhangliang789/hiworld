package cn.com.kingc.risk.controller;

import org.platform4j.model.*;
import org.platform4j.model.griddata.GridDataBase_Org;
import org.platform4j.model.griddata.GridDataEmp;
import org.platform4j.model.griddata.GridDataPlace;
import org.platform4j.model.griddata.GridDataUserinfo;
import org.platform4j.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/PlatForm")
public class PlatFormController {

    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private UserinfoService userinfoService;
    @Autowired
    private PlaceService placeService;
    @Autowired
    private Enterprise_data_dictionaryService enterprise_data_dictionaryService;
    @Autowired
    private Place_classifyService place_classifyService;
    @Autowired
    private Enterprise_roleService enterprise_roleService;
    @Autowired
    private EmpService empService;


    //按组织机构展示岗位功能
    @RequestMapping(value = "/getOrgsAndRoles",method = RequestMethod.POST)
    @ResponseBody
    public Object getCoOTree(HttpServletRequest request){
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        String framewordID=framework.getFramewordID();
        Base_org treeJingCheng=departmentService.getOrgsAndRoles(framewordID,null);
        return treeJingCheng;
    }



    //获取角色类别(企业主键，角色类别可为空，角色名称可为空)即岗位
    @RequestMapping(value = "/getRoleTypes",method = RequestMethod.POST)
    @ResponseBody
    public Object getRoleTypes(String orgID, String typeName,HttpServletRequest request){
        Enterprise_role enterprise_role1=new  Enterprise_role();
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        String framewordID=framework.getFramewordID();
        enterprise_role1.setFOrgID(framewordID);
        List<Enterprise_role> enterprise_role=enterprise_roleService.getEnterprise_roleList(enterprise_role1);
        return enterprise_role;
    }


    //获取角色类别(企业主键，角色类别可为空，角色名称可为空)即岗位
    @RequestMapping(value = "/savePlaceOfBussiness/{placeName}",method = RequestMethod.POST)
    @ResponseBody
    public Object savePlaceOfBussiness(@PathVariable("placeName")String placeName,HttpServletRequest request){
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        String framewordID=framework.getFramewordID();
        return placeService.savePlaceOfBussiness(framewordID,placeName);
    }
    //传企业，或获取企业下所有的传部门，会获取部门下具有该角色所有的包括下级部门
    @RequestMapping(value = "/getUsersOfRoleID")
    @ResponseBody
    public Object getUsersOfRoleID(String orgID, String roleGUID,HttpServletRequest request){
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        String framewordID=framework.getFramewordID();
        List<Userinfo> userinfo=userinfoService.getUsersOfRoleID(framewordID,roleGUID);
        return userinfo;
    }
    //获取部门信息
    @RequestMapping(value = "/getDepartment")
    @ResponseBody
    public Object getDepartment(String fOrgID,HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        String framewordID=framework.getFramewordID();
        GridDataBase_Org g = departmentService.getChilidOrgAll(framewordID, null, false, 10000000, 1);
        return g.getRows();
    }

    //获取当前组织机构下的责任人信息
    @RequestMapping(value = "/getCurrOrgEmpList/{forgID}", method = RequestMethod.POST)
    @ResponseBody
    public Object getCurrOrgEmpList(@PathVariable("forgID") String forgID) {
        GridDataEmp gridDataEmpInfo = empService.getCurrOrgEmpList(forgID, null, null, null,10000000, 1);
        return gridDataEmpInfo.getRows();
    }

    //获取地点类型信息
    @RequestMapping(value = "/getPlaceClassifyList", method = RequestMethod.POST)
    @ResponseBody
    public Object getPlaceClassifyList(String orgID, String typeName,HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        String framewordID=framework.getFramewordID();
        List<Place_classify> place_classify = place_classifyService.getPlaceClassifyList(framewordID, null);

        return place_classify;
    }

    //获取地点信息
    @RequestMapping(value = "/getPlaceListForEnterprise", method = RequestMethod.POST)
    @ResponseBody
    public Object getPlaceListForEnterprise(String orgID,HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        String framewordID=framework.getFramewordID();
        GridDataPlace gridDataPlace = placeService.getPlaceListForEnterprise(framewordID, null, null, null, null, 10000000, 1);
        return gridDataPlace;
    }
    //获取地点信息(树结构)用于辛安绑定地点
    @RequestMapping(value = "/getPlaceTrees", method = RequestMethod.POST)
    @ResponseBody
    public Object getPlaceTrees(String orgID,HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        String framewordID=framework.getFramewordID();
        List<TreeJingCheng> treeList=placeService.getPlaceTrees(framewordID, null);
        return treeList;
    }
    //获取辅助资料
    @RequestMapping(value = "/getEnterprise_data_dictionaryListForOrg", method = RequestMethod.POST)
    @ResponseBody
    public Object getEnterprise_data_dictionaryListForOrg(String myorgID, String data_TypeOrName,HttpServletRequest request) {
        Map map = new HashMap();
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        String orgID=framework.getFramewordID();
        List<Enterprise_data_dictionary> dictionary = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(orgID, "专业类型");
        List<Enterprise_data_dictionary> dictionary1 = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(orgID, "灾害类型");
        List<Enterprise_data_dictionary> dictionary2 = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(orgID, "事故类型");
        List<Enterprise_data_dictionary> dictionary3 = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(orgID, "管控层级");
        List<Enterprise_data_dictionary> dictionary4 = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(orgID, "管控频次");
        List<Enterprise_data_dictionary> dictionary5 = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(orgID, "专项检查类型");
        List<Enterprise_data_dictionary> dictionary6 = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(orgID, "计划类型");
        List<Enterprise_data_dictionary> dictionary7 = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(orgID, "检查类型");
        List<Enterprise_data_dictionary> dictionary8 = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(orgID, "班次");
        List<Enterprise_data_dictionary> dictionary9 = enterprise_data_dictionaryService.getEnterprise_data_dictionaryListForOrg(orgID, "风险类型");

        map.put("专业类型", dictionary);
        map.put("灾害类型", dictionary1);
        map.put("事故类型", dictionary2);

        map.put("管控层级", dictionary3);
        map.put("管控频次", dictionary4);
        map.put("专项检查类型", dictionary5);

        map.put("计划类型", dictionary6);
        map.put("检查类型", dictionary7);
        map.put("班次", dictionary8);
        map.put("风险类型", dictionary9);
        return map;
    }
    //获取企业下所有角色
    @RequestMapping(value = "/getUserinfoList")
    @ResponseBody
    public Object getUserinfoList(HttpServletRequest request ) {
        Emp emp =new Emp();
        Framework framework = (Framework) request.getSession().getAttribute("framework");
        emp.setFFrame_ID(framework.getFramewordID());
        List<Emp> list = empService.getEmpList(emp);//职员
        return list;
    }
    @RequestMapping(value = "/addPlace",method = RequestMethod.POST)
    public Object addPlace(@RequestBody Place place){
        try{
            boolean result=true;
            String  placeClassify_guid=place.getFPlace_Classify_GUID();
           // place=placeService.getPlace(place.getFPlace_GUID());
            Place_classify place_classify=null;
            if(placeClassify_guid!=null){
                place_classify= place_classifyService.getPlace_classify(placeClassify_guid);
                if(place_classify!=null){
                    place.setFPlace_Classify_Name(place_classify.getFPlace_Classify_Name());
                    place.setFPlace_Classify_Name_Shorthand(place_classify.getFPlace_Classify_Name());
                }
            }
            if(place.getFPlace_GUID()!=null){
                result= placeService.updatePlace(place);
            }else{
                result= placeService.addPlace(place);
            }
            if(result){
                Place p = new Place();
                p.setFOrgID(place.getFOrgID());
                List<Place> list = placeService.getPlaceList(p);
                for (Place place1 : list) {
                    if(place1.getFPlace_Name().equals(place.getFPlace_Name())){
                        return place1.getFPlace_GUID();
                    }
                }

            }

        }catch (Exception ex){
            ex.printStackTrace();
        }
        return null;
    }

}