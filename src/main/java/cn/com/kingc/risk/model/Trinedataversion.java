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
* @date 2018-06-28 09:25:27 中国标准时间
* @author
* @version
*/
public class Trinedataversion implements Serializable{
    private static final long serialVersionUID = 1L;

        @JsonProperty("versionID")
        private  Integer versionID;
        //企业ID
        @JsonProperty("frameWorkID")
        private  String frameWorkID;
        //企业名字
        @JsonProperty("coalMineName")
        private  String coalMineName;
        //版本时间
        @JsonProperty("versionTime")
        private  String versionTime;
        //版本号
        @JsonProperty("version")
        private  String version;
        //页面大小
        @JsonProperty("pageSize")
        private Integer pagesize;
        //页码
        @JsonProperty("page")
        private Integer page;



    //无参构造方法
    public Trinedataversion(){}

    //带参构造方法
    public Trinedataversion (Integer versionID,String frameWorkID,String coalMineName,String versionTime,String version){

         this.versionID = versionID;
         this.frameWorkID = frameWorkID;
         this.coalMineName = coalMineName;
         this.versionTime = versionTime;
         this.version = version;
    }


    //属性get set方法
    @JsonIgnore
    public Integer getVersionID() {
        return this.versionID;
    }
    @JsonIgnore
    public void setVersionID(Integer versionID) {
        this.versionID = versionID;
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
    public String getCoalMineName() {
        return this.coalMineName;
    }
    @JsonIgnore
    public void setCoalMineName(String coalMineName) {
        this.coalMineName = coalMineName;
    }
    @JsonIgnore
    public String getVersionTime() {
        return this.versionTime;
    }
    @JsonIgnore
    public void setVersionTime(String versionTime) {
        this.versionTime = versionTime;
    }
    @JsonIgnore
    public String getVersion() {
        return this.version;
    }
    @JsonIgnore
    public void setVersion(String version) {
        this.version = version;
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


}