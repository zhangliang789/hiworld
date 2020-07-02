package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


public class Riskhazard implements Serializable {

    public static final String SUBMIT = "1";

    public static final String NO_SUBMIT = "0";

    @Getter
    @Setter
    @JsonProperty("is_submit")
    @Column(name = "is_submit")
    private String isSubmit;
    /**
     *
     */
    private static final long serialVersionUID = -4725422899680277434L;

    @Id
    @JsonProperty("hazardID")
    @Column(name = "HazardID")
    private Integer hazardID;

    @Column(name = "HazardUUID")
    @JsonProperty("hazardUUID")
    private String hazardUUID;

    @Transient
    @JsonProperty("risksiteID")
    private Integer riskSiteID;

    @Column(name = "CoalMineName")
    @JsonProperty("coalmineName")
    private String coalMineName;

    @JsonProperty("frameworkID")
    @Column(name = "FrameWorkID")
    private String frameWorkID;

    @Transient
    @JsonProperty("accountabilityUnit")
    private String accountabilityUnit;

    @Transient
    @JsonProperty("consequence")
    private String consequence;

    @Transient
    @JsonProperty("damageType")
    private String damageType;

    @Transient
    @JsonProperty("Eexpose")        //暴露程度 E
    private Double Eexpose;

    @Transient
    @JsonProperty("risktemplateID")
    private Integer riskTemplateID;

    @Transient
    @JsonProperty("exposeDegree")   //暴露率 *
    private String exposeDegree;

    @Transient
    @JsonProperty("clossConsequence")   //损失程度  C
    private Double ClossConsequence;

    @Transient
    @JsonProperty("majorType")
    private String majorType;

    @Transient
    @JsonProperty("manageUnit")
    private String manageUnit;

    @JsonProperty("name")
    @Column(name = "Name")
    private String name;

    @Transient
    @JsonProperty("hazardDesc")
    private String hazardDesc;

    @Transient
    @JsonProperty("operatingPost")
    private String operatingPost;

    @Transient
    @JsonProperty("Lpossibility")   //可能性 L
    private Double Lpossibility;

    @Transient
    @JsonProperty("riskDegree")     //风险等级
    private String riskDegree;

    @Transient
    @JsonProperty("riskObject")
    private String riskObject;

    @Transient
    @JsonProperty("riskPlace")
    private String riskPlace;

    @Transient
    @JsonProperty("riskType")
    private String riskType;

    @Transient
    @JsonProperty("driskValue")     //风险值 R
    private double DriskValue;

    @Transient
    @JsonProperty("status")
    private Boolean status;

    @Transient
    @JsonProperty("pagesize")
    private Integer pagesize;

    @Transient
    @JsonProperty("page")
    private Integer page;

    @Transient
    @JsonProperty("Sseverity")   //严重性 S
    private Double Sseverity;

    @Transient
    @JsonProperty("risksiteFullNumber")
    private String riskSiteFullNumber;

    @Transient
    @JsonProperty("standardfullNumber")
    private String standardFullNumber;

    @Transient
    @JsonProperty("standardName")
    private String standardName;

    @Transient
    @JsonProperty("dutyRole")
    private String dutyRole;

    @Transient
    @JsonProperty("supervisionUnit")
    private String supervisionUnit;

    @Transient
    @JsonProperty("extendedattributesJson")
    private String extendedAttributesJson;

    @Transient
    @JsonProperty("extendedattributesJsonString")
    private String extendedAttributesJsonString;

    @JsonProperty("riskLevelSettingID")
    @Column(name = "RiskLevelSettingID")
    private Integer riskLevelSettingID;

    @Transient
    @JsonProperty("riskColor")
    private String riskColor;

    @Transient
    @JsonProperty("riskLevel")
    private String riskLevel;

    @JsonProperty("mRiskControlRange")
    private List<Riskhazardcontrolrange> mRiskControlRange = new ArrayList<>();

    @Transient
    @JsonProperty("mriskControlMeasure")
    private List<Riskcontrolmeasure> mRiskControlMeasure = new ArrayList<Riskcontrolmeasure>();
    //管控对象类型

    @Transient
    @JsonProperty("riskObjectType")
    private String riskObjectType;
    //事故类型

    @Transient
    @JsonProperty("accidentType")
    private String accidentType;
    //风险种类

    @Transient
    @JsonProperty("riskKind")
    private String riskKind;
    //管控结果

    @Transient
    @JsonProperty("controlResult")
    private String controlResult;
    //辨识方法

    @Transient
    @JsonProperty("identifyMethod")
    private String identifyMethod;

    //上级

    @Transient
    @JsonProperty("riskSite")
    private Risksite riskSite;

    //风险类型
    @Transient
    @JsonProperty("riskByTypes")
    private String riskByTypes;

    //危险因素
    @Transient
    @JsonProperty("riskFactors")
    private String riskFactors;

    //技术部门
    @Transient
    @JsonProperty("technologyDepartment")
    private String technologyDepartment;

    //监督部门
    @Transient
    @JsonProperty("supervisionDepartment")
    private String supervisionDepartment;

    //风险管控状态
    @Transient
    @JsonProperty("riskhazardStatus")
    private Boolean riskhazardStatus;

    @Transient
    @Getter
    @Setter
    @JsonProperty("monthPlaneID")
    private Integer monthPlaneID;

    @Transient
    @Getter
    @Setter
    @JsonProperty("outOfControlStatus")
    private String outOfControlStatus;


    //无参构造方法
    public Riskhazard() {
    }

    //带参构造方法
    public Riskhazard(Integer hazardID, String hazardUUID, Integer riskSiteID, String coalMineName, String frameWorkID, String accountabilityUnit, String consequence, String damageType, Double Eexpose, Integer riskTemplateID, String exposeDegree, Double ClossConsequence, String majorType, String manageUnit, String name, String operatingPost, Double Lpossibility, String riskDegree, String riskObject, String riskPlace, String riskType, Double DriskValue, Boolean status, String riskSiteFullNumber,Double Sseverity,Boolean riskhazardStatus) {

        this.hazardID = hazardID;
        this.hazardUUID = hazardUUID;
        this.riskSiteID = riskSiteID;
        this.coalMineName = coalMineName;
        this.frameWorkID = frameWorkID;
        this.accountabilityUnit = accountabilityUnit;
        this.consequence = consequence;
        this.damageType = damageType;
        this.Eexpose = Eexpose;
        this.riskTemplateID = riskTemplateID;
        this.exposeDegree = exposeDegree;
        this.ClossConsequence = ClossConsequence;
        this.majorType = majorType;
        this.manageUnit = manageUnit;
        this.name = name;
        this.operatingPost = operatingPost;
        this.Lpossibility = Lpossibility;
        this.riskDegree = riskDegree;
        this.riskObject = riskObject;
        this.riskPlace = riskPlace;
        this.riskType = riskType;
        this.DriskValue = DriskValue;
        this.status = status;
        this.Sseverity = Sseverity;
        this.riskSiteFullNumber = riskSiteFullNumber;
        this.riskhazardStatus = riskhazardStatus;
    }


    //属性get set方法
    @JsonIgnore
    public String getIdentifyMethod() {
        return identifyMethod;
    }

    @JsonIgnore
    public void setIdentifyMethod(String identifyMethod) {
        this.identifyMethod = identifyMethod;
    }

    @JsonIgnore
    public Integer getHazardID() {
        return this.hazardID;
    }

    @JsonIgnore
    public void setHazardID(Integer hazardID) {
        this.hazardID = hazardID;
    }

    @JsonIgnore
    public String getHazardUUID() {
        return this.hazardUUID;
    }

    @JsonIgnore
    public void setHazardUUID(String hazardUUID) {
        this.hazardUUID = hazardUUID;
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
    public String getAccountabilityUnit() {
        return this.accountabilityUnit;
    }

    @JsonIgnore
    public void setAccountabilityUnit(String accountabilityUnit) {
        this.accountabilityUnit = accountabilityUnit;
    }

    @JsonIgnore
    public String getConsequence() {
        return this.consequence;
    }

    @JsonIgnore
    public void setConsequence(String consequence) {
        this.consequence = consequence;
    }

    @JsonIgnore
    public String getDamageType() {
        return this.damageType;
    }

    @JsonIgnore
    public void setDamageType(String damageType) {
        this.damageType = damageType;
    }

    @JsonIgnore
    public Double getEexpose() {
        return this.Eexpose;
    }

    @JsonIgnore
    public void setEexpose(Double eexpose) {
        this.Eexpose = eexpose;
    }

    @JsonIgnore
    public Integer getRiskTemplateID() {
        return this.riskTemplateID;
    }

    @JsonIgnore
    public void setRiskTemplateID(Integer riskTemplateID) {
        this.riskTemplateID = riskTemplateID;
    }

    @JsonIgnore
    public String getExposeDegree() {
        return this.exposeDegree;
    }

    @JsonIgnore
    public void setExposeDegree(String exposeDegree) {
        this.exposeDegree = exposeDegree;
    }

    @JsonIgnore
    public Double getClossConsequence() {
        return this.ClossConsequence;
    }

    @JsonIgnore
    public void setClossConsequence(Double clossConsequence) {
        this.ClossConsequence = clossConsequence;
    }

    @JsonIgnore
    public String getMajorType() {
        return this.majorType;
    }

    @JsonIgnore
    public void setMajorType(String majorType) {
        this.majorType = majorType;
    }

    @JsonIgnore
    public String getManageUnit() {
        return this.manageUnit;
    }

    @JsonIgnore
    public void setManageUnit(String manageUnit) {
        this.manageUnit = manageUnit;
    }

    @JsonIgnore
    public String getName() {
        return this.name;
    }

    @JsonIgnore
    public void setName(String name) {
        this.name = name;
    }

    @JsonIgnore
    public String getOperatingPost() {
        return this.operatingPost;
    }

    @JsonIgnore
    public void setOperatingPost(String operatingPost) {
        this.operatingPost = operatingPost;
    }

    @JsonIgnore
    public Double getLpossibility() {
        return this.Lpossibility;
    }

    @JsonIgnore
    public void setLpossibility(Double lpossibility) {
        this.Lpossibility = lpossibility;
    }

    @JsonIgnore
    public String getRiskDegree() {
        return this.riskDegree;
    }

    @JsonIgnore
    public void setRiskDegree(String riskDegree) {
        this.riskDegree = riskDegree;
    }

    @JsonIgnore
    public String getRiskObject() {
        return this.riskObject;
    }

    @JsonIgnore
    public void setRiskObject(String riskObject) {
        this.riskObject = riskObject;
    }

    @JsonIgnore
    public String getRiskPlace() {
        return this.riskPlace;
    }

    @JsonIgnore
    public void setRiskPlace(String riskPlace) {
        this.riskPlace = riskPlace;
    }

    @JsonIgnore
    public String getRiskType() {
        return this.riskType;
    }

    @JsonIgnore
    public void setRiskType(String riskType) {
        this.riskType = riskType;
    }

    @JsonIgnore
    public double getDriskValue() {
        return this.DriskValue;
    }

    @JsonIgnore
    public void setDriskValue(double driskValue) {
        this.DriskValue = driskValue;
    }

    @JsonIgnore
    public Boolean getStatus() {
        return this.status;
    }

    @JsonIgnore
    public void setStatus(Boolean status) {
        this.status = status;
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
    public Double getSseverity() {
        return Sseverity;
    }

    @JsonIgnore
    public void setSseverity(Double sseverity) {
        Sseverity = sseverity;
    }

    @JsonIgnore
    public List<Riskcontrolmeasure> getmRiskControlMeasure() {
        return mRiskControlMeasure;
    }

    @JsonIgnore
    public void setmRiskControlMeasure(List<Riskcontrolmeasure> mRiskControlMeasure) {
        this.mRiskControlMeasure = mRiskControlMeasure;
    }

    @JsonIgnore
    public String getRiskSiteFullNumber() {
        return riskSiteFullNumber;
    }

    @JsonIgnore
    public void setRiskSiteFullNumber(String riskSiteFullNumber) {
        this.riskSiteFullNumber = riskSiteFullNumber;
    }

    @JsonIgnore
    public String getStandardFullNumber() {
        return standardFullNumber;
    }

    @JsonIgnore
    public void setStandardFullNumber(String standardFullNumber) {
        this.standardFullNumber = standardFullNumber;
    }

    @JsonIgnore
    public String getStandardName() {
        return standardName;
    }

    @JsonIgnore
    public void setStandardName(String standardName) {
        this.standardName = standardName;
    }

    @JsonIgnore
    public String getDutyRole() {
        return dutyRole;
    }

    @JsonIgnore
    public void setDutyRole(String dutyRole) {
        this.dutyRole = dutyRole;
    }

    @JsonIgnore
    public String getSupervisionUnit() {
        return supervisionUnit;
    }

    @JsonIgnore
    public void setSupervisionUnit(String supervisionUnit) {
        this.supervisionUnit = supervisionUnit;
    }

    @JsonIgnore
    public String getExtendedAttributesJson() {
        return extendedAttributesJson;
    }

    @JsonIgnore
    public void setExtendedAttributesJson(String extendedAttributesJson) {
        this.extendedAttributesJson = extendedAttributesJson;
    }

    @JsonIgnore
    public String getExtendedAttributesJsonString() {
        return extendedAttributesJsonString;
    }

    @JsonIgnore
    public void setExtendedAttributesJsonString(String extendedAttributesJsonString) {
        this.extendedAttributesJsonString = extendedAttributesJsonString;
    }

    @JsonIgnore
    public String getHazardDesc() {
        return hazardDesc;
    }

    @JsonIgnore
    public void setHazardDesc(String hazardDesc) {
        this.hazardDesc = hazardDesc;
    }

    @JsonIgnore
    public Integer getRiskLevelSettingID() {
        return riskLevelSettingID;
    }

    @JsonIgnore
    public void setRiskLevelSettingID(Integer riskLevelSettingID) {
        this.riskLevelSettingID = riskLevelSettingID;
    }

    @JsonIgnore
    public String getRiskLevel() {
        return riskLevel;
    }

    @JsonIgnore
    public void setRiskLevel(String riskLevel) {
        this.riskLevel = riskLevel;
    }

    @JsonIgnore
    public String getRiskColor() {
        return riskColor;
    }

    @JsonIgnore
    public void setRiskColor(String riskColor) {
        this.riskColor = riskColor;
    }

    @JsonIgnore
    public List<Riskhazardcontrolrange> getmRiskControlRange() {
        return mRiskControlRange;
    }

    @JsonIgnore
    public void setmRiskControlRange(List<Riskhazardcontrolrange> mRiskControlRange) {
        this.mRiskControlRange = mRiskControlRange;
    }

    @JsonIgnore
    public String getRiskObjectType() {
        return riskObjectType;
    }

    @JsonIgnore
    public void setRiskObjectType(String riskObjectType) {
        this.riskObjectType = riskObjectType;
    }

    @JsonIgnore
    public String getAccidentType() {
        return accidentType;
    }

    @JsonIgnore
    public void setAccidentType(String accidentType) {
        this.accidentType = accidentType;
    }

    @JsonIgnore
    public String getRiskKind() {
        return riskKind;
    }

    @JsonIgnore
    public void setRiskKind(String riskKind) {
        this.riskKind = riskKind;
    }

    @JsonIgnore
    public String getControlResult() {
        return controlResult;
    }

    @JsonIgnore
    public void setControlResult(String controlResult) {
        this.controlResult = controlResult;
    }

    @JsonIgnore
    public Risksite getRiskSite() {
        return riskSite;
    }

    @JsonIgnore
    public void setRiskSite(Risksite riskSite) {
        this.riskSite = riskSite;
    }

    @JsonIgnore
    public String getRiskByTypes() {
        return riskByTypes;
    }
    @JsonIgnore
    public void setRiskByTypes(String riskByTypes) {
        this.riskByTypes = riskByTypes;
    }
    @JsonIgnore
    public String getRiskFactors() {
        return riskFactors;
    }
    @JsonIgnore
    public void setRiskFactors(String riskFactors) {
        this.riskFactors = riskFactors;
    }
    @JsonIgnore
    public String getTechnologyDepartment() {
        return technologyDepartment;
    }
    @JsonIgnore
    public void setTechnologyDepartment(String technologyDepartment) {
        this.technologyDepartment = technologyDepartment;
    }
    @JsonIgnore
    public String getSupervisionDepartment() {
        return supervisionDepartment;
    }
    @JsonIgnore
    public void setSupervisionDepartment(String supervisionDepartment) {
        this.supervisionDepartment = supervisionDepartment;
    }

    @JsonIgnore
    public Boolean getRiskhazardStatus() { return riskhazardStatus; }

    @JsonIgnore
    public void setRiskhazardStatus(Boolean riskhazardStatus){
        this.riskhazardStatus = riskhazardStatus;
    }


}