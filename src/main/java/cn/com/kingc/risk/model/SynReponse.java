package cn.com.kingc.risk.model;

import java.io.Serializable;

public class SynReponse implements Serializable {
    private static final long serialVersionUID = 5927983918076791405L;

    /**
     * message : 服务器内部错误
     * data : null
     * code : 500
     */

    private String message;
    private String data;
    private String code;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "SynReponse{" +
                "message='" + message + '\'' +
                ", data=" + data+
                ", code='" + code + '\'' +
                '}';
    }
}
