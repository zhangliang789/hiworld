<%@ page import="org.platform4j.model.Emp" %>
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
    <title>安全风险评估</title>
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
            color: #454e59
        }

        .modal-footer {

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
            font-weight: 100;
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

        textarea.form-control {
            height: 70px;
            resize: none;
        }

        #test li.active {
            border: 1px solid #b1b1b1;
            border-radius: 3px;
            box-sizing: border-box;
        }

        #test1 li.active {

            border: 1px solid #b1b1b1;
            border-radius: 3px;
            box-sizing: border-box;
        }

        .fxdj1 {
            background-color: #FFFF00;
            height: 30px;
            width: 100%;
        }

        .fxdj2 {
            background-color: #FF3300;
            height: 30px;
            width: 100%;
        }

        .fxdj3 {
            background-color: #FF0000;
            height: 30px;
            width: 100%;
        }

        .table {
            margin-bottom: 0;
        }

        label input[type="radio"] {
            vertical-align: text-top;
        }

        .form-group {
            margin-bottom: 5px;
        }

        #test li, #test1 li {
            padding: 5px 5px;
            margin-top: 5px;
            border: 2px solid #ffffff;
        }

        #test li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 256px 52px;
            box-sizing: border-box;
        }

        #test1 li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 256px 52px;
            box-sizing: border-box;
        }

        .wxdj {
            display: inline-block;
            width: 50px;
            height: 20px;
            margin-right: 10px;
            background-color: #FF0000;
            vertical-align: middle;
        }

        .wxdj-h {
            background-color: #FF0000;
        }

        .wxdj-u {
            background-color: #fdc300;
        }

        .wxdj-j {
            background-color: #FFFF00;
        }

        .wxdj-l {
            background-color: #00a3e9;
        }

        .fxdj {
            background-color: #00a3e9;
            height: 30px;
            width: 100%;
        }

        .wxdj-wz {
            display: inline-block;
            width: 200px;
            vertical-align: text-top;
            height: 60px;
        }

        .modal-dialog {
            width: 625px;

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

    </style>
</head>

<body>
<div id="page-content" style="min-height: 794px;" onkeydown="search()">
    <%--<% Integer riskSiteID = (Integer) session.getAttribute("riskSiteID");--%>
    <%--String position=(String) session.getAttribute("position");%>--%>
    <%--<input id="riskSite" value="<%=riskSiteID%>">--%>
    <%--<input id="position" value="<%=position%>">--%>
    <!-- Table Styles Header -->
        <% Emp userObj = (Emp)request.getSession().getAttribute("emp");
        String userid = userObj.getFFrame_ID();
    %>
    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section" style="overflow: hidden;">
                    <h1 style="float: left;padding:0">安全风险评估</h1>
                    <div style="float: right;padding:0">

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
                <div>
                    <ol class="breadcrumb">
                        <li><a href="<%=request.getContextPath()%>/menu/RiskAssessment.do"><%=request.getSession().getAttribute("position")%></a></li>
                        <li> <a href="<%=request.getContextPath()%>/menu/RiskAssessment.do" class="btn btn-effect-ripple btn-primary">返回</a></li>
                    </ol>

                </div>
                <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                    <tr class="biaot">
                        <td style="position: relative" class="text-center tcrk" rowspan="2">
                            <span class="dj">序号
											<i id="itcys" class="fa fa-chevron-down fa-fw"></i></span>
                            <ul class="tcys" id="tcys">
                                <div class="" style="padding: 10px;">
                                    <li v-for="arrt in attributes">
                                        <label class="csscheckbox csscheckbox-primary">
                                            <input type="checkbox" v-model="propertys"
                                                   v-bind:value="arrt.classpropertyName|upCaseFilter">
                                            <span></span>
                                        </label>
                                        <span class="el-checkbox__label" v-text="arrt.classpropertyTitle"></span>
                                    </li>
                                </div>
                                <div class="el-table-filter__bottom">
                                    <button class="confirmChose">取消</button>
                                    <button @click="confirmShowOrNot" class="confirmChose">确定</button>
                                </div>

                            </ul>
                        </td>
                        <td class="text-center" rowspan="2">
                            <%--v-show="showOrNot('Name')"--%>
                            <%--{{'Name'|titleFilter('风险点')}}--%>
                            管控对象
                        </td>
                        <td class="text-center" rowspan="2" >
                            <%--v-show="showOrNot('RiskDescription')"--%>
                            <%--{{'RiskDescription'|titleFilter('风险点描述')}}--%>
                             管控对象描述
                        </td>
                        <td class="text-center" rowspan="2" v-show="showOrNot('RiskDamageType')">
                            {{'RiskDamageType'|titleFilter('灾害类型')}}
                        </td>
                        <%--<td class="text-center" rowspan="2" v-show="showOrNot('RiskAccident')">事故类型</td>--%>
                        <td class="text-center" rowspan="2" v-show="showOrNot('riskLevel')">
                            {{'riskLevel'|titleFilter('等级')}}
                        </td>
                        <td class="text-center" rowspan="2" v-show="showOrNot('RiskColor')">
                            {{'RiskColor'|titleFilter('预警程度')}}
                        </td>
                        <td class="text-center" rowspan="2">措施数量</td>
                        <%--<td class="text-center" rowspan="2" v-show="showOrNot('RiskControlTier')">
                            {{'RiskControlTier'|titleFilter('管控层次')}}
                        </td>
                        <td class="text-center" rowspan="2" v-show="showOrNot('managerUnitName')">
                            {{'managerUnitName'|titleFilter('责任部门')}}
                        </td>
                        <td class="text-center" rowspan="2" v-show="showOrNot('managerName')">
                            {{'managerName'|titleFilter('责任人')}}
                        </td>
                        <td class="text-center" rowspan="2" v-show="showOrNot('riskSupervisor')">
                            {{'riskSupervisor'|titleFilter('监管部门')}}
                        </td>--%>
                        <td class="text-center" rowspan="2">状态</td>
                        <td class="text-center" rowspan="2">操作</td>
                        <%--  <tr class="biaot">
                              <td class="text-center">工程技术</td>
                              <td class="text-center">管理措施</td>
                              <td class="text-center">培训教育</td>
                              <td class="text-center">个体防护</td>
                              <td class="text-center">应急处置</td>
                          </tr>--%>
                        <tbody >
                        <tr v-for="(risk,riskIndex) in detailedList">
                            <td class="text-center" v-text="pagesize*(nowpage-1)+riskIndex+1">1</td>
                            <td v-show="showOrNot('Name')"><a
                                    v-text="risk.name+'('+risk.mhazards.length+')'"
                                    @click="showChild(risk)"></a></td>
                            <td v-text="risk.riskDescription"></td>
                            <td  v-show="showOrNot('riskDamageType')">
                                <span v-text="dList[riskIndex]"></span>
<%--
                                <span v-if="dList[riskIndex]!=''&&dangerList[riskIndex]!=''" v-text="','"></span>
--%>
                                <span v-text="dangerList[riskIndex]" style="color:red;"></span>
                            </td>
                           <%-- <td v-text="risk.riskAccident" v-show="showOrNot('RiskAccident')"></td>--%>
                            <td v-text="risk.riskLevel" v-show="showOrNot('riskLevel')">
                            </td>
                            <td class="text-center"  v-show="showOrNot('RiskColor')" v-if="risk.riskColor!=null"><span
                                    v-show="showOrNot('RiskColor')"
                                    v-bind:style="'background-color:'+risk.riskColor"
                                    class="btys"></span></td>
                            <td class="text-center"  v-show="showOrNot('RiskColor')" v-if="risk.riskColor==null"></td>
                            <td :id="'measure'+''+riskIndex"><%--{{risk.mriskControlMeasure.length}}--%></td>
                            <%--  <td></td>
                              <td></td>
                              <td></td>
                              <td></td>--%>
                            <%--<td v-text="risk.riskControlTier" v-show="showOrNot('riskControlTier')"></td>
                            <td v-text="risk.managerUnitName" v-show="showOrNot('managerUnitName')"></td>
                            <td v-text="risk.managerName" v-show="showOrNot('managerName')"></td>
                            <td v-text="risk.riskSupervisor" v-show="showOrNot('riskSupervisor')"></td>--%>
                            <td v-if="risk.status==0">未评估</td>
                            <td v-if="risk.status==1">已评估</td>
                            <td>
                                <a href="" @click="myUpdateRiskSite(risk)" data-toggle="modal"
                                   data-target="#modal-regular" style="color: #337ab7"
                                >设置
                                </a>

                            </td>
                        </tr>
                        </tbody>
                </table>
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
        </div>
    </div>
    <!--评估-->
    <div id="modal-regular" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="min-height: 100%">
                <div class="modal-body">

                    <div class="block-title">
                        <h4 style="width: 100%;">
                            <span>管控对象：{{updateRiskSite.name}}</span>
                            <%--<span>({{updateRiskSite.riskMajorType}})</span>--%>
                            <div style="float: right;font-size:12px">管控对象等级：
                                <span style="font-size:16px;color: #FF0000; ">{{updateRiskSite.riskLevel}}</span>
                            </div>
                        </h4>
                        <input type="" v-model="updateRiskSite.name" hidden>
                        <input type="" v-model="updateRiskSite.riskMajorType" hidden>
                        <input type="" v-model="updateRiskSite.riskLevel" hidden>
                    </div>
                    <div id="main" style="width: 540px;height: 400px;margin: 0 auto">


                    </div>

                    <form method="post" class="form-horizontal" onsubmit="return false;" style="overflow: hidden">


                        <div class="" style="overflow: hidden;margin-top: 30px">
                            <label class="col-md-12 text-left" style="margin-left:50px ">
                                <span style="color: #FF0000;">作业人数上限:</span>
                                <input type="" id="peopleCount" placeholder="0">
                            </label>
                            <%--<div class="col-md-12">--%>
                            <%--<select name="" class="form-control">--%>
                            <%--<option value=""></option>--%>
                            <%--</select>--%>
                            <%--</div>--%>

                        </div>
                        <div class="" style="overflow: hidden;margin-top: 30px">
                            <label class="col-sm-12 text-center">
                                <span style="color: #FF0000; font-size: 32px"
                                      v-if="updateRiskSite.riskValue>=30">危险区域</span> </label>

                        </div>


                    </form>
                    <div style="padding: 15px">
                        <table id="general-table1"
                               class="table table-striped table-bordered table-vcenter table-hover">
                            <thead>
                            <tr>
                                <th class="text-center" style="color: red">重大风险</th>
                                <th class="text-center">较大风险</th>
                                <th class="text-center">一般风险</th>
                                <th class="text-center">低风险</th>
                                <th class="text-center">未评价风险</th>
                                <th class="text-center">合计</th>

                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="text-center" style="color: red" v-text="zhongda">

                                </td>
                                <td class="text-center" v-text="jiaoda"></td>
                                <td class="text-center" v-text="yiban"></td>
                                <td class="text-center" v-text="difengxian"></td>
                                <td class="text-center" v-text="weipingjia"></td>
                                <td class="text-center" v-text="count"></td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary"
                            @click="getAssessmentRiskSite(updateRiskSite)"> 保存
                    </button>
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
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
    <script src="../js/echarts.min.js"></script>
    <script type="text/javascript">
        var projectName = '<%=request.getContextPath() %>';
        var pageVar = "ralist";//页面唯一变量标识，每个页面不能重复
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
                queryrisksite: "",
                detailedList: null,
                updateRiskSite: "",
                queryRikSite: "",
                updateRiskHazard: '',
                riskdegreeitem: '',
                zhongda: 0,
                jiaoda: 0,
                yiban: 0,
                difengxian: 0,
                weipingjia: 0,
                count: 0,
                attributes: new Array(),
                propertys: new Array(),
                guankongList: "",
                damageList: "",
                categoryList: "",
                dangerList:[],
                dList:[],
            },
            created: function () {


            },
            mounted: function () {
                var _self = this;
                _self.getNewRiskSite();
                _self.getRiskAttributes();
                _self.getEnterprise_data_dictionaryListForOrg();
            },
            updated: function () {
            },
            methods: {

                showChild: function (risk) {
                    var _self = this;
                    var riskSiteID = risk.riskSiteID;
                    var firstName = risk.name;
                    var position = firstName;
                    $.post(projectName + "/RiskControlMeasureControl/gotothree/" + riskSiteID + "/" + position, function (data) {
                        if (data) {
                            window.location.href = "<%=request.getContextPath()%>/menu/RiskAssessment1.action";
                        }
                    });
                }
                ,
                //获取辅助资料
                getEnterprise_data_dictionaryListForOrg: function () {
                    var _self = this;
                    $.ajax({
                        url: projectName + "/PlatForm/getEnterprise_data_dictionaryListForOrg", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: {
                            "orgID": "<%=userid%>",
                            "data_TypeOrName": null,
                        },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
                            _self.guankongList = data.管控层级;
                            _self.damageList = data.灾害类型;
                            _self.categoryList = data.专业类型;
                        },
                    });
                }
                ,
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
                }
                ,
                //从localStorage获取某列的状态反显到checkbox
                getShowState: function () {
                    var _self = this;
                    for (var i = 0; i < _self.attributes.length; i++) {
                        if (localStorage.getItem((pageVar + _self.attributes[i].classpropertyName).toUpperCase()) == null || localStorage.getItem((pageVar + _self.attributes[i].classpropertyName).toUpperCase()) == "true") {
                        } else {
                            _self.propertys.splice(i, 1);
                        }
                    }

                }
                ,
                //从localStorage取值决定是否显示某一列
                showOrNot: function (column) {
                    var _self = this;
                    if (localStorage.getItem((pageVar + column).toUpperCase()) == null || localStorage.getItem((pageVar + column).toUpperCase()) == "true") {
                        return true;
                    } else {
                        return false;
                    }
                }
                ,
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
                }
                ,
                forwardthree: function (risk, riskc) {
                    var _self = this;
                    var riskSiteID = riskc.riskSiteID;
                    var firstName = risk.name;
                    var second = riskc.name;
                    var position = firstName;
                    $.post(projectName + "/RiskControlMeasureControl/gotothree/" + riskSiteID + "/" + position, function (data) {
                        if (data) {
                            window.location.href = "<%=request.getContextPath()%>/menu/RiskAssessment1.action";
                        }
                    });
                }
                ,
                //清空管控措施
                clearRiskControlMeasure: function () {

                }
                ,
                //修改管控措施
                updateRiskControlMeasure: function () {
                    var _self = this;
                }
                ,
                //筛选管控措施
                queryRiskControlMeasure: function () {

                }
                ,

                myqueryRiskSite: function (myrisk) {
                    var _self = this;
                    _self.updateRiskSite = "";
                    _self.queryrisksite = myrisk;
                    $.ajax({
                        url: projectName + "/RiskControlPlaneByMonthControl/RiskSiteBySearch", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        contentType: "application/json",
                        data: JSON.stringify(_self.queryrisksite),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
                            _self.myUpdateRiskSite(data[0]);

                        },
                    });

                }
                ,
                //获取风险的下的危险源评价情况
                myUpdateRiskSite: function (myrisk) {
                    var _self = this;
                    _self.updateRiskSite = myrisk;
                    $("#peopleCount").val(_self.updateRiskSite.limitPeopleCount)
                    delete _self.updateRiskSite.handler;
                    console.log(_self.updateRiskSite)


                    $.ajax({
                        url: projectName + "/RiskAssessment/getHazardRiskSite", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: JSON.stringify(_self.updateRiskSite),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        contentType: "application/json",
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
                            _self.zhongda = data.重大风险;
                            _self.jiaoda = data.较大风险;
                            _self.yiban = data.一般风险;
                            _self.difengxian = data.低风险;
                            _self.weipingjia = data.未评价;
                            _self.count = _self.zhongda + _self.jiaoda + _self.yiban + _self.difengxian + _self.weipingjia;

                            var myChart = echarts.init(document.getElementById('main'), 'blue');
                            var option = {
                                //color:['#FF0000','#FF3300','#FFFF00','#3398DB','#666666'],
                                tooltip: {
                                    trigger: 'axis',
                                    axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                                        type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                                    }
                                },
                                grid: {
                                    left: '3%',
                                    right: '4%',
                                    bottom: '3%',
                                    containLabel: true
                                },
                                xAxis: [
                                    {
                                        type: 'category',
                                        data: ['重大风险', '较大风险', '一般风险', '低风险', '未评估'],
                                        axisTick: {
                                            alignWithLabel: true
                                        }
                                    }
                                ],
                                yAxis: [
                                    {
                                        type: 'value',
                                        max: 5 - _self.count % 5 + _self.count,
                                        min: 0,
                                        splitNumber: 5,
                                    }
                                ],
                                series: [
                                    {
                                        name: '个数',
                                        type: 'bar',
                                        barWidth: '60%',
                                        data: [_self.zhongda, _self.jiaoda, _self.yiban, _self.difengxian, _self.weipingjia],
                                        itemStyle: {
                                            normal: {
                                                color: function (params) {
                                                    // build a color map as your need.
                                                    var colorList = [
                                                        '#FF0000', '#FF3300', '#FFFF00', '#00a3e9', '#666666'

                                                    ];
                                                    return colorList[params.dataIndex]
                                                }
                                            }
                                        }

                                    }
                                ]
                            };

                            //指定图表配置顶和数据
                            myChart.setOption(option);
                            // 设置加载等待隐藏
                            //myChart.hideLoading();


                        },
                    });
                }
                ,
                //风险点评估提交
                getAssessmentRiskSite: function (myRiskSite) {
                    var _self = this;
                    _self.updateRiskSite = myRiskSite;
                    _self.updateRiskSite.limitPeopleCount = $("#peopleCount").val();
                    $.ajax({
                        url: projectName + "/RiskAssessment/updateRisksite", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: JSON.stringify(_self.updateRiskSite),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        contentType: "application/json",
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
                            _self.showToast("success","作业人数上限设置成功");
                            $("#modal-regular").modal("hide");
                        }
                    })
                }
                ,
                //得到一个risksite空对象
                getNewRiskSite: function () {
                    var _self = this;
                    $.get(projectName + "/RiskDetailedList/newRiskSite", function (data) {
                        _self.riskSite = data;
                        _self.riskSite.riskSiteID=<%=request.getSession().getAttribute("riskSiteID")%>
                        _self.getPageCount();
                    });

                }
                ,
                //获取总条数，参数是Risksite 对象
                getPageCount: function () {
                    var _self = this;
                    _self.riskSite.pagesize = _self.pagesize;
                    _self.dangerList=[];
                    _self.dList=[];
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
                }
                ,
                //分页获取数据，参数是Risksite 对象和页面大小和页码
                getDataByPage: function (page) {
                    var _self = this;
                    //加载层
                    layer.load();
                    _self.dangerList=[];
                    _self.dList=[];
                    _self.riskSite.page = page;
                    $.ajax({
                        type: "POST",
                        url: projectName + "/RiskDetailedList/Page",
                        dataType: "json",
                        contentType: "application/json",
                        data: JSON.stringify(_self.riskSite),
                        success: function (data) {
                            console.log(data);
                            _self.detailedList = data[0].mchildRiskSite;
                            for(var i=0;i<_self.detailedList.length;i++){
                                var damage="";
                                var childHazard = _self.detailedList[i].mhazards;
                                for(var j = 0 ;j<childHazard.length;j++){
                                    if(childHazard[j].riskLevel=="重大风险"){
                                        if (childHazard[j].damageType != null && childHazard[j].damageType != "") {
                                            damage += childHazard[j].damageType + ",";
                                        }
                                    }
                                }
                                damage=damage.substring(0,damage.length-1);
                                if(damage!=""){
                                    var zzList = damage.split(",");
                                    if (_self.detailedList[i].riskDamageType != "" && _self.detailedList[i].riskDamageType != null) {
                                        var dmList = _self.detailedList[i].riskDamageType;
                                        for (var zz = 0; zz < zzList.length; zz++) {
                                            if(dmList.indexOf(zzList[zz]) != -1){
                                                dmList = dmList.replace(zzList[zz], "");
                                            }
                                        }
                                        var dlist=dmList.split(",");
                                        var dm="";
                                        for(var dl=0;dl<dlist.length;dl++){
                                           if(dlist[dl]!=""){
                                               dm+=dlist[dl]+",";
                                           }
                                        }
                                        _self.dList.push(dm);
                                    }
                                }else{
                                    _self.dList.push(_self.detailedList[i].riskDamageType);
                                }
                                _self.dangerList.push(damage);
                            }
                            layer.closeAll('loading');
                        }
                    });

                }
                ,
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
            computed: {}
            ,
            watch:{
                'detailedList':function(){
                    this.$nextTick(function(){
                        var _self =this;
                        var riskSiteFullNumber="";
                        for(var i=0;i<_self.detailedList.length;i++){
                            riskSiteFullNumber = _self.detailedList[i].fullNumber;
                            $.ajax({
                                url:projectName +"/RiskControlMeasureControl/getMRiskSiteMeasure/"+riskSiteFullNumber+"/", //发送请求的地址。
                                type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                data:{},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                contentType: "application/json",
                                dataType:"json",//预期服务器返回的数据类型。
                                async:false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                success: function(data){
                                    if(data!=null && data!=""){
                                        $("#measure"+i).text(data.length);
                                    }else{
                                        $("#measure"+i).text(0);
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
                }
                ,
                titleFilter: function (val, defaultName) {
                    var _self = this;
                    console.log(val);
                    console.log(defaultName);
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
    <script>

        $(function () {
            $("#test li").click(function () {
                $(this).siblings('li').removeClass('active'); // 删除其他兄弟元素的样式
                $(this).addClass('active'); // 添加当前元素的样式
            });
            $("#test1 li").click(function () {
                $(this).siblings('li').removeClass('active'); // 删除其他兄弟元素的样式
                $(this).addClass('active'); // 添加当前元素的样式
            });
        });
    </script>
</body>

</html>