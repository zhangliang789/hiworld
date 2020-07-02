package cn.com.kingc.risk.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
* Title:管控历史记录附件记录
* Copyright: Copyright (c) 2018 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 管控历史记录附件记录表
* @date 2018-09-05 14:38:09 中国标准时间
* @author
* @version
*/
public class Riskcontrolhistoryattachment implements Serializable{
    private static final long serialVersionUID = 1L;

        //管理历史记录附件主键
        @JsonProperty("id")
        private  Integer id;
        //管理历史记录 附件UUID(附件服务器返回)
        @JsonProperty("attachmentUUID")
        private  String attachmentUUID;
        //管理历史记录主键
        @JsonProperty("controlHistoryID")
        private  Integer controlHistoryID;
        //附件名称
        @JsonProperty("attachmentName")
        private  String attachmentName;
        //企业ID
        @JsonProperty("frameworkID")
        private  String frameworkID;
        //页面大小
        @JsonProperty("pageSize")
        private Integer pagesize;
        //页码
        @JsonProperty("page")
        private Integer page;



    //无参构造方法
    public Riskcontrolhistoryattachment(){}

    //带参构造方法
    public Riskcontrolhistoryattachment (Integer id,String attachmentUUID,Integer controlHistoryID,String attachmentName,String frameworkID){

         this.id = id;
         this.attachmentUUID = attachmentUUID;
         this.controlHistoryID = controlHistoryID;
         this.attachmentName = attachmentName;
         this.frameworkID = frameworkID;
    }


    //属性get set方法
    @JsonIgnore
    public Integer getId() {
        return this.id;
    }
    @JsonIgnore
    public void setId(Integer id) {
        this.id = id;
    }
    @JsonIgnore
    public String getAttachmentUUID() {
        return this.attachmentUUID;
    }
    @JsonIgnore
    public void setAttachmentUUID(String attachmentUUID) {
        this.attachmentUUID = attachmentUUID;
    }
    @JsonIgnore
    public Integer getControlHistoryID() {
        return this.controlHistoryID;
    }
    @JsonIgnore
    public void setControlHistoryID(Integer controlHistoryID) {
        this.controlHistoryID = controlHistoryID;
    }
    @JsonIgnore
    public String getAttachmentName() {
        return this.attachmentName;
    }
    @JsonIgnore
    public void setAttachmentName(String attachmentName) {
        this.attachmentName = attachmentName;
    }
    @JsonIgnore
    public String getFrameworkID() {
        return this.frameworkID;
    }
    @JsonIgnore
    public void setFrameworkID(String frameworkID) {
        this.frameworkID = frameworkID;
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