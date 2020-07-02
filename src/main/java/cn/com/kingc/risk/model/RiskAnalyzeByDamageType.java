package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by admistrator on 2017-09-28.
 */
@Table
public class RiskAnalyzeByDamageType implements Serializable {

    private static final long serialVersionUID = 1751596427001474022L;

    @Id
    @JsonProperty("framewrokId")
    private String frameworkId;
    @JsonProperty("frameworkName")
    private String frameworkName;
    @JsonProperty("riskDamageName")
    private String riskDamageName;
    @JsonProperty("places")
    private String places;
    @JsonProperty("placeCount")
    private Integer placeCount;
    @JsonProperty("l1")
    private Integer l1;
    @JsonProperty("l2")
    private Integer l2;
    @JsonProperty("l3")
    private Integer l3;
    @JsonProperty("l4")
    private Integer l4;
    @JsonProperty("wpg")
    private Integer wpg;

    @JsonIgnore
    public String getRiskDamageName() {
        return riskDamageName;
    }

    @JsonIgnore
    public void setRiskDamageName(String riskDamageName) {
        this.riskDamageName = riskDamageName;
    }

    @JsonIgnore
    public String getPlaces() {
        return places;
    }

    @JsonIgnore
    public void setPlaces(String places) {
        this.places = places;
    }

    @JsonIgnore
    public Integer getPlaceCount() {
        return placeCount;
    }

    @JsonIgnore
    public void setPlaceCount(Integer placeCount) {
        this.placeCount = placeCount;
    }

    @JsonIgnore
    public Integer getL1() {
        return l1;
    }

    @JsonIgnore
    public void setL1(Integer l1) {
        this.l1 = l1;
    }

    @JsonIgnore
    public Integer getL2() {
        return l2;
    }

    @JsonIgnore
    public void setL2(Integer l2) {
        this.l2 = l2;
    }

    @JsonIgnore
    public Integer getL3() {
        return l3;
    }

    @JsonIgnore
    public void setL3(Integer l3) {
        this.l3 = l3;
    }

    @JsonIgnore
    public Integer getL4() {
        return l4;
    }

    @JsonIgnore
    public void setL4(Integer l4) {
        this.l4 = l4;
    }

    @JsonIgnore
    public Integer getWpg() {
        return wpg;
    }

    @JsonIgnore
    public void setWpg(Integer wpg) {
        this.wpg = wpg;
    }

    @JsonIgnore
    public String getFrameworkId() {
        return frameworkId;
    }

    @JsonIgnore
    public void setFrameworkId(String frameworkId) {
        this.frameworkId = frameworkId;
    }

    @JsonIgnore
    public String getFramewordName() {
        return frameworkName;
    }

    @JsonIgnore
    public void setFramewordName(String framewordName) {
        this.frameworkName = frameworkName;
    }

    @JsonIgnore
    public String getFrameworkName() {
        return frameworkName;
    }

    @JsonIgnore
    public void setFrameworkName(String frameworkName) {
        this.frameworkName = frameworkName;
    }
}
