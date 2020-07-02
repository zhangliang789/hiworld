package cn.com.kingc.risk.interceptor;


import org.platform4j.model.Framework;

/**
 * 当前企业存放线程副本.
 *
 * @author Administrator
 */
public class ThreadContext {

    static final ThreadLocal<Framework> threadLocal = new ThreadLocal<>();

    public static void setFramework(Framework framework) {
        threadLocal.set(framework);
    }

    public static Framework getFramework() {
        return threadLocal.get();
    }
}
