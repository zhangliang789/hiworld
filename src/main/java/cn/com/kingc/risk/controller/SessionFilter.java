package cn.com.kingc.risk.controller;


import com.mkaq.core.Constants;
import org.platform4j.model.*;
import org.platform4j.model.kingcenum.ProductCode;
import org.platform4j.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.context.support.XmlWebApplicationContext;

import java.io.IOException;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

public class SessionFilter implements Filter {

    public FilterConfig config;
    private UserinfoService userinfoService;
    private Enterprise_menuService enterprise_menuService;
    private DepartmentService departmentService;
    private Base_orgService base_orgService;
    private EmpService empService;
    private EnterpriseService enterpriseService;

    public static boolean isContains(String container, String[] regx) {
        boolean result = false;

        for (int i = 0; i < regx.length; i++) {
            if (container.indexOf(regx[i]) != -1) {
                return true;
            }
        }
        return result;
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // TODO Auto-generated method stub
        config = filterConfig;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        // TODO Auto-generated method stub
        HttpServletRequest hrequest = (HttpServletRequest) request;
        // String UserName = request.getParameter("UserName");
        HttpServletResponseWrapper wrapper = new HttpServletResponseWrapper((HttpServletResponse) response);
        ServletContext sc = hrequest.getSession().getServletContext();
        XmlWebApplicationContext cxt = (XmlWebApplicationContext) WebApplicationContextUtils.getWebApplicationContext(sc);
        if(cxt != null && cxt.getBean("userinfoService") != null && userinfoService == null)
            userinfoService = (UserinfoService) cxt.getBean("userinfoService");
        if(cxt!=null&&cxt.getBean("enterprise_menuService")!=null &&enterprise_menuService==null)
            enterprise_menuService=(Enterprise_menuService) cxt.getBean("enterprise_menuService");
        if(cxt!=null&&cxt.getBean("departmentService")!=null &&departmentService==null){
            departmentService=(DepartmentService)cxt.getBean("departmentService");
        }
        if(cxt!=null&&cxt.getBean("enterpriseService")!=null &&enterpriseService==null){
            enterpriseService=(EnterpriseService) cxt.getBean("enterpriseService");
        }

        if(cxt!=null&&cxt.getBean("empService")!=null &&empService==null){
            empService=(EmpService) cxt.getBean("empService");
        }
        String logonStrings = config.getInitParameter("logonStrings"); // 登录登陆页面
        String includeStrings = config.getInitParameter("includeStrings"); // 过滤资源后缀参数
        String redirectPath =  config.getInitParameter("redirectPath");// 没有登陆转向页面
        String disabletestfilter = config.getInitParameter("disabletestfilter");// 过滤器是否有效
        String productCode=config.getInitParameter("productCode");
        String menusString =config.getInitParameter("menusStrings");
        if (disabletestfilter.toUpperCase().equals("Y")) { // 过滤无效
            chain.doFilter(request, response);
            return;
        }

        String[] logonList = logonStrings.split(";");
        String[] includeList = includeStrings.split(";");
        String[] menusList=menusString.split(";");

        if (!this.isContains(hrequest.getRequestURI(), includeList)) {// 只对指定过滤参数后缀进行过滤
            chain.doFilter(request, response);
            return;
        }

        if (this.isContains(hrequest.getRequestURI(), logonList)) {// 对登录页面不进行过滤
            chain.doFilter(request, response);
            return;
        }
        String backUrl =hrequest.getRequestURL().toString();
        Object userTokey =hrequest.getSession().getAttribute(Constants.UserToKey);
        if(userTokey==null){
            userTokey=	hrequest.getParameter(Constants.UserToKey);
            if(userTokey!=null){
                hrequest.getSession().setAttribute(Constants.UserToKey,userTokey.toString());
                //获取用户信息
                User_login_message userinfo =userinfoService.getUserinfo(userTokey.toString());

                //userinfo =userinfoService.getUserinfoForApp("wangcb");
                if(userinfo==null){
                    wrapper.sendRedirect(redirectPath+"?back="+backUrl);
                    return;
                }else{

                }
                hrequest.getSession().setAttribute(Constants.CURRENT_USER,userinfo);
                Enterprise enterprise =enterpriseService.getEnterprise(userinfo.getFFrameID());
                hrequest.getSession().setAttribute(Constants.ENTERPRISE,enterprise);
                if(enterprise!=null){
                    Framework framework =new Framework();
                    framework.setFrameWorkName(enterprise.getFOrg_Name());
                    framework.setFramewordID(enterprise.getFOrgID());
                    hrequest.getSession().setAttribute(Constants.FRAMEWORK,framework);
                }
//                else{
//                    enterprise =(Enterprise)departmentService.getOrg(userinfo.getFFrameID());
//                    hrequest.getSession().setAttribute(Constants.ENTERPRISE,enterprise);
//                    if(enterprise!=null){
//                        Framework framework =new Framework();
//                        framework.setFrameWorkName(enterprise.getFOrg_Name());
//                        framework.setFramewordID(enterprise.getFOrgID());
//                        hrequest.getSession().setAttribute(Constants.FRAMEWORK,framework);
//                    }
//                }
                Department department =departmentService.getDepartment(userinfo.getFOrg_ID());
                hrequest.getSession().setAttribute(Constants.DEPARTMENT,department);
                Emp emp =empService.getEmp(userinfo.getFEmpID());
                hrequest.getSession().setAttribute(Constants.EMP,emp);
                //获取角色菜单
                List<Enterprise_menu> menus= enterprise_menuService.getMenuListForUser(userinfo.getFUserName(), ProductCode.valueOf(productCode),null);
                hrequest.getSession().setAttribute(Constants.MENUS,menus);
                String strURI =hrequest.getRequestURI();
                boolean bl =false;
                if(this.isContains(hrequest.getRequestURI(),menusList)) {
                    for (Enterprise_menu menu : menus
                            ) {
                        if (menu.getFMenu_Url() == null) {
                            continue;
                        } else {
                            if (menu.getFMenu_Url().toUpperCase().equals(strURI.toUpperCase())) {
                                bl = true;
                                break;
                            }
                        }
                    }
                }else{
                    bl=true;
                }
                if(bl){
                    //进入业务系统界面
                    chain.doFilter(request, response);
                    return;
                }else{//提示进去没有权限的界面
                    wrapper.sendRedirect(logonStrings);
                    return;

                }

            }else{
                wrapper.sendRedirect(redirectPath+"?back="+backUrl);
                return;
            }
        }else{
            //判断程序是否登录
            User_login_message userinfo =userinfoService.getUserinfo(userTokey.toString());
            //userinfo =userinfoService.getUserinfoForApp("wangcb");
            if(userinfo!=null){
                if(hrequest.getSession().getAttribute(Constants.EMP)==null){
                    Emp emp =empService.getEmp(userinfo.getFEmpID());
                    hrequest.getSession().setAttribute(Constants.EMP,emp);
                }
                if(hrequest.getSession().getAttribute(Constants.ENTERPRISE)==null||hrequest.getSession().getAttribute(Constants.FRAMEWORK)==null){
                    Enterprise enterprise =enterpriseService.getEnterprise(userinfo.getFFrameID());
                    hrequest.getSession().setAttribute(Constants.ENTERPRISE,enterprise);
                    if(enterprise!=null){
                        Framework framework =new Framework();
                        framework.setFrameWorkName(enterprise.getFOrg_Name());
                        framework.setFramewordID(enterprise.getFOrgID());
                        hrequest.getSession().setAttribute(Constants.FRAMEWORK,framework);
                    }
//                    else{
//                        enterprise =(Enterprise)departmentService.getOrg(userinfo.getFFrameID());
//                        hrequest.getSession().setAttribute(Constants.ENTERPRISE,enterprise);
//                        if(enterprise!=null){
//                            Framework framework =new Framework();
//                            framework.setFrameWorkName(enterprise.getFOrg_Name());
//                            framework.setFramewordID(enterprise.getFOrgID());
//                            hrequest.getSession().setAttribute(Constants.FRAMEWORK,framework);
//                        }
//                    }
                }
                if(hrequest.getSession().getAttribute(Constants.DEPARTMENT)==null){
                    Department department = departmentService.getDepartment(userinfo.getFOrg_ID());
                    hrequest.getSession().setAttribute(Constants.DEPARTMENT,department);
                }

                //获取权限
                List<Enterprise_menu> menus =(List<Enterprise_menu>)hrequest.getSession().getAttribute(Constants.MENUS);
                if(menus==null||menus.size()==0) {
                    menus = enterprise_menuService.getMenuListForUser(userinfo.getFUserName(), ProductCode.valueOf(productCode), null);
                    hrequest.getSession().setAttribute(Constants.MENUS, menus);
                }
                String strURI =hrequest.getRequestURI();
                boolean bl =false;
                if(this.isContains(hrequest.getRequestURI(),menusList)) {
                    for (Enterprise_menu menu : menus
                            ) {
                        if (menu.getFMenu_Url() == null) {
                            continue;
                        } else {
                            if (menu.getFMenu_Url().toUpperCase().equals(strURI.toUpperCase())) {
                                bl = true;
                                break;
                            }
                        }
                    }
                }else{
                    bl=true;
                }
                if(bl){
                    //进入业务系统界面
                    chain.doFilter(request, response);
                    return;
                }else{//提示进去没有权限的界面
                    wrapper.sendRedirect(logonStrings);
                    return;

                }

                //chain.doFilter(request, response);
                //return;
            }else{
                hrequest.getSession().removeAttribute(Constants.UserToKey);
                hrequest.getSession().removeAttribute(Constants.FRAMEWORK);
                hrequest.getSession().removeAttribute(Constants.DEPARTMENT);
                hrequest.getSession().removeAttribute(Constants.ENTERPRISE);
                hrequest.getSession().removeAttribute(Constants.EMP);
                wrapper.sendRedirect(redirectPath+"?back="+backUrl);
                return;
            }
            //登录范围对应的界面
            //没有登录去顶层获取账号信息
        }

    }


    @Override
    public void destroy() {
        // TODO Auto-generated method stub
        this.config = null;
    }

}
