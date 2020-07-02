<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--[if IE 9]>
<html class="no-js lt-ie10" lang="en">
<![endif]-->
<!--[if gt IE 9]>
<!-->
<html class="js " lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <title>导入线下辨识结果</title>
    <meta name="description"
          content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
    <meta name="author" content="pixelcave">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- Icons -->
    <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
    <link rel="shortcut icon" href="../img/favicon.png">
    <link rel="apple-touch-icon" href="../img/icon57.png" sizes="57x57">
    <link rel="apple-touch-icon" href="../img/icon72.png" sizes="72x72">
    <link rel="apple-touch-icon" href="../img/icon76.png" sizes="76x76">
    <link rel="apple-touch-icon" href="../img/icon114.png" sizes="114x114">
    <link rel="apple-touch-icon" href="../img/icon120.png" sizes="120x120">
    <link rel="apple-touch-icon" href="../img/icon144.png" sizes="144x144">
    <link rel="apple-touch-icon" href="../img/icon152.png" sizes="152x152">
    <link rel="apple-touch-icon" href="../img/icon180.png" sizes="180x180">
    <!-- END Icons -->
    <!-- Stylesheets -->
    <!-- Bootstrap is included in its original form, unaltered -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- Related styles of various icon packs and plugins -->
    <link rel="stylesheet" href="../css/plugins.css">
    <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
    <link rel="stylesheet" href="../css/main.css">
    <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->
    <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
    <link rel="stylesheet" href="../css/themes.css">
    <!-- END Stylesheets -->
    <!-- Modernizr (browser feature detection library) -->
    <link rel="stylesheet" href="../css/layui.css"/>
    <script src="../js/vendor/modernizr-3.3.1.min.js"></script>
    <link href="../css/bootstrap-treeview.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/style1.css"/>
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../iview/iview.css">
    <style type="text/css">/*.nav .caret { border-top-color: #ebebeb; transition: all 0.3s ease-in-out; -webkit-transition: all 0.3s ease-in-out; -ms-transition: all 0.3s ease-in-out; }*/
    .xybnr {
        margin-top: 50px;
    }

    .hkdys {
        background-color: #f9f9f9;
        font-weight: bold;
    }
    .ivu-select-dropdown{
    position: absolute !important;}
    </style>
</head>

<body>
<div id="page-content" style="min-height: 794px;">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-6">
                <div class="header-section">
                    <h1>导入线下辨识结果</h1></div>
            </div>
        </div>
    </div>
    <div class="block full">
        <div style="text-align: right;">
            <div style="position: relative;display: inline-block;vertical-align: middle;">
                <input type="file" class=""
                       style="position: absolute;top:0;left: 0;z-index:1;opacity: 0;width: 100%;display: block;">
                <span class="btn btn-primary" style="display: block;">打开文件</span></div>
            <button type="button" class="btn btn-primary">确认导入</button>
            <button type="button" class="btn btn-primary">模板下载</button>
        </div>
        <div class="container">
            <ul class="nav nav-pills nav-justified step step-progress" data-step="5">
                <li>
                    <a>选择文件
                        <span class="caret"></span></a>
                </li>
                <li>
                    <a>校验分析
                        <span class="caret"></span></a>
                </li>
                <li>
                    <a>导入数据
                        <span class="caret"></span></a>
                </li>
                <li>
                    <a>提取辨识方法、风险信息
                        <span class="caret"></span></a>
                </li>
                <li>
                    <a>完成
                        <span class="caret"></span></a>
                </li>
            </ul>
        </div>
        <div class="xybnr">
            <div style="padding: 10px ;text-align: right;">
                <button type="button" class="btn btn-default">完成</button>
            </div>
            <table class="table table-bordered table-vcenter table-hover">
                <tbody>
                <tr class="hkdys">
                    <td class="text-center">风险点名称</td>
                    <td class="text-center">类型</td>
                    <td class="text-center">设备</td>
                    <td class="text-center">作业活动</td>
                    <td class="text-center">操作</td>
                </tr>
                <tr v-for="riskSite in detailedList">
                    <td v-text="riskSite.name"></td>
                    <td v-text="riskSite.riskType"></td>
                    <td></td>
                    <td v-text="riskSite.mchildRiskSite.length"></td>
                    <td class="text-center">
                        <a href="#modal-regular" @click="showmadal(riskSite)">工作面信息</a>
                        <a href="javascript:void(0)">标识风险地图</a></td>
                        </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div id="modal-regular" class="modal " tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="block full" style="padding:0;">
                        <!-- Block Tabs Title -->
                        <div class="block-title">

                            <ul class="nav nav-tabs" data-toggle="tabs" disabled="disabled">
                                <li class="active">
                                    <a href="#block-tabs-home">地点信息</a>
                                </li>
                            </ul>
                        </div>
                        <!-- END Block Tabs Title -->

                        <!-- Tabs Content -->
                        <div class="tab-content">
                            <div class="tab-pane active" id="block-tabs-home">
                             <i-Form ref="selectPlace" :model="selectPlace" :rules="ruleValidate" :label-width="80">
        <form-item label="地点类型" prop="fPlace_Classify_GUID">
             <i-Select v-model="selectPlace.fPlace_Classify_GUID" placeholder="请选择地点类型"  :disabled="disabled">
                <i-Option v-for="data in Place_ClassifyList" v-bind:value="data.fPlace_Classify_GUID" v-text="data.fPlace_Classify_Name" v-bind:label="data.fPlace_Classify_Name"></i-Option>
                
            </i-Select>
        </form-item>
        <form-item label="地点名称" prop="fPlace_Name">
            <i-Input v-model="selectPlace.fPlace_Name" placeholder="请输入地点名称" :disabled="disabled"></i-Input>
        </form-item>
        <form-item label="名称缩写" prop="fPlace_Name_Shorthand">
            <i-Input v-model="selectPlace.fPlace_Name_Shorthand" placeholder="请输入名称缩写" :disabled="disabled"></i-Input>
        </form-item>
       
         
        
         <form-item>
            <i-Button type="primary" @click="handleSubmit('selectPlace')" :loading="spinShow1" :disabled="disabled">
            <span v-if="!spinShow1" >提交</span>
            <span v-else>Loading...</span>
            </i-Button>
            <i-Button type="ghost" @click="handleReset('selectPlace')" style="margin-left: 8px" :disabled="disabled">重置</i-Button>
        </form-item> 
        
    </i-Form>
                                <%-- <form method="post" class="form-horizontal" onsubmit="return false;">

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">地点类型</label>
                                        <div class="col-sm-8">
                                           <select name="" class="form-control input-sm">
                                                <option value=""></option>
                                            </select>
                                              <!-- <input class="form-control input-sm" placeholder="" type="text"> -->
                                              <i-Select v-model="selectPlaceType" placeholder="请选择地点类型">
                <i-Option v-for="data in dataselect1" v-bind:value="data.fEmp_ID" v-text="data.fEmp_Name" v-bind:label="data.fEmp_Name"></i-Option>
                
            </i-Select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">地点名称</label>
                                        <div class="col-sm-8">
                                            <input class="form-control input-sm" placeholder="" type="text"></div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">起止时间</label>
                                        <div class="col-sm-8">
                                            <input class="form-control input-sm datepicker" placeholder="" type="text">
                                            到
                                            <input class="form-control input-sm datepicker" placeholder="" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 control-label">
                                            <h1>工作面条件</h1></div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">毛断面</label>
                                        <div class="col-sm-8">
                                            <input class="form-control input-sm" placeholder="" type="text"></div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">支护方式</label>
                                        <div class="col-sm-8">
                                            <input class="form-control input-sm" placeholder="" type="text"></div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">装载机械</label>
                                        <div class="col-sm-8">
                                            <input class="form-control input-sm" placeholder="" type="text"></div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 control-label">
                                            <h1>管控责任部门</h1></div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 control-label">
                                            <table id="general-table"
                                                   class="table table-striped table-bordered table-vcenter">
                                                <tbody>
                                                <tr>
                                                    <td class="text-center">1</td>
                                                    <td class="text-center">2</td>
                                                    <td class="text-center">3</td>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </form> --%>
                            </div>
                        </div>
                        <!-- END Tabs Content -->
                    </div>

                </div>
                <div class="modal-footer">
                    <!-- <button type="button" class="btn btn-effect-ripple btn-primary">保存</button>
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button> -->
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../js/vendor/jquery-2.2.4.min.js"></script>
<script src="../js/vendor/bootstrap.min.js"></script>
<script src="../js/bootstrap-treeview.js"></script>
<script src="../js/treeview-demo.min.js"></script>
<script src="../js/plugins.js"></script>
<script src="../js/app.js"></script>
<script src="../js/pages/uiTables.js"></script>
<script src="../js/pages/compTree.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>
<script type="text/javascript">
    var projectName = '<%=request.getContextPath() %>';
    /**
     * Created by txianwei on 2017/9/18
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
        	spinShow1:false,
        	flag:false,
        	Place_ClassifyList:[],
        	detailedList: null,
            selectPlace:new Object(),
            ruleValidate: {
            	fPlace_Name: [
                    { required: true, message: '名称不能为空', trigger: 'blur' }
                ],
                fPlace_Classify_GUID: [
                    { required: true, message: '请选择地点类型', trigger: 'change' }
                ]
               
            },
            disabled:false,
            selectedRisksite:""
        },
        created: function () {
            var _self = this;
            _self.getImportedData();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            getImportedData: function () {
                var _self = this;
                $.get(projectName + "/ImportOffLineData/getImportedRiskSites", function (data) {
                    console.log(data);
                    _self.detailedList = data;
                });
                $.post(projectName + "/PlatForm/getPlaceClassifyList", function (data) {
                    console.log(data);
                    _self.Place_ClassifyList = data;
                });
                $.get(projectName + "/ImportOffLineData/new", function (data1) {
           		 _self.selectPlace=data1;
           		 //$("#modal-regular").modal("show");a
                });
                
            },
            showmadal:function(risksite){
            	var _self=this;
            	_self.selectedRisksite=risksite;
            	 $.get(projectName + "/ImportOffLineData/getImportedPlace",{name:risksite.name},function (data) {
                     if(data!=0){
                    	 _self.selectPlace=data;
                    	 _self.disabled=true;
                    	 $("#modal-regular").modal("show");
                     }else{
                    	 $.get(projectName + "/ImportOffLineData/new", function (data1) {
                    		 _self.selectPlace=data1;
                             _self.selectPlace.fPlace_Name=risksite.name;
                             _self.disabled=false;
                    		 $("#modal-regular").modal("show");
                         });
                    	
                     }
                 });
            },
            insertOrupdate:function(){
				var _self=this;
				this.spinShow1=true;
				$.ajax({
			  	    url: "<%=request.getContextPath() %>/PlatForm/addPlace",
			  	  	type:"post",
			  	    contentType: "application/json",
                    data: JSON.stringify(_self.selectPlace),
			  	    async:false,
			  	  	success:function(data){
			  	  	    //_self.flag=data;
                        if(data!=null){
                            _self.selectedRisksite.locationId=data;
                            _self.flag=true;
                        }else{
                            _self.flag=false;
                        }
			  		}				  	  	
				}); 
			},
            handleSubmit :function(name) {
            	var _self=this;
                this.$refs[name].validate((valid) => {
                    if (valid) {
                    	/* alert(valid);
                        this.$Message.success('提交成功!'); */
                    	this.spinShow1=true;
                        this.insertOrupdate();
                        if(this.flag){
                        	this.spinShow1=false;
                        	$("#modal-regular").modal("hide");
    		                this.$Message.success('保存成功!');
                            $.ajax({
                                type: "POST",
                                url: projectName + "/ImportOffLineData/updateRisksiteLocationID",
                                dataType: "json",
                                contentType: "application/json",
                                data: JSON.stringify(_self.selectedRisksite),
                                success: function (data) {
                                    if(data){
                                        $.get(projectName + "/ImportOffLineData/getImportedRiskSites", function (data) {
                                            console.log(data);
                                            _self.detailedList = data;
                                        });
                                    }
                                }
                            });

                        }else{
                        	this.spinShow1=false;
                        	this.$Message.error('保存失败!');
                        }
                    } else {
                        this.$Message.error('表单验证失败!');
                    }
                })
            },
            handleReset :function(name) {
            	$("#modal-regular").modal("hide");
                
            },
        },
        computed: {}
    })
</script>

<script>$(function () {
    CompTree.init();
    UiTables.init();
});</script>
<script type="text/javascript">function bsStep(i) {
    $('.step').each(function () {
        var a, $this = $(this);
        if (i > $this.find('li').length) {
            console.log('您输入数值已超过步骤最大数量' + $this.find('li').length + '！！！');
            a = $this.find('li').length;
        } else if (i == undefined && $this.data('step') == undefined) {
            a = 1
        } else if (i == undefined && $this.data('step') != undefined) {
            a = $(this).data('step');
        } else {
            a = i
        }
        $(this).find('li').removeClass('active');
        $(this).find('li:lt(' + a + ')').addClass('active');
    })
}</script>
<script>$(function () {
    bsStep();
    lay('.datepicker').each(function () {
        laydate.render({
            elem: this
            , trigger: 'click'
            ,showBottom:false
        });
    });
    //bsStep(i) i 为number 可定位到第几步 如bsStep(2)/bsStep(3)
})</script>
</body>

</html>