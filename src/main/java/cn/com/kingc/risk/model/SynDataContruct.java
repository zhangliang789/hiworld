package cn.com.kingc.risk.model;


/**
 * Created by admistrator on 2018-01-08.
 */
public class SynDataContruct {
    private  String mineCode;
    private  String token;
    private Object reportContent;

    public String getMineCode() {
        return mineCode;
    }

    public void setMineCode(String mineCode) {
        this.mineCode = mineCode;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Object getReportContent() {
        return reportContent;
    }

    public void setReportContent(Object reportContent) {
        this.reportContent = reportContent;
    }
}
