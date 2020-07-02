package cn.com.kingc.risk.model;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
* Title:
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 表
* @date 2017-10-18 15:20:44 中国标准时间
* @author
* @version
*/
public class Address implements Serializable{
    private static final long serialVersionUID = 1L;

        //地点ID
        @JsonProperty("addressID")
        private  String addressID;
        //地点名称
        @JsonProperty("addressName")
        private  String addressName;
        //企业id
        @JsonProperty("frameWorkID")
        private  String frameWorkID;
        //创建日期
        @JsonProperty("fCreateDate")
        private  String fCreateDate;
        //X坐标
        @JsonProperty("axisX")
        private  Double axisX;
        //Y坐标
        @JsonProperty("axisY")
        private  Double axisY;
        //Z坐标
        @JsonProperty("axisZ")
        private  Double axisZ;
        //经度
        @JsonProperty("longitude")
        private  Double longitude;
        //纬度
        @JsonProperty("latitude")
        private  Double latitude;
        //是否已经删除
        @JsonProperty("deleted")
        private  Boolean deleted;
        //删除日期
        @JsonProperty("deleteDate")
        private  String deleteDate;
        //页面大小
        @JsonProperty("pageSize")
        private Integer pagesize;
        //页码
        @JsonProperty("page")
        private Integer page;

    //无参构造方法
    public Address(){}

    //带参构造方法
    public Address (String addressID,String addressName,String frameWorkID,String fCreateDate,Double axisX,Double axisY,Double axisZ,Double longitude,Double latitude,Boolean deleted,String deleteDate){

         this.addressID = addressID;
         this.addressName = addressName;
         this.frameWorkID = frameWorkID;
         this.fCreateDate = fCreateDate;
         this.axisX = axisX;
         this.axisY = axisY;
         this.axisZ = axisZ;
         this.longitude = longitude;
         this.latitude = latitude;
         this.deleted = deleted;
         this.deleteDate = deleteDate;
    }


    //属性get set方法
    @JsonIgnore
    public String getAddressID() {
        return this.addressID;
    }
    @JsonIgnore
    public void setAddressID(String addressID) {
        this.addressID = addressID;
    }
    @JsonIgnore
    public String getAddressName() {
        return this.addressName;
    }
    @JsonIgnore
    public void setAddressName(String addressName) {
        this.addressName = addressName;
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
    public String getFCreateDate() {
        return this.fCreateDate;
    }
    @JsonIgnore
    public void setFCreateDate(String fCreateDate) {
        this.fCreateDate = fCreateDate;
    }
    @JsonIgnore
    public Double getAxisX() {
        return this.axisX;
    }
    @JsonIgnore
    public void setAxisX(Double axisX) {
        this.axisX = axisX;
    }
    @JsonIgnore
    public Double getAxisY() {
        return this.axisY;
    }
    @JsonIgnore
    public void setAxisY(Double axisY) {
        this.axisY = axisY;
    }
    @JsonIgnore
    public Double getAxisZ() {
        return this.axisZ;
    }
    @JsonIgnore
    public void setAxisZ(Double axisZ) {
        this.axisZ = axisZ;
    }
    @JsonIgnore
    public Double getLongitude() {
        return this.longitude;
    }
    @JsonIgnore
    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }
    @JsonIgnore
    public Double getLatitude() {
        return this.latitude;
    }
    @JsonIgnore
    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }
    @JsonIgnore
    public Boolean getDeleted() {
        return this.deleted;
    }
    @JsonIgnore
    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }
    @JsonIgnore
    public String getDeleteDate() {
        return this.deleteDate;
    }
    @JsonIgnore
    public void setDeleteDate(String deleteDate) {
        this.deleteDate = deleteDate;
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
}