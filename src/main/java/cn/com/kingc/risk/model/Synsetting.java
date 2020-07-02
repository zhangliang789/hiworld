package cn.com.kingc.risk.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Title:
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 * Description:对应数据库的 表
 *
 * @author
 * @date 2018-01-09 16:58:14 中国标准时间
 */
public class Synsetting implements Serializable {
    private static final long serialVersionUID = 1L;

    @JsonProperty("coalMineName")
    private String coalMineName;
    @JsonProperty("frameWorkID")
    private String frameWorkID;
    @JsonProperty("synServiceBaseAddress")
    private String synServiceBaseAddress;
    @JsonProperty("synMineCode")
    private String synMineCode;
    @JsonProperty("synToken")
    private String synToken;
    @JsonProperty("apiKey")
    private String apiKey;
    //页面大小
    @JsonProperty("pageSize")
    private Integer pagesize;
    //页码
    @JsonProperty("page")
    private Integer page;


    //无参构造方法
    public Synsetting() {
    }

    //带参构造方法
    public Synsetting(String coalMineName, String frameWorkID, String synServiceBaseAddress, String synMineCode, String synToken) {

        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.synServiceBaseAddress = synServiceBaseAddress;
        this.synMineCode = synMineCode;
        this.synToken = synToken;
    }


    //属性get set方法
    @JsonIgnore
    public String getCoalMineName() {
        return this.coalMineName;
    }

    @JsonIgnore
    public void setCoalMineName(String coalMineName) {
        this.coalMineName = coalMineName;
    }

    @JsonIgnore
    public String getFrameWorkID() {
        return this.frameWorkID;
    }

    @JsonIgnore
    public void setFrameWorkID(String frameWorkID) {
        this.frameWorkID = frameWorkID;
    }

    @JsonIgnore
    public String getSynServiceBaseAddress() {
        return this.synServiceBaseAddress;
    }

    @JsonIgnore
    public void setSynServiceBaseAddress(String synServiceBaseAddress) {
        this.synServiceBaseAddress = synServiceBaseAddress;
    }

    @JsonIgnore
    public String getSynMineCode() {
        return this.synMineCode;
    }

    @JsonIgnore
    public void setSynMineCode(String synMineCode) {
        this.synMineCode = synMineCode;
    }

    @JsonIgnore
    public String getSynToken() {
        return this.synToken;
    }

    @JsonIgnore
    public void setSynToken(String synToken) {
        this.synToken = synToken;
    }

    @JsonIgnore
    public Integer getPagesize() {
        return pagesize;
    }

    @JsonIgnore
    public void setPagesize(Integer pagesize) {
        this.pagesize = pagesize;
    }

    @JsonIgnore
    public Integer getPage() {
        return page;
    }

    @JsonIgnore
    public void setPage(Integer page) {
        this.page = page;
    }

    @JsonIgnore
    public String getApiKey() {
        return apiKey;
    }

    @JsonIgnore
    public void setApiKey(String apiKey) {
        this.apiKey = apiKey;
    }
}