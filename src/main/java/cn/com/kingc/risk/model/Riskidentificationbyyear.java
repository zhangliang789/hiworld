package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;
import java.util.List;

public class Riskidentificationbyyear implements Serializable {
    private static final long serialVersionUID = 1L;


    @JsonProperty("coalMineName")
    private String coalMineName;
    @JsonProperty("frameWorkID")
    private String frameWorkID;
    @JsonProperty("riskIdentificationYearUUID")
    private String riskIdentificationYearUUID;
    @JsonProperty("riskidentificationYearID")
    private Integer riskIdentificationYearID;
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
    @JsonProperty("myear")
    private Integer mYear;
    @JsonProperty("pagesize")
    private Integer pagesize;
    @JsonProperty("page")
    private Integer page;

    //从表
    @JsonProperty("myearEntry")
    private List<Riskidentificationbyyearentry> mYearEntry;

    //无参构造方法
    public Riskidentificationbyyear() {
    }





    //带参构造方法
    public Riskidentificationbyyear(String coalMineName, String frameWorkID, Integer riskIdentificationYearID,String riskIdentificationYearUUID,
                                    String meetingCompere, String meetingContent, String meetingParticipant, String meetingPlace, String meetingRecorder, String meetingTime, String meetringAttachmentUUID,String meetringAttachmentFileName,Integer mYear) {

        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.riskIdentificationYearID = riskIdentificationYearID;
        this.riskIdentificationYearUUID = riskIdentificationYearUUID;
        this.meetingCompere = meetingCompere;
        this.meetingContent = meetingContent;
        this.meetingParticipant = meetingParticipant;
        this.meetingPlace = meetingPlace;
        this.meetingRecorder = meetingRecorder;
        this.meetingTime = meetingTime;
        this.meetringAttachmentUUID = meetringAttachmentUUID;
        this.meetringAttachmentFileName = meetringAttachmentFileName;
        this.mYear = mYear;
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
    public String getRiskIdentificationYearUUID() {
        return riskIdentificationYearUUID;
    }
    @JsonIgnore
    public void setRiskIdentificationYearUUID(String riskIdentificationYearUUID) {
        this.riskIdentificationYearUUID = riskIdentificationYearUUID;
    }

    @JsonIgnore
    public Integer getRiskIdentificationYearID() {
        return this.riskIdentificationYearID;
    }
    @JsonIgnore
    public void setRiskIdentificationYearID(Integer riskIdentificationYearID) {
        this.riskIdentificationYearID = riskIdentificationYearID;
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
    public Integer getMYear() {
        return this.mYear;
    }
    @JsonIgnore
    public void setMYear(Integer mYear) {
        this.mYear = mYear;
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
    public Integer getmYear() {
        return mYear;
    }
    @JsonIgnore
    public void setmYear(Integer mYear) {
        this.mYear = mYear;
    }



    @JsonIgnore
    public List<Riskidentificationbyyearentry> getmYearEntry() {
        return mYearEntry;
    }
    @JsonIgnore
    public void setmYearEntry(List<Riskidentificationbyyearentry> mYearEntry) {
        this.mYearEntry = mYearEntry;
    }
}