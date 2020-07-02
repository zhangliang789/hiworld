package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class Riskidentificationbyspecially implements Serializable {
    private static final long serialVersionUID = 1L;
    @JsonProperty("coalMineName")
    private String coalMineName;
    @JsonProperty("frameWorkID")
    private String frameWorkID;
    @JsonProperty("identificationYear")
    private int identificationYear;
    @JsonProperty("identificationMonth")
    private String identificationMonth;
    @JsonProperty("createDate")
    private String createDate;
    @JsonProperty("riskIdentificationSpeciallyUUID")
    private String riskIdentificationSpeciallyUUID;
    @JsonProperty("riskidentificationSpeciallyID")
    private Integer riskIdentificationSpeciallyID;
    @JsonProperty("fidentityLink")
    private String fIdentityLink;
    @JsonProperty("identityType")
    private String identityType;
    @JsonProperty("meetingCompere")
    private String meetingCompere;
    @JsonProperty("meetingContent")
    private String meetingContent;
    @JsonProperty("meetingParticipant")
    private String meetingParticipant;
    @JsonProperty("meetingPlace")
    private String meetingPlace;
    @JsonProperty("meetingRecorder")
    private String meetingRecorder;
    @JsonProperty("meetingTime")
    private String meetingTime;
    @JsonProperty("meetringAttachmentUUID")
    private String meetringAttachmentUUID;
    @JsonProperty("meetringAttachmentFileName")
    private String meetringAttachmentFileName;
    @JsonProperty("riskSiteID")
    private Integer riskSiteID;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("mRiskSite")
    private Risksite mRiskSite;
    @JsonProperty("specialName")
    private String specialName;

    //无参构造方法
    public Riskidentificationbyspecially() {
    }

    //带参构造方法
    public Riskidentificationbyspecially(String coalMineName, String frameWorkID, Integer riskIdentificationSpeciallyID,String riskIdentificationSpeciallyUUID, String fIdentityLink, String identityType, String meetingCompere, String meetingContent, String meetingParticipant, String meetingPlace, String meetingRecorder, String meetingTime, String meetringAttachmentUUID, String meetringAttachmentFileName, Integer riskSiteID,String specialName) {

        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.riskIdentificationSpeciallyID = riskIdentificationSpeciallyID;
        this.riskIdentificationSpeciallyUUID = riskIdentificationSpeciallyUUID;
        this.fIdentityLink = fIdentityLink;
        this.identityType = identityType;
        this.meetingCompere = meetingCompere;
        this.meetingContent = meetingContent;
        this.meetingParticipant = meetingParticipant;
        this.meetingPlace = meetingPlace;
        this.meetingRecorder = meetingRecorder;
        this.meetingTime = meetingTime;
        this.meetringAttachmentUUID = meetringAttachmentUUID;
        this.meetringAttachmentFileName = meetringAttachmentFileName;
        this.riskSiteID = riskSiteID;
        this.specialName = specialName;
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
    public String getRiskIdentificationSpeciallyUUID() {
        return riskIdentificationSpeciallyUUID;
    }
    @JsonIgnore
    public void setRiskIdentificationSpeciallyUUID(String riskIdentificationSpeciallyUUID) {
        this.riskIdentificationSpeciallyUUID = riskIdentificationSpeciallyUUID;
    }

    @JsonIgnore
    public Integer getRiskIdentificationSpeciallyID() {
        return this.riskIdentificationSpeciallyID;
    }
    @JsonIgnore
    public void setRiskIdentificationSpeciallyID(Integer riskIdentificationSpeciallyID) {
        this.riskIdentificationSpeciallyID = riskIdentificationSpeciallyID;
    }
    @JsonIgnore
    public String getFIdentityLink() {
        return this.fIdentityLink;
    }
    @JsonIgnore
    public void setFIdentityLink(String fIdentityLink) {
        this.fIdentityLink = fIdentityLink;
    }
    @JsonIgnore
    public String getIdentityType() {
        return this.identityType;
    }
    @JsonIgnore
    public void setIdentityType(String identityType) {
        this.identityType = identityType;
    }
    @JsonIgnore
    public String getMeetingCompere() {
        return this.meetingCompere;
    }
    @JsonIgnore
    public void setMeetingCompere(String meetingCompere) {
        this.meetingCompere = meetingCompere;
    }
    @JsonIgnore
    public String getMeetingContent() {
        return this.meetingContent;
    }
    @JsonIgnore
    public void setMeetingContent(String meetingContent) {
        this.meetingContent = meetingContent;
    }
    @JsonIgnore
    public String getMeetingParticipant() {
        return this.meetingParticipant;
    }
    @JsonIgnore
    public void setMeetingParticipant(String meetingParticipant) {
        this.meetingParticipant = meetingParticipant;
    }
    @JsonIgnore
    public String getMeetingPlace() {
        return this.meetingPlace;
    }
    @JsonIgnore
    public void setMeetingPlace(String meetingPlace) {
        this.meetingPlace = meetingPlace;
    }
    @JsonIgnore
    public String getMeetingRecorder() {
        return this.meetingRecorder;
    }
    @JsonIgnore
    public void setMeetingRecorder(String meetingRecorder) {
        this.meetingRecorder = meetingRecorder;
    }
    @JsonIgnore
    public String getMeetingTime() {
        return this.meetingTime;
    }
    @JsonIgnore
    public void setMeetingTime(String meetingTime) {
        this.meetingTime = meetingTime;
    }
    @JsonIgnore
    public String getMeetringAttachmentUUID() {
        return this.meetringAttachmentUUID;
    }
    @JsonIgnore
    public void setMeetringAttachmentUUID(String meetringAttachmentUUID) {
        this.meetringAttachmentUUID = meetringAttachmentUUID;
    }
    @JsonIgnore
    public String getMeetringAttachmentFileName() {
        return this.meetringAttachmentFileName;
    }
    @JsonIgnore
    public void setMeetringAttachmentFileName(String meetringAttachmentFileName) {
        this.meetringAttachmentFileName = meetringAttachmentFileName;
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
    public Risksite getmRiskSite() {
        return mRiskSite;
    }

    @JsonIgnore
    public void setmRiskSite(Risksite mRiskSite) {
        this.mRiskSite = mRiskSite;
    }

    @JsonIgnore
    public int getIdentificationYear() {
        return identificationYear;
    }

    @JsonIgnore
    public void setIdentificationYear(int identificationYear) {
        this.identificationYear = identificationYear;
    }
    @JsonIgnore
    public String getIdentificationMonth() {
        return identificationMonth;
    }
    @JsonIgnore
    public void setIdentificationMonth(String identificationMonth) {
        this.identificationMonth = identificationMonth;
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
    public String getfIdentityLink() {
        return fIdentityLink;
    }
    @JsonIgnore
    public void setfIdentityLink(String fIdentityLink) {
        this.fIdentityLink = fIdentityLink;
    }

    @JsonIgnore
    public String getSpecialName(){return specialName;}

    @JsonIgnore
    public void setSpecialName(String specialName){this.specialName = specialName;}
}