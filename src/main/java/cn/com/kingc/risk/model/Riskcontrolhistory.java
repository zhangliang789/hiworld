package cn.com.kingc.risk.model;

import cn.com.kingc.hiddentrouble.model.Finerecord;
import cn.com.kingc.hiddentrouble.model.Htdetail;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Title:管控历史记录
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 * Description:对应数据库的 管控历史记录表
 *
 * @author
 * @date 2018-09-05 14:56:40 中国标准时间
 */
public class Riskcontrolhistory implements Serializable {
    private static final long serialVersionUID = 1L;

    //管控记录主表ID
    @JsonProperty("id")
    private Integer id;
    //风险点ID
    @JsonProperty("riskSiteID")
    private Integer riskSiteID;
    //风险点UUID
    @JsonProperty("riskSiteUUID")
    private String riskSiteUUID;
    //管控对象ID
    @JsonProperty("riskObjID")
    private Integer riskObjID;
    //管控对象UUID
    @JsonProperty("riskObjUUID")
    private String riskObjUUID;
    //风险ID
    @JsonProperty("riskHazardID")
    private Integer riskHazardID;
    //风险UUID
    @JsonProperty("riskHazardUUID")
    private String riskHazardUUID;
    //检查时间
    @JsonProperty("checkTime")
    private String checkTime;
    //管控层级
    @JsonProperty("riskControlLevel")
    private String riskControlLevel;
    //检查部门UUID
    @JsonProperty("checkDepteID")
    private String checkDepteID;
    //检查部门
    @JsonProperty("checkDept")
    private String checkDept;
    //检查人姓名
    @JsonProperty("checkerName")
    private String checkerName;
    //检查人ID
    @JsonProperty("checkerID")
    private String checkerID;
    //风险状态：1：失控 0：未失控
    @JsonProperty("riskState")
    private String riskState;
    //检查结果
    @JsonProperty("checkResult")
    private String checkResult;
    //转为隐患后对应的隐患ID，为空表示没有转为隐患
    @JsonProperty("hiddenTroubleID")
    private Integer hiddenTroubleID;
    //企业ID
    @JsonProperty("frameworkID")
    private String frameworkID;
    //操作时间
    @JsonProperty("operateTime")
    private String operateTime;
    //页面大小
    @JsonProperty("pageSize")
    private Integer pagesize;
    //页码
    @JsonProperty("page")
    private Integer page;
    //风险点名称
    @JsonProperty("riskSiteName")
    private String riskSiteName;
    //管控对象名称
    @JsonProperty("riskObjName")
    private String riskObjName;
    //风险名称
    @JsonProperty("riskHazardName")
    private String riskHazardName;
    //专业类型
    @JsonProperty("majorType")
    private String majorType;
    //风险等级
    @JsonProperty("riskValue")
    private String riskValue;

    @JsonProperty("attachFileList")
    private List<Map<String, String>> attachFileList = new ArrayList<>();

    @JsonProperty("htdetail")
    private Htdetail htdetail;

    @JsonProperty("finerecord")
    private Finerecord finerecord;

    @JsonProperty("startCheckTime")
    private String startCheckTime;

    @JsonProperty("endCheckTime")
    private String endCheckTime;

    @JsonProperty("riskControlLevels")
    private String[] riskControlLevels;

    @JsonProperty("riskStates")
    private String[] riskStates;
    //数据是否来自APP录入 数据库默认false
    @JsonProperty("fromApp")
    private Boolean fromApp;

    @JsonProperty("checkPeijianren")
    private String checkPeijianren;

    @JsonProperty("checkPeijianrenID")
    private String checkPeijianrenID;


    //无参构造方法
    public Riskcontrolhistory() {
    }

    //带参构造方法
    public Riskcontrolhistory(Integer id, Integer riskSiteID, String riskSiteUUID, Integer riskObjID, String riskObjUUID,
                              Integer riskHazardID, String riskHazardUUID, String checkTime, String riskControlLevel,
                              String checkDepteID, String checkDept, String checkerName, String checkerID, String riskState,
                              String checkResult, Integer hiddenTroubleID, String frameworkID, String operateTime,
                              String checkPeijianren,String checkPeijianrenID) {

        this.id = id;
        this.riskSiteID = riskSiteID;
        this.riskSiteUUID = riskSiteUUID;
        this.riskObjID = riskObjID;
        this.riskObjUUID = riskObjUUID;
        this.riskHazardID = riskHazardID;
        this.riskHazardUUID = riskHazardUUID;
        this.checkTime = checkTime;
        this.riskControlLevel = riskControlLevel;
        this.checkDepteID = checkDepteID;
        this.checkDept = checkDept;
        this.checkerName = checkerName;
        this.checkerID = checkerID;
        this.riskState = riskState;
        this.checkResult = checkResult;
        this.hiddenTroubleID = hiddenTroubleID;
        this.frameworkID = frameworkID;
        this.operateTime = operateTime;
        this.riskSiteName = riskSiteName;
        this.riskObjName = riskObjName;
        this.riskHazardName = riskHazardName;
        this.majorType = majorType;
        this.riskValue = riskValue;
        this.checkPeijianren = checkPeijianren;
        this.checkPeijianrenID = checkPeijianrenID;
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
    public Integer getRiskSiteID() {
        return this.riskSiteID;
    }

    @JsonIgnore
    public void setRiskSiteID(Integer riskSiteID) {
        this.riskSiteID = riskSiteID;
    }

    @JsonIgnore
    public String getRiskSiteUUID() {
        return this.riskSiteUUID;
    }

    @JsonIgnore
    public void setRiskSiteUUID(String riskSiteUUID) {
        this.riskSiteUUID = riskSiteUUID;
    }

    @JsonIgnore
    public Integer getRiskObjID() {
        return this.riskObjID;
    }

    @JsonIgnore
    public void setRiskObjID(Integer riskObjID) {
        this.riskObjID = riskObjID;
    }

    @JsonIgnore
    public String getRiskObjUUID() {
        return this.riskObjUUID;
    }

    @JsonIgnore
    public void setRiskObjUUID(String riskObjUUID) {
        this.riskObjUUID = riskObjUUID;
    }

    @JsonIgnore
    public Integer getRiskHazardID() {
        return this.riskHazardID;
    }

    @JsonIgnore
    public void setRiskHazardID(Integer riskHazardID) {
        this.riskHazardID = riskHazardID;
    }

    @JsonIgnore
    public String getRiskHazardUUID() {
        return this.riskHazardUUID;
    }

    @JsonIgnore
    public void setRiskHazardUUID(String riskHazardUUID) {
        this.riskHazardUUID = riskHazardUUID;
    }

    @JsonIgnore
    public String getCheckTime() {
        return this.checkTime;
    }

    @JsonIgnore
    public void setCheckTime(String checkTime) {
        this.checkTime = checkTime;
    }

    @JsonIgnore
    public String getRiskControlLevel() {
        return this.riskControlLevel;
    }

    @JsonIgnore
    public void setRiskControlLevel(String riskControlLevel) {
        this.riskControlLevel = riskControlLevel;
    }

    @JsonIgnore
    public String getCheckDepteID() {
        return this.checkDepteID;
    }

    @JsonIgnore
    public void setCheckDepteID(String checkDepteID) {
        this.checkDepteID = checkDepteID;
    }

    @JsonIgnore
    public String getCheckDept() {
        return this.checkDept;
    }

    @JsonIgnore
    public void setCheckDept(String checkDept) {
        this.checkDept = checkDept;
    }

    @JsonIgnore
    public String getCheckerName() {
        return this.checkerName;
    }

    @JsonIgnore
    public void setCheckerName(String checkerName) {
        this.checkerName = checkerName;
    }

    @JsonIgnore
    public String getCheckerID() {
        return this.checkerID;
    }

    @JsonIgnore
    public void setCheckerID(String checkerID) {
        this.checkerID = checkerID;
    }

    @JsonIgnore
    public String getRiskState() {
        return this.riskState;
    }

    @JsonIgnore
    public void setRiskState(String riskState) {
        this.riskState = riskState;
    }

    @JsonIgnore
    public String getCheckResult() {
        return this.checkResult;
    }

    @JsonIgnore
    public void setCheckResult(String checkResult) {
        this.checkResult = checkResult;
    }

    @JsonIgnore
    public Integer getHiddenTroubleID() {
        return this.hiddenTroubleID;
    }

    @JsonIgnore
    public void setHiddenTroubleID(Integer hiddenTroubleID) {
        this.hiddenTroubleID = hiddenTroubleID;
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
    public String getOperateTime() {
        return this.operateTime;
    }

    @JsonIgnore
    public void setOperateTime(String operateTime) {
        this.operateTime = operateTime;
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
    public String getRiskSiteName() {
        return riskSiteName;
    }

    @JsonIgnore
    public void setRiskSiteName(String riskSiteName) {
        this.riskSiteName = riskSiteName;
    }

    @JsonIgnore
    public String getRiskObjName() {
        return riskObjName;
    }

    @JsonIgnore
    public void setRiskObjName(String riskObjName) {
        this.riskObjName = riskObjName;
    }

    @JsonIgnore
    public String getRiskHazardName() {
        return riskHazardName;
    }

    @JsonIgnore
    public void setRiskHazardName(String riskHazardName) {
        this.riskHazardName = riskHazardName;
    }

    @JsonIgnore
    public String getMajorType() {
        return majorType;
    }

    @JsonIgnore
    public void setMajorType(String majorType) {
        this.majorType = majorType;
    }

    @JsonIgnore
    public String getRiskValue() {
        return riskValue;
    }

    @JsonIgnore
    public void setRiskValue(String riskValue) {
        this.riskValue = riskValue;
    }

    @JsonIgnore
    public List<Map<String, String>> getAttachFileList() {
        return attachFileList;
    }

    @JsonIgnore
    public void setAttachFileList(List<Map<String, String>> attachFileList) {
        this.attachFileList = attachFileList;
    }

    @JsonIgnore
    public Htdetail getHtdetail() {
        return htdetail;
    }

    @JsonIgnore
    public void setHtdetail(Htdetail htdetail) {
        this.htdetail = htdetail;
    }

    @JsonIgnore
    public Finerecord getFinerecord() {
        return finerecord;
    }

    @JsonIgnore
    public void setFinerecord(Finerecord finerecord) {
        this.finerecord = finerecord;
    }

    @JsonIgnore
    public String getStartCheckTime() {
        return startCheckTime;
    }

    @JsonIgnore
    public void setStartCheckTime(String startCheckTime) {
        this.startCheckTime = startCheckTime;
    }

    @JsonIgnore
    public String getEndCheckTime() {
        return endCheckTime;
    }

    @JsonIgnore
    public void setEndCheckTime(String endCheckTime) {
        this.endCheckTime = endCheckTime;
    }

    @JsonIgnore
    public String[] getRiskControlLevels() {
        return riskControlLevels;
    }

    @JsonIgnore
    public void setRiskControlLevels(String[] riskControlLevels) {
        this.riskControlLevels = riskControlLevels;
    }

    @JsonIgnore
    public String[] getRiskStates() {
        return riskStates;
    }

    @JsonIgnore
    public void setRiskStates(String[] riskStates) {
        this.riskStates = riskStates;
    }

    @JsonIgnore
    public Boolean getFromApp() {
        return fromApp;
    }

    @JsonIgnore
    public void setFromApp(Boolean fromApp) {
        this.fromApp = fromApp;
    }

    @JsonIgnore
    public String getCheckPeijianren(){return checkPeijianren;}

    @JsonIgnore
    public void setCheckPeijianren(String checkPeijianren){this.checkPeijianren = checkPeijianren;}

    @JsonIgnore
    public String getCheckPeijianrenID(){return checkPeijianrenID;}

    @JsonIgnore
    public void setCheckPeijianrenID(String checkPeijianrenID){this.checkPeijianrenID = checkPeijianrenID;}
}