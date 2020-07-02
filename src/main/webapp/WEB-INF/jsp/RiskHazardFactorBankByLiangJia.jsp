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
    <title>风险管控清单</title>
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

        .biaot1 > td {
            border-left-width: 0 !important;
        }

        .biaot > td {
            white-space: nowrap;
            background-color: #f8f8f9;
            font-weight: bold;

        }

        .table > tbody + tbody {
            border-top: 0;
        }

        td a {
            color: #454e59;
        }

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
            font-weight: bold;
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

        .tcys {
            display: none;
            position: absolute;
            top: 30px;
            left: 0;
            min-width: 100px;
            background-color: #fff;
            z-index: 999;
            border: 1px solid #d1dbe5;
            border-radius: 2px;
            background-color: #fff;

            box-shadow: 0 2px 4px rgba(0, 0, 0, .12), 0 0 6px rgba(0, 0, 0, .12);
            box-sizing: border-box;
            margin: 2px 0;
            height: 300px;
            overflow-y: scroll;

        }

        .tcys li {
            text-align: left;
            padding: 5px 0;
        }

        .el-checkbox__label {
            font-size: 14px;
            padding-left: 5px;
            font-weight: 100;
        }

        .el-table-filter__bottom {
            border-top: 1px solid #d1dbe5;
            padding: 8px;
        }

        .el-table-filter__bottom button {
            background: transparent;
            border: none;
            color: #8391a5;
            cursor: pointer;
            font-size: 14px;
            padding: 0 3px;
        }

        .el-table-filter__bottom button:hover {
            color: #20a0ff;
        }

        .ivu-select-dropdown {

            position: absolute !important;
        }
    </style>
</head>

<body>
<div id="page-content" style="min-height: 794px;" onkeydown="search()">
    <!-- Table Styles Header -->
    <div class="content-header" style="width:135%;">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section" style="overflow: hidden;width:70%;">
                    <h1 style="float: left;padding:0">危害因素库</h1>

                    <div style="float: right;padding:0">

                        <div class="searchCon">
                            <i class="hi hi-search"></i>
                            <input name="search" id="keywords" v-model="topName" placeholder="输入风险点名称 回车查询" class="searchWrap" type="text"></div>
                        <button type="button" onclick="querysearch()" class="btn btn-effect-ripple btn-primary">查询 </button>
                        <button type="button" class="btn btn-effect-ripple btn-primary" data-toggle="modal" data-target="#modal-add">设置筛选条件 </button>
                        <%--<button type="button" @click="getExcell" class="btn btn-effect-ripple btn-primary">导出</button>--%>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full" style="padding: 0;">
        <div class="">
            <div class="">
                <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                    <tr class="biaot">
                        <td style="position: relative" class="text-center tcrk" rowspan="2">序号 </td>
                        <td class="text-center" rowspan="2">风险点 </td>
                        <td class="text-center" rowspan="2">管控对象 </td>
                        <td class="text-center" rowspan="2" style="min-width: 150px">风险 </td>
                        <td class="text-center" rowspan="2" style="min-width:200px;">危害因素 </td>
                        <td class="text-center" rowspan="2">风险类型 </td>
                        <%--<td class="text-center" rowspan="2">危害因素 </td>--%>
                        <td class="text-center" rowspan="2">风险等级 </td>
                        <td class="text-center" rowspan="2">风险颜色 </td>
                        <td class="text-center"  style="min-width:20px;">管理属性 </td>
                        <td class="text-center" rowspan="2" style="min-width:200px;">管控措施内容 </td>
                        <td class="text-center" rowspan="2">管控措施附件 </td>
                        <td class="text-center" rowspan="2">技术指导部门 </td>
                        <td class="text-center" rowspan="2">监管部门 </td>
                        <td class="text-center" rowspan="2">认定日期 </td>
                        <td class="text-center" rowspan="2">解除日期 </td>
                        <td class="text-center" rowspan="2">矿级管控 </td>
                        <td class="text-center" rowspan="2">专业级管控 </td>
                        <td class="text-center" rowspan="2">职能部室级管控 </td>
                        <td class="text-center" rowspan="2">区队级管控 </td>
                        <td class="text-center" rowspan="2">班组个人级管控 </td>
                    </tr>
                    <tbody>
                    <tr v-for="(risk,riskIndex) in detailedAllList">
                        <td class="text-center" v-text="pagesize*(nowpage-1)+riskIndex+1"> </td>
                        <td class="text-center" v-text="risk.TopName"> </td>
                        <td class="text-center" v-text="risk.ChildName"> </td>
                        <td class="text-center" v-text="risk.HazardName"> </td>
                        <td class="text-center" v-text="risk.HazardDesc"> </td>
                        <td class="text-center" v-text="risk.RiskByTypes"> </td>
                        <%--<td class="text-center" v-text="risk.RiskFactors"> </td>--%>

                        <td v-text="risk.RiskLevel"></td>
                        <td class="text-center" v-if="risk.RiskColor!=null&&risk.RiskColor!=''"><span
                                v-bind:style="'background-color:'+risk.RiskColor"
                                class="btys"></span></td>
                        <td class="text-center" v-if="risk.RiskColor==null||risk.RiskColor==''"></td>
                        <td class="text-center" v-text="risk.RiskType">
                        </td>
                        <td  v-text="risk.MeasureContent">
                        </td>
                        <td class="text-center" v-text="risk.MeasureName">
                        </td>
                        <td class="text-center" v-text="risk.TechnologyDepartment">
                        </td>
                        <td class="text-center" v-text="risk.SupervisionDepartment">
                        </td>
                        <td class="text-center" v-text="risk.ControlRangeStartDay">
                        </td>
                        <td class="text-center" v-text="risk.ControlRangeEndDay">
                        </td>
                        <td class="text-center" v-text="risk.KJControlRang">
                        </td>
                        <td class="text-center" v-text="risk.ZYControlRang">
                        </td>
                        <td class="text-center" v-text="risk.QDControlRang">
                        </td>
                        <td class="text-center" v-text="risk.BZControlRang">
                        </td>
                        <td class="text-center" v-text="risk.GRControlRang">
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="row">
                    <div class="col-sm-7 col-xs-12 clearfix">
                        <template>
                            <Page :total="dataCount" :current.sync="nowpage"  @on-change="showRiskInfo"
                                  :page-size="pagesize"></Page>
                        </template>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--筛选-->
    <div id="modal-add" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body" style="height:750px;">
                    <div class="block-title">
                        <h4>查询风险点信息</h4></div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险点名称</label>
                            <div class="col-sm-8">
                                <input class="form-control nihao1" placeholder="请输入风险点名称" type="text" v-model="topName">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险名称</label>
                            <div class="col-sm-8">
                                <input class="form-control nihao1" placeholder="请输入风险名称" type="text" v-model="hazardName">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险点等级</label>
                            <div class="col-sm-8">
                                <i-select placeholder="请选择风险点等级" type="text" v-model="riskLevelSettingID" clearable filterable>
                                    <i-option v-for="(risklever,index) in riskleversettingList" :value="risklever.riskLevelSettingID" :label="risklever.riskLevel">
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">日期</label>
                            <div class="col-sm-4">
                                <input placeholder="请选择认定日期" readonly class="form-control input-sm" type="text" id="startTime"/>
                            </div>
                            <div class="col-sm-4">
                                <input placeholder="请选择解除日期" readonly class="form-control input-sm" type="text" id="endTime"/>
                            </div>
                        </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="getRiskDetailByLiangJiaCount" data-dismiss="modal">确认</button>
                        <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <form id="getExcell" action="<%=request.getContextPath()%>/Templatehazard/getExcellByLiangJia" method="post">
        <input id="ExcellID" name="ExcellID" type="hidden"/>
        <input id="ExcellName" name="ExcellName" type="hidden"/>
        <input id="topName" name="topName" type="hidden"/>
        <input id="majorType" name="majorType" type="hidden"/>
        <input id="damageType" name="damageType" type="hidden"/>
        <input id="accidentType" name="accidentType" type="hidden"/>
        <input id="riskLevelSettingID" name="riskLevelSettingID" type="hidden"/>
        <input id="startTimeByEx" name="startTime" type="hidden"/>
        <input id="endTimeByEx" name="endTime" type="hidden"/>
        <input id="page" name="page" type="hidden"/>
        <input id="pageEnd" name="pageEnd" type="hidden"/>
        <input id="hazardName" name="hazardName" type="hidden"/>
    </form>
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
<script type="text/javascript">
    function search() {
        if (event.keyCode == 13) {
//            var keywords = $("#keywords").val();
//            vueApp.topName = keywords;
            vueApp.getRiskDetailByLiangJiaCount();
        }
    }

    function querysearch() {
//        var keywords = $("#keywords").val();
//        vueApp.topName = keywords;
        vueApp.getRiskDetailByLiangJiaCount();
    }

    var projectName = '<%=request.getContextPath() %>';

    var pageVar = "list";//页面唯一变量标识，每个页面不能重复
    var attrArray = null;
    /**
     * Created by txianwei on 2017/9/14
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            pagesize: 10,
            nowpage: 1,
            riskSite: "",
            detailedList: [],
            attributes: new Array(),
            propertys: new Array(),
            guankongList: "",
            damageList: "",
            categoryList: "",
            riskleversetting: "",
            riskleversettingList: "",
            detailedAllList: [],
            topName: "",
            hazardName:"",
            majorType: "",
            damageType: "",
            accidentType: "",
            riskLevelSettingID: "",
            accidentList: [],
            dataCount:0,

        },
        beforeCreate: function () {
            var _self = this;
        },
        created: function () {
            var _self = this;
            _self.getNewRiskSite();
            _self.getRiskDetailByLiangJiaCount();
            _self.getEnterprise_data_dictionaryListForOrg();
            _self.getRiskAttributes();
            _self.getNewRiskleversetting();


        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            getNewRiskleversetting: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/RiskAssessment/getNewRiskleversetting", function (data) {
                    _self.riskleversetting = data;
                    _self.getRiskleversettingList();
                });

            },

            getRiskleversettingList: function () {
                var _self = this;
                $.ajax({
                    url: projectName + "/RiskAssessment/getRiskleversettingList", //发送请求的地址。
                    type: "post", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.riskleversetting),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.riskleversettingList = data;

                    },

                });

            },
            getExcell: function () {
                var _self = this;
                var startTime=$("#startTime").val();
                var endTime = $("#endTime").val();

                $("#ExcellID").val("1");
                $("#ExcellName").val("风险管控清单信息表.xls");
                $("#topName").val(_self.topName);
                $("#damageType").val(_self.damageType);
                $("#majorType").val(_self.majorType);
                $("#accidentType").val(_self.accidentType);
                $("#riskLevelSettingID").val(_self.riskLevelSettingID);
                $("#startTime").val(startTime);
                $("#endTime").val(endTime);
                $("#hazardName").val(_self.hazardName);
                $("#page").val(_self.nowpage);
                $("#pageEnd").val(_self.pagesize);
                $("#getExcell").submit();

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
                        _self.damageList = data.灾害类型;
                        _self.accidentList = data.事故类型;
                        _self.categoryList = data.专业类型;
                    },
                });
            },

            getRiskAttributes: function () {
                var _self = this;
                $.get(projectName + "/SystemAttributeDevelop/classAttributes", {name: 'Risksite'}, function (data) {
                    if (data != null && data != "") {
                        _self.attributes = data;
                        _self.propertys = data.map(function (item) {
                            return item.classpropertyName.toUpperCase();
                        });
                        _self.getShowState();
                    }
                });
            },
            //从localStorage获取某列的状态反显到checkbox
            getShowState: function () {
                var _self = this;
                for (var i = 0; i < _self.attributes.length; i++) {
                    if (localStorage.getItem((pageVar + _self.attributes[i].classpropertyName).toUpperCase()) == null || localStorage.getItem((pageVar + _self.attributes[i].classpropertyName).toUpperCase()) == "true") {
                    } else {
                        for (var j = 0; j < _self.propertys.length; j++) {
                            if (_self.attributes[i].classpropertyName.toUpperCase() == _self.propertys[j]) {
                                _self.propertys.splice(j, 1);
                                break;
                            }

                        }
                    }
                }

            },
            //从localStorage取值决定是否显示某一列
            showOrNot: function (column) {
                var _self = this;
                if (localStorage.getItem((pageVar + column).toUpperCase()) == null || localStorage.getItem((pageVar + column).toUpperCase()) == "true") {
                    return true;
                } else {
                    return false;
                }
            },
            //设置是否显示某一列,将结果写入localStorage
            confirmShowOrNot: function () {
                var _self = this;
                for (var i = 0; i < _self.attributes.length; i++) {
                    localStorage.setItem((pageVar + _self.attributes[i].classpropertyName).toUpperCase(), false);
                }
                for (var i = 0; i < _self.propertys.length; i++) {
                    localStorage.setItem((pageVar + _self.propertys[i]).toUpperCase(), true);
                }

                _self.getDataByPage(_self.nowpage);
            },
            forwardMRiskSite: function (risk) {
                var _self = this;
                var riskSiteID = risk.riskSiteID;
                var firstName = risk.name;
                var position = firstName;
                $.post(projectName + "/RiskControlMeasureControl/gotoMRiskSite/" + riskSiteID + "/" + position, function (data) {
                    if (data) {
                        window.location.href = "<%=request.getContextPath()%>/menu/RiskDetailedListShowMRiskSite.action";
                    }
                });
            }
            ,
            getNewRiskSite: function () {
                var _self = this;
                $.get(projectName + "/RiskDetailedList/newRiskSite", function (data) {
                    _self.riskSite = data;
                });
            },
            getRiskDetailByLiangJiaCount: function () {
                var _self = this;
                layer.load();
                _self.nowpage = 1;
                _self.detailedAllList=[];
                var startTime = $("#startTime").val();
                var endTime = $("#endTime").val();
                $.ajax({
                    url: projectName + "/Templatehazard/getRiskDetailByLiangJiaCount", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {
                        "topName": _self.topName,
                        "hazardName":_self.hazardName,
                        "majorType": _self.majorType,
                        "damageType": _self.damageType,
                        "riskLevelSettingID": _self.riskLevelSettingID,
                        "accidentType": _self.accidentType,
                        "startTime": startTime,
                        "endTime": endTime,

                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.dataCount=data;
                        _self.getRiskDetailByLiangJia();
                        layer.closeAll('loading');
                    },
                });

            },
            getRiskDetailByLiangJia: function () {
                var _self = this;
                layer.load();
                _self.detailedAllList=[];
                var startTime = $("#startTime").val();
                var endTime = $("#endTime").val();
                $.ajax({
                    url: projectName + "/Templatehazard/getRiskDetailByLiangJia", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {
                        "topName": _self.topName,
                        "hazardName":_self.hazardName,
                        "majorType": _self.majorType,
                        "damageType": _self.damageType,
                        "riskLevelSettingID": _self.riskLevelSettingID,
                        "accidentType": _self.accidentType,
                        "startTime": startTime,
                        "endTime": endTime,
                        "page":_self.nowpage,
                        "pageEnd":_self.pagesize

                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.detailedAllList = data;
                        /*for (var i = 0; i < _self.detailedList.length; i++) {
                            if (i < _self.pagesize) {
                                _self.detailedAllList.push(_self.detailedList[i]);
                            }
                        }*/
                        layer.closeAll('loading');
                    },
                });

            },
            showRiskInfo: function (val) {
                var _self = this;
                _self.detailedAllList = [];
                _self.nowpage = val;
                /*for (var i = (val - 1) * _self.pagesize; i < _self.detailedList.length; i++) {
                    if (i < val * _self.pagesize) {
                        _self.detailedAllList.push(_self.detailedList[i]);
                    }

                }*/
                _self.getRiskDetailByLiangJia();


            },
            getDataList: function () {
                var _self = this;
                //加载层
                layer.load();
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskDetailedList/getRisksiteData",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskSite),
                    success: function (data) {
                        //console.log(data);
                        _self.detailedList = data;
                        _self.detailedAllList = [];
                        for (var i = 0; i < _self.detailedList.length; i++) {
                            var childList = _self.detailedList[i].mchildRiskSite;
                            for (var j = 0; j < childList.length; j++) {
                                var hazardList = childList[j].mhazards;
                                for (var m = 0; m < hazardList.length; m++) {
                                    $.ajax({
                                        url: projectName + "/RiskDetailedList/newRiskDetailedByXinAn", //发送请求的地址。
                                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                        data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                        dataType: "json",//预期服务器返回的数据类型。
                                        contentType: "application/json",
                                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                        success: function (rdata) {
                                            //请求成功后的回调函数
                                            rdata.riskName = _self.detailedList[i].name;
                                            rdata.riskNameID = _self.detailedList[i].riskSiteID;
                                            rdata.riskChildName = childList[j].name;
                                            rdata.riskChildID = childList[j].riskSiteID;
                                            rdata.riskhazardName = hazardList[m].name;
                                            rdata.riskhazardID = hazardList[m].hazardID;
                                            rdata.possibility = hazardList[m].Lpossibility;
                                            rdata.expose = hazardList[m].Eexpose;
                                            rdata.consequence = hazardList[m].clossConsequence;
                                            rdata.sseverity = hazardList[m].Sseverity;
                                            rdata.driskValue = hazardList[m].driskValue;
                                            rdata.riskLevel = hazardList[m].riskLevel;
                                            rdata.damageType = hazardList[m].damageType;
                                            rdata.majorType = hazardList[m].majorType;
                                            rdata.accidentType = hazardList[m].accidentType;
                                            rdata.riskColor = hazardList[m].riskColor;
                                            rdata.hazardDesc = hazardList[m].hazardDesc;
                                            if (hazardList[m].mRiskControlRange.length != 0) {
                                                var rangList = hazardList[m].mRiskControlRange;
                                                for (var r = 0; r < rangList.length; r++) {
                                                    rdata.startTime = rangList[0].controlRangeStartDay;
                                                    rdata.endTime = rangList[0].controlRangeEndDay;
                                                    if (rangList[r].controlRangeName == "矿级") {
                                                        rdata.kRangeName = "矿级";
                                                        rdata.kRangePinci = rangList[r].controlRangePinci;
                                                        rdata.kmanageUnit = rangList[r].manageUnit;
                                                        rdata.kmanageDuty = rangList[r].manageDuty;
                                                    } else if (rangList[r].controlRangeName == "专业级") {
                                                        rdata.zRangeName = "专业级";
                                                        rdata.zRangePinci = rangList[r].controlRangePinci;
                                                        rdata.zmanageUnit = rangList[r].manageUnit;
                                                        rdata.zmanageDuty = rangList[r].manageDuty;

                                                    } else if (rangList[r].controlRangeName == "区队级") {
                                                        rdata.qRangeName = "区队级";
                                                        rdata.qRangePinci = rangList[r].controlRangePinci;
                                                        rdata.qmanageUnit = rangList[r].manageUnit;
                                                        rdata.qmanageDuty = rangList[r].manageDuty;

                                                    } else if (rangList[r].controlRangeName == "班组级") {
                                                        rdata.bRangeName = "班组级";
                                                        rdata.bRangePinci = rangList[r].controlRangePinci;
                                                        rdata.bmanageUnit = rangList[r].manageUnit;
                                                        rdata.bmanageDuty = rangList[r].manageDuty;

                                                    } else if (rangList[r].controlRangeName == "个人级") {
                                                        rdata.gRangeName = "个人级";
                                                        rdata.gRangePinci = rangList[r].controlRangePinci;
                                                        rdata.gmanageUnit = rangList[r].manageUnit;
                                                        rdata.gmanageDuty = rangList[r].manageDuty;

                                                    }
                                                }
                                            }
                                            _self.detailedAllList.push(rdata);
                                        },
                                    });


                                }
                            }
                        }
                        layer.closeAll('loading');
                    }
                });
            },
            getPageCount: function () {
                var _self = this;
                _self.riskSite.pagesize = _self.pagesize;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskDetailedList/PageCount",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskSite),
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
                            _self.showToast("info", "没有查询到数据");
                            _self.detailedList = "";
                        }
                    }
                });
            },
            getDataByPage: function (page) {
                var _self = this;
                //加载层
                layer.load();
                _self.riskSite.page = page;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskDetailedList/Page",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskSite),
                    success: function (data) {
                        //console.log(data);
                        _self.detailedList = data;

                        layer.closeAll('loading');
                    }
                });
            },
            explortExcel: function () {
                var _self = this;
                $.get(projectName + "/RiskDetailedList/ExplortExcel", function (data) {

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
            'detailedList': function () {
                this.$nextTick(function () {
                    var _self = this;
                    var riskSiteFullNumber = "";
                    for (var i = 0; i < _self.detailedList.length; i++) {
                        riskSiteFullNumber = _self.detailedList[i].fullNumber;
                        $.ajax({
                            url: projectName + "/RiskControlMeasureControl/getMRiskSiteMeasure/" + riskSiteFullNumber, //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            contentType: "application/json",
                            dataType: "json",//预期服务器返回的数据类型。
                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                if (data != null && data != "") {
                                    $("#measure" + i).text(data.length);
                                } else {
                                    $("#measure" + i).text(0);
                                }
                            },
                        });
                    }
                })
            }
        },
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
        }
    })
</script>
<script>

    laydate.render({
        elem: "#startTime"
        , trigger: 'click'
        , type: 'date'
        , theme: '#3188f2'
    });
    laydate.render({
        elem: "#endTime"
        , trigger: 'click'
        , type: 'date'
        , theme: '#3188f2'
    });
</script>
<script>
    $(function () {
        CompTree.init();
    });
    $(function () {
        UiTables.init();

    });
    $(document).ready(function () {
        $(".tcrk .dj").click(function () {

            var b = $(this).siblings("ul").css("display");
            $(this).siblings("ul").toggle(300);

            if (b == 'none') {
                $(this).children("i").addClass("fa fa-chevron-up").removeClass("a fa-chevron-down");
            } else {
                $(this).children("i").addClass("a fa-chevron-down").removeClass("a fa-chevron-up");
            }
        });
        $(".confirmChose").click(function () {
            var b = $("#itcys").css("display");
            $("#tcys").toggle(300);
            if (b == 'none') {
                $(this).children("i").addClass("fa fa-chevron-up").removeClass("a fa-chevron-down");
            } else {
                $(this).children("i").addClass("a fa-chevron-down").removeClass("a fa-chevron-up");
            }
        });
    });
</script>
</body>

</html>