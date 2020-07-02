package cn.com.kingc.risk.model;

import java.io.Serializable;

/**
 * Created by admistrator on 2018-01-09.
 */
public class SynResultContruct implements Serializable{
    private static final long serialVersionUID = 9002173443464315272L;

    private  String message;
    private  String code;
    private  String data;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
}
