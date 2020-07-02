package cn.com.kingc.risk.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
* Title:安全风险评估表
* Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
* Company: 山东精诚电子科技有限公司
* Description:对应数据库的 安全风险评估表表
* @date 2018-10-14 10:21:16 中国标准时间
* @author
* @version
*/
public class Security_risk_assessment implements Serializable{
    private static final long serialVersionUID = 1L;

        //风险评估表id
        @JsonProperty("risk_id")
        private  Integer risk_id;
        //部门
        @JsonProperty("risk_department")
        private  String risk_department;
        //工作任务
        @JsonProperty("risk_task")
        private  String risk_task;
        //工序
        @JsonProperty("risk_procedure")
        private  String risk_procedure;
        //风险
        @JsonProperty("risk_risk")
        private  String risk_risk;
        //风险后果描述
        @JsonProperty("risk_consequences")
        private  String risk_consequences;
        //风险类型
        @JsonProperty("risk_type")
        private  String risk_type;
        //事故类型
        @JsonProperty("risk_accitype")
        private  String risk_accitype;
        //事故发生条件
        @JsonProperty("risk_condition")
        private  String risk_condition;
        //可能性
        @JsonProperty("risk_possibility")
        private  String risk_possibility;
        //损失
        @JsonProperty("risk_loss")
        private  String risk_loss;
        //风险值
        @JsonProperty("risk_value")
        private  String risk_value;
        //风险等级
        @JsonProperty("risk_grade")
        private  String risk_grade;
        //管控对象
        @JsonProperty("risk_object")
        private  String risk_object;
        //管理标准
        @JsonProperty("risk_standard")
        private  String risk_standard;
        //主要负责人
        @JsonProperty("risk_priperson")
        private  String risk_priperson;
        //直接管理人人员
        @JsonProperty("risk_dirmanager")
        private  String risk_dirmanager;
        //主要监管部门
        @JsonProperty("risk_major")
        private  String risk_major;
        //主要监管人
        @JsonProperty("risk_majorperson")
        private  String risk_majorperson;
        //监管措施
        @JsonProperty("risk_measures")
        private  String risk_measures;
        //页面大小
        @JsonProperty("pageSize")
        private Integer pagesize;
        //页码
        @JsonProperty("page")
        private Integer page;

        @JsonProperty("detailList")
        private List<Security_risk_assessment> detailList;



    //无参构造方法
    public Security_risk_assessment(){}

    //带参构造方法
    public Security_risk_assessment (Integer risk_id,String risk_department,String risk_task,String risk_procedure,String risk_risk,String risk_consequences,String risk_type,String risk_accitype,String risk_condition,String risk_possibility,String risk_loss,String risk_value,String risk_grade,String risk_object,String risk_standard,String risk_priperson,String risk_dirmanager,String risk_major,String risk_majorperson,String risk_measures){

         this.risk_id = risk_id;
         this.risk_department =risk_department;
         this.risk_task = risk_task;
         this.risk_procedure = risk_procedure;
         this.risk_risk = risk_risk;
         this.risk_consequences = risk_consequences;
         this.risk_type = risk_type;
         this.risk_accitype = risk_accitype;
         this.risk_condition = risk_condition;
         this.risk_possibility = risk_possibility;
         this.risk_loss = risk_loss;
         this.risk_value = risk_value;
         this.risk_grade = risk_grade;
         this.risk_object = risk_object;
         this.risk_standard = risk_standard;
         this.risk_priperson = risk_priperson;
         this.risk_dirmanager = risk_dirmanager;
         this.risk_major = risk_major;
         this.risk_majorperson = risk_majorperson;
         this.risk_measures = risk_measures;
    }


    //属性get set方法
    @JsonIgnore
    public Integer getRisk_id() {
        return this.risk_id;
    }
    @JsonIgnore
    public void setRisk_id(Integer risk_id) {
        this.risk_id = risk_id;
    }
    @JsonIgnore
    public String getRisk_department() { return risk_department; }
    @JsonIgnore
    public void setRisk_department(String risk_department) { this.risk_department = risk_department; }
    @JsonIgnore
    public String getRisk_task() {
        return this.risk_task;
    }
    @JsonIgnore
    public void setRisk_task(String risk_task) {
        this.risk_task = risk_task;
    }
    @JsonIgnore
    public String getRisk_procedure() {
        return this.risk_procedure;
    }
    @JsonIgnore
    public void setRisk_procedure(String risk_procedure) {
        this.risk_procedure = risk_procedure;
    }
    @JsonIgnore
    public String getRisk_risk() {
        return this.risk_risk;
    }
    @JsonIgnore
    public void setRisk_risk(String risk_risk) {
        this.risk_risk = risk_risk;
    }
    @JsonIgnore
    public String getRisk_consequences() {
        return this.risk_consequences;
    }
    @JsonIgnore
    public void setRisk_consequences(String risk_consequences) {
        this.risk_consequences = risk_consequences;
    }
    @JsonIgnore
    public String getRisk_type() {
        return this.risk_type;
    }
    @JsonIgnore
    public void setRisk_type(String risk_type) {
        this.risk_type = risk_type;
    }
    @JsonIgnore
    public String getRisk_accitype() {
        return this.risk_accitype;
    }
    @JsonIgnore
    public void setRisk_accitype(String risk_accitype) {
        this.risk_accitype = risk_accitype;
    }
    @JsonIgnore
    public String getRisk_condition() {
        return this.risk_condition;
    }
    @JsonIgnore
    public void setRisk_condition(String risk_condition) {
        this.risk_condition = risk_condition;
    }
    @JsonIgnore
    public String getRisk_possibility() {
        return this.risk_possibility;
    }
    @JsonIgnore
    public void setRisk_possibility(String risk_possibility) {
        this.risk_possibility = risk_possibility;
    }
    @JsonIgnore
    public String getRisk_loss() {
        return this.risk_loss;
    }
    @JsonIgnore
    public void setRisk_loss(String risk_loss) {
        this.risk_loss = risk_loss;
    }
    @JsonIgnore
    public String getRisk_value() {
        return this.risk_value;
    }
    @JsonIgnore
    public void setRisk_value(String risk_value) {
        this.risk_value = risk_value;
    }
    @JsonIgnore
    public String getRisk_grade() {
        return this.risk_grade;
    }
    @JsonIgnore
    public void setRisk_grade(String risk_grade) {
        this.risk_grade = risk_grade;
    }
    @JsonIgnore
    public String getRisk_object() {
        return this.risk_object;
    }
    @JsonIgnore
    public void setRisk_object(String risk_object) {
        this.risk_object = risk_object;
    }
    @JsonIgnore
    public String getRisk_standard() {
        return this.risk_standard;
    }
    @JsonIgnore
    public void setRisk_standard(String risk_standard) {
        this.risk_standard = risk_standard;
    }
    @JsonIgnore
    public String getRisk_priperson() {
        return this.risk_priperson;
    }
    @JsonIgnore
    public void setRisk_priperson(String risk_priperson) {
        this.risk_priperson = risk_priperson;
    }
    @JsonIgnore
    public String getRisk_dirmanager() {
        return this.risk_dirmanager;
    }
    @JsonIgnore
    public void setRisk_dirmanager(String risk_dirmanager) {
        this.risk_dirmanager = risk_dirmanager;
    }
    @JsonIgnore
    public String getRisk_major() {
        return this.risk_major;
    }
    @JsonIgnore
    public void setRisk_major(String risk_major) {
        this.risk_major = risk_major;
    }
    @JsonIgnore
    public String getRisk_majorperson() {
        return this.risk_majorperson;
    }
    @JsonIgnore
    public void setRisk_majorperson(String risk_majorperson) {
        this.risk_majorperson = risk_majorperson;
    }
    @JsonIgnore
    public String getRisk_measures() {
        return this.risk_measures;
    }
    @JsonIgnore
    public void setRisk_measures(String risk_measures) {
        this.risk_measures = risk_measures;
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
    public List<Security_risk_assessment> getDetailList() {
        return detailList;
    }
    @JsonIgnore
    public void setDetailList(List<Security_risk_assessment> detailList) {
        this.detailList = detailList;
    }
}