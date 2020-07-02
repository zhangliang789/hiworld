package cn.com.kingc.risk.model;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
* Title:风险地图信息表
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 风险地图信息表表
* @date 2017-10-19 17:02:46 中国标准时间
* @author
* @version
*/
public class Risksitemap implements Serializable{
    private static final long serialVersionUID = 1L;

        //风险地图主键
        @JsonProperty("riskSiteMapId")
        private  Integer riskSiteMapId;
        //SVG文件名称
        @JsonProperty("svgFileName")
        private  String svgFileName;
        //SVG文件路径
        @JsonProperty("svgFilePath")
        private  String svgFilePath;
        //CAD文件名称
        @JsonProperty("cadFileName")
        private  String cadFileName;
        //CAD文件路径
        @JsonProperty("cadFilePath")
        private  String cadFilePath;
        //添加日期
        @JsonProperty("addDate")
        private  String addDate;
        //修改日期
        @JsonProperty("updateDate")
        private  String updateDate;
        //企业ID
        @JsonProperty("frameWorkId")
        private  String frameWorkId;
        @JsonProperty("transForm")
        private  String transForm;
        //地图坐标原点X
        @JsonProperty("origionX")
        private  String origionX;
        //地图坐标原点Y
        @JsonProperty("origionY")
        private  String origionY;
        //页面大小
        @JsonProperty("pageSize")
        private Integer pagesize;
        //页码
        @JsonProperty("page")
        private Integer page;

    //无参构造方法
    public Risksitemap(){}

    //带参构造方法
    public Risksitemap (Integer riskSiteMapId,String svgFileName,String svgFilePath,String cadFileName,String cadFilePath,String addDate,String updateDate,String frameWorkId,String transForm,String origionX,String origionY){

         this.riskSiteMapId = riskSiteMapId;
         this.svgFileName = svgFileName;
         this.svgFilePath = svgFilePath;
         this.cadFileName = cadFileName;
         this.cadFilePath = cadFilePath;
         this.addDate = addDate;
         this.updateDate = updateDate;
         this.frameWorkId = frameWorkId;
         this.transForm = transForm;
         this.origionX = origionX;
         this.origionY = origionY;
    }


    //属性get set方法
    @JsonIgnore
    public Integer getRiskSiteMapId() {
        return this.riskSiteMapId;
    }
    @JsonIgnore
    public void setRiskSiteMapId(Integer riskSiteMapId) {
        this.riskSiteMapId = riskSiteMapId;
    }
    @JsonIgnore
    public String getSvgFileName() {
        return this.svgFileName;
    }
    @JsonIgnore
    public void setSvgFileName(String svgFileName) {
        this.svgFileName = svgFileName;
    }
    @JsonIgnore
    public String getSvgFilePath() {
        return this.svgFilePath;
    }
    @JsonIgnore
    public void setSvgFilePath(String svgFilePath) {
        this.svgFilePath = svgFilePath;
    }
    @JsonIgnore
    public String getCadFileName() {
        return this.cadFileName;
    }
    @JsonIgnore
    public void setCadFileName(String cadFileName) {
        this.cadFileName = cadFileName;
    }
    @JsonIgnore
    public String getCadFilePath() {
        return this.cadFilePath;
    }
    @JsonIgnore
    public void setCadFilePath(String cadFilePath) {
        this.cadFilePath = cadFilePath;
    }
    @JsonIgnore
    public String getAddDate() {
        return this.addDate;
    }
    @JsonIgnore
    public void setAddDate(String addDate) {
        this.addDate = addDate;
    }
    @JsonIgnore
    public String getUpdateDate() {
        return this.updateDate;
    }
    @JsonIgnore
    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate;
    }
    @JsonIgnore
    public String getFrameWorkId() {
        return this.frameWorkId;
    }
    @JsonIgnore
    public void setFrameWorkId(String frameWorkId) {
        this.frameWorkId = frameWorkId;
    }
    @JsonIgnore
    public String getTransForm() {
        return this.transForm;
    }
    @JsonIgnore
    public void setTransForm(String transForm) {
        this.transForm = transForm;
    }
    @JsonIgnore
    public String getOrigionX() {
        return this.origionX;
    }
    @JsonIgnore
    public void setOrigionX(String origionX) {
        this.origionX = origionX;
    }
    @JsonIgnore
    public String getOrigionY() {
        return this.origionY;
    }
    @JsonIgnore
    public void setOrigionY(String origionY) {
        this.origionY = origionY;
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