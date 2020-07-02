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
    <title>风险查询</title>
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
    <style>
        th {
            white-space: nowrap;

        }

        .table {
            margin-bottom: 0;
        }

        .block-title .nav-tabs > li > a {
            min-height: 40px;
            line-height: 40px;
        }

        .block-title .nav-tabs > li.active > a, .block-title .nav-tabs > li.active > a:hover, .block-title .nav-tabs > li.active > a:focus {
            border: none;
            background-color: #0B8DE5;
            color: #fff;
        }

        .block-title {
            border: 0;
            background: #fff;
            margin-bottom: 0;
        }

        .block .block {
            border: 1px solid #ebeef2;
        }

        .qga {
            font-weight: bold;
            background: #f9f9f9;
        }

        .sss {
            background-color: #f9f9f9;
            padding: 8px 0 5px;
            width: auto;
            border: 1px solid #ebeef2;
            border-top-width: 0;
            margin: 0;
        }

        .btys {
            display: inline-block;
            padding: 10px 50px;
            vertical-align: sub;
        }

        ta a {
            color: #0DA6E5
        }

        a {
            cursor: pointer;
        }
    </style>
</head>

<body>
<div id="page-content" style="min-height: 794px;">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-6">
                <div class="header-section">
                    <h1>风险查询</h1></div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!--柱状图 is here-->
    <div class="block full" style="overflow: hidden;">
        <div class="col-sm-5">
            <div id="main" style="height: 336px; width:417px"></div>
        </div>

        <div class="table-responsive col-sm-7">
            <div class="block full" style="padding:20px 0 0 0;border: 0;overflow: hidden;">
                <!-- Block Tabs Title -->
                <div class="block-title" style="padding:10px 0;">
                    <ul class="nav nav-tabs" data-toggle="tabs" style="    padding: 0 20px;">
                        <li class="active">
                            <a @click="getRiskAnalyzeByDamageType">灾害类型</a></li>
                        <li class="">
                            <a @click="getRiskAnalyzeByRisksite">风险点</a></li>
                        <%--<li class="">--%>
                        <%--<a href="#block-tabs-fx">风险类型</a></li>--%>
                        <%--<li class="">--%>
                        <%--<a href="#block-tabs-zy">专业类型</a></li>--%>
                        <div class="" style="float: right;">
                            <%--<button type="submit" class="btn btn-effect-ripple btn-primary" style="margin: 2px 0px 0px 0px;">筛选</button></div>--%>
                    </ul>
                </div>
                <!-- END Block Tabs Title -->
                <!-- Tabs Content -->
                <div class="tab-content">
                    <div class="tab-pane active" id="block-tabs-sh" hidden>
                        <div class="table-responsive">
                            <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                                <table id="general-table"
                                       class="table table-striped table-bordered table-vcenter table-hover">
                                    <thead>
                                    <tr>
                                        <th class="text-center">灾害类型</th>
                                        <th class="text-center">风险点数量</th>
                                        <%--<th class="text-center">风险数量</th>--%>
                                        <th class="text-center">重大风险</th>
                                        <th class="text-center">较大风险</th>
                                        <th class="text-center">一般风险</th>
                                        <th class="text-center">低风险</th>
                                        <th class="text-center">未评估</th>
                                    </tr>
                                    </thead>
                                    <tbody v-for="(mydamage,dindex) in damageList">
                                    <tr v-for="(risk,index) in detailedList" v-if="index==dindex">
                                        <td class="text-center" v-text="mydamage.fData_Name"></td>
                                        <td class="text-center"><a
                                                @click="queryRiskSite(risk.places,risk.placeCount,'0')"
                                                v-text="risk.placeCount"></a></td>
                                        <%--<td class="text-center"><a @click="queryHazard(mrisk.places,'-1','mrisk.hazardCount')" v-text="risk.hazardCount"></a></td>--%>
                                        <td class="text-center"><a @click="queryRiskSite(risk.places,risk.l1,'重大风险')"
                                                                   v-text="risk.l1"></a></td>
                                        <td class="text-center"><a @click="queryRiskSite(risk.places,risk.l2,'较大风险')"
                                                                   v-text="risk.l2"></a></td>
                                        <td class="text-center"><a @click="queryRiskSite(risk.places,risk.l3,'一般风险')"
                                                                   v-text="risk.l3"></a></td>
                                        <td class="text-center"><a @click="queryRiskSite(risk.places,risk.l4,'低风险')"
                                                                   v-text="risk.l4"></a></td>
                                        <td class="text-center"><a @click="queryRiskSite(risk.places,risk.wpg,'未评估')"
                                                                   v-text="risk.wpg"></a></td>
                                    </tr>
                                    </tbody>

                                    <%--<tbody v-for="(mydamage,index) in damageList">
                                        <tr  v-for="(mydetail,dindex) in detailedList" v-if="index==dindex">
                                            <td v-text="mydamage.fData_Name"></td>
                                            <td v-text="mydetail.fData_Name"></td>
                                        </tr>
                                    </tbody>--%>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="block-tabs-dd" hidden>
                        <div class="table-responsive">
                            <div id="example-datatable_wrapper1" class="dataTables_wrapper form-inline no-footer">
                                <table id="general-table1"
                                       class="table table-striped table-bordered table-vcenter table-hover">
                                    <thead>
                                    <tr>
                                        <th class="text-center">序号</th>
                                        <th class="text-center">风险点</th>
                                        <th class="text-center">重大风险</th>
                                        <th class="text-center">较大风险</th>
                                        <th class="text-center">一般风险</th>
                                        <th class="text-center">低风险</th>
                                        <th class="text-center">未评估</th>
                                    </tr>
                                    </thead>
                                    <tbody v-for="(mrisk,index) in detailedList">
                                    <tr>
                                        <td class="text-center" v-text="pagesize*(nowpage-1)+index+1"></td>
                                        <td class="text-center"><a
                                                @click="queryRiskSiteByRisk(mrisk)"
                                                v-text="mrisk.name"></a></td>
                                        <td class="text-center" v-text="mrisk.number"></td>
                                        <td class="text-center" v-text="mrisk.page"></td>
                                        <td class="text-center" v-text="mrisk.pagesize"></td>
                                        <td class="text-center" v-text="mrisk.parentID"></td>
                                        <td class="text-center" v-text="mrisk.parentNumber"></td>
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
                    <div class="tab-pane " id="block-tabs-fx"></div>
                    <div class="tab-pane " id="block-tabs-zy"></div>
                </div>
                <!-- END Tabs Content --></div>
        </div>
        <div class="col-sm-12" id="myrisk">
            <table id="general-table2" class="table table-striped table-bordered table-vcenter table-hover">
                <thead>
                <tr class="qga">
                    <th class="text-center" rowspan="2">序号</th>
                    <th class="text-center" rowspan="2">{{'Name'|titleFilter('风险点')}}</th>
                    <th class="text-center" rowspan="2">{{'RiskDescription'|titleFilter('风险点描述')}}</th>
                    <th class="text-center" rowspan="2">{{'RiskDamageType'|titleFilter('灾害类型')}}</th>
                    <%--<th class="text-center" rowspan="2">事故类型</th>--%>
                    <th class="text-center" rowspan="2">{{'riskLevel'|titleFilter('等级')}}</th>
                    <th class="text-center" rowspan="2">{{'RiskColor'|titleFilter('预警程度')}}</th>
                    <%--<th class="text-center" rowspan="2">{{'RiskControlTier'|titleFilter('管控层次')}}</th>
                    <th class="text-center" rowspan="2">{{'managerUnitName'|titleFilter('责任部门')}}</th>
                    <th class="text-center" rowspan="2">{{'managerName'|titleFilter('责任人')}}</th>
                    <th class="text-center" rowspan="2">{{'riskSupervisor'|titleFilter('监管部门')}}</th>
                    --%>
                </thead>
                <tbody v-for="(risk,riskIndex) in riskSiteList">
                <tr>
                    <td v-text="riskIndex+1">1</td>
                    <td>
                        <i class="fa fa-caret-right fa-fw"></i> <a
                            v-text="risk.name+'('+risk.mchildRiskSite.length+')'"
                            @click="showChild(risk)"></a>
                    </td>
                    <td v-text="risk.riskDescription"></td>
                    <td v-text="risk.riskDamageType"></td>
                    <%--<td v-text="risk.riskAccident"></td>--%>
                   <td v-text="risk.riskLevel">重点
                    <td class="text-center"><span v-bind:style="'background-color:'+risk.riskColor"
                                                  class="btys"></span><span
                            v-if="risk.riskColor =='' || risk.riskColor ==null"
                            class="btys"></span></td>
                   <%-- <td v-text="risk.riskControlTier"></td>
                    <td v-text="risk.managerUnitName"></td>
                    <td v-text="risk.managerName"></td>
                    <td v-text="risk.riskSupervisor"></td>
                    --%>
                </tr>
                <tr v-for="(riskc,index) in risk.mchildRiskSite " v-show="risk.showChild"
                    v-bind:id="'risk'+riskc.riskSiteID">
                    <td v-text="(riskIndex+1)+'.'+(index+1)">1</td>
                    <td style="padding-left: 20px">
                        <i class="fa fa-caret-right fa-fw"></i> <a
                            v-text="riskc.name +'('+riskc.mhazards.length+')'"
                            @click="showHazard(riskc)"> </a>
                    </td>
                    <td v-text="riskc.riskDescription"></td>
                    <td v-text="riskc.riskDamageType"></td>
                    <%--<td v-text="riskc.riskAccident"></td>--%>
                    <td v-text="riskc.riskLevel">重点
                    <td class="text-center"><span v-bind:style="'background-color:'+riskc.riskColor"
                                                  class="btys"></span><span
                            v-if="riskc.riskColor =='' || riskc.riskColor ==null"
                            class="btys"></span></td>
                    <%--<td v-text="riskc.riskControlTier"></td>--%>
                    <%--<td v-text="riskc.managerUnitName"></td>--%>
                    <%--<td v-text="riskc.managerName"></td>--%>
                    <%--<td v-text="riskc.riskSupervisor"></td>--%>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="col-sm-12" hidden id="myhazard">
            <table id="general-table3" class="table table-striped table-bordered table-vcenter table-hover">
                <thead>
                <tr class="qga">
                    <th class="text-center" rowspan="2">序号</th>
                    <th class="text-center" rowspan="2">{{'Name'|titleFilterHazard('风险')}}</th>
                    <td class="text-center" rowspan="2">
                        {{'damageType'|titleFilterHazard('灾害类型')}}
                    </td>
                    <td class="text-center" rowspan="4">
                        风险分析
                    </td>
                    <td class="text-center" rowspan="2">{{'driskValue'|titleFilterHazard('风险值(D)')}}</td>
                    <th class="text-center" rowspan="2">{{'riskLevel'|titleFilterHazard('风险等级')}}</th>
                    <th class="text-center" rowspan="2">{{'riskColor'|titleFilterHazard('风险颜色')}}</th>
                    <td class="text-center" rowspan="2">
                        {{'manageUnit'|titleFilterHazard('管控部门')}}
                    </td>
                    <td class="text-center" rowspan="2">
                        {{'accountabilityUnit'|titleFilterHazard('责任单位')}}
                    </td>
                </thead>
                <tbody v-for="(risk,riskIndex) in riskhazardList">
                <tr>
                    <td class="text-center" v-text="riskIndex+1">1</td>
                    <td v-text="risk.name">
                    </td>
                    <td v-text="risk.damageType"></td>
                    <td v-if="risk.Sseverity==null"></td>
                    <td v-if="risk.Sseverity==0">评估方法(LEC): L={{risk.Lpossibility}} , E={{risk.Eexpose}} ,
                        C={{risk.clossConsequence}}
                    </td>
                    <td v-if="risk.Sseverity!=0&&risk.Sseverity!=null">评估方法(LS): L={{risk.Lpossibility}} ,
                        S={{risk.Sseverity}}
                    </td>
                    <%--<td class="text-center" v-text="risk.Lpossibility"></td>--%>
                    <%--<td v-text="riskHazard.Eexpose"></td>--%>
                    <%--<td v-text="riskHazard.consequence"></td>--%>
                    <%--<td class="text-center" v-text="risk.Sseverity"></td>--%>
                    <td class="text-center" v-text="risk.driskValue"></td>
                    <td v-text="risk.riskLevel"></td>
                    <td class="text-center"><span v-bind:style="'background-color:'+risk.riskColor"
                                                  class="btys"></span><span
                            v-if="risk.riskColor =='' || risk.riskColor ==null"
                            class="btys"></span></td>
                    <td v-text="risk.manageUnit"></td>
                    <td v-text="risk.accountabilityUnit"></td>
                </tr>
                </tbody>
            </table>
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
<script src="../js/vue.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/echarts.min.js"></script>
<script>
    var projectName = '<%=request.getContextPath() %>';
    var attrArray = null;
    var attrArrayHazard = null;
    /**
     * Created by Administrator on 2017/9/28
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            pagesize: 10,
            nowpage: 1,
            detailedList: [],
            riskSite: "",
            riskhazard: "",
            riskSiteNull: "",
            riskSiteList: new Array(),
            risk: "",
            riskhazardList: new Array(),
            damageList: "",
            damageType: {
                fData_Name: "未分类",

            },
            count: 0,


        },
        created: function () {
            var _self = this;
            _self.getNewRiskSite();
            _self.getNewRiskHazard();
        },
        mounted: function () {
        },
        updated: function () {

        },
        methods: {

            showChild: function (risk) {
                var _self = this;
                risk.showChild = !risk.showChild;
                var childs = risk.mchildRiskSite;
                for (var i = 0; i < childs.length; i++) {
                    if ($("#riskHazard" + childs[i].riskSiteID).length > 0) {
                        $("#riskHazard" + childs[i].riskSiteID).remove();
                    }
                }
            },
            showHazard: function (risk) {
                var _self = this;
                var id = 'risk' + risk.riskSiteID;
                if (risk.mhazards.length > 0) {
                    if ($("#riskHazard" + risk.riskSiteID).length > 0) {
                        $("#riskHazard" + risk.riskSiteID).remove();
                    } else {
                        var html = '<tr id=' + 'riskHazard' + risk.riskSiteID + '>' +
                            '<td class="text-center"> </td>' +
                            '<td style="border: 0;padding: 0" class="text-center" colspan="100">' +
                            '<table style="border: 0" class="table table-striped table-bordered table-vcenter">' +
                            '<thead>' +

                            '<tr class="biaot biaot1">' +
                            '<th class="text-center" rowspan="2">序号</th>' +
                            '<th class="text-center" rowspan="2">风险</th>' +
                            '<th class="text-center" rowspan="2">风险描述</th>' +
                            '<th class="text-center" rowspan="2">灾害类型</th>' +
                            //                                  '<td class="text-center" colspan="4">管控措施</td>' +
                            '<th class="text-center" rowspan="2">风险分析</th>' +
                            //                                  '<td class="text-center" rowspan="2">暴露率(E)</td>' +
                            //                                  '<td class="text-center" rowspan="2">后果(C)</td>' +
                            //                                  '<td class="text-center" rowspan="2">严重性(S)</td>' +
                            '<th class="text-center" rowspan="2">风险值(D)</th>' +
                            '<th class="text-center" rowspan="2">风险等级</th>' +
                            '<th class="text-center" rowspan="2">预警程度</th>' +
                            '<th class="text-center" rowspan="2">管控层次</th>' +
                            //                                  '<tr class="biaot">' +
                            //                                  '<td class="text-center">管理措施</td>' +
                            //                                  '<td class="text-center">培训教育</td>' +
                            //                                  '<td class="text-center">个体防护</td>' +
                            //                                  '<td class="text-center">应急处置</td>' +
                            //                                  '</tr>' +
                            '</thead>';

                        for (var i = 0; i < risk.mhazards.length; i++) {
                            var riskHazard = risk.mhazards[i];
                            var tid = "hazrd_" + riskHazard.hazardID;
                            //var hazrdid=riskHazard.hazardID;
                            riskHazard.name = riskHazard.name == null ? "" : riskHazard.name;
                            riskHazard.hazardDesc = riskHazard.hazardDesc == null ? "" : riskHazard.hazardDesc;
                            riskHazard.damageType = riskHazard.damageType == null ? "" : riskHazard.damageType;
                            riskHazard.clossConsequence = riskHazard.clossConsequence == null ? "" : riskHazard.clossConsequence;
                            riskHazard.Lpossibility = riskHazard.Lpossibility == null ? "" : riskHazard.Lpossibility;
                            riskHazard.Eexpose = riskHazard.Eexpose == null ? "" : riskHazard.Eexpose;
                            riskHazard.consequence = riskHazard.consequence == null ? "" : riskHazard.consequence;
                            riskHazard.Sseverity = riskHazard.Sseverity == null ? "" : riskHazard.Sseverity;
                            riskHazard.driskValue = riskHazard.driskValue == null ? "" : riskHazard.driskValue;
                            riskHazard.riskLevel = riskHazard.riskLevel == null ? "" : riskHazard.riskLevel;
                            riskHazard.riskColor = riskHazard.riskColor == null ? "" : riskHazard.riskColor;
                            riskHazard.manageUnit = riskHazard.manageUnit == null ? "" : riskHazard.manageUnit;
                            riskHazard.supervisionUnit = riskHazard.supervisionUnit == null ? "" : riskHazard.supervisionUnit;

                            var lec = ""
                            if (riskHazard.clossConsequence != "" && riskHazard.clossConsequence != 0) {

                                lec = "评估方法(LEC): L=" + riskHazard.Lpossibility + ", E=" + riskHazard.Eexpose + ", C=" + riskHazard.clossConsequence
                            } else if (riskHazard.Sseverity != "" && riskHazard.Sseverity != 0) {
                                lec = "评估方法(LS): L=" + riskHazard.Lpossibility + ", S=" + riskHazard.Sseverity

                            }
                            html += '<tr class="biaot1 biaot2">' +
                                '<td>' + (i + 1) + '</td>' +
                                '<td >' + riskHazard.name + '</td>' +
                                '<td >' + riskHazard.hazardDesc + '</td>' +
                                '<td>' + riskHazard.damageType + '</td>' +
                                //                                      '<td>' + '' + '</td>' +
                                //                                      '<td>' + '' + '</td>' +
                                //                                      '<td>' + '' + '</td>' +
                                //                                      '<td>' + '' + '</td>' +
                                '<td>' + lec + '</td>' +
                                //                                      '<td>' + riskHazard.Eexpose + '</td>' +
                                //                                      '<td>' + riskHazard.consequence + '</td>' +
                                //                                    '<td >' + riskHazard.Sseverity + '</td>' +
                                '<td >' + riskHazard.driskValue + '</td>' +
                                '<td>' + riskHazard.riskLevel + '</td>' +
                                '<td class="text-center">' + '<span class="btys" style="background-color:' + riskHazard.riskColor +
                                '"></span>' +
                                '<td>' + '' + '</td>' +
                                '</tr>';


                        }
                        html += '</table> </td> </tr>';
                        $("#" + id).after(html);
                    }
                }

            },

            //得到一个risksite空对象
            getNewRiskSite: function () {
                var _self = this;
                $.get(projectName + "/RiskDetailedList/newRiskSite", function (data) {
                    _self.riskSite = data;
                    _self.getRiskAnalyzeByDamageType();
                });

            },
            //得到一个riskHazard空对象
            getNewRiskHazard: function () {
                var _self = this;
                $.get(projectName + "/RiskAssessment/newRiskhazard", function (data) {
                    _self.riskhazard = data;
                });

            },

            //风险点展示
            queryRiskSiteByRisk: function (mrisk) {
                var _self = this;
                if(_self.riskSiteList.length>0){
                    for(var j=0;j< _self.riskSiteList[0].mchildRiskSite.length;j++){

                        var risksitesid = _self.riskSiteList[0].mchildRiskSite[j].riskSiteID;
                        $("#riskHazard" + risksitesid).remove();
                    }
                }
                _self.riskSiteList = [];
                _self.riskSiteList.push(mrisk);
                $("#myrisk").show();
                $("#myhazard").hide();
                layer.closeAll('loading');
            },

            //灾害类型展示
            queryRiskSite: function (placesid, count, riskLevel) {
                var _self = this;
                for (var i = 0; i < _self.riskSiteList.length; i++) {
                    for (var j = 0; j < _self.riskSiteList[i].mchildRiskSite.length; j++) {
                        $("#riskHazard" + _self.riskSiteList[i].mchildRiskSite[j].riskSiteID).remove();
                    }

                }
                if (count == 0) {
                    _self.showToast("warning", "无风险点信息")
                    _self.riskSiteList = [];
                    return;

                }
                if (placesid == "" || placesid == null) {
                    _self.showToast("warning", "无风险点信息")
                    _self.riskSiteList = [];
                    return;
                } else {
                    //加载层
                    layer.load();
                    _self.riskSiteList = [];
                    _self.riskSiteList.length = 0;
                    //url:发送请求地址。
                    //data:待发送 Key/value 参数。
                    //callback:发送成功时回调函数。
                    //type:返回内容格式，xml, html, script, json, text, _default。
                    $.post(projectName + "/RiskControlPlaneByMonthControl/getSimpleRisksite/" + placesid, function (data) {

                        if (riskLevel == "0") {
                            _self.riskSiteList = data;
                        } else {
                            for (var i = 0; i < data.length; i++) {
                                if (data[i].riskLevel == riskLevel) {
                                    _self.riskSiteList.push(data[i]);

                                }
                                if (riskLevel == "未评估") {
                                    if (data[i].riskLevelSettingID == 0) {
                                        _self.riskSiteList.push(data[i]);
                                    }
                                }
                            }
                        }

                        $("#myrisk").show();
                        $("#myhazard").hide();
                        layer.closeAll('loading');

                    });

                }
            },

            queryHazard: function (placesid, hrvalue, hnum) {
                var _self = this;
                _self.riskhazardList = [];
                if (hnum == "0" || hnum == 0) {
                    _self.showToast("warning", "无风险信息");
                    _self.riskhazardList = [];
                    _self.riskSiteList = [];
                    return;

                } else {
                    if (hrvalue == "未评估") {
                        _self.riskhazard.riskLevel = null;
                        _self.riskhazard.risksiteFullNumber = placesid;
                        _self.riskhazard.status = 0

                    } else if (hrvalue == "-1") {
                        _self.riskhazard.riskLevel = null;
                        _self.riskhazard.risksiteFullNumber = placesid;
                        _self.riskhazard.status = null;
                    }
                    else {
                        _self.riskhazard.risksiteFullNumber = placesid;
                        _self.riskhazard.riskLevel = hrvalue;
                        _self.riskhazard.status = 1
                    }
                    //加载层
                    layer.load();
                    $.ajax({
                        url: projectName + "/RiskAssessment/getRiskhazard", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: JSON.stringify(_self.riskhazard),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        contentType: "application/json",
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
                            if (hrvalue == "-1") {
                                _self.riskhazardList = data;
                            } else {
                                for (var i = 0; i < data.length; i++) {
                                    if (data[i].riskLevel == hrvalue) {
                                        _self.riskhazardList.push(data[i]);

                                    }
                                    if (hrvalue == "未评估") {
                                        if (data[i].status == 0) {
                                            _self.riskhazardList.push(data[i]);
                                        }
                                    }
                                }
                            }


                            $("#myrisk").hide();
                            $("#myhazard").show();
                            layer.closeAll('loading');
                        },

                    });

                }


            },



            ////点击风险点跳转到这个——————
            getRiskAnalyzeByRisksite: function () {

                if ($("#myhazard").show()) {
                    $("#myrisk").show();
                    $("#myhazard").hide();
                };
                var _self = this;
                _self.count = 0
                _self.detailedList = [];
                _self.riskhazardList = [];
                _self.riskSiteList = [];
                _self.getPageCount();
                $("#block-tabs-sh").hide();
            },

            //获取风险点数据页数
            getPageCount:function () {
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
                            var page_options =
                                {
                                    size: 'small',
                                    bootstrapMajorVersion: 3,
                                    currentPage: 1,
                                    numberOfPages: data > 5 ? 5 : data,
                                    totalPages: data,
                                    onPageClicked: function (event, originalEvent, type, page) {
                                        _self.getDataByPage(page);
                                        //这个不要动，控制序号
                                        _self.nowpage = page;
                                        console.log(_self.nowpage);
                                    }
                                }
                            _self.getDataByPage(_self.nowpage);
                            $("#pagination").bootstrapPaginator(page_options);
                            console.log(_self.nowpage);
                        } else {
                            $("#pagination").hide();
                            _self.showToast("info", "没有查询到数据");
                            _self.detailedList = "";
                        }
                    }
                });
            },
            //获取风险点数据
            getDataByPage: function (page) {
                var _self = this;
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

                        var res = [];
                        var one = 0;
                        var two = 0;
                        var thr = 0;
                        var ffo = 0;
                        var fiv = 0;

                        for(var i=0;i<_self.detailedList.length;i++){
                            var array = _self.detailedList[i].childRiskCount.split(",");
                            if(array.length>2){
                                var a = [];
                                var arr1 = array[0].split(":");
                                _self.detailedList[i].number = arr1[1];
                                a.push(arr1[0]);
                                one = one + parseInt(arr1[1]);

                                var arr2 = array[1].split(":");
                                _self.detailedList[i].page = arr2[1];
                                a.push(arr2[0]);
                                two = two + parseInt(arr2[1]);

                                var arr3 = array[2].split(":");
                                _self.detailedList[i].pagesize = arr3[1];
                                a.push(arr3[0]);
                                thr = thr + parseInt(arr3[1]);

                                var arr4 = array[3].split(":");
                                _self.detailedList[i].parentID = arr4[1];
                                a.push(arr4[0]);
                                ffo = ffo + parseInt(arr4[1]);

                                var arr5 = array[4].split(":");
                                _self.detailedList[i].parentNumber = arr5[1];
                                a.push("未评估");
                                fiv = fiv + parseInt(arr5[1]);

                            }else{
                                _self.detailedList[i].number = 0;

                                _self.detailedList[i].page = 0;

                                _self.detailedList[i].pagesize = 0;

                                _self.detailedList[i].parentID = 0;

                                _self.detailedList[i].parentNumber = 0;
                            }
                        }
                        res.push(one);
                        res.push(two);
                        res.push(thr);
                        res.push(ffo);
                        res.push(fiv);
                        var msx = 4;
                        for(var j=0;j<res.length;j++){
                            if(msx < res[j]){
                                msx = res[j];
                            }
                        }
                        var optionsPie = myChart.getOption();


                        optionsPie.xAxis[0].data = a;
                        optionsPie.series[0].data = res;
                        //optionsPie.yAxis[0].max = _self.count +2,
//                        optionsPie.yAxis[0].max =  2 - vueApp.count % 2 + vueApp.count  ;
                        optionsPie.yAxis[0].max =  msx  ;
                        myChart.hideLoading();
                        // 使用刚指定的配置项和数据显示图表。
                        myChart.setOption(optionsPie);


                        layer.closeAll('loading');
                        $("#block-tabs-dd").show();
                    }
                });
            },


            //点击灾害类型跳转到这个——————
            getRiskAnalyzeByDamageType: function () {
                var _self = this;
                _self.detailedList = [];
                _self.riskhazardList = [];
                _self.riskSiteList = [];
                _self.count = 0
                if ($("#myhazard").show()) {
                    $("#myrisk").show();
                    $("#myhazard").hide();
                }
                ;
                $("#block-tabs-dd").hide();
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
                        _self.damageList = data.灾害类型;

                        _self.damageList.push(_self.damageType);
                        for (var i = 0; i < _self.damageList.length; i++) {
                            $.ajax({
                                url: projectName + "/RiskControlPlaneByMonthControl/getRiskAnalyzeByDamageType", //发送请求的地址。
                                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                data: {
                                    "frameWorkID": _self.riskSite.frameWorkID,
                                    "riskDamageType": _self.damageList[i].fData_Name
                                },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                dataType: "json",//预期服务器返回的数据类型。
                                async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                success: function (mydata) {
                                    //请求成功后的回调函数
                                    //获得图表的options对象
                                    _self.detailedList.push(mydata[0]);


                                },
                            });
                        }
                        var optionsPie = myChart.getOption();
                        var a = [];
                        var res = [];
                        _self.count = _self.detailedList[0].placeCount;

                        for (var i = 0; i < _self.damageList.length; i++) {
                            a.push(_self.damageList[i].fData_Name);
                            res.push({
                                value: _self.detailedList[i].placeCount,
//                                name: _self.damageList[i].fData_Name
                            })

                            if (_self.count < _self.detailedList[i].placeCount) {
                                _self.count = _self.detailedList[i].placeCount;
                            }

                        }
                        optionsPie.xAxis[0].data = a;
                        optionsPie.series[0].data = res;
                        optionsPie.yAxis[0].max = 2 - vueApp.count % 2 + vueApp.count,
                        myChart.hideLoading();
                        // 使用刚指定的配置项和数据显示图表。
                        myChart.setOption(optionsPie);
                        $("#block-tabs-sh").show();
                        // 基于准备好的dom，初始化echarts实例
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
        filters: {
            titleFilter: function (val, defaultName) {
                var  _self = this;
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
            },
            titleFilterHazard: function (val, defaultName) {
                var _self = this;
                var result = defaultName;
                if (attrArrayHazard == null) {
                    $.ajax({
                        url: projectName + "/SystemAttributeDevelop/classAttributes", //发送请求的地址。
                        type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: {name: 'Riskhazard'},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            attrArrayHazard = data;
                            for (var i = 0; i < attrArrayHazard.length; i++) {
                                if (val.toLowerCase() == attrArrayHazard[i].classpropertyName.toLowerCase()) {
                                    result = attrArrayHazard[i].classpropertyTitle;
                                } else {
                                    continue;
                                }
                            }
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {

                        }
                    });

                } else {
                    for (var i = 0; i < attrArrayHazard.length; i++) {
                        if (val.toLowerCase() == attrArrayHazard[i].classpropertyName.toLowerCase()) {
                            result = attrArrayHazard[i].classpropertyTitle;
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
});</script>
<script>
    $(function () {
    UiTables.init();

});</script>
<script>$(document).ready(function () {
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
    var myChart = echarts.init(document.getElementById('main'));
    option = {
        color: ['#3398DB'],
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
        //缩放
//        dataZoom: {
//            show: true,
//            realtime: true,
//           // yAxisIndex:"false",
//            y: 16,
//            height: 10,
//            start: 10,
//            //显示数量调这个
//            end: 60
//        },
        dataZoom: {
            show: true,
            realtime: true,
            y: 16,
            height: 10,
            start: 10,
            end: 25,
            top: 30
        },
            xAxis: [
            {
                type: 'category',
                data: [],
                 "axisLabel":{
                     interval: 0,
                     rotate:20 ,
                 },

                axisTick: {
                    alignWithLabel: true
                }


            }
        ],
        yAxis: [
            {
                type: 'value',
                min: 0,
                splitNumber: 2,
            }
        ],
        label: {
            normal: {
                show: true,
                position: 'top',
                textStyle: {
                    color: 'black'
                }
            }
        },
        series: [
            {
                type: 'bar',
                barWidth: '30px',
                data: [],

            }
        ]
    }
    myChart.hideLoading();
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);


</script>
</body>

</html>