<%--<%@ page import="org.kplatform4j.model.User" %>--%>
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
        /*td{white-space:nowrap;}*/
        td a {
            color: #495060
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
        #test2 li.active {

            border: 1px solid #b1b1b1;
            border-radius: 3px;
            box-sizing: border-box;
        }
        #test3 li.active {

            border: 1px solid #b1b1b1;
            border-radius: 3px;
            box-sizing: border-box;
        }
        #test4 li.active {

            border: 1px solid #b1b1b1;
            border-radius: 3px;
            box-sizing: border-box;
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

        #test li, #test1 li,#test2 li,#test3 li,#test4 li {
            padding: 5px 5px;
            margin-top: 5px;
            border: 2px solid #ffffff;
        }

        #test li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 256px 74px;
            box-sizing: border-box;
        }
        #test1 li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 256px 74px;
            box-sizing: border-box;
        }
        #test2 li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 152px 74px;
            box-sizing: border-box;
        }
        #test3 li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 152px 74px;
            box-sizing: border-box;
        }
        #test4 li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 152px 74px;
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
        .wxdj-wz{
            display: inline-block;
            width: 200px;
            vertical-align: text-top;
            height: 60px;
        }
        .wxdj-wz1{
            display: inline-block;
            width: 160px;
            vertical-align: text-top;
            height: 60px;
        }
        .modal-dialog {
            width: 625px;

        }.tcys {
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
        <%--<% User userObj = (User) session.getAttribute("user");--%>
            <%--String username = userObj.getFUserName();--%>
            <%--Integer userid = userObj.getFUserID();--%>
        <%--%>--%>
        <!-- Table Styles Header -->
        <div class="content-header">
            <div class="row">
                <div class="col-sm-6">
                    <div class="header-section">
                        <h1>安全风险评估</h1></div>
                </div>
            </div>
        </div>
        <!-- END Table Styles Header -->
        <!-- Table Styles Block -->
        <div class="block full" style="padding: 0;">
            <div class="">
                <div <%-- style="overflow-x: auto"--%>>
                    <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                        <div class="row" style="background-color: #fff;border: 0; padding-top: 0;">
                            <div class="col-sm-12" style="text-align: right;padding:0">
                                <%--&lt;%&ndash; <select class="form-control" name="">--%>
                                     <%--<option vaule="0">参考同类管控措施</option>--%>
                                     <%--<option value="11" v-for="sisk1 in detailedList" v-text="sisk1.name">{{sisk1}}</option>--%>
                                 <%--</select>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;  <div class="searchCon"><i class="hi hi-search"></i>&lt;%&ndash;<input name="search" id="keywords"--%>
                                                                                            <%--placeholder="输入风险点名称 回车查询"--%>
                                                                                            <%--class="searchWrap"--%>
                                                                                            <%--type="text">&ndash;%&gt;--%>
                                  <%--</div>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<button type="button" class="btn btn-effect-ripple btn-primary" data-toggle="modal"&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;data-target="#modal-add">筛选&ndash;%&gt;--%>
                                <%--</button>--%>
                            </div>
                        </div>
                    </div>
                    <div>

                        <div>
                            <ol class="breadcrumb">
                                <li><a href="<%=request.getContextPath()%>/menu/RiskAssessment.do"><%=request.getSession().getAttribute("position")%></a></li>
                                <li><a href="<%=request.getContextPath()%>/menu/RiskAssessmentShowMRiskSite.action">{{riskSite.name}}</a></li>
                                <li> <a href="<%=request.getContextPath()%>/menu/RiskAssessmentShowMRiskSite.action" class="btn btn-effect-ripple btn-primary">返回</a></li>
                            </ol>

                        </div>
                        <%--<ol class="breadcrumb">--%>
                            <%--<li><a href="<%=request.getContextPath()%>/menu/RiskAssessment.do"></a></li>--%>
                        <%--</ol>--%>
                    </div>
                    <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                        <tr class="biaot biaot1">
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
                            <td class="text-center" rowspan="2" style="min-width: 200px" v-show="showOrNot('Name')">{{'Name'|titleFilter('风险')}}</td>
                            <td class="text-center" rowspan="2" style="min-width: 300px" v-show="showOrNot('hazardDesc')">{{'hazardDesc'|titleFilter('风险描述')}}</td>

                            <td class="text-center" rowspan="2" v-show="showOrNot('damageType')">
                                {{'damageType'|titleFilter('灾害类型')}}
                            </td>
                            <td class="text-center" rowspan="2" v-show="showOrNot('accidentType')">
                                {{'accidentType'|titleFilter('事故类型')}}
                            </td>
                            <%--<td class="text-center" rowspan="2" v-show="showOrNot('lossConsequence')">--%>
                                <%--{{'clossConsequence'|titleFilter('损失程度')}}--%>
                            <%--</td>--%>
                            <%--<td class="text-center" rowspan="2" v-show="showOrNot('consequence')"> {{'consequence'|titleFilter('后果')}}</td>--%>
                            <%--<td class="text-center" colspan="4">管控措施</td>--%>
                            <td class="text-center" rowspan="4" style="min-width: 200px">
                                风险分析
                            </td>
                            <%--<td class="text-center" rowspan="2">暴露率(E)</td>--%>
                            <%--<td class="text-center" rowspan="2">后果(C)</td>--%>
                            <%--<td class="text-center" rowspan="2" v-show="showOrNot('Sseverity')">--%>
                                <%--{{'Sseverity'|titleFilter('严重性(S)')}}--%>
                            <%--</td>--%>
                            <td class="text-center" rowspan="2" v-show="showOrNot('riskValue')">
                                {{'driskValue'|titleFilter('风险值(D)')}}
                            </td>
                            <td class="text-center" rowspan="2" v-show="showOrNot('riskLevel')">{{'riskLevel'|titleFilter('风险等级')}}</td>
                            <td class="text-center" rowspan="2" v-show="showOrNot('riskColor')">{{'riskColor'|titleFilter('风险颜色')}}</td>

                            <%--<td class="text-center" rowspan="2" v-show="showOrNot('manageUnit')">--%>
                                <%--{{'manageUnit'|titleFilter('管控部门')}}--%>
                            <%--</td>--%>
                            <%--<td class="text-center" rowspan="2" v-show="showOrNot('accountabilityUnit')">--%>
                                <%--{{'accountabilityUnit'|titleFilter('责任单位')}}--%>
                            <%--</td>--%>
                            <td class="text-center" rowspan="2" >管控周期（始）
                            </td>
                            <td class="text-center" rowspan="2" >管控周期（终）
                            </td>
                            <td class="text-center" rowspan="2" >矿级管控
                            </td>
                            <td class="text-center" rowspan="2" >专业级管控
                            </td>
                            <td class="text-center" rowspan="2" >职能部室级管控
                            </td>
                            <td class="text-center" rowspan="2" >区队级管控
                            </td>
                            <td class="text-center" rowspan="2" >班组个人级管控
                            </td>
                            <td class="text-center" rowspan="2" v-show="showOrNot('status')">{{'supervisionUnit'|titleFilter('状态')}}</td>
                            <td class="text-center" rowspan="2">操作</td>
                        <%--<tr class="biaot">--%>
                            <%--<td class="text-center">管理措施</td>--%>
                            <%--<td class="text-center">培训教育</td>--%>
                            <%--<td class="text-center">个体防护</td>--%>
                            <%--<td class="text-center">应急处置</td>--%>
                        <%--</tr>--%>
                        <tbody v-for="(riskHazard,riskIndex) in riskHazards">
                        <tr class="biaot1 biaot2">
                            <td class="text-center" v-text="riskIndex+1"></td>
                            <td v-text="riskHazard.name" v-show="showOrNot('Name')"></td>
                            <td v-text="riskHazard.hazardDesc" v-show="showOrNot('hazardDesc')"></td>

                            <td v-show="showOrNot('damageType')">
                                <span v-if="riskHazard.riskLevel=='重大风险'" style="color:red" v-text="riskHazard.damageType" ></span>
                                <span v-if="riskHazard.riskLevel!='重大风险'"  v-text="riskHazard.damageType"></span>
                            </td>
                            <td v-text="riskHazard.accidentType" v-show="showOrNot('accidentType')"></td>

                        <%--<td v-text="riskHazard.consequence" v-show="showOrNot('consequence')"></td>--%>
                            <%--<td v-text="riskHazard.consequence" v-show="showOrNot('consequence')"></td>--%>
                            <%--<td></td>--%>
                            <%--<td></td>--%>
                            <%--<td></td>--%>
                            <%--<td></td>--%>
                            <td v-if="riskHazard.Sseverity==null&&riskHazard.clossConsequence==null"></td>
                            <td v-if="riskHazard.clossConsequence!=null&&riskHazard.clossConsequence!=0">评估方法(LEC): L={{riskHazard.Lpossibility}} , E={{riskHazard.Eexpose}} , C={{riskHazard.clossConsequence}}</td>
                            <td v-if="riskHazard.Sseverity!=0&&riskHazard.Sseverity!=null">评估方法(LS): L={{riskHazard.Lpossibility}} , S={{riskHazard.Sseverity}}</td>

                        <%--<td v-text="riskHazard.Eexpose"></td>--%>
                            <%--<td v-text="riskHazard.consequence"></td>--%>
                            <%--<td v-text="riskHazard.Sseverity"  v-show="showOrNot('Sseverity')"></td>--%>
                            <td v-text="riskHazard.driskValue" v-show="showOrNot('riskValue')"></td>
                            <td v-text="riskHazard.riskLevel" v-show="showOrNot('riskLevel')"></td>
                            <td class="text-center" v-show="showOrNot('riskColor')" v-if="riskHazard.riskColor!=null"><span v-show="showOrNot('riskColor')"
                                                           v-bind:style="'background-color:'+riskHazard.riskColor"
                                                           class="btys"></span></td>
                            <td class="text-center" v-show="showOrNot('riskColor')" v-if="riskHazard.riskColor==null"></td>
                            <%--<td v-text="riskHazard.manageUnit" v-show="showOrNot('manageUnit')"></td>--%>
                            <%--<td v-text="riskHazard.accountabilityUnit" v-show="showOrNot('accountabilityUnit')"></td>--%>
                            <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                            <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                            <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                            <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                            <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                            <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                            <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                            <td v-if="riskHazard.mRiskControlRange.length!=0"   v-text="riskHazard.mRiskControlRange[0].controlRangeStartDay"
                            ></td>
                            <td v-if="riskHazard.mRiskControlRange.length!=0"   v-text="riskHazard.mRiskControlRange[0].controlRangeEndDay"
                            ></td>
                            <td v-for="range in riskHazard.mRiskControlRange"
                                v-if="range.controlRangeName=='矿级'"
                                v-text="range.manageUnit+'--'+range.manageDuty+'--'+range.controlRangePinci"></td>

                            <td v-for="range in riskHazard.mRiskControlRange"
                                v-if="range.controlRangeName=='专业级'"
                                v-text="range.manageUnit+'--'+range.manageDuty+'--'+range.controlRangePinci"></td>

                            <td v-for="range in riskHazard.mRiskControlRange"
                                v-if="range.controlRangeName=='职能部室级'"
                                v-text="range.manageUnit+'--'+range.manageDuty+'--'+range.controlRangePinci"></td>


                            <td v-for="range in riskHazard.mRiskControlRange"
                                v-if="range.controlRangeName=='区队级'"
                                v-text="range.manageUnit+'--'+range.manageDuty+'--'+range.controlRangePinci"></td>

                            <td v-for="range in riskHazard.mRiskControlRange"
                                v-if="range.controlRangeName=='班组个人级'"
                                v-text="range.manageUnit+'--'+range.manageDuty+'--'+range.controlRangePinci"></td>

                            <td v-if="riskHazard.status==0" v-show="showOrNot('status')">未评估</td>
                            <td v-if="riskHazard.status==1" v-show="showOrNot('status')">已评估</td>

                            <td>
                                <a @click="getRiskHazardMethod(riskHazard.hazardID)" style="color: #337ab7">评估</a>

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
        <!--危险源评价modal-->
        <div id="modal-regularharzard" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="height: auto;min-height: 1081px">
                    <div class="modal-body">

                        <div class="block-title">
                            <h4 style="width: 100%;">
                                风险:{{updateRiskHazard.name}} <span >({{updateRiskHazard.riskType}})</span>
                                <div style="float: right;font-size:12px">风险等级：<span style="font-size:16px;">{{updateRiskHazard.riskLevel}}</span>
                                </div>
                            </h4>
                            <input type=" " v-model="updateRiskHazard.name" hidden>
                            <input type=" " v-model="updateRiskHazard.riskObject" hidden>
                            <input type=" " v-model="updateRiskHazard.riskLevel" hidden>

                        </div>
                        <div>
                           <%-- <input type="radio" v-model="LecOrLs" :value="true" ><span style="font-size: 18px;font-weight: 600">风险矩阵分析法（LS）</span>
                            <input type="radio" v-model="LecOrLs" :value="false" ><span style="font-size: 18px;font-weight: 600">LEC风险评价法</span>
--%>
                               <input type="radio" v-model="LecOrLs" :value="true" id="ls" >
                               <label for="ls" style="font-size: 18px;font-weight: 600">风险矩阵分析法（LS）</label>
                               <input type="radio" v-model="LecOrLs" :value="false" id="lec" >
                               <label for="lec" style="font-size: 18px;font-weight: 600">LEC风险评价法</label>

                        </div>
                        <form method="post" class="form-horizontal" onsubmit="return false;" id="showLS">


                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label class="col-sm-12 control-label " style="text-align: left;"
                                           for="example-input-small">可能性(L)</label>
                                    <div class="col-sm-12" style="padding: 0;">
                                        <ul id="test1">
                                            <li id="l6" class="active" @click="getLS(6,0)" v-bind:class="{active:updateRiskHazard.Lpossibility==6&&updateRiskHazard.Sseverity!=0}"><span class="wxdj wxdj-h"></span>6
                                                <div class="wxdj-wz">有时发生≥10/1年</div>
                                            </li>
                                            <li id="l5" @click="getLS(5,0)" v-bind:class="{active:updateRiskHazard.Lpossibility==5&&updateRiskHazard.Sseverity!=0}"><span class="wxdj wxdj-h"></span>5
                                                <div class="wxdj-wz">能发生1/1年</div>
                                            </li>
                                            <li id="l4" @click="getLS(4,0)" v-bind:class="{active:updateRiskHazard.Lpossibility==4&&updateRiskHazard.Sseverity!=0}"><span class="wxdj wxdj-u"></span>4
                                                <div class="wxdj-wz">可能发生1/5年</div>
                                            </li>
                                            <li id="l3" @click="getLS(3,0)" v-bind:class="{active:updateRiskHazard.Lpossibility==3&&updateRiskHazard.Sseverity!=0}"><span class="wxdj wxdj-u"></span>3
                                                <div class="wxdj-wz">低可能1/10年</div>
                                            </li>
                                            <li id="l2" @click="getLS(2,0)" v-bind:class="{active:updateRiskHazard.Lpossibility==2&&updateRiskHazard.Sseverity!=0}"><span class="wxdj wxdj-j"></span>2
                                                <div class="wxdj-wz">很少1/40年</div>
                                            </li>
                                            <li id="l1" @click="getLS(1,0)" v-bind:class="{active:updateRiskHazard.Lpossibility==1&&updateRiskHazard.Sseverity!=0}"><span class="wxdj wxdj-l"></span>1
                                                <div class="wxdj-wz">估计从不发生1/100年</div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <label class="col-sm-12 control-label " style="text-align: left;"
                                           for="example-input-small">严重性(S)</label>
                                    <div class="col-sm-12" style="padding: 0;">
                                        <ul id="test">
                                            <li id="s6" @click="getLS(0,6)"  v-bind:class="{active:updateRiskHazard.Sseverity==6}"><span class="wxdj wxdj-h"></span>6
                                                <div class="wxdj-wz">多人死亡 500万以上</div>
                                            </li>
                                            <li id="s5" @click="getLS(0,5)" v-bind:class="{active:updateRiskHazard.Sseverity==5}"><span class="wxdj wxdj-h"></span>5
                                                <div class="wxdj-wz">一人死亡 100万到500万之间</div>
                                            </li>
                                            <li id="s4" @click="getLS(0,4)" v-bind:class="{active:updateRiskHazard.Sseverity==4}"><span class="wxdj wxdj-u"></span>4
                                                <div class="wxdj-wz">多人收严重伤害 4万到100万之间</div>
                                            </li>
                                            <li id="s3" @click="getLS(0,3)" v-bind:class="{active:updateRiskHazard.Sseverity==3}"><span class="wxdj wxdj-u"></span>3
                                                <div class="wxdj-wz">一人受严重伤害 1万到4万之间</div>
                                            </li>
                                            <li id="s2" @click="getLS(0,2)" v-bind:class="{active:updateRiskHazard.Sseverity==2}"><span class="wxdj wxdj-j"></span>2
                                                <div class="wxdj-wz">一人受到伤害，需要急救；或多人受轻微伤害2000到1万之间</div>
                                            </li>
                                            <li id="s1" @click="getLS(0,1)" v-bind:class="{active:updateRiskHazard.Sseverity==1}"><span class="wxdj wxdj-l"></span>1
                                                <div class="wxdj-wz">一人受轻微伤害 0到2000之间</div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>

                            </div>
                            <div class="form-group">
                                <label class="col-sm-12 control-label " style="text-align: left;" for="example-input-small">{{'riskLevel'|titleFilter('风险等级')}}</label>
                                <div class="col-sm-12">
                                    <div v-if="updateRiskHazard.riskColor !=''"
                                         v-bind:style="'background-color:'+updateRiskHazard.riskColor">
                                        <p style="text-align:center">{{updateRiskHazard.riskLevel}}</p>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <div  class="form-horizontal"  id="showLEC">


                            <div class="form-group">
                                <div class="col-sm-4">
                                    <label class="col-sm-12 control-label " style="text-align: left;">可能性(L)</label>
                                    <div class="col-sm-12" style="padding: 0;">
                                        <ul id="test4">
                                            <li id="el6" @click="getLEC(10,0,0)" v-bind:class="{active:updateRiskHazard.Lpossibility==10&&updateRiskHazard.clossConsequence!=0&&updateRiskHazard.clossConsequence!=null}"><span class="wxdj wxdj-h"></span>10
                                                <div class="wxdj-wz1">完全可以预料</div>
                                            </li>
                                            <li id="el5" @click="getLEC(6,0,0)" v-bind:class="{active:updateRiskHazard.Lpossibility==6&&updateRiskHazard.clossConsequence!=0&&updateRiskHazard.clossConsequence!=null}"><span class="wxdj wxdj-h"></span>6
                                                <div class="wxdj-wz1">相当可能</div>
                                            </li>
                                            <li id="el4" @click="getLEC(3,0,0)" v-bind:class="{active:updateRiskHazard.Lpossibility==3&&updateRiskHazard.clossConsequence!=0&&updateRiskHazard.clossConsequence!=null}"><span class="wxdj wxdj-u"></span>3
                                                <div class="wxdj-wz1">可能但不经常</div>
                                            </li>
                                            <li id="el3" @click="getLEC(1,0,0)" v-bind:class="{active:updateRiskHazard.Lpossibility==1&&updateRiskHazard.clossConsequence!=0&&updateRiskHazard.clossConsequence!=null}"><span class="wxdj wxdj-u"></span>1
                                                <div class="wxdj-wz1">可能性小，完全意外</div>
                                            </li>
                                            <li id="el2" @click="getLEC(0.5,0,0)" v-bind:class="{active:updateRiskHazard.Lpossibility==0.5&&updateRiskHazard.clossConsequence!=0&&updateRiskHazard.clossConsequence!=null}"><span class="wxdj wxdj-j"></span>0.5
                                                <div class="wxdj-wz1">很不可能，可以设想</div>
                                            </li>
                                            <li id="el1" @click="getLEC(0.2,0,0)" v-bind:class="{active:updateRiskHazard.Lpossibility==0.2&&updateRiskHazard.clossConsequence!=0&&updateRiskHazard.clossConsequence!=null}"><span class="wxdj wxdj-l"></span>0.2
                                                <div class="wxdj-wz1">极不可能</div>
                                            </li>
                                            <li id="el0" @click="getLEC(0.1,0,0)" v-bind:class="{active:updateRiskHazard.Lpossibility==0.1&&updateRiskHazard.clossConsequence!=0&&updateRiskHazard.clossConsequence!=null}"><span class="wxdj wxdj-l"></span>0.1
                                                <div class="wxdj-wz1">实际不可能</div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <label class="col-sm-12 control-label " style="text-align: left;"
                                           for="example-input-small">暴露率(E)</label>
                                    <div class="col-sm-12" style="padding: 0;">
                                        <ul id="test2">
                                            <li id="e6" @click="getLEC(0,10,0)" v-bind:class="{active:updateRiskHazard.Eexpose==10}"><span class="wxdj wxdj-h"></span>10
                                                <div class="wxdj-wz1">连续暴露</div>
                                            </li>
                                            <li id="e5" @click="getLEC(0,6,0)" v-bind:class="{active:updateRiskHazard.Eexpose==6}"><span class="wxdj wxdj-h"></span>6
                                                <div class="wxdj-wz1">每天工作时间内暴露</div>
                                            </li>
                                            <li id="e4" @click="getLEC(0,3,0)" v-bind:class="{active:updateRiskHazard.Eexpose==3}"><span class="wxdj wxdj-u"></span>3
                                                <div class="wxdj-wz1">每周一次或偶然暴露</div>
                                            </li>
                                            <li id="e3" @click="getLEC(0,2,0)" v-bind:class="{active:updateRiskHazard.Eexpose==2}"><span class="wxdj wxdj-u"></span>2
                                                <div class="wxdj-wz1">每月一次暴露</div>
                                            </li>
                                            <li id="e2" @click="getLEC(0,1,0)" v-bind:class="{active:updateRiskHazard.Eexpose==1}"><span class="wxdj wxdj-j"></span>1
                                                <div class="wxdj-wz1">每年几次暴露</div>
                                            </li>
                                            <li id="e1" @click="getLEC(0,0.5,0)" v-bind:class="{active:updateRiskHazard.Eexpose==0.5}"><span class="wxdj wxdj-l"></span>0.5
                                                <div class="wxdj-wz1">非常罕见暴露</div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <label class="col-sm-12 control-label " style="text-align: left;"
                                           for="example-input-small">产生的后果(C)</label>
                                    <div class="col-sm-12" style="padding: 0;">
                                        <ul id="test3">
                                            <li id="ec6" @click="getLEC(0,0,100)" v-bind:class="{active:updateRiskHazard.clossConsequence==100}"><span class="wxdj wxdj-h"></span>100
                                                <div class="wxdj-wz1">大灾难，许多人死亡（10人以上死亡）</div>
                                            </li>
                                            <li id="ec5" @click="getLEC(0,0,40)" v-bind:class="{active:updateRiskHazard.clossConsequence==40}"><span class="wxdj wxdj-h"></span>40
                                                <div class="wxdj-wz1">灾难，数人死亡（3~9人死亡）</div>
                                            </li>
                                            <li id="ec4" @click="getLEC(0,0,15)" v-bind:class="{active:updateRiskHazard.clossConsequence==15}"><span class="wxdj wxdj-u"></span>15
                                                <div class="wxdj-wz1">非常严重，1~2人死亡</div>
                                            </li>
                                            <li id="ec3" @click="getLEC(0,0,7)" v-bind:class="{active:updateRiskHazard.clossConsequence==7}"><span class="wxdj wxdj-u"></span>7
                                                <div class="wxdj-wz1">严重</div>
                                            </li>
                                            <li id="ec2" @click="getLEC(0,0,3)" v-bind:class="{active:updateRiskHazard.clossConsequence==3}"><span class="wxdj wxdj-j"></span>3
                                                <div class="wxdj-wz1">重大，伤残</div>
                                            </li>
                                            <li id="ec1" @click="getLEC(0,0,1)" v-bind:class="{active:updateRiskHazard.clossConsequence==1}"><span class="wxdj wxdj-l"></span>1
                                                <div class="wxdj-wz1">引人注意</div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12 control-label " style="text-align: left;" for="example-input-small">{{'riskLevel'|titleFilter('风险等级')}}</label>
                                <div class="col-sm-12">
                                    <div v-if="updateRiskHazard.riskColor !=''"
                                         v-bind:style="'background-color:'+updateRiskHazard.riskColor">
                                        <p style="text-align:center">{{updateRiskHazard.riskLevel}}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-primary"
                                @click="getAssessmentRiskHazard(updateRiskHazard)">保存
                        </button>
                        <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
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
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/vue.js"></script>
<script>
    $(document).ready(function(){
        $("#showLEC").hide();

    })
    $(function () {
        $("#test li").click(function () {
            $(this).siblings('li').removeClass('active'); // 删除其他兄弟元素的样式
            $(this).addClass('active'); // 添加当前元素的样式
        });
        $("#test1 li").click(function () {
            $(this).siblings('li').removeClass('active'); // 删除其他兄弟元素的样式
            $(this).addClass('active'); // 添加当前元素的样式
        });
        $("#test2 li").click(function () {
            $(this).siblings('li').removeClass('active'); // 删除其他兄弟元素的样式
            $(this).addClass('active'); // 添加当前元素的样式
        });
        $("#test3 li").click(function () {
            $(this).siblings('li').removeClass('active'); // 删除其他兄弟元素的样式
            $(this).addClass('active'); // 添加当前元素的样式
        });
        $("#test4 li").click(function () {
            $(this).siblings('li').removeClass('active'); // 删除其他兄弟元素的样式
            $(this).addClass('active'); // 添加当前元素的样式
        });
    });
</script>
<script src="../js/resource.js"></script>
<script type="text/javascript">
    function search() {
        if (event.keyCode == 13) {
            var keywords = $("#keywords").val();
            vueApp.riskSite.name = keywords;
            vueApp.getPageCount();
        }
    }

    var projectName = '<%=request.getContextPath() %>';
    var pageVar = "fxpglist";//页面唯一变量标识，每个页面不能重复
    var attrArray = null;
    /**
     * Created by txianwei on 2017/9/14
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            riskSite: "",
            riskHazards: "",
            updateRiskHazard: '',
            attributes: new Array(),
            propertys: new Array(),
            LecOrLs:true,
            riskdegree:"",
            riskdegreeList:"",

        },
        created: function () {
            var _self = this;
            _self.getHazardByID();
            _self.getRiskAttributes();
            _self.getNewRiskdegree();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            //得到riskdegree空对象
            getNewRiskdegree:function(){
              var _self=this;
              //url:待载入页面的URL地址
              //data:待发送 Key/value 参数。
              //callback:载入成功时回调函数。
              //type:返回内容格式，xml, html, script, json, text, _default。
              $.get(projectName+"/RiskAssessment/getNewRiskdegree",function(data){
                _self.riskdegree=data;
                _self.getRiskdegreeList();

              });

            },
            getRiskdegreeList:function(){
              var _self=this;
              $.ajax({
                  url:projectName+"/RiskAssessment/getRiskdegreeList", //发送请求的地址。
                  type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                  data:JSON.stringify(_self.riskdegree),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                  dataType:"json",//预期服务器返回的数据类型。
                  contentType: "application/json",
                  async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                  success: function(data){
                    //请求成功后的回调函数
                      _self.riskdegreeList=data;
                  },

              });


            },


            getRiskAttributes: function () {
                var _self = this;
                $.get(projectName + "/SystemAttributeDevelop/classAttributes", {name: 'Riskhazard'}, function (data) {
                    _self.attributes = data;
                    _self.propertys = data.map(function (item) {
                        return item.classpropertyName.toUpperCase();
                    });
                    _self.getShowState();
                });
            },
            //从localStorage获取某列的状态反显到checkbox
            getShowState: function () {
                var _self = this;
                for (var i = 0; i < _self.attributes.length; i++) {
                    if (localStorage.getItem((pageVar + _self.attributes[i].classpropertyName).toUpperCase()) == null || localStorage.getItem((pageVar + _self.attributes[i].classpropertyName).toUpperCase()) == "true") {
                    } else {
                        for(var j=0;j<_self.propertys.length;j++){
                            if(_self.attributes[i].classpropertyName.toUpperCase()==_self.propertys[j]){
                                _self.propertys.splice(j,1);
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

                _self.getHazardByID();
            },
            //获取危险源信息
            getHazardByID: function () {
                var _self = this;
                $.post(projectName + "/RiskControlMeasureControl/getHazard", function (data) {
                    _self.riskSite = data;
                    _self.riskHazards = data.mhazards;
                    for (var i = 0; i < _self.riskHazards.length; i++) {
                        if (_self.riskHazards[i].mRiskControlRange.length != 0) {
                            var mrangs = _self.riskHazards[i].mRiskControlRange
                            for (var j = 0; j < mrangs.length; j++) {
                                if (mrangs[j].manageDuty == null) {
                                    mrangs[j].manageDuty = "";
                                }
                                if (mrangs[j].manageUnit == null) {
                                    mrangs[j].manageUnit = "";
                                }
                                if (mrangs[j].controlRangePinci == null) {
                                    mrangs[j].controlRangePinci = "";
                                }
                            }

                        }
                    }

                });
            },
            //风险点评估提交
            getAssessmentRiskSite: function () {
                var _self = this;
                _self.riskSite.status = 1;
                $.ajax({
                    url: projectName + "/RiskAssessment/assessmentRiskSite", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.riskSite),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数

                    }
                })
            },
            //根据hazardID得到Riskhazard对象
            getRiskHazardMethod: function (data) {
                var _self = this;
                var hazardID = data
                //url:发送请求地址。
                //data:待发送 Key/value 参数。
                //callback:发送成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/RiskAssessment/getRiskhazard/" + hazardID, function (data) {
                    _self.updateRiskHazard = data;
                    if(_self.updateRiskHazard.Sseverity!=0&&_self.updateRiskHazard.Sseverity!=null){
                        _self.LecOrLs=true;
                        $("#test li").removeClass("active")
                        $("#test1 li").removeClass("active")
//                    $("#test2 li").removeClass("active")
//                    $("#test3 li").removeClass("active")
//                    $("#test4 li").removeClass("active")
                        if(_self.updateRiskHazard.Sseverity=="6") {
                            $("#s6").addClass("active")
                        }else if(_self.updateRiskHazard.Sseverity=="5"){
                            $("#s5").addClass("active")

                        }else if(_self.updateRiskHazard.Sseverity=="4"){
                            $("#s4").addClass("active")

                        }else if(_self.updateRiskHazard.Sseverity=="3"){
                            $("#s3").addClass("active")

                        }else if(_self.updateRiskHazard.Sseverity=="2"){
                            $("#s2").addClass("active")

                        }else if(_self.updateRiskHazard.Sseverity=="1"){
                            $("#s1").addClass("active")

                        }
                        if(_self.updateRiskHazard.Lpossibility=="6") {
                            $("#l6").addClass("active")
                        }else if(_self.updateRiskHazard.Lpossibility=="5"){
                            $("#l5").addClass("active")

                        }else if(_self.updateRiskHazard.Lpossibility=="4"){
                            $("#l4").addClass("active")

                        }else if(_self.updateRiskHazard.Lpossibility=="3"){
                            $("#l3").addClass("active")

                        }else if(_self.updateRiskHazard.Lpossibility=="2"){
                            $("#l2").addClass("active")

                        }else if(_self.updateRiskHazard.Lpossibility=="1"){
                            $("#l1").addClass("active")

                        }
                    }else{
                        $("#test li").removeClass("active")
                        $("#test1 li").removeClass("active")
                        _self.LecOrLs=false;
                    }

                    $("#modal-regularharzard").modal("show");
                });
            },
            //危险源评估提交
            getAssessmentRiskHazard: function (myriskHazard) {
                var _self = this;
                _self.updateRiskHazard = myriskHazard;
                _self.updateRiskHazard.status = 1;
                var checkedId =  $('input:radio:checked').attr("id");
                if(checkedId=="lec"){
                    //alert(_self.updateRiskHazard.Lpossibility + "   " + _self.updateRiskHazard.Eexpose+"  "+_self.updateRiskHazard.clossConsequence);
                    if(_self.updateRiskHazard.Lpossibility==0 || _self.updateRiskHazard.Eexpose==0 || _self.updateRiskHazard.clossConsequence==0){
                        _self.showToast("error", "评估失败,请重新选择");
                        return;
                    }
                    if(_self.updateRiskHazard.Lpossibility==2 || _self.updateRiskHazard.Lpossibility==4 || _self.updateRiskHazard.Lpossibility==5  ){
                        _self.updateRiskHazard.Lpossibility=0
                    }
                    if(_self.updateRiskHazard.Lpossibility==0 || _self.updateRiskHazard.Eexpose==0 || _self.updateRiskHazard.clossConsequence==0){
                        _self.showToast("error", "评估失败,请选择(L)");
                        return;
                    }

                }else if(checkedId=="ls"){
                    //alert(_self.updateRiskHazard.Lpossibility + "   " + _self.updateRiskHazard.Sseverity)
                    if(_self.updateRiskHazard.Lpossibility==0 || _self.updateRiskHazard.Sseverity==0){
                        _self.showToast("error", "评估失败,请重新选择");
                        return;
                    }
                    if(_self.updateRiskHazard.Lpossibility==10 || _self.updateRiskHazard.Lpossibility==0.1 || _self.updateRiskHazard.Lpossibility==0.5 || _self.updateRiskHazard.Lpossibility==0.2  ){
                        _self.updateRiskHazard.Lpossibility=0
                    }
                    if(_self.updateRiskHazard.Lpossibility==0 || _self.updateRiskHazard.Sseverity==0){
                        _self.showToast("error", "评估失败,请选择(L)");
                        return;
                    }

                }
                delete _self.updateRiskHazard.handler;
                //加载层
                layer.load();
                $.ajax({
                    type: "PUT",
                    url: projectName + "/RiskAssessment/assessmentHazardLevel",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.updateRiskHazard),
                    success: function (data) {
                        //console.log(data);
                        _self.riskdegreeitem = data;
                        _self.showToast("success", "评估成功");
                        _self.getHazardByID();
                        $("#modal-regularharzard").modal("hide");
                        layer.closeAll('loading');

                    },
                });

            },
            getLS: function (L, S) {
                var _self = this;
                _self.updateRiskHazard.Eexpose=0;
                _self.updateRiskHazard.clossConsequence=0;
                if (L != 0) {
                    _self.updateRiskHazard.Lpossibility = L;
                }
                if (S != 0) {
                    _self.updateRiskHazard.Sseverity = S;

                }
                if (_self.updateRiskHazard.Sseverity == null || _self.updateRiskHazard.Sseverity == "" || _self.updateRiskHazard.Lpossibility == "" || _self.updateRiskHazard.Lpossibility == null) {
                    return

                }else{
                    var value=_self.updateRiskHazard.Sseverity*_self.updateRiskHazard.Lpossibility
                    for(var i=0;i<_self.riskdegreeList.length;i++){
                        if(_self.riskdegreeList[i].hazardidentificationMethod.indexOf("LS")!=-1){
                            var itemList=_self.riskdegreeList[i].mRiskdegreeitems;
                            for(var j=0;j<itemList.length;j++){
                                var vmax=itemList[j].riskRangMAX;
                                var vmin=itemList[j].riskRangMIX;
                                if(value<=vmax&&value>=vmin){
                                    _self.updateRiskHazard.riskColor=itemList[j].mRiskLevelSetting.riskColor;
                                    _self.updateRiskHazard.riskLevel=itemList[j].mRiskLevelSetting.riskLevel;
                                    break;
                                }

                            }

                        }


                    }

                }
                console.log(_self.updateRiskHazard);


            },


            getLEC: function (L, E, C) {
                var _self = this;
                _self.updateRiskHazard.Sseverity=0;
                if (L != 0) {
                    _self.updateRiskHazard.Lpossibility = L;
                }
                if (E != 0) {
                    _self.updateRiskHazard.Eexpose = E;

                }
                if (C != 0) {
                    _self.updateRiskHazard.clossConsequence = C;

                }
                if (_self.updateRiskHazard.Eexpose == null || _self.updateRiskHazard.Eexpose == ""
                    || _self.updateRiskHazard.Lpossibility == "" || _self.updateRiskHazard.Lpossibility == null
                    || _self.updateRiskHazard.clossConsequence == "" || _self.updateRiskHazard.clossConsequence == null

                ) {
                    return

                }else{
                    var value=_self.updateRiskHazard.Eexpose*_self.updateRiskHazard.Lpossibility*_self.updateRiskHazard.clossConsequence;
                    for(var i=0;i<_self.riskdegreeList.length;i++){
                        if(_self.riskdegreeList[i].hazardidentificationMethod.indexOf("LEC")!=-1){
                            var itemList=_self.riskdegreeList[i].mRiskdegreeitems;
                            for(var j=0;j<itemList.length;j++){
                                var vmax=itemList[j].riskRangMAX;
                                var vmin=itemList[j].riskRangMIX;
                                if(value<=vmax&&value>=vmin){
                                    _self.updateRiskHazard.riskColor=itemList[j].mRiskLevelSetting.riskColor;
                                    _self.updateRiskHazard.riskLevel=itemList[j].mRiskLevelSetting.riskLevel;
                                    break;
                                }

                            }

                        }
                    }

                }
                console.log(_self.updateRiskHazard);


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
        watch:{
            "LecOrLs": {
                handler: function (val, oldVal) {
                    var _self = this;
                   if(_self.LecOrLs){
                       $("#showLEC").hide();
                       $("#showLS").show();

                   }else{
                       $("#showLS").hide();
                       $("#showLEC").show();

                   }
                },
                deep: true
            },

        },
        filters: {
            upCaseFilter: function (val) {
                    return val.toUpperCase();

            },
            titleFilter: function (val,defaultName) {
                var _self = this;
                console.log(val);
                console.log(defaultName);
                var result=defaultName;
                if (attrArray == null) {
                    $.ajax({
                        url: projectName + "/SystemAttributeDevelop/classAttributes", //发送请求的地址。
                        type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: {name: 'Riskhazard'},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
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