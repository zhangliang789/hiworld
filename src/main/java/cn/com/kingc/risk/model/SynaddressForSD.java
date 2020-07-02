package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

/**
* Title:风险点上报
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 视图:synaddress表
* @date 2018-01-07 15:50:36 中国标准时间
* @author
* @version
*/
public class SynaddressForSD implements Serializable{
    private static final long serialVersionUID = 1L;

    @JsonProperty("id")
    private  String id;
    @JsonProperty("aiAddressName")
    private  String aiAddressName;
    @JsonProperty("aiManageMan")
    private  String aiManageMan;
    @JsonProperty("isDelete")
    private  String isDelete;
    @JsonProperty("belongLayer")
    private  String belongLayer;
    //无参构造方法
    public SynaddressForSD(){}

    //带参构造方法
    public SynaddressForSD (String id,String aiAddressName,String aiManageMan,String isDelete,String belongLayer){

        this.id = id;
        this.aiAddressName = aiAddressName;
        this.aiManageMan = aiManageMan;
        this.isDelete =isDelete;
        this.belongLayer = belongLayer;
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
    public String getAiAddressName() {
        return this.aiAddressName;
    }
    @JsonIgnore
    public void setAiAddressName(String aiAddressName) {
        this.aiAddressName = aiAddressName;
    }
    @JsonIgnore
    public String getAiManageMan() {
        return this.aiManageMan;
    }
    @JsonIgnore
    public void setAiManageMan(String aiManageMan) {
        this.aiManageMan = aiManageMan;
    }
    @JsonIgnore
    public String getIsDelete() {
        return isDelete;
    }
    @JsonIgnore
    public void setIsDelete(String isDelete) {
        this.isDelete = isDelete;
    }
    @JsonIgnore
    public String getBelongLayer() {
        return belongLayer;
    }
    @JsonIgnore
    public void setBelongLayer(String belongLayer) {
        this.belongLayer = belongLayer;
    }
}