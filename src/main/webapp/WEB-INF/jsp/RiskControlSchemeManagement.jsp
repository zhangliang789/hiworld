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
    <title>风险管控-管控方案管理</title>
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
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../iview/iview.css">
    <style>
        th{
            white-space: nowrap;

        }
        #page-content {

            padding: 20px 20px 1px;
        }

        .searchCon {
            width: 400px;
            height: 25px;
            text-align: center;
            position: relative;
            display: inline-block;
        }

        .searchCon i {
            position: absolute;
            top: 10px;
            left: 10px;
            z-index: 1;
        }

        .searchCon .searchWrap {
            width: 100%;
            height: 30px;
            border-radius: 15px;
            font-size: 12px;
            font-family: "Microsoft Yahei";
            padding-left: 33px;
            padding-right: 26px;
            box-sizing: border-box;
            border: none;
            background-color: rgb(241, 243, 247);
        }
        a {
            cursor:pointer;
        }
        .ivu-select-dropdown {

            position: absolute !important;
        }
        *{margin:0;padding:0;}
        #pop{background:#fff;width:260px;border:1px solid #e0e0e0;font-size:12px;position: fixed;right:10px;bottom:10px;}
        #popHead{line-height:32px;background:#f6f0f3;border-bottom:1px solid #e0e0e0;position:relative;font-size:12px;padding:0 0 0 10px;}
        #popHead h2{font-size:14px;color:#666;line-height:32px;height:32px;}
        #popHead #popClose{position:absolute;right:10px;top:1px;}
        #popHead a#popClose:hover{color:#f00;cursor:pointer;}
        #popContent{padding:5px 10px;}
        #popTitle a{line-height:24px;font-size:14px;font-family:'微软雅黑';color:#333;font-weight:bold;text-decoration:none;}
        #popTitle a:hover{color:#f60;}
        #popIntro{text-indent:24px;line-height:160%;margin:5px 0;color:#666;}
        #popMore{text-align:right;border-top:1px dotted #ccc;line-height:24px;margin:8px 0 0 0;}
        #popMore a{color:#f60;}
        #popMore a:hover{color:#f00;}
    </style>


<body>
<div id="page-content" style="min-height: 794px;" onkeydown="search()">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section">
                    <h1 style="float: left;">管控方案管理</h1>

                    <div class="form-group" style="float: right; position: relative;right: 19px">
                        <div class="searchCon">
                            <i class="hi hi-search"></i>
                            <input name="search" v-model="keywords" placeholder="输入管控方案名称 回车查询" class="searchWrap" type="text">
                        </div>
                        <button type="button" onclick="querysearch()" class="btn btn-effect-ripple btn-primary">查询</button>
                        <button type="submit" class="btn btn-effect-ripple btn-primary" data-toggle="modal" data-target="#modal-search">设置筛选条件</button>
                        <a @click="gotoEditPage" class="btn btn-effect-ripple btn-primary">新建</a>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full" style="padding-top: 0;">
        <div class="table-responsive">
            <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                    <thead>
                    <tr>
                        <th style="width: 80px;" class="text-center">序号</th>
                        <th class="text-center">方案名称</th>
                        <th class="text-center">责任单位</th>
                        <th class="text-center">责任人</th>
                        <th class="text-center">管控开始时间</th>
                        <th class="text-center">管控结束时间</th>
                        <th class="text-center">管控风险点</th>
                        <th class="text-center">管控对象</th>
                        <th class="text-center">管控风险</th>
                        <th class="text-center">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="(riskControlScheme,index) in detailedList">
                        <td class="text-center" v-text="pagesize*(nowpage-1)+index+1"></td>
                        <td v-text="riskControlScheme.riskControlSchemeName"></td>
                        <td v-text="riskControlScheme.dutyUnitName"></td>
                        <td v-text="riskControlScheme.dutyPersonName"></td>
                        <td v-text="riskControlScheme.manageStartDate"></td>
                        <td v-text="riskControlScheme.manageEndDate"></td>
                        <td v-text="riskControlScheme.riskSiteName"></td>
                        <td v-text="riskControlScheme.controlObjectName"></td>
                        <td v-text="riskControlScheme.riskName"></td>
                        <td class="text-center">
                            <a @click="updateriskControlScheme(riskControlScheme)">修改</a>
                            <a href="" data-toggle="modal" data-target="#modal-delete" @click="deleteRiskControlScheme=riskControlScheme">删除</a>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <!--分页-->
                <div class="row">
                    <div class="col-sm-7 col-xs-12 clearfix">
                        <nav class="pull-right">
                            <ul class="pagination pagination-sm remove-margin " id="pagination"></ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal inmodal" id="modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="height: 100% !important;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">Close</span>
                    </button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">删除</h4>
                    <small></small>
                </div>
                <div class="modal-body">
                    <p> 确认要删除吗？</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-effect-ripple btn-primary" @click="confirmDelete(deleteRiskControlScheme.ID)">确认</button>
                </div>
            </div>
        </div>
    </div>
    <!--筛选-->
    <div id="modal-search" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="min-height: 100%">
                <div class="modal-body">
                    <div class="block-title">
                        <h4>筛选</h4></div>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">方案名称</label>
                            <div class="col-sm-8">
                                <input class="form-control input-sm" placeholder="方案名称" type="text" v-model="riskControlScheme.riskControlSchemeName">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">责任单位</label>
                            <div class="col-sm-8">
                                <i-select placeholder="管控责任单位"  label-in-value v-model="queryDutyUnitInfo" clearable filterable>
                                    <i-option v-for="(dp,index) in departmentList" :value="dp.fOrgID+'||'+dp.fOrg_Name" :label="dp.fOrg_Name" :key="index">
                                        <span v-text="dp.fOrg_Name"></span>
                                        <span style="float:right;color:#ccc" v-text="dp.fOrg_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">责任人</label>
                            <div class="col-sm-8">
                                <i-select v-model="queryDutyPersonInfo" placeholder="请选择责任人" filterable clearable>
                                    <i-option v-for="(myemp,index) in empList" :value="myemp.fEmp_ID_Auto+'||'+myemp.fEmp_Name" :label="myemp.fEmp_Name" :key="index">
                                        <span v-text="myemp.fEmp_Name"></span>
                                        <span style="float:right;color:#ccc" v-text="myemp.fEmp_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                        <label class="col-sm-3 control-label">管控风险点</label>
                        <div class="col-sm-8">
                            <i-select placeholder="请选择风险点"  label-in-value v-model="queryRiskSiteInfo" clearable filterable>
                                <i-option v-for="(riskSite,index) in riskSiteList" :value="riskSite.riskSiteID+'||'+riskSite.name" :label="riskSite.name" :key="index">
                                    <span v-text="riskSite.name"></span>
                                </i-option>
                            </i-select>
                        </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">管控对象</label>
                            <div class="col-sm-8">
                                <i-select placeholder="请选择管控对象"  label-in-value v-model="queryControlObjectInfo" clearable filterable>
                                    <i-option v-for="(controlObject,index) in controlObjectList" :value="controlObject.riskSiteID+'||'+controlObject.name" :label="controlObject.name" :key="index">
                                        <span v-text="controlObject.name"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">管控风险</label>
                            <div class="col-sm-8">
                                <i-select v-model="queryRiskInfo" placeholder="请选择管控风险" filterable clearable>
                                    <i-option v-for="(risk,index) in riskList" :value="risk.hazardID+'||'+risk.name" :label="risk.name" :key="index">
                                        <span v-text="risk.name"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>


                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" @click="judgeQuery" data-dismiss="modal">确认</button>
                    <button type="button" class="btn btn-effect-ripple btn-danger" @click="clearData">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <form id="getExcell" action="<%=request.getContextPath()%>/RiskControlPlaneByMonthControl/getExcell" method="post">
        <input id="ExcellID" name="ExcellID" type="hidden"/>
        <input id="ExcellName" name="ExcellName" type="hidden"/>
        <input id="planName" name="planName" type="hidden"/>
        <input id="plantype" name="plantype" type="hidden"/>
        <input id="majortype" name="majortype" type="hidden"/>
    </form>
    <%--<div id="pop" style="display:none;" >--%>
        <%--<div id="popHead" >--%>
            <%--<a id="popClose" title="关闭">关闭</a>--%>
            <%--<h2>未执行的计划(<span style="color: red" v-text="planMonthFalseList.length"></span>)</h2>--%>
        <%--</div>--%>
        <%--<div id="popContent" style=" height: 200px; width: 300px;overflow:auto;">--%>
            <%--<dl>--%>
                <%--<dt id="popTitle"></dt>--%>
                <%--<dd id="popIntro"  v-for="(planMonthFalse,index) in planMonthFalseList" >--%>
                    <%--<span>{{planMonthFalse.monthplanName}}</span><br >--%>
                <%--</dd>--%>
            <%--</dl>--%>
        <%--</div>--%>
    <%--</div>--%>
</div>
<script src="../js/vendor/jquery-2.2.4.min.js"></script>
<script src="../js/vendor/bootstrap.min.js"></script>
<script src="../js/bootstrap-treeview.js"></script>
<script src="../js/treeview-demo.min.js"></script>
<script src="../js/plugins.js"></script>
<script src="../js/app.js"></script>
<script src="../js/pages/uiTables.js"></script>
<script src="../js/pages/compTree.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>
<script type="text/javascript">
    function search() {
        var _self = this;
        if (event.keyCode == 13) {
            vueApp.riskControlScheme.riskControlSchemeName = vueApp.keywords;
            vueApp.getPageCount();
        }
    };

    function querysearch() {
        vueApp.riskControlScheme.riskControlSchemeName = vueApp.keywords;
        vueApp.getPageCount();
    }

</script>
<script>
    var projectName = '<%=request.getContextPath() %>';
    /**
     * Created by Administrator on 2017/9/21
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            pagesize: 10,
            nowpage: 1,
            deleteRiskControlScheme: "",
            detailedList: [],
            departmentList:[],
            empList:[],
            queryDutyUnitInfo:"",
            queryDutyPersonInfo:"",
            queryRiskSiteInfo:"",
            queryControlObjectInfo:"",
            queryRiskInfo:"",
            riskSiteList:[],
            controlObjectList:[],
            riskList:[],





            riskControlScheme: {},
            monthPlanList: "",
            categoryList: "",
            majortype:"",
            plantype:"",
            keywords:"",
            planMonthFalseList:[]

        },
        created: function () {
            var _self = this;
            _self.getNewRiskControlScheme();
            _self.getRiskSiteList();
            _self.getDepartment();
            _self.getEnterprise_data_dictionaryListForOrg();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            //所有风险点信息
            getRiskSiteList:function(){
                var _self = this;
                $.get(projectName + "/RiskDetailedList/newRiskSite", function (data) {
                    data.parentID = 0;
                    $.ajax({
                        type: "POST",
                        url: projectName + "/HazardIdentificationControl/getAllRiskSite",
                        contentType: "application/json",
                        data: JSON.stringify(data),
                        dataType: "json",
                        success: function (data1) {
                            _self.riskSiteList = data1;
                        }
                    });
                })
            },

            //获取一个空的RiskControlScheme对象
            getNewRiskControlScheme: function () {
                var _self = this;
                $.get(projectName + "/RiskControlScheme/new", function (data) {
                    _self.riskControlScheme = data;
                    _self.getPageCount();
                })
            },
            //获取总条数，参数是Risksite 对象
            getPageCount: function () {
                var _self = this;
                _self.riskControlScheme.pageSize = _self.pagesize;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskControlScheme/getRiskControlSchemePageCount",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskControlScheme),
                    dataType: "json",
                    success: function (data) {
                        if (data > 0) {
                            if (data == 1) {
                                $("#pagination").hide();
                            } else {
                                $("#pagination").show();
                            }
                            //分页设置
                            var page_options =
                                {
                                    size: 'small',
                                    bootstrapMajorVersion: 3,
                                    currentPage: 1,
                                    numberOfPages: data > 5 ? 5 : data,
                                    totalPages: data,
                                    onPageClicked: function (event, originalEvent, type, page) {
                                        _self.getDataByPage(page);
                                        _self.nowpage = page;
                                    }
                                }
                            $("#pagination").bootstrapPaginator(page_options);
                            _self.getDataByPage(_self.nowpage);
                        } else {
                            $("#pagination").hide();
                            _self.detailedList = "";
                        }
                    }
                });
            },
            //分页获取数据，参数是Risksite 对象和页面大小和页码
            getDataByPage: function (page) {
                var _self = this;
                //加载层
                layer.load();
                _self.riskControlScheme.page = page;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskControlScheme/getRiskControlSchemeByPage",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskControlScheme),
                    success: function (data) {
                        _self.detailedList = data;
                        layer.closeAll('loading');
                    }
                });

            },
            //新建
            gotoEditPage: function () {
                var _self = this;
                $.post(projectName + "/RiskControlScheme/gotoEditPage",{ID:null}, function (data) {
                    window.location.href = projectName + "/menu/RiskControlSchemeAdd.action";
                });
            },
            updateriskControlScheme: function (riskControlScheme) {
                var _self = this;
                var ID = riskControlScheme.ID;
                $.post(projectName + "/RiskControlScheme/gotoEditPage",{ID:ID}, function (data) {
                    window.location.href = projectName + "/menu/RiskControlSchemeAdd.action";
                });
            },
            //获取平台部门信息
            getDepartment: function () {
                var _self = this;
                $.get(projectName + "/PlatForm/getDepartment", function (data) {
                    _self.departmentList = data;
                });
            },
            judgeQuery: function () {
                var _self = this;
                _self.getPageCount();
            },
            confirmDelete: function (ID) {
                var _self = this;
                console.log("333333");
                console.log(ID);
                $.ajax({
                    type: "DELETE",
                    url: projectName + "/RiskControlScheme/delete/" + ID,
                    dataType: "json",
                    contentType: "application/json",
                    success: function (data) {
                        if (data > 0) {
                            _self.showToast("success", "删除成功!");
                            _self.getNewRiskControlScheme();

                            $("#modal-delete").modal("hide");
                        } else {
                            _self.showToast("error", "删除失败!")
                            _self.getNewRiskControlScheme();
                        }
                    }
                });
            },













            getExcell:function(){
                var _self=this;
                $("#ExcellName").val("安全风险管控计划信息表.xls");
                $("#planName").val(_self.keywords);
                $("#plantype").val(_self.plantype);
                $("#majortype").val(_self.majortype);
                $("#getExcell").submit();
            },
            //筛选矿关闭时还原原本数据
            clearData: function () {
                var _self = this;
                _self.keywords="";
                _self.majortype="";
                _self.plantype="";
                $("#modal-search").modal("hide");

            },

            //获取辅助资料
            getEnterprise_data_dictionaryListForOrg: function () {
                var _self = this;
                $.ajax({
                    url: projectName + "/PlatForm/getEnterprise_data_dictionaryListForOrg", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {
                        "orgID": "00000000",
                        "data_TypeOrName": null,
                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.monthPlanList = data.计划类型;
                        _self.categoryList = data.专业类型;
                    },
                });
            },





            showToast: function (level, message) {
                var $toast = toastr[level](message, "");
                toastr.options = {
                    "closeButton": true,
                    "progressBar": true,
                    "positionClass": "toast-top-right",
                    "showDuration": "1000",
                    "hideDuration": "1000",
                    "timeOut": "2000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                }
            },
        },
        computed: {},
        watch: {
            'queryDutyUnitInfo':{
                handler: function (val, oldVal) {
                    var _self = this;
                    if(val == ''){
                        _self.dutyPersonInfo = '';
                        _self.empList = [];
                    }else{
                        var dutyUnitInfo = val.split("||");
                        _self.riskControlScheme.dutyUnitID = dutyUnitInfo[0];
                        _self.riskControlScheme.dutyUnitName = dutyUnitInfo[1];
                        $.post(projectName + "/PlatForm/getCurrOrgEmpList/" + dutyUnitInfo[0], function (data) {
                            _self.empList = data;
                        });
                    }
                },
                deep: true
            },
            'queryDutyPersonInfo':{
                handler:function(val, oldVal){
                    var _self = this;
                    var dutyPersonInfo = val.split("||");
                    _self.riskControlScheme.dutyPersonID = dutyPersonInfo[0];
                    _self.riskControlScheme.dutyPersonName = dutyPersonInfo[1];
                },
                deep:true
            },
            'queryRiskSiteInfo':{
                handler:function(val, oldVal){
                    var _self = this;
                    if(!_self.isShowTime){
                        var controlObject = [];
                        var riskSiteInfo = val.split("||");
                        _self.riskControlScheme.riskSiteID = riskSiteInfo[0];
                        _self.riskControlScheme.riskSiteName = riskSiteInfo[1];
                        _self.riskSiteList.forEach(function(val,index){
                            if(riskSiteInfo[0] == val.riskSiteID){
                                controlObject = val.mchildRiskSite;
                            }
                        });
                        _self.controlObjectList = controlObject;
                    }
                },
                deep:true
            },
            'queryControlObjectInfo':{
                handler:function(val, oldVal){
                    var _self = this;
                    if(!_self.isShowTime){
                        var riskList = [];
                        var controlObjectInfo = val.split("||");
                        _self.riskControlScheme.controlObjectID = controlObjectInfo[0];
                        _self.riskControlScheme.controlObjectName = controlObjectInfo[1];
                        _self.controlObjectList.forEach(function(val,index){
                            if(controlObjectInfo[0] == val.riskSiteID){
                                riskList = val.mhazards;
                            }
                        });
                        _self.riskList = riskList;
                    }
                },
                deep:true
            },
            'queryRiskInfo':{
                handler:function(val,oldVal){
                    var _self = this;
                    if(!_self.isShowTime){
                        var riskInfo = val.split("||");
                        _self.riskControlScheme.riskID = riskInfo[0];
                        _self.riskControlScheme.riskName = riskInfo[1];
                        var  hazardDesc = "";
                        var  riskControlMeasureList = [];
                        _self.riskList.forEach(function(val,index){
                            if(riskInfo[0] == val.hazardID){
                                hazardDesc = val.hazardDesc;
                                riskControlMeasureList = val.mriskControlMeasure;
                            }
                        });
                    }
                },
                deep:true
            },





        },

    })


</script>
<script>
    (function($j){
        $j.positionFixed = function(el){
            $j(el).each(function(){
                new fixed(this)
            })
            return el;
        }
        $j.fn.positionFixed = function(){
            return $j.positionFixed(this)
        }
        var fixed = $j.positionFixed.impl = function(el){
            var o=this;
            o.sts={
                target : $j(el).css('position','fixed'),
                container : $j(window)
            }
            o.sts.currentCss = {
                top : o.sts.target.css('top'),
                right : o.sts.target.css('right'),
                bottom : o.sts.target.css('bottom'),
                left : o.sts.target.css('left')
            }
            if(!o.ie6)return;
            o.bindEvent();
        }
        $j.extend(fixed.prototype,{
            bindEvent : function(){
                var o=this;
                o.sts.target.css('position','absolute')
                o.overRelative().initBasePos();
                o.sts.target.css(o.sts.basePos)
                o.sts.container.scroll(o.scrollEvent()).resize(o.resizeEvent());
                o.setPos();
            },
            overRelative : function(){
                var o=this;
                var relative = o.sts.target.parents().filter(function(){
                    if($j(this).css('position')=='relative')return this;
                })
                if(relative.size()>0)relative.after(o.sts.target)
                return o;
            },
            initBasePos : function(){
                var o=this;
                o.sts.basePos = {
                    top: o.sts.target.offset().top - (o.sts.currentCss.top=='auto'?o.sts.container.scrollTop():0),
                    left: o.sts.target.offset().left - (o.sts.currentCss.left=='auto'?o.sts.container.scrollLeft():0)
                }
                return o;
            },
            setPos : function(){
                var o=this;
                o.sts.target.css({
                    top: o.sts.container.scrollTop() + o.sts.basePos.top,
                    left: o.sts.container.scrollLeft() + o.sts.basePos.left
                })
            },
            scrollEvent : function(){
                var o=this;
                return function(){
                    o.setPos();
                }
            },
            resizeEvent : function(){
                var o=this;
                return function(){
                    setTimeout(function(){
                        o.sts.target.css(o.sts.currentCss)
                        o.initBasePos();
                        o.setPos()
                    },1)
                }
            }
        })
    })(jQuery)

    jQuery(function($j){
        $j('#footer').positionFixed()
    })

    //pop右下角弹窗函数
    //作者：yanue
    function Pop(/*title,url,intro*/){
        /* this.title=title;
         this.url=url;
         this.intro=intro;*/
        var _this =this;
        this.apearTime=1000;
        this.hideTime=500;
        this.delay=10000;
        $.post(projectName+"/RiskControlPlaneByMonthControl/getRiskcontrolplanebymonthDataStatus",{},function(data){
            if(data!=null && data.length>0){
                vueApp.planMonthFalseList =data;
                //显示
                _this.showDiv();
            }else{
                vueApp.planMonthFalseList = [];
            }
        });

        //关闭
        this.closeDiv();
    }
    Pop.prototype={
        /* addInfo:function(){

            /!* $("#popTitle a").attr('href',this.url).html(this.title);
             $("#popIntro").html(this.intro);
             $("#popMore a").attr('href',this.url);*!/
         },*/
        showDiv:function(time){
            $('#pop').slideDown(this.apearTime).delay(this.delay).fadeOut(400);;
            jQuery(function($j){
                $j('#pop').positionFixed()
            })
        },
        closeDiv:function(){
            $("#popClose").click(function(){
                    $('#pop').hide();
                }
            );
        }
    }
    $(new Pop())
</script>
</body>
</html>