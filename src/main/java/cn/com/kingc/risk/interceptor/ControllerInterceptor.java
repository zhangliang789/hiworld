package cn.com.kingc.risk.interceptor;

import com.mkaq.core.Constants;
import org.platform4j.model.Framework;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 获取u当前用户前置拦截
 * @author Administrator
 */
public class ControllerInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        ThreadContext.setFramework((Framework) WebUtils.getSessionAttribute(request, Constants.FRAMEWORK));
        return super.preHandle(request, response, handler);
    }
}
