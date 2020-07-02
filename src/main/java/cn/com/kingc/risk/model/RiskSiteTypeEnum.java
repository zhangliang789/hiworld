package cn.com.kingc.risk.model;

/**
 * Created by admistrator on 2017-09-16.
 */
public enum  RiskSiteTypeEnum {
    ADDRESS(1, "地点"),EQUIPMENT(2,"设施"), TASK(3,"作业活动");


    RiskSiteTypeEnum(int code, String description) {
        this.code = new Integer(code);
        this.description = description;
    }

    private Integer code;
    private String description;
    public Integer getCode() {
        return code;
    }

    public String getDescription() {
        return description;
    }

}
