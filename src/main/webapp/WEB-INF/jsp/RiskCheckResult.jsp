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
    <title>风险管控-现场检查结果管理</title>
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
        .table {
            margin-bottom: 0;
        }

        .btys {
            display: inline-block;
            padding: 10px 40px;

            vertical-align: sub;
        }

        .btys1 {
            display: inline-block;
            padding: 8px 20px;
            background-color: orange;
            vertical-align: sub;
        }

        .btys2 {
            display: inline-block;
            padding: 8px 20px;
            background-color: yellow;
            vertical-align: sub;
        }

        .btys3 {
            display: inline-block;
            padding: 8px 20px;
            background-color: blue;
            vertical-align: sub;
        }

        .biaot1 > td {
            border-left-width: 0 !important;
        }

        .biaot > td {
            white-space: nowrap;
            background-color: #f1f1f1;
            font-weight: bold;

        }

        .table > tbody + tbody {
            border-top: 0;
        }

        /*td a {
            color: #5ccdde;
        }*/

        .modal-footer {
            position: absolute;
            bottom: 50px;
            width: 100%;
            background-color: #fff;
        }

        .fa-caret-right {
            transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            -moz-transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            -o-transform: rotate(45deg);
        }

        .form-horizontal .control-label {
            margin-bottom: 5px;

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

        .table-responsive {
            overflow-x: hidden;
            min-height: 0.01%;
        }

        .biaot2 td {
            text-align: left;
        }

        .ivu-select-dropdown {

            position: absolute !important;
        }

    </style>
</head>

<body>
<div id="app">
    <div id="page-content" style="min-height: 794px;">
        <!-- Table Styles Header -->
        <div class="content-header">
            <div class="row">
                <div class="col-sm-12">
                    <div class="header-section">
                        <h1 style="float: left;">现场检查结果管理</h1>
                        <div class="form-group" style="float: right;">
                            <button href="#newCheckResult" data-toggle="modal" @click="onClickNew" type="submit"
                                    class="btn btn-effect-ripple btn-primary">新建
                            </button>
                            <button type="submit" class="btn btn-effect-ripple btn-primary" data-toggle="modal"
                                    data-target="#modal-add">设置筛选条件
                            </button>
                            <button type="submit" @click="getExcell" class="btn btn-effect-ripple btn-primary">导出
                            </button>
                            <%--<button type="submit" class="btn btn-effect-ripple btn-primary">地图查看</button>--%>
                        </div>


                    </div>
                </div>
            </div>
        </div>
        <!-- END Table Styles Header -->
        <!-- Table Styles Block -->
        <div class="block full" style="padding: 0;">
            <div class="table-responsive">
                <div class="table-responsive">
                    <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                        <tr class="biaot">
                            <td class="text-center">序号</td>
                            <td class="text-center">{{'name'|titleFilter('风险点')}}</td>
                            <td class="text-center">{{'riskSiteType'|titleFilter('类型')}}</td>
                            <td class="text-center">专业</td>
                            <td class="text-center">{{'RiskDescription'|titleFilter('风险点描述')}}</td>
                            <td class="text-center"> 检查时间</td>
                            <td class="text-center"> 检查人部门</td>
                            <td class="text-center"> 检查人</td>
                            <td class="text-center">{{'RiskColor'|titleFilter('预警程度')}}</td>
                            <td class="text-center">状态</td>
                            <td class="text-center">操作</td>


                        </tr>
                        <tbody v-for="(rsoo,rsooIndex) in risksiteoutofcontrolList">
                        <tr>
                            <td v-text="pagesize*(nowpage-1)+rsooIndex+1">1</td>
                            <td v-if="rsoo.mriskSite!=null && rsoo.mriskSite!=''" v-text="rsoo.mriskSite.name">
                            </td>
                            <td v-else v-text="">
                            </td>
                            <td v-if="rsoo.mriskSite!=null && rsoo.mriskSite!=''">{{rsoo.mriskSite.riskSiteType |
                                typeFilter}}
                            </td>
                            <td v-else></td>
                            <td v-text="rsoo.majorType"></td>
                            <td v-if="rsoo.mriskSite!=null && rsoo.mriskSite!=''"
                                v-text="rsoo.mriskSite.riskDescription"></td>
                            <td v-else></td>
                            <td v-text="rsoo.checkTime"></td>
                            <td v-text="rsoo.createUnitName">
                            </td>
                            <td v-text="rsoo.createName"></td>

                            <td v-if="rsoo.mriskSite!=null && rsoo.mriskSite!=''" class="text-center"><span
                                    v-if="rsoo.mriskSite.riskColor !=''"
                                    v-bind:style="'background-color:'+rsoo.mriskSite.riskColor"
                                    class="btys"></span><span
                                    v-if="rsoo.mriskSite.riskColor =='' || rsoo.mriskSite.riskColor ==null"
                            <%--class="btys"--%>></span></td>
                            <td v-else></td>
                            <td><span v-if="rsoo.status == false||rsoo.status == null||rsoo.status == ''">{{result}}</span><span v-else>{{result1}}</span></td>
                            <td class="text-center">
                                <a @click="changepath(rsoo)">
                                    修改
                                </a>
                                <a href="#modal-delete" data-toggle="modal"
                                   @click="InitdeleoutofController(rsoo,rsooIndex)"
                                   title="删除">
                                    删除
                                </a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-7 col-xs-12 clearfix">
                <div class="dataTables_paginate paging_bootstrap" id="example-datatable_paginate">
                    <ul class="pagination pagination-sm remove-margin "
                        id="pagination">
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="modal-add" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="min-height: 100%;height: auto">
                <div class="modal-body">
                    <div class="block-title">
                        <h4>筛选信息</h4></div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">开始时间</label>
                            <div class="col-sm-8">
                                <input id="checkTime" class="form-control input-sm datepicker3" placeholder="请选择开始时间"
                                       type="text"></div>

                        </div>
                        <div class="form-group">
                        <label class="col-sm-3 control-label">结束时间</label>
                        <div class="col-sm-8">
                            <input id="endTime" class="form-control input-sm datepicker3" placeholder="请选择结束时间"
                                   type="text"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">检查人部门</label>
                            <div class="col-sm-8">
                                <i-select v-model="risksiteoutofcontrol.createUnitName" filterable clearable type="text">
                                   <%-- <i-option value="">请选择检查人部门</i-option>--%>
                                    <i-option v-for="(mydepart,index) in departmentList" :label="mydepart.fOrg_Name"
                                              :value="mydepart.fOrg_Name">
                                        <span v-text="mydepart.fOrg_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="mydepart.fOrg_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>

                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">检查人</label>
                            <div class="col-sm-8">
                                <i-select v-model="risksiteoutofcontrol.createName" filterable
                                          clearable placeholder=""
                                          type="text">
                                    <i-option value="">请选择人员</i-option>
                                    <i-option v-for="(myemp,index ) in empList" :label="myemp.fEmp_Name"
                                              :value="myemp.fEmp_Name">
                                        <span v-text="myemp.fEmp_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="myemp.fEmp_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险点</label>
                            <div class="col-sm-8">
                                <input type="text"  name="example-input-small" v-model="risksiteoutofcontrol.riskSiteName"
                                       class="form-control input-sm" placeholder="请输入风险点"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">专业</label>
                            <div class="col-sm-8">
                                <i-select v-model="risksiteoutofcontrol.majorType" filterable
                                          clearable placeholder=""
                                          type="text">
                                    <i-option value="">请选择专业</i-option>
                                    <i-option v-for="(mycategory,index) in categoryList"
                                              :value="mycategory.fData_Name"
                                              :label="mycategory.fData_Name"
                                              :key="index">
                                        <span v-text="mycategory.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="mycategory.fData_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">状态</label>
                            <div class="col-sm-8">
                                <i-select v-model="risksiteoutofcontrol.status" filterable
                                          clearable placeholder=""
                                          type="text">
                                    <i-option value="">请选择失控状态</i-option>
                                    <i-option value="true">失控</i-option>
                                    <i-option value="false">未失控</i-option>
                                </i-select>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" @click="judgeQuery"
                            data-dismiss="modal">确认
                    </button>
                    <button type="button" class="btn btn-effect-ripple btn-danger" @click="clearData">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <div id="newCheckResult" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="min-height: 100%;height: auto">
                <div class="modal-body">
                    <div class="block-title">
                        <h4>新建检查结果</h4></div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">年份</label>
                            <div class="col-sm-8">
                                <input type="text" id="byYear" name="example-input-small"
                                       class="form-control input-sm datepicker" placeholder="请选择年份"
                                 readonly="readonly"
                                >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">月份</label>
                            <div class="col-sm-8">
                                <input type="text" id="byMonth" name="example-input-small"
                                       class="form-control input-sm datepicker1" placeholder="请选择月份" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">计划类型</label>
                            <div class="col-sm-8">
                                <select v-model="riskControlPlaneByMonth.monthplanType"
                                        name="example-input-small" class="form-control input-sm" placeholder=""
                                        type="text">
                                    <option value="">请选择计划类型</option>
                                    <option v-for="(mymonthplan,index) in monthPlanList"
                                            :value="mymonthplan.fData_Name">
                                        {{mymonthplan.fData_Name}}
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">专业</label>
                            <div class="col-sm-8">
                                <select v-model="riskControlPlaneByMonth.monthplanMajorType" name="example-input-small"
                                        class="form-control input-sm" placeholder="请选择专业"
                                        type="text">
                                    <option value="">请选择专业</option>
                                    <option v-for="(mycategory,index) in categoryList">{{mycategory.fData_Name}}
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">检查频次</label>
                            <div class="col-sm-8">
                                <select v-model="riskControlPlaneByMonth.monthPlanFrequency" name="example-input-small"
                                        class="form-control input-sm" placeholder="请选择检查频次"
                                        type="text">
                                    <option value="">请选择请选择检查频次</option>
                                    <option value="每年">每年</option>
                                    <option value="每月">每月</option>
                                    <option value="上旬">上旬</option>
                                    <option value="中旬">中旬</option>
                                    <option value="下旬">下旬</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group" style="margin-left: 90%">
                            <button type="button" class="btn btn-effect-ripple btn-primary"
                                    @click="getPlanByTimeTypeMajor">查询
                            </button>
                        </div>
                    </form>
                    <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                        <thead>
                        <tr class="biaot">
                            <td class="text-center">序号</td>
                            <td class="text-center">计划名称</td>
                            <td class="text-center">计划类型</td>
                            <td class="text-center">专业</td>
                            <td class="text-center">检查频次</td>
                            <td class="text-center">操作</td>
                        </tr>
                        </thead>
                        <tbody v-for="(riskControlPlaneByMonth,aindex) in riskControlPlaneByMonthList">
                        <tr>
                            <td class="text-center">{{pagesize1*(nowpage1-1) +aindex+1}}</td>
                            <td class="text-center">{{riskControlPlaneByMonth.monthplanName}}</td>
                            <td class="text-center">{{riskControlPlaneByMonth.monthplanType}}</td>
                            <td class="text-center">{{riskControlPlaneByMonth.monthplanMajorType}}</td>
                            <td class="text-center">{{riskControlPlaneByMonth.monthPlanFrequency}}</td>
                            <td class="text-center" v-if="riskControlPlaneByMonth.mmonthPlanItems.length > 0"><a @click="gotoNew(riskControlPlaneByMonth)">选择</a></td>
                            <td class="text-center" v-if="riskControlPlaneByMonth.mmonthPlanItems.length == 0">无风险点</td>
                        </tr>

                        </tbody>
                    </table>
                    <div class="row">
                        <div class="col-sm-7 col-xs-12 clearfix">
                            <div class="dataTables_paginate paging_bootstrap" id="example-datatable_paginate1">
                                <ul class="pagination pagination-sm remove-margin "
                                    id="pagination1">
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div align="right" style="margin-right: 20px;">无风险点的信息请去《安全风险管控计划》模块中维护！</div>
                <div class="modal-footer" style="position: relative; right: 0;bottom: 0">
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal"
                            @click="clearData">
                        关闭
                    </button>
                </div>
            </div>

        </div>
    </div>
    <form id="getExcell" action="<%=request.getContextPath()%>/RiskCheckResult/getExcell" method="post">
        <input id="ExcellID" name="ExcellID" type="hidden"/>
        <input id="ExcellName" name="ExcellName" type="hidden"/>
        <input id="riskCheckTime" name="riskCheckTime" type="hidden"/>
        <input id="majorType" name="majorType" type="hidden"/>
        <input id="createUnitName" name="createUnitName" type="hidden"/>
        <input id="createName" name="createName" type="hidden"/>
    </form>
    <div class="modal inmodal" id="modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="height: 100% !important;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 style="display:inline-block;font-weight: 600" class="modal-title">删除</h4>
                    <small></small>
                </div>
                <div class="modal-body">
                    <p> 确认要删除吗？</p>
                </div>
                <div class="modal-footer" style="position: relative;right: 0;bottom: 0">
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-effect-ripple btn-primary"
                            @click="deleoutofController">确认
                    </button>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- END Page Content -->

<script src="../js/vendor/jquery-2.2.4.min.js"></script>
<script src="../js/vendor/bootstrap.min.js"></script>
<script src="../js/bootstrap-treeview.js"></script>
<script src="../js/treeview-demo.min.js"></script>
<script src="../js/plugins.js"></script>
<script src="../js/app.js"></script>
<script src="../js/pages/uiTables.js"></script>
<script src="../js/pages/compTree.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>
<script src="../js/risktype-enum.js"></script>
<script type="text/javascript">
    var projectName = '<%=request.getContextPath() %>';
    var attrArray = null;
    /**
     * Created by txianwei on 2017/9/14
     */
    Vue.filter('typeFilter', function (type) {
        if (type == riskSiteTypeEnum.ADDRESS.text) {
            return riskSiteTypeEnum.ADDRESS.description;
        } else if (type == riskSiteTypeEnum.EQUIPMENT.text) {
            return riskSiteTypeEnum.EQUIPMENT.description;
        } else if (type == riskSiteTypeEnum.TASK.text) {
            return riskSiteTypeEnum.TASK.description;
        }
    });

    var vueApp = new Vue({
        el: "#app",
        data: {
            pagesize: 10,
            nowpage: 1,
            showstatus: false,
            risksiteoutofcontrol: "",
            risksiteoutofcontrolList: "",
            riskSite: "",
            detailedList: null,
            result: "未失控",
            result1: "失控",
            guankongList: "",
            damageList: "",
            categoryList: "",
            departmentList: "",
            empList: "",
            monthPlanList: "",
            monthplanMajorType: "",
            planTime: "",
            riskControlPlaneByMonth: "",
            pagesize1: 10,
            nowpage1: 1,
            riskControlPlaneByMonthList: "",
            rsoo: "",
            rsooIndex: "",
            PlatForm: "",
            placeList: ""

        },
        created: function () {
            var _self = this;
            _self.getNewRisksiteoutofcontrol();
            _self.getDepartment();
            _self.getEnterprise_data_dictionaryListForOrg();
            _self.getNewPlan();
            _self.getPlaceListForEnterprise();
        },
        mounted: function () {
            // console.log(riskSiteTypeEnum.ADDRESS.description);
        },
        updated: function () {
        },
        methods: {

            getExcell: function () {
                var _self = this;
                $("#ExcellName").val("现场检查结果管理信息表.xls");
                $("#riskCheckTime").val($("#checkTime").val());
                $("#majorType").val(_self.risksiteoutofcontrol.majorType);
                $("#createName").val(_self.risksiteoutofcontrol.createName);
                $("#createUnitName").val(_self.risksiteoutofcontrol.createUnitName);
                $("#getExcell").submit();
            },
            //跳转新建页面
            gotoNew: function (riskControlPlaneByMonth) {
                var _self = this;
                var riskControlPlaneID = riskControlPlaneByMonth.monthplaneID;
                $.post(projectName + "/RiskCheckResult/goToNew/" + riskControlPlaneID, {}, function (data) {
                    window.location.href = projectName + "/menu/RiskCheckResultNew.action";
                });
            },
            //获取一个空的检查计划
            getNewPlan: function () {
                var _self = this;
                $.get(projectName + "/RiskControlPlaneByMonthControl/newRiskControlPlaneByMonth", {}, function (data) {
                    _self.riskControlPlaneByMonth = data;
                    _self.riskControlPlaneByMonth.monthplanType = "";
                    _self.riskControlPlaneByMonth.monthplanMajorType = "";
                    _self.riskControlPlaneByMonth.monthPlanFrequency = "";
                });
            },
            //点击新建现场检查结果管理显示所有的检查计划
            onClickNew: function () {
                var _self = this
                _self.riskControlPlaneByMonth.pagesize = _self.pagesize1;
                _self.riskControlPlaneByMonth.monthplaneID = null;
                $.ajax({
                    url: projectName + "/RiskControlPlaneByMonthControl/PageCount", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.riskControlPlaneByMonth),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        if (data > 0) {
                            if (data == 1) {
                                $("#pagination1").hide();
                            } else {
                                $("#pagination1").show();
                            }
                            //分页设置
                            var page_options =
                                {
                                    size: 'small',
                                    bootstrapMajorVersion: 3,
                                    currentPage: _self.nowpage1 > data ? 1 : _self.nowpage1,
                                    numberOfPages: data > 5 ? 5 : data,
                                    totalPages: data,
                                    onPageClicked: function (event, originalEvent, type, page1) {
                                        _self.getRiskControlPlaneByMonthByPage(page1);
                                        _self.nowpage1 = page1;
                                    }
                                }
                            $("#pagination1").bootstrapPaginator(page_options);
                            _self.getRiskControlPlaneByMonthByPage(_self.nowpage1);
                        } else {
                            $("#pagination1").hide();
                            _self.riskControlPlaneByMonthList = "";
                        }
                    },
                });
            },
            //获取计划数据
            getRiskControlPlaneByMonthByPage: function (page1) {
                var _self = this;
                _self.riskControlPlaneByMonth.page = page1;
                $.ajax({
                    url: projectName + "/RiskControlPlaneByMonthControl/Page", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.riskControlPlaneByMonth),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        _self.riskControlPlaneByMonthList = data;
                    }
                })
            },
            //根据检查时间，检查类型，专业差选检查计划
            getPlanByTimeTypeMajor: function () {
                var _self = this;
                _self.riskControlPlaneByMonth.fyear = $("#byYear").val();
                _self.riskControlPlaneByMonth.fMonth = $("#byMonth").val();
                //次数的检查时间没有，数据库表添加后需要增加该条件
                _self.onClickNew();
            },
            //筛选矿关闭时还原原本数据
            clearData: function () {
                var _self = this;
                $("#checkTime").val("");
                _self.risksiteoutofcontrol.createUnitName = null;
                _self.risksiteoutofcontrol.createName = null;
                $("#modal-add").modal("hide");

            },


            judgeQuery: function () {
                var _self = this;

                if (_self.risksiteoutofcontrol.createUnitName == "null") {
                    _self.risksiteoutofcontrol.createUnitName = null;
                }
                if (_self.risksiteoutofcontrol.createName == "null") {
                    _self.risksiteoutofcontrol.createName = null;
                }
                if (_self.risksiteoutofcontrol.majorType == "null") {
                    _self.risksiteoutofcontrol.majorType = null;
                }
                if (_self.risksiteoutofcontrol.status == "") {
                    _self.risksiteoutofcontrol.status = null;
                }
                _self.risksiteoutofcontrol.checkTime = $("#checkTime").val();
                _self.risksiteoutofcontrol.endTime = $("#endTime").val();
                _self.getPageCount()

            },
            /*   //获取人员信息
               getCurrOrgEmpList: function () {

               }
               ,*/
            //获取平台部门信息
            getDepartment: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/PlatForm/getDepartment", function (data) {
                    _self.departmentList = data;
                });

            }
            ,
            //获取地点
            getPlaceListForEnterprise: function () {
                var _self = this;
                $.post(projectName + "/PlatForm/getPlaceListForEnterprise", {}, function (data) {
                    _self.placeList = data.rows;
                });
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
                        _self.guankongList = data.管控层级;
                        _self.monthPlanList = data.计划类型;
                        _self.damageList = data.灾害类型;
                        _self.categoryList = data.专业类型;
                    },
                });
            },
            InitdeleoutofController: function (rsoo, rsooIndex) {
                var _self = this;
                _self.rsoo = rsoo;
                _self.rsooIndex = rsooIndex;

            },
            //删除
            deleoutofController: function () {
                var _self = this;
                $.ajax({
                    url: projectName + "/RiskCheckResult/delete", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.rsoo),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        if (data) {
                            $("#modal-delete").modal('hide');
                            _self.showToast("success", "删除成功！");
                            _self.getNewRisksiteoutofcontrol();
                        }
                    },
                });

            },
            changepath: function (rsoo) {
                var _self = this;
                var tempid = rsoo.checkRecordID;
                $.post(projectName + "/RiskCheckResult/goToAdd/" + tempid, function (data) {
                    window.location.href = "<%=request.getContextPath()%>/menu/RiskCheckResultAdd.action"
                });
            },
            getNewRisksiteoutofcontrol: function () {
                var _self = this;
                $.get(projectName + "/RiskCheckResult/newRisksiteoutofcontrol", function (data) {
                    _self.risksiteoutofcontrol = data;
                    _self.getPageCount();
                });

            },
            getPageCount: function () {
                var _self = this;
                _self.risksiteoutofcontrol.pagesize = _self.pagesize;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskCheckResult/PageCount",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.risksiteoutofcontrol),
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
                            _self.risksiteoutofcontrolList = "";
                        }
                    }
                });
            },
            getDataByPage: function (page) {
                var _self = this;
                //加载层
                layer.load();
                _self.risksiteoutofcontrol.page = page;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskCheckResult/Page",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.risksiteoutofcontrol),
                    success: function (data) {
                        _self.risksiteoutofcontrolList = data;

                        layer.closeAll('loading');
                    }
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
            }
        },
        computed: {},
        filters: {
            upCaseFilter: function (val) {
                return val.toUpperCase();
            },
            titleFilter: function (val, defaultName) {
                var _self = this;
                //console.log(val);
                //console.log(defaultName);
                var result = defaultName;
                if (attrArray == null) {
                    $.ajax({
                        url: projectName + "/SystemAttributeDevelop/classAttributes", //发送请求的地址。
                        type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: {name: 'Risksite'},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            attrArray = data;
                            for (var i = 0; i < attrArray.length; i++) {
                                if (val.toLowerCase() == attrArray[i].classpropertyName.toLowerCase()) {
                                    result = attrArray[i].classpropertyTitle;
                                } else {
                                    continue;
                                }
                            }
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {

                        }
                    });

                } else {
                    for (var i = 0; i < attrArray.length; i++) {
                        if (val.toLowerCase() == attrArray[i].classpropertyName.toLowerCase()) {
                            result = attrArray[i].classpropertyTitle;
                        } else {
                            continue;
                        }
                    }
                }
                return result;
            }
            /*    titleFilter: function (val,defaultName) {
                    var _self = this;
                    //console.log(val);
                    //console.log(defaultName);
                    var result=defaultName;
                    if (attrArray == null) {
                        $.ajax({
                            url: projectName + "/SystemAttributeDevelop/classAttributes", //发送请求的地址。
                            type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: {name: 'Risksite'},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                attrArray = data;
                                for (var i = 0; i < attrArray.length; i++) {
                                    if (val.toLowerCase() == attrArray[i].classpropertyName.toLowerCase()) {
                                        result= attrArray[i].classpropertyTitle;
                                    } else {
                                        continue;
                                    }
                                }
                            },
                            error: function (XMLHttpRequest, textStatus, errorThrown) {

                            }
                        });

                    } else {
                        for (var i = 0; i < attrArray.length; i++) {
                            if (val.toLowerCase() == attrArray[i].classpropertyName.toLowerCase()) {
                                result= attrArray[i].classpropertyTitle;
                            } else {
                                continue;
                            }
                        }
                    }
                    return result;
                }*/
        },
        watch: {
            'risksiteoutofcontrol.createUnitName': {
                handler: function (val, oldVal) {
                    var _self = this;
                    if(oldVal!="" && oldVal!=null){
                        _self.empList = ""
                        var orgID = "";
                        for (var i = 0; i < _self.departmentList.length; i++) {
                            if (_self.departmentList[i].fOrg_Name == _self.risksiteoutofcontrol.createUnitName) {
                                orgID = _self.departmentList[i].fOrgID;
                            }
                        }
                        if (orgID != "null") {
                            $.post(projectName + "/PlatForm/getCurrOrgEmpList/" + orgID, function (data) {
                                _self.empList = data;
                            });

                        }
                    }
                }
            }
        }
        })
</script>

<script>
    $(function () {
        CompTree.init();
    });
    $(function () {
        UiTables.init();
    });
    $(document).ready(function () {
        $("#treetable .qiehxg").click(function () {
            var b = $(this).parent().siblings("ul").css("display");
            $(this).parent().siblings("ul").toggle(300);
            if (b == 'none') {
                $(this).siblings("i").addClass("fa fa-caret-down").removeClass("a fa-caret-right");
            } else {
                $(this).siblings("i").addClass("a fa-caret-right").removeClass("a fa-caret-down");
            }
            //
        });
    });
</script>

<script>
    lay('.datepicker3').each(function () {
        laydate.render({
            elem: this
            , trigger: 'click'

        });
    });

    lay('.datepicker').each(function () {
        laydate.render({
            elem: this
            , trigger: 'click'
            , type: 'year'

        });
    });
    lay('.datepicker1').each(function () {
        laydate.render({
            elem: this
            , trigger: 'click'
            , type: 'month'
            , format: 'MM'

        });
    });
</script>
</body>

</html>