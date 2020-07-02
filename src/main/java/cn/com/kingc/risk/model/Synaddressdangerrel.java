package cn.com.kingc.risk.model;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
* Title:视图:synaddressdangerrel
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 视图:synaddressdangerrel表
* @date 2018-01-08 11:30:04 中国标准时间
* @author
* @version
*/
public class Synaddressdangerrel implements Serializable{
    private static final long serialVersionUID = 1L;

        @JsonProperty("id")
        private  String id;
        @JsonProperty("darAddressId")
        private  String darAddressId;
        @JsonProperty("darDangerId")
        private  String darDangerId;
        @JsonProperty("darRiskLevel")
        private  Long darRiskLevel;
        //页面大小
        @JsonProperty("pageSize")
        private Integer pagesize;
        //页码
        @JsonProperty("page")
        private Integer page;

    //无参构造方法
    public Synaddressdangerrel(){}

    //带参构造方法
    public Synaddressdangerrel (String id,String darAddressId,String darDangerId,Long darRiskLevel){

         this.id = id;
         this.darAddressId = darAddressId;
         this.darDangerId = darDangerId;
         this.darRiskLevel = darRiskLevel;
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
    public String getDarAddressId() {
        return this.darAddressId;
    }
    @JsonIgnore
    public void setDarAddressId(String darAddressId) {
        this.darAddressId = darAddressId;
    }
    @JsonIgnore
    public String getDarDangerId() {
        return this.darDangerId;
    }
    @JsonIgnore
    public void setDarDangerId(String darDangerId) {
        this.darDangerId = darDangerId;
    }
    @JsonIgnore
    public Long getDarRiskLevel() {
        return this.darRiskLevel;
    }
    @JsonIgnore
    public void setDarRiskLevel(Long darRiskLevel) {
        this.darRiskLevel = darRiskLevel;
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