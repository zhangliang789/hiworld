package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class Risksiteoutofcontrolattachment implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("checkRecordID")
    private Integer checkRecordID;
    @JsonProperty("itemID")
    private Integer itemID;
    @JsonProperty("coalMineName")
    private String coalMineName;
    @JsonProperty("frameWorkID")
    private String frameWorkID;
    @JsonProperty("attchID")
    private Integer attchID;
    @JsonProperty("localPath")
    private String localPath;
    @JsonProperty("fileName")
    private String fileName;
    @JsonProperty("serviceUUID")
    private String serviceUUID;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;

    //无参构造方法
    public Risksiteoutofcontrolattachment() {
    }

    //带参构造方法
    public Risksiteoutofcontrolattachment(Integer checkRecordID, Integer itemID, String coalMineName, String frameWorkID, Integer attchID, String localPath, String fileName, String serviceUUID) {

        this.checkRecordID = checkRecordID;
        this.itemID = itemID;
        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.attchID = attchID;
        this.localPath = localPath;
        this.fileName = fileName;
        this.serviceUUID = serviceUUID;
    }


    //属性get set方法
    @JsonIgnore
    public Integer getCheckRecordID() {
        return this.checkRecordID;
    }
    @JsonIgnore
    public void setCheckRecordID(Integer checkRecordID) {
        this.checkRecordID = checkRecordID;
    }
    @JsonIgnore
    public Integer getItemID() {
        return this.itemID;
    }
    @JsonIgnore
    public void setItemID(Integer itemID) {
        this.itemID = itemID;
    }
    @JsonIgnore
    public String getCoalMineName() {
        return this.coalMineName;
    }
    @JsonIgnore
    public void setCoalMineName(String coalMineName) {
        this.coalMineName = coalMineName;
    }

    public String getFrameWorkID() {
        return this.frameWorkID;
    }
    @JsonIgnore
    public void setFrameWorkID(String frameWorkID) {
        this.frameWorkID = frameWorkID;
    }
    @JsonIgnore
    public Integer getAttchID() {
        return this.attchID;
    }
    @JsonIgnore
    public void setAttchID(Integer attchID) {
        this.attchID = attchID;
    }
    @JsonIgnore
    public String getLocalPath() {
        return this.localPath;
    }
    @JsonIgnore
    public void setLocalPath(String localPath) {
        this.localPath = localPath;
    }
    @JsonIgnore
    public String getFileName() {
        return this.fileName;
    }
    @JsonIgnore
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
    @JsonIgnore
    public String getServiceUUID() {
        return this.serviceUUID;
    }
    @JsonIgnore
    public void setServiceUUID(String serviceUUID) {
        this.serviceUUID = serviceUUID;
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