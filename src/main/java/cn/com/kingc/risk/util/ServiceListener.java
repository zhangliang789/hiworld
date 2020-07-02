package cn.com.kingc.risk.util;

/**
 * Created by admistrator on 2018-01-10.
 */
public interface ServiceListener {
    public void OnSuccess(Object result);
    public void OnFailed(Object failedReason);
}
