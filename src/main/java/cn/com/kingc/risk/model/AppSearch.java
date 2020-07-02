package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.List;

/**
 * Title:退回审批
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 * Description:对应数据库的 退回审批表
 *
 * @author
 * @date 2019-04-23 16:13:49 中国标准时间
 */
public class AppSearch implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("fframeWorkID")
    String fframeWorkID;
    @JsonProperty("departmentName")
    String departmentName;
    @JsonProperty("startTime")
    String startTime;
    @JsonProperty("endTime")
    String endTime;
    @JsonProperty("locationList")
    List<String> locationList;
    @JsonProperty("catagoriesList")
    List<String> catagoriesList;
    @JsonProperty("hazardID")
    Integer hazardID;
    @JsonProperty("status")
    Boolean status;

    public AppSearch() {
        super();
    }

    public AppSearch(String fframeWorkID, String departmentName, String startTime, String endTime, List<String> locationList, List<String> catagoriesList, Integer hazardID, Boolean status) {
        this.fframeWorkID = fframeWorkID;
        this.departmentName = departmentName;
        this.startTime = startTime;
        this.endTime = endTime;
        this.locationList = locationList;
        this.catagoriesList = catagoriesList;
        this.hazardID = hazardID;
        this.status = status;
    }

    @JsonIgnore
    public String getFframeWorkID() {
        return fframeWorkID;
    }

    @JsonIgnore
    public void setFframeWorkID(String fframeWorkID) {
        this.fframeWorkID = fframeWorkID;
    }

    @JsonIgnore
    public String getDepartmentName() {
        return departmentName;
    }

    @JsonIgnore
    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    @JsonIgnore
    public String getStartTime() {
        return startTime;
    }

    @JsonIgnore
    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    @JsonIgnore
    public String getEndTime() {
        return endTime;
    }

    @JsonIgnore
    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    @JsonIgnore
    public List<String> getLocationList() {
        return locationList;
    }

    @JsonIgnore
    public void setLocationList(List<String> locationList) {
        this.locationList = locationList;
    }

    @JsonIgnore
    public List<String> getCatagoriesList() {
        return catagoriesList;
    }

    @JsonIgnore
    public void setCatagoriesList(List<String> catagoriesList) {
        this.catagoriesList = catagoriesList;
    }
    @JsonIgnore
    public Integer getHazardID() {
        return hazardID;
    }
    @JsonIgnore
    public void setHazardID(Integer hazardID) {
        this.hazardID = hazardID;
    }
    @JsonIgnore
    public Boolean getStatus() {
        return status;
    }
    @JsonIgnore
    public void setStatus(Boolean status) {
        this.status = status;
    }
}