package cn.com.kingc.risk.model;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
* Title:视图:synaddressdepartrel
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 视图:synaddressdepartrel表
* @date 2018-01-08 11:32:15 中国标准时间
* @author
* @version
*/
public class Synaddressdepartrel implements Serializable{
    private static final long serialVersionUID = 1L;

        @JsonProperty("id")
        private  String id;
        @JsonProperty("adrDutyMan")
        private  String adrDutyMan;
        @JsonProperty("adrAddressId")
        private  String adrAddressId;
        @JsonProperty("adrDepartName")
        private  String adrDepartName;

    //无参构造方法
    public Synaddressdepartrel(){}

    //带参构造方法
    public Synaddressdepartrel (String id,String adrDutyMan,String adrAddressId,String adrDepartName){

         this.id = id;
         this.adrDutyMan = adrDutyMan;
         this.adrAddressId = adrAddressId;
         this.adrDepartName = adrDepartName;
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
    public String getAdrDutyMan() {
        return this.adrDutyMan;
    }
    @JsonIgnore
    public void setAdrDutyMan(String adrDutyMan) {
        this.adrDutyMan = adrDutyMan;
    }
    @JsonIgnore
    public String getAdrAddressId() {
        return this.adrAddressId;
    }
    @JsonIgnore
    public void setAdrAddressId(String adrAddressId) {
        this.adrAddressId = adrAddressId;
    }
    @JsonIgnore
    public String getAdrDepartName() {
        return this.adrDepartName;
    }
    @JsonIgnore
    public void setAdrDepartName(String adrDepartName) {
        this.adrDepartName = adrDepartName;
    }
}