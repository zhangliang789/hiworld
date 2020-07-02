package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

/**
 * Created by admistrator on 2018-01-11.
 */
public class SynreportmajoryearriskControl implements Serializable {
    private static final long serialVersionUID = 3919544320932685789L;
    @JsonProperty("id")
    private String id;
    @JsonProperty("dangerId")
    private String dangerId;
    @JsonProperty("controller")
    private String controller;
    @JsonProperty("controlleDate")
    private String controlleDate;
    @JsonProperty("workContent")
    private String workContent;
    @JsonProperty("achieveEffect")
    private String achieveEffect;
    @JsonProperty("createName")
    private String createName;
    @JsonProperty("createBy")
    private String createBy;
    @JsonProperty("createDate")
    private String createDate;
    @JsonProperty("updateName")
    private String updateName;
    @JsonProperty("updateBy")
    private String updateBy;
    @JsonProperty("updateDate")
    private String updateDate;

    @JsonIgnore
    public String getId() {
        return id;
    }
    @JsonIgnore
    public void setId(String id) {
        this.id = id;
    }
    @JsonIgnore
    public String getDangerId() {
        return dangerId;
    }
    @JsonIgnore
    public void setDangerId(String dangerId) {
        this.dangerId = dangerId;
    }
    @JsonIgnore
    public String getController() {
        return controller;
    }
    @JsonIgnore
    public void setController(String controller) {
        this.controller = controller;
    }
    @JsonIgnore
    public String getControlleDate() {
        return controlleDate;
    }
    @JsonIgnore
    public void setControlleDate(String controlleDate) {
        this.controlleDate = controlleDate;
    }
    @JsonIgnore
    public String getWorkContent() {
        return workContent;
    }
    @JsonIgnore
    public void setWorkContent(String workContent) {
        this.workContent = workContent;
    }
    @JsonIgnore
    public String getAchieveEffect() {
        return achieveEffect;
    }
    @JsonIgnore
    public void setAchieveEffect(String achieveEffect) {
        this.achieveEffect = achieveEffect;
    }
    @JsonIgnore
    public String getCreateName() {
        return createName;
    }
    @JsonIgnore
    public void setCreateName(String createName) {
        this.createName = createName;
    }
    @JsonIgnore
    public String getCreateBy() {
        return createBy;
    }
    @JsonIgnore
    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }
    @JsonIgnore
    public String getCreateDate() {
        return createDate;
    }
    @JsonIgnore
    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }
    @JsonIgnore
    public String getUpdateName() {
        return updateName;
    }
    @JsonIgnore
    public void setUpdateName(String updateName) {
        this.updateName = updateName;
    }
    @JsonIgnore
    public String getUpdateBy() {
        return updateBy;
    }
    @JsonIgnore
    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }
    @JsonIgnore
    public String getUpdateDate() {
        return updateDate;
    }
    @JsonIgnore
    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }
}
