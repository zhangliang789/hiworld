package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class Synattachment implements Serializable {

    private static final long serialVersionUID = 6878050429605526989L;

    @JsonProperty("realpath")
    private String realpath;
    @JsonProperty("extend")
    private String extend;
    @JsonProperty("attachmenttitle")
    private String attachmenttitle;

    public Synattachment(String realpath, String extend, String attachmenttitle) {
        this.realpath = realpath;
        this.extend = extend;
        this.attachmenttitle = attachmenttitle;
    }

    @JsonIgnore
    public String getRealpath() {
        return realpath;
    }

    @JsonIgnore
    public void setRealpath(String realpath) {
        this.realpath = realpath;
    }

    @JsonIgnore
    public String getExtend() {
        return extend;
    }

    @JsonIgnore
    public void setExtend(String extend) {
        this.extend = extend;
    }

    @JsonIgnore
    public String getAttachmenttitle() {
        return attachmenttitle;
    }

    @JsonIgnore
    public void setAttachmenttitle(String attachmenttitle) {
        this.attachmenttitle = attachmenttitle;
    }

    @Override
    public String toString() {
        return "Synattachment{" +
                "realpath='" + realpath + '\'' +
                ", extend='" + extend + '\'' +
                ", attachmenttitle='" + attachmenttitle + '\'' +
                '}';
    }
}
