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
    <title>风险管控-管控效果分析</title>
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
        .control-label {
            float: left;
        }

        .col-sm-hh {
            float: left;
            width: 19%;
            margin-right: 5px;
        }

        .col-sm-hh1 {
            float: left;
            width: 60%;
            margin-left: 5px;
        }

        .col-sm-hh2 {
            float: left;
            width: 100%;
            margin-right: 5px;
        }

        .col-sm-hh3 {
            float: left;
            width: 100%;
        }

        .input-group-addon, .input-group-btn {
            width: 1% !important;
            white-space: nowrap;
            vertical-align: middle;
        }

        .table {
            margin-bottom: 0;
        }

        .table-striped > tbody > tr:nth-of-type(odd) {

        }

        .table-striped > tbody > tr:nth-of-type(1) {

        }

        .table-striped > tbody > tr:nth-of-type(2) {

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

        .table > tbody + tbody {
            border-top: 0px;
        }

        /*.btys{ display: inline-block; padding: 8px 20px; background-color: #ff0000; vertical-align: sub; }*/
        .jindu {

            color: #00a2e8;
            font-size: 18px;
        }

        a {
            cursor: pointer;
        }

        .ivu-select-dropdown {

            position: absolute !important;
        }

        * {
            margin: 0;
            padding: 0;
        }

        #pop {
            background: #fff;
            width: 260px;
            border: 1px solid #e0e0e0;
            font-size: 12px;
            position: fixed;
            right: 10px;
            bottom: 10px;
        }

        #popHead {
            line-height: 32px;
            background: #f6f0f3;
            border-bottom: 1px solid #e0e0e0;
            position: relative;
            font-size: 12px;
            padding: 0 0 0 10px;
        }

        #popHead h2 {
            font-size: 14px;
            color: #666;
            line-height: 32px;
            height: 32px;
        }

        #popHead #popClose {
            position: absolute;
            right: 10px;
            top: 1px;
        }

        #popHead a#popClose:hover {
            color: #f00;
            cursor: pointer;
        }

        #popContent {
            padding: 5px 10px;
        }

        #popTitle a {
            line-height: 24px;
            font-size: 14px;
            font-family: '微软雅黑';
            color: #333;
            font-weight: bold;
            text-decoration: none;
        }

        #popTitle a:hover {
            color: #f60;
        }

        #popIntro {
            text-indent: 24px;
            line-height: 160%;
            margin: 5px 0;
            color: #666;
        }

        #popMore {
            text-align: right;
            border-top: 1px dotted #ccc;
            line-height: 24px;
            margin: 8px 0 0 0;
        }

        #popMore a {
            color: #f60;
        }

        #popMore a:hover {
            color: #f00;
        }
    </style>
</head>

<body>
<div id="page-content" style="min-height: 794px;" onkeydown="search()">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section">
                    <h1 style="float: left;">管控效果分析</h1>
                    <div class="form-group" style="float: right; position: relative;right: 19px">
                        <%-- <div class="searchCon"><i class="hi hi-search"></i><input name="search"
                                                                                   id="keywords"
                                                                                   placeholder="输入计划名称 回车查询"
                                                                                   class="searchWrap"
                                                                                   type="text"></div>--%>
                        <button type="submit" class="btn btn-effect-ripple btn-primary"
                                data-toggle="modal"
                                data-target="#modal-search">筛选
                        </button>
                        <button href="#newCheckResult" data-toggle="modal" class="btn btn-effect-ripple btn-primary"
                                @click="getNotAnalyzePlane">新建
                        </button>
                        <button type="submit" @click="getExcell" class="btn btn-effect-ripple btn-primary">导出</button>
                        <%--<button type="submit" class="btn btn-effect-ripple btn-primary">地图查看</button>--%>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div id="newCheckResult" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="min-height: 100%;height: auto">
                <div class="modal-body">
                    <div class="block-title">
                        <h4>新建管控效果分析</h4></div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">年份</label>
                            <div class="col-sm-8">
                                <input type="text" id="byYear" name="example-input-small"
                                       class="form-control input-sm datepicker" placeholder="请选择年份"
                                <%-- v-bind:value="riskcheckresult.checkTime"--%> readonly="readonly"
                                >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">月份</label>
                            <div class="col-sm-8">
                                <input type="text" id="byMonth" name="example-input-small"
                                       class="form-control input-sm datepicker1" placeholder="请选择月份"
                                <%-- v-bind:value="riskcheckresult.checkTime"--%> readonly="readonly"
                                >
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">专业</label>
                            <div class="col-sm-8">
                                <select v-model="monthType" name="example-input-small"
                                        class="form-control input-sm" placeholder="请选择专业"
                                        type="text">
                                    <option value=null>请选择专业</option>
                                    <option v-for="(mycategory,index) in categoryList">{{mycategory.fData_Name}}
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">检查频次</label>
                            <div class="col-sm-8">
                                <select v-model="monthPlanFrequency" name="example-input-small"
                                        class="form-control input-sm" placeholder="请选择检查频次"
                                        type="text">
                                    <option value=null>请选择请选择检查频次</option>
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
                                    @click="getPlanByTimeTypeMajor"
                            >查询
                            </button>
                        </div>
                    </form>
                    <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                        <thead>
                        <tr class="biaot">
                            <td class="text-center" style="width: 45px">序号</td>
                            <td class="text-center">计划名称</td>
                            <td class="text-center" style="width:75px;">计划类型</td>
                            <td class="text-center" style="width: 119px">专业</td>
                            <td class="text-center" style="width: 119px">检查频次</td>
                            <td class="text-center" style="width:45px;">操作</td>
                        </tr>
                        </thead>
                        <tbody v-for="(riskControlPlaneByMonth,aindex) in riskControlPlaneByMonthList">
                        <tr>
                            <td class="text-center">{{+aindex+1}}</td>
                            <td class="text-center">{{riskControlPlaneByMonth.monthplanName}}</td>
                            <td class="text-center">{{riskControlPlaneByMonth.monthplanType}}</td>
                            <td class="text-center">{{riskControlPlaneByMonth.monthplanMajorType}}</td>
                            <td class="text-center">{{riskControlPlaneByMonth.monthPlanFrequency}}</td>
                            <td class="text-center"><a style="color: #337ab7" @click="gotoNew(riskControlPlaneByMonth)">选择</a>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
                <div class="modal-footer" style="position: relative; right: 0;bottom: 0">
                    <button type="button" class="btn btn-effect-ripple btn-danger"
                            data-dismiss="modal" <%--@click="clearData"--%>>
                        关闭
                    </button>
                </div>
            </div>

        </div>
    </div>
    <div class="block full" style="padding-top: 0;">
        <div class="table-responsive">
            <div class="table-responsive">
                <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                </div>
            </div>
        </div>
        <div class="table-responsive">
            <div class="table-responsive">
                <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                    <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                        <thead>
                        <tr>
                            <th style="width: 45px;" class="text-center">
                                序号
                            </th>
                            <%-- <th class="text-center" style="width: 280px">计划名称</th>
                             <th class="text-center" style="width: 150px">计划类型</th>--%>
                            <%--<th class="text-center" style="width: 100px">创建时间</th>--%>
                            <th class="text-center" style="width: 150px">创建人部门</th>
                            <th class="text-center" style="width: 80px">创建人</th>
                            <th class="text-center">计划名称</th>
                            <th class="text-center" style="width: 120px">专业类型</th>
                            <th class="text-center" style="width: 80px">频次</th>
                            <th class="text-center">管控情况描述</th>
                            <th class="text-center" style="width: 80px">状态</th>
                            <th class="text-center">操作</th>
                        </tr>
                        </thead>
                        <tbody v-for="(risksitcontrolanalyzeObject,index) in risksitcontrolanalyzelist">
                        <tr>
                            <td style="width: 50px" class="text-center" v-text="pagesize*(nowpage-1)+index+1">
                            </td>
                            <%--<td style="width: 150px" v-text="risksitcontrolanalyzeObject.name"></td>
                            <td style="width: 100px" v-text="risksitcontrolanalyzeObject.monthplanType"></td>--%>
                            <%--<td class="text-center" >{{ risksitcontrolanalyzeObject.createTime | titleFilter}}</td>--%>
                            <td class="text-center"
                                v-text="getCreateUnitName(risksitcontrolanalyzeObject.createunitID)"></td>
                            <td class="text-center" v-text="risksitcontrolanalyzeObject.createrName"></td>
                            <td class="text-center" v-text="risksitcontrolanalyzeObject.monthPlanName"></td>
                            <td class="text-center" v-text="risksitcontrolanalyzeObject.majorType"></td>
                            <td class="text-center" v-text="risksitcontrolanalyzeObject.frequency"></td>
                            <td v-text="risksitcontrolanalyzeObject.reviews"></td>
                            <td
                                    v-if="risksitcontrolanalyzeObject.status ==false || risksitcontrolanalyzeObject.status ==''||risksitcontrolanalyzeObject.status ==null || risksitcontrolanalyzeObject.status==0"
                                    v-text="tempstatus"></td>
                            <td v-else style="width: 80px"
                                v-text="tempstatus1"></td>

                            <td class="text-center" style="width: 90px">
                                <a @click="update(risksitcontrolanalyzeObject)" data-toggle="tooltip"
                                   title="修改">
                                    修改
                                </a>
                                <a data-toggle="modal" href="#modal-delete"
                                   @click="fristdeleteObeject(risksitcontrolanalyzeObject,index)"
                                   title="删除">
                                    删除
                                </a>
                            </td>
                        </tbody>
                    </table>
                </div>
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
    <div class="modal inmodal" id="modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="min-height: 100%">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">删除</h4>
                    <small></small>
                </div>
                <div class="modal-body">
                    <p> 确认要删除吗？</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal"
                            @click="deleteObeject">确认
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div id="modal-search" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="min-height: 100%">
                <div class="modal-body">
                    <div class="block-title">
                        <h4>筛选</h4></div>
                    <div class="form-horizontal">


                        <div class="form-group">
                            <label class="col-sm-3 control-label">创建人部门</label>
                            <div class="col-sm-8">
                                <i-select v-model="createUnitName" filterable clearable type="text">
                                    <i-option value="">请选择创建人部门</i-option>
                                    <i-option v-for="(mydepart,index) in departList" :label="mydepart.fOrg_Name"
                                              :value="mydepart.fOrg_Name">
                                        <span v-text="mydepart.fOrg_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="mydepart.fOrg_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>

                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-3 control-label">创建人</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--id="plantype">--%>
                                <i-select type="text"
                                          v-model="risksitcontrolanalyze.createrName" <%--element-id="plantype"--%>
                                          filterable
                                          clearable placeholder="">

                                    <i-option value="">请选择创建人</i-option>
                                    <i-option v-for="(oneUser,uindex) in allUserList"
                                              :value="oneUser.fEmp_Name" :label="oneUser.fEmp_Name">
                                        <span v-text="oneUser.fEmp_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="oneUser.fEmp_Name_Shorthand"></span>
                                    </i-option>

                                </i-select>

                            </div>


                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">专业类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--id="majortype">--%>
                                <i-select v-model="risksitcontrolanalyze.majorType" filterable
                                          clearable placeholder=""
                                          type="text">
                                    <i-option value="">请选择专业</i-option>
                                    <i-option v-for="(mycategory,index) in categoryList" :label="mycategory.fData_Name"
                                              :value="mycategory.fData_Name">
                                        <span v-text="mycategory.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="mycategory.fData_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" @click="searchcheckResult"
                            data-dismiss="modal">确认
                    </button>
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <form id="getExcell" action="<%=request.getContextPath()%>/RiskControlAnalyzeControl/getExcell" method="post">
        <input id="ExcellID" name="ExcellID" type="hidden"/>
        <input id="ExcellName" name="ExcellName" type="hidden"/>
        <input id="createName" name="createName" type="hidden"/>
        <input id="majorType" name="majorType" type="hidden"/>
    </form>
    <div id="pop" style="display:none;width: 330px">
        <div id="popHead">
            <a id="popClose" title="关闭">关闭</a>
            <h2>待分析检查结果的管控计划(<span style="color: red" v-text="riskControlPlaneByMonthList1.length"></span>)</h2>
        </div>
        <div id="popContent" style=" height: 200px; width: 330px;overflow:auto;">
            <dl>
                <dt id="popTitle"></dt>
                <dd id="popIntro" v-for="(riskControlPlaneByMonth,index) in riskControlPlaneByMonthList1">
                    <span>{{riskControlPlaneByMonth.monthplanName}}</span><br>
                </dd>
            </dl>
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
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>
<script src="../js/nowDate.js"></script>
<script type="text/javascript">

    function search() {
        if (event.keyCode == 13) {
            var searchname = $("#keywords").val();
            vueApp.risksitcontrolanalyze.name = searchname;
            vueApp.getPageCount();
        }
    };

    function searchRiskSite() {
        vueApp.risksitcontrolanalyze.name = $("#planname").val();
        vueApp.risksitcontrolanalyze.monthplanType = $("#plantype").val();
        vueApp.risksitcontrolanalyze.majorType = $("#majortype").val();
        vueApp.getPageCount();
    }

    var projectName = '<%=request.getContextPath() %>';

    var vueApp = new Vue({
        el: "#page-content",
        data: {
            nowpage: 1,
            pagesize: 10,
            risksitcontrolanalyze: "",
            risksitcontrolanalyzelist: "",
            tempstatus: "未分析",
            tempstatus1: "已分析",
            monthPlanList: "",
            categoryList: "",
            departList: "",
            tempRisksitcontrolanalyzeObject: "",
            riskControlPlaneByMonthList: "",
            riskControlPlaneByMonthList1: [],
            riskControlPlaneByMonth: "",
            nowYear: 0,
            nowMonth: 0,
            monthType: null,
            allUserList: "",
            monthPlanFrequency: null,
            tempIndex: -1,
            createUnitName:"",
        },
        created: function () {
            var _self = this;
            _self.getNewObject();
            _self.getEnterprise_data_dictionaryListForOrg();
            _self.getDepart();
            //  _self.getUserinfoList();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            //按照条件筛选
            searchcheckResult: function () {
                var _self = this;
                _self.getPageCount();
            },
            //获取所有人员
            getUserinfoList: function () {
                var _self = this;
                $.post(projectName + "/PlatForm/getUserinfoList", {}, function (data) {
                    _self.allUserList = data;
                });
            },

            //跳转新建页面
            gotoNew: function (riskControlPlaneByMonth) {
                var _self = this;
                var monthplaneID = riskControlPlaneByMonth.monthplaneID;
                $.post(projectName + "/RiskControlAnalyzeControl/goToNew/" + monthplaneID, {}, function (data) {
                    window.location.href = "<%=request.getContextPath()%>/menu/RiskControlAnalyzeAddByPingMei.action";
                });
            },
            getPlanByTimeTypeMajor: function () {
                var _self = this;
                if ($("#byYear").val() == "") {
                    _self.nowYear = 0;
                } else {
                    _self.nowYear = $("#byYear").val();
                }
                if ($("#byMonth").val() == "" || $("#byMonth").val() == null) {
                    _self.nowMonth = 0;
                } else {
                    _self.nowMonth = $("#byMonth").val();
                }
                _self.getNotAnalyzePlane();
            },
            //获取当前年月
            getNowDate: function () {
                var _self = this;
                _self.nowYear = new Date().format("yyyy");
                _self.nowMonth = new Date().format("MM");
                _self.getNotAnalyzePlane();
            },

            //获取未执行的管控计划
            getNotAnalyzePlane: function () {
                var _self = this;
                $.post(projectName + "/RiskControlAnalyzeControl/getNotAnalyzePlaneByPingMei/" + _self.nowYear + "/" + _self.nowMonth + "/" + _self.monthType + "/" + _self.monthPlanFrequency, {}, function (data) {
                    _self.riskControlPlaneByMonthList = data;
                });
            },

            getExcell: function () {
                var _self = this;
                $("#ExcellName").val("管控效果分析信息表.xls");
                $("#createName").val(_self.risksitcontrolanalyze.createrName);
                $("#majorType").val(_self.risksitcontrolanalyze.majorType);

                $("#getExcell").submit();
            },
            //获取部门信息
            getDepart: function () {
                var _self = this;
                $.post(projectName + "/PlatForm/getDepartment", {}, function (data) {
                    _self.departList = data;
                })
            },
            //查询创建人部门
            getCreateUnitName: function (unitID) {
                var _self = this;
                var depart = "";
                for (var i = 0; i < _self.departList.length; i++) {
                    if (_self.departList[i].fOrgID_Auto == unitID) {
                        depart = _self.departList[i].fOrg_Name;
                    }
                }
                return depart;
            },

            //筛选矿关闭时还原原本数据
            /*    clearData: function () {
                    var _self = this;
                    $("#planname").val("")
                    $("#plantype").val("null")
                    $("#majortype").val("null")
                    $("#modal-search").modal("hide");
                }
                ,*/
            judgeQuery: function () {
                var _self = this;
                if ($("#planname").val() == "") {
                    _self.riskcontrolplanebymonth.monthplanName = null;
                } else {
                    _self.riskcontrolplanebymonth.monthplanName = $("#planname").val()
                }
                if ($("#plantype").val() == "null") {
                    _self.riskcontrolplanebymonth.monthplanType = null;
                } else {
                    _self.riskcontrolplanebymonth.monthplanType = $("#plantype").val()
                }
                if ($("#majortype").val() == "null") {
                    _self.riskcontrolplanebymonth.monthplanMajorType = null;
                } else {
                    _self.riskcontrolplanebymonth.monthplanMajorType = $("#majortype").val()
                }
                _self.getPageCount()
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
            //转跳新增页面
            newObject: function () {
                $.post(projectName + "/RiskControlAnalyzeControl/gotoUpdate/0", function (data) {
                    window.location.href = "<%=request.getContextPath()%>/menu/RiskControlAnalyzeAddByPingMei.action";
                });
            },
            fristdeleteObeject: function (risksitcontrolanalyzeObject, index) {
                var _self = this;
                _self.tempRisksitcontrolanalyzeObject = risksitcontrolanalyzeObject;
                _self.tempIndex = index;
            },
            //删除一条管控效果分析
            deleteObeject: function () {
                var _self = this;
                var manalyzeid1 = _self.tempRisksitcontrolanalyzeObject.manalyzeID;
                $.ajax({
                    url: projectName + "/RiskControlAnalyzeControl/removeRiskcontrolanalyze", //发送请求的地址。
                    type: "DELETE", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.tempRisksitcontrolanalyzeObject),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        if (data) {
                            _self.showToast("success", "删除成功！");
                            _self.risksitcontrolanalyzelist.splice(_self.tempIndex, 1);
                        }
                    },
                });
            },
            //点击修改跳转
            update: function (risksitcontrolanalyzeObject) {
                var _self = this;
                var manalyzeid = risksitcontrolanalyzeObject.manalyzeID;
                $.post(projectName + "/RiskControlAnalyzeControl/gotoUpdate/" + manalyzeid, function (data) {
                    window.location.href = "<%=request.getContextPath()%>/menu/RiskControlAnalyzeAddByPingMei.action";
                });
            },
            //获取一个空的管控措施分析对象
            getNewObject: function () {
                var _self = this;
                $.get(projectName + "/RiskControlAnalyzeControl/getNewRiskcontrolanalyze", {}, function (data) {
                    _self.risksitcontrolanalyze = data;
                    _self.getPageCount();
                });
            },
            getPageCount: function () {
                var _self = this;
                _self.risksitcontrolanalyze.pagesize = _self.pagesize;
                $.ajax({
                    url: projectName + "/RiskControlAnalyzeControl/PageCount", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.risksitcontrolanalyze),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
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
                                    currentPage: _self.nowpage > data ? 1 : _self.nowpage,
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
                            _self.risksitcontrolanalyzelist = "";
                        }
                    }
                });
            },
            getDataByPage: function (page) {
                var _self = this;
                _self.risksitcontrolanalyze.page = page;
                $.ajax({
                    url: projectName + "/RiskControlAnalyzeControl/getRiskcontrolanalyzeByPage", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.risksitcontrolanalyze),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        _self.risksitcontrolanalyzelist = data;
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
        watch: {
            'createUnitName': {
                handler: function (val, oldVal) {
                    var _self = this;
                    if(oldVal!="" && oldVal!=null){
                        _self.allUserList = ""
                        var orgID = "";
                        for (var i = 0; i < _self.departList.length; i++) {
                            if (_self.departList[i].fOrg_Name == _self.createUnitName) {
                                orgID = _self.departList[i].fOrgID;
                            }
                        }
                        if (orgID != "null") {
                            $.post(projectName + "/PlatForm/getCurrOrgEmpList/" + orgID, function (data) {
                                _self.allUserList = data;
                            });

                        }
                    }
                }
            }

        },
        filters: {
            titleFilter: function (val) {
                var _self = this;
                var result = val.substring(0, 10);
                return result;
            },
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
    });</script>
<script>
    (function ($j) {
        $j.positionFixed = function (el) {
            $j(el).each(function () {
                new fixed(this)
            })
            return el;
        }
        $j.fn.positionFixed = function () {
            return $j.positionFixed(this)
        }
        var fixed = $j.positionFixed.impl = function (el) {
            var o = this;
            o.sts = {
                target: $j(el).css('position', 'fixed'),
                container: $j(window)
            }
            o.sts.currentCss = {
                top: o.sts.target.css('top'),
                right: o.sts.target.css('right'),
                bottom: o.sts.target.css('bottom'),
                left: o.sts.target.css('left')
            }
            if (!o.ie6) return;
            o.bindEvent();
        }
        $j.extend(fixed.prototype, {
            bindEvent: function () {
                var o = this;
                o.sts.target.css('position', 'absolute')
                o.overRelative().initBasePos();
                o.sts.target.css(o.sts.basePos)
                o.sts.container.scroll(o.scrollEvent()).resize(o.resizeEvent());
                o.setPos();
            },
            overRelative: function () {
                var o = this;
                var relative = o.sts.target.parents().filter(function () {
                    if ($j(this).css('position') == 'relative') return this;
                })
                if (relative.size() > 0) relative.after(o.sts.target)
                return o;
            },
            initBasePos: function () {
                var o = this;
                o.sts.basePos = {
                    top: o.sts.target.offset().top - (o.sts.currentCss.top == 'auto' ? o.sts.container.scrollTop() : 0),
                    left: o.sts.target.offset().left - (o.sts.currentCss.left == 'auto' ? o.sts.container.scrollLeft() : 0)
                }
                return o;
            },
            setPos: function () {
                var o = this;
                o.sts.target.css({
                    top: o.sts.container.scrollTop() + o.sts.basePos.top,
                    left: o.sts.container.scrollLeft() + o.sts.basePos.left
                })
            },
            scrollEvent: function () {
                var o = this;
                return function () {
                    o.setPos();
                }
            },
            resizeEvent: function () {
                var o = this;
                return function () {
                    setTimeout(function () {
                        o.sts.target.css(o.sts.currentCss)
                        o.initBasePos();
                        o.setPos()
                    }, 1)
                }
            }
        })
    })(jQuery)

    jQuery(function ($j) {
        $j('#footer').positionFixed()
    })

    //pop右下角弹窗函数
    //作者：yanue
    function Pop(/*title,url,intro*/) {
        /* this.title=title;
         this.url=url;
         this.intro=intro;*/
        var _this = this;
        this.apearTime = 1000;
        this.hideTime = 500;
        this.delay = 10000;
        $.post(projectName + "/RiskControlAnalyzeControl/getNotAnalyzePlane/" + 0 + "/" + 0 + "/" + null + "/" + null, {}, function (data) {
            if (data != null && data.length > 0) {
                vueApp.riskControlPlaneByMonthList1 = data;
                _this.showDiv();
            } else {
                vueApp.riskControlPlaneByMonthList1 = [];
            }
        });
        //关闭
        this.closeDiv();
    }

    Pop.prototype = {

        showDiv: function (time) {
            $('#pop').slideDown(this.apearTime).delay(this.delay).fadeOut(400);
            ;
            jQuery(function ($j) {
                $j('#pop').positionFixed()
            })
        },
        closeDiv: function () {
            $("#popClose").click(function () {
                    $('#pop').hide();
                }
            );
        }
    }
    $(new Pop())
</script>
<script>
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