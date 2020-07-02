package cn.com.kingc.risk.model;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
* Title:视图:synhazard
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 视图:synhazard表
* @date 2018-01-08 11:56:50 中国标准时间
* @author
* @version
*/
public class Synhazard implements Serializable{
    private static final long serialVersionUID = 1L;

        @JsonProperty("id")
        private  String id;
        @JsonProperty("hmHazardName")
        private  String hmHazardName;
        @JsonProperty("hmHazardType")
        private  String hmHazardType;
        @JsonProperty("hmDamageType")
        private  String hmDamageType;
        @JsonProperty("hmProfessionType")
        private  String hmProfessionType;
        @JsonProperty("hmAccidentType")
        private  String hmAccidentType;
        @JsonProperty("isDelete")
        private  String isDelete;

    //无参构造方法
    public Synhazard(){}

    //带参构造方法
    public Synhazard (String id,String hmHazardName,String hmHazardType,String hmDamageType,String hmProfessionType,String hmAccidentType,String isDelete){

         this.id = id;
         this.hmHazardName = hmHazardName;
         this.hmHazardType = hmHazardType;
         this.hmDamageType = hmDamageType;
         this.hmProfessionType = hmProfessionType;
         this.hmAccidentType = hmAccidentType;
         this.isDelete = isDelete;
    }


    //属性get set方法
    @JsonIgnore
    public String getId() {
        return this.id;
    }
    @JsonIgnore
    public void setId(String id) {
        this.id = id;
    }
    @JsonIgnore
    public String getHmHazardName() {
        return this.hmHazardName;
    }
    @JsonIgnore
    public void setHmHazardName(String hmHazardName) {
        this.hmHazardName = hmHazardName;
    }
    @JsonIgnore
    public String getHmHazardType() {
        return this.hmHazardType;
    }
    @JsonIgnore
    public void setHmHazardType(String hmHazardType) {
        this.hmHazardType = hmHazardType;
    }
    @JsonIgnore
    public String getHmDamageType() {
        return this.hmDamageType;
    }
    @JsonIgnore
    public void setHmDamageType(String hmDamageType) {
        this.hmDamageType = hmDamageType;
    }
    @JsonIgnore
    public String getHmProfessionType() {
        return this.hmProfessionType;
    }
    @JsonIgnore
    public void setHmProfessionType(String hmProfessionType) {
        this.hmProfessionType = hmProfessionType;
    }
    @JsonIgnore
    public String getHmAccidentType() {
        return this.hmAccidentType;
    }
    @JsonIgnore
    public void setHmAccidentType(String hmAccidentType) {
        this.hmAccidentType = hmAccidentType;
    }
    @JsonIgnore
    public String getIsDelete() {
        return this.isDelete;
    }
    @JsonIgnore
    public void setIsDelete(String isDelete) {
        this.isDelete = isDelete;
    }
}