package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.model.Customerextendedattributes;
import cn.com.kingc.risk.model.Customerextendedclass;
import cn.com.kingc.risk.service.CustomerextendedattributesService;
import cn.com.kingc.risk.service.CustomerextendedclassService;
import cn.com.kingc.risk.serviceimpl.CustomerextendedclassServiceImpl;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
//import org.kplatform4j.model.Framework;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by txianwei on 2017/9/18.
 */
@RestController
@RequestMapping("/SystemAttributeDevelop")
public class SystemAttributeDevelopControl {

    @Autowired
    private CustomerextendedclassService customerextendedclassService;
    @Autowired
    private CustomerextendedattributesService customerextendedattributesService;

    //获取已经存在的可扩展的对象集合
    @RequestMapping(value = "/AttributesClasses", method = RequestMethod.GET)
    public Object getAttributesClasses(HttpServletRequest request) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Customerextendedclass customerextendedclass = new Customerextendedclass();
            customerextendedclass.setFrameWorkID(framework.getFramewordID());
            List<Customerextendedclass> customerextendedclassList= customerextendedclassService.getCustomerextendedclassData(customerextendedclass);
            if(customerextendedclassList!=null&&customerextendedclassList.size()>0){
                return customerextendedclassList;
            }else{
                customerextendedclassService.initializeaCustomerextendedclass(framework.getFrameWorkName(),framework.getFramewordID());
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    //获取一个空的自定义属性
    @RequestMapping(value = "/randomAttr", method = RequestMethod.GET)
    public Object getRandomattr(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Framework framework = (Framework) session.getAttribute("framework");
        Customerextendedattributes customerextendedattributes = new Customerextendedattributes();
        customerextendedattributes.setClassPropertyTitle("自定义字段");
        customerextendedattributes.setCoalMineName(framework.getFrameWorkName());
        customerextendedattributes.setFrameWorkID(framework.getFramewordID());
        customerextendedattributes.setClassPropertyID(0);
        customerextendedattributes.setClassPropertyDataType("varchar(200)");
        return customerextendedattributes;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @ApiOperation(value = "批量保存自定义对象属性类Customerextendedattributes", httpMethod = "POST", notes = "批量保存自定义对象属性类Customerextendedattributes,无返回值")
    public Object addAttributes(@ApiParam(required = true, name = "customerextendedattributesList", value = "customerextendedattributes对象集合") @RequestBody List<Customerextendedattributes> customerextendedattributesList) {
        try {
            if (customerextendedattributesList != null && customerextendedattributesList.size() > 0) {
                for (Customerextendedattributes customerextendedattributes : customerextendedattributesList) {
                    if (customerextendedattributes.getClassPropertyID() > 0) {
                        customerextendedattributesService.updateCustomerextendedattributes(customerextendedattributes);
                    } else {
                        customerextendedattributesService.addCustomerextendedattributes(customerextendedattributes);
                    }
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
        return true;
    }

    @RequestMapping(value = "/attributes/{clsssId}", method = RequestMethod.GET)
    public Object getClassCustomerextendedattributes(HttpServletRequest request, @PathVariable("clsssId") Integer clsssId) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Customerextendedattributes customerextendedattributes = new Customerextendedattributes();
            customerextendedattributes.setFrameWorkID(framework.getFramewordID());
            customerextendedattributes.setClassID(clsssId);
            customerextendedattributes.setSystemAtrr(false);
            customerextendedattributes.setCanBeShow(true);
            return customerextendedattributesService.getCustomerextendedattributesData(customerextendedattributes);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/classAttributes", method = RequestMethod.GET)
    public Object getClassCustomerextendedattributes(HttpServletRequest request, String name) {
        try {
            HttpSession session = request.getSession();
            Framework framework = (Framework) session.getAttribute("framework");
            Customerextendedclass customerextendedclass = new Customerextendedclass();
            customerextendedclass.setFrameWorkID(framework.getFramewordID());
            customerextendedclass.setClassName(name);
            List<Customerextendedclass> customerextendedclassList = customerextendedclassService.getCustomerextendedclassData(customerextendedclass);
            if (customerextendedclassList != null && customerextendedclassList.size() == 1) {
                Customerextendedclass cuClass = customerextendedclassList.get(0);
                List<Customerextendedattributes> customerextendedattributesList = cuClass.getmAttributes();
                List<Customerextendedattributes> resultList = new ArrayList<>();
                for (Customerextendedattributes customerextendedattributes : customerextendedattributesList) {
                    if (customerextendedattributes.isCanBeShow()) {
                        resultList.add(customerextendedattributes);
                    }
                }
                return resultList;
            } else {
                return null;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
}
