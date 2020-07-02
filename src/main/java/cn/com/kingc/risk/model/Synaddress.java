package cn.com.kingc.risk.model;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
* Title:视图:synaddress
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 视图:synaddress表
* @date 2018-01-07 15:50:36 中国标准时间
* @author
* @version
*/
public class Synaddress implements Serializable{
    private static final long serialVersionUID = 1L;

        @JsonProperty("id")
        private  String id;
        @JsonProperty("aiAddressName")
        private  String aiAddressName;
        @JsonProperty("aiManageMan")
        private  String aiManageMan;

    //无参构造方法
    public Synaddress(){}

    //带参构造方法
    public Synaddress (String id,String aiAddressName,String aiManageMan){

         this.id = id;
         this.aiAddressName = aiAddressName;
         this.aiManageMan = aiManageMan;
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
}