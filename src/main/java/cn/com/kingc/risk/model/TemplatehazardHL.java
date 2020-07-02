package cn.com.kingc.risk.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import jdk.nashorn.internal.objects.annotations.Getter;
import jdk.nashorn.internal.objects.annotations.Setter;

import java.io.Serializable;
import java.util.List;

public class TemplatehazardHL implements Serializable {

    private static final long serialVersionUID = 1L;

    @JsonProperty("id")
    private Integer id;

    @JsonProperty("workflowId")
    private String workflowId;

    @JsonProperty("workflowContent")
    private String workflowContent;

    @JsonProperty("stepCount")
    private Integer stepCount;

    @JsonProperty("controlObjectName")
    private String controlObjectName;

    @JsonProperty("stepNum")
    private Integer stepNum;

    @JsonProperty("workStep")
    private String workStep;

    @JsonProperty("workResult")
    private String workResult;

    @JsonProperty("resultAbility")
    private String resultAbility;

    @JsonProperty("resultSeriously")
    private String resultSeriously;

    @JsonProperty("resultRisklradio")
    private String resultRisklradio;

    @JsonProperty("resultRisklevel")
    private String resultRisklevel;

    @JsonProperty("controlMeasure")
    private String controlMeasure;

    //页面大小
    @JsonProperty("pageSize")
    private Integer pagesize;
    //页码
    @JsonProperty("page")
    private Integer page;

    @JsonProperty("detailList")
    private List<TemplatehazardHL> detailList;

    //无参构造方法
    public TemplatehazardHL() {
    }

    //带参构造方法
    public TemplatehazardHL(Integer id, String workflowId, String workflowContent, Integer stepCount, String controlObjectName , Integer stepNum,
                            String workStep, String workResult , String resultAbility, String resultSeriously, String resultRisklradio,  String resultRisklevel, String controlMeasure) {
        this.id = id;
        this.workflowId = workflowId;
        this.workflowContent = workflowContent;
        this.stepCount = stepCount;
        this.controlObjectName = controlObjectName;
        this.stepNum = stepNum;
        this.workStep = workStep;
        this.workResult = workResult;
        this.resultAbility = resultAbility;
        this.resultSeriously = resultSeriously;
        this.resultRisklradio = resultRisklradio;
        this.resultRisklevel = resultRisklevel;
        this.controlMeasure = controlMeasure;
    }

    public Integer getId(){return  id;}
    public void setId(Integer id){this.id = id;}
    public String workflowId(){return workflowId;}
    public void setWorkflowId(String workflowId){this.workflowId = workflowId;}
    public String getWorkflowContent(){return workflowContent;}
    public void setWorkflowContent(String workflowContent){this.workflowContent = workflowContent;}
    public Integer getStepCount(){return stepCount;}
    public void setStepCount(Integer stepCount){this.stepCount = stepCount;}
    public String getControlObjectName(){return controlObjectName;}
    public void setControlObjectName(String controlObjectName){this.controlObjectName = controlObjectName;}
    public Integer getStepNum(){return stepNum;}
    public void setStepNum(Integer stepNum){this.stepNum = stepNum;}
    public String getWorkStep(){return workStep;}
    public void setWorkStep(String workStep){this.workStep = workStep;}
    public String getWorkResult(){return workResult;}
    public void setWorkResult(String workResult){this.workResult = workResult;}
    public String getResultAbility(){return resultAbility;}
    public void setResultAbility(String resultAbility){this.resultAbility = resultAbility;}
    public String getResultSeriously(){return resultSeriously;}
    public void setResultSeriously(String resultSeriously){this.resultSeriously = resultSeriously;}
    public String getResultRisklradio(){return resultRisklradio;}
    public void setResultRisklradio(String resultRisklradio){this.resultRisklradio = resultRisklradio;}
    public String getResultRisklevel(){return resultRisklevel;}
    public void setResultRisklevel(String resultRisklevel){this.resultRisklevel = resultRisklevel;}
    public String getControlMeasure(){return controlMeasure;}
    public void setControlMeasure(String controlMeasure){this.controlMeasure = controlMeasure;}
    public Integer getPage(){return page;}
    public void setPage(Integer page){ this.page = page;}
    public Integer getPagesize(){return pagesize;}
    public void setPagesize(Integer pagesize){this.pagesize = pagesize;}
    public List<TemplatehazardHL> getDetailList(){return detailList;}
    public void setDetailList(List<TemplatehazardHL> detailList){this.detailList = detailList;}

}
