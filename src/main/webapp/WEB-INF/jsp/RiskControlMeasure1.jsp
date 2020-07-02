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
    <title>管控措施制定-风险</title>
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

        a {
            cursor: pointer;
        }

        .table > tbody + tbody {
            border-top: 0;
        }

        td a {
            color: #495060;
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
            margin-bottom: 20px;
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

        .table {
            margin-bottom: 0;
        }

        label input[type="radio"] {
            vertical-align: text-top;
        }

        textarea.form-control {
            height: 70px;
            resize: none;

        }

        td textarea {
            background-color: #fff !important;
            border: none !important;
        }

        .form-group {
            margin-bottom: 5px;
        }

        .modal-footer {

            bottom: 0;

        }

        .breadcrumb > li + li:before {
            color: #CCCCCC;
            content: "/";
            padding: 0 5px;
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

        /*td{*/
        /*white-space:nowrap*/
        /*}*/
    </style>
</head>

<body>
<div id="app">
    <%--<% User userObj = (User) session.getAttribute("user");--%>
    <%--String username = userObj.getFUserName();--%>
    <%--Integer userid = userObj.getFUserID();--%>
    <%--%>--%>
    <div id="page-content" style="min-height: 794px;" onkeydown="search()">
        <!-- Table Styles Header -->
        <div class="content-header">
            <div class="row">
                <div class="col-sm-6">
                    <div class="header-section">
                        <h1>管控措施制定</h1></div>
                </div>
            </div>
        </div>
        <!-- END Table Styles Header -->
        <!-- Table Styles Block -->
        <div class="block full" style="padding: 0;">
            <div class="">
                <div <%--style="overflow-x: auto"--%>>
                    <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                        <div class="row" style="background-color: #fff;border: 0; padding-top: 0;">
                            <div class="col-sm-12" style="text-align: right;padding:0">
                                <%-- <select class="form-control" name="">
                                     <option vaule="0">参考同类管控措施</option>
                                     <option value="11" v-for="sisk1 in detailedList" v-text="sisk1.name">{{sisk1}}</option>
                                 </select>--%>
                                <%--  <div class="searchCon"><i class="hi hi-search"></i>&lt;%&ndash;<input name="search" id="keywords"
                                                                                            placeholder="输入风险点名称 回车查询"
                                                                                            class="searchWrap"
                                                                                            type="text">&ndash;%&gt;
                                  </div>--%>
                                <%--  <button type="button" class="btn btn-effect-ripple btn-primary" data-toggle="modal"
                                          data-target="#modal-add">筛选
                                  </button>--%>
                            </div>
                        </div>
                    </div>

                    <ol class="breadcrumb">
                        <li>
                            <a href="<%=request.getContextPath()%>/menu/RiskControlMeasure.do"><%=request.getSession().getAttribute("position")%>
                            </a></li>
                        <li><a href="<%=request.getContextPath()%>/menu/RiskControlMeasureShowMRiskSite.action">{{riskSite.name}}</a>
                        </li>
                        <li><a href="<%=request.getContextPath()%>/menu/RiskControlMeasureShowMRiskSite.action"
                               class="btn btn-effect-ripple btn-primary">返回</a></li>
                    </ol>
                    <table id="general-table"
                           class="table table-striped table-bordered table-vcenter table-hover table-hover">
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
                            <td class="text-center" rowspan="2" v-show="showOrNot('Name')" style="min-width:200px ">
                                {{'Name'|titleFilter('风险')}}
                            </td>
                            <td class="text-center" rowspan="2" style="min-width:300px "
                                v-show="showOrNot('hazardDesc')">
                                {{'hazardDesc'|titleFilter('风险描述')}}
                            </td>
                            <td class="text-center" rowspan="2" v-show="showOrNot('damageType')">
                                {{'damageType'|titleFilter('灾害类型')}}
                            </td>
                            <%--<td class="text-center" rowspan="2" v-show="showOrNot('lossConsequence')">--%>
                            <%--{{'clossConsequence'|titleFilter('损失程度')}}--%>
                            <%--</td>--%>
                            <%--<td class="text-center" rowspan="2">管控措施</td>--%>
                            <td class="text-center" rowspan="2" v-show="showOrNot('accidentType')">
                                {{'accidentType'|titleFilter('事故类型')}}
                            </td>

                            <td class="text-center" rowspan="4" style="min-width:200px ">
                                风险分析
                            </td>
                            <td class="text-center" rowspan="2">措施数量</td>
                            <%--<td class="text-center" rowspan="2">暴露率(E)</td>--%>
                            <%--<td class="text-center" rowspan="2">后果(C)</td>--%>
                            <%--<td class="text-center" rowspan="2" v-show="showOrNot('Sseverity')">--%>
                            <%--{{'Sseverity'|titleFilter('严重性(S)')}}--%>
                            <%--</td>--%>
                            <td class="text-center" rowspan="2" v-show="showOrNot('riskValue')">
                                {{'driskValue'|titleFilter('风险值(D)')}}
                            </td>
                            <td class="text-center" rowspan="2" v-show="showOrNot('riskLevel')">
                                {{'riskLevel'|titleFilter('风险等级')}}
                            </td>
                            <td class="text-center" rowspan="2" v-show="showOrNot('riskColor')">
                                {{'riskColor'|titleFilter('危险程度')}}
                            </td>

                            <%--<td class="text-center" rowspan="2" v-show="showOrNot('manageUnit')">--%>
                            <%--{{'manageUnit'|titleFilter('管控部门')}}--%>
                            <%--</td>--%>
                            <%--<td class="text-center" rowspan="2" v-show="showOrNot('accountabilityUnit')">--%>
                            <%--{{'accountabilityUnit'|titleFilter('责任单位')}}--%>
                            <%--</td>--%>
                            <td class="text-center" rowspan="2">管控周期（始）
                            </td>
                            <td class="text-center" rowspan="2">管控周期（终）
                            </td>
                            <td class="text-center" rowspan="2">矿级管控
                            </td>
                            <td class="text-center" rowspan="2">专业级管控
                            </td>
                            <td class="text-center" rowspan="2">职能部室级管控
                            </td>
                            <td class="text-center" rowspan="2">区队级管控
                            </td>
                            <td class="text-center" rowspan="2">班组个人级管控
                            </td>
                            <td class="text-center" rowspan="2">操作</td>
                            <%-- <tr class="biaot">
                                 <td class="text-center">管理措施</td>
                                 <td class="text-center">培训教育</td>
                                 <td class="text-center">个体防护</td>
                                 <td class="text-center">应急处置</td>
                             </tr>--%>
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
                                <%--<td v-text="riskHazard.clossConsequence" v-show="showOrNot('lossConsequence')"></td>--%>
                                <%--<td>{{riskHazard.mriskControlMeasure.length}}</td>--%>
                                <%-- <td></td>
                                 <td></td>
                                 <td></td>--%>
                                <td v-if="riskHazard.Sseverity==null&&riskHazard.clossConsequence==null"></td>
                                <td v-if="riskHazard.clossConsequence!=null&&riskHazard.clossConsequence!=0">评估方法(LEC):
                                    L={{riskHazard.Lpossibility}} , E={{riskHazard.Eexpose}} ,
                                    C={{riskHazard.clossConsequence}}
                                </td>
                                <td v-if="riskHazard.Sseverity!=0&&riskHazard.Sseverity!=null">评估方法(LS):
                                    L={{riskHazard.Lpossibility}} , S={{riskHazard.Sseverity}}
                                </td>
                                <%--<td v-text="riskHazard.Eexpose"></td>--%>
                                <%--<td v-text="riskHazard.consequence"></td>--%>
                                <%--<td v-text="riskHazard.Sseverity"  v-show="showOrNot('Sseverity')"></td>--%>
                                <td v-if="riskHazard.mriskControlMeasure!=null">
                                    {{riskHazard.mriskControlMeasure.length}}
                                </td>
                                <td v-else>0</td>
                                <td v-text="riskHazard.driskValue" v-show="showOrNot('riskValue')"></td>
                                <td v-text="riskHazard.riskLevel" v-show="showOrNot('riskLevel')"></td>
                                <td class="text-center" v-show="showOrNot('riskColor')"
                                    v-if="riskHazard.riskColor !=null"><span v-show="showOrNot('riskColor')"
                                                                             v-bind:style="'background-color:'+riskHazard.riskColor"
                                                                             class="btys"></span>
                                </td>
                                <td class="text-center" v-show="showOrNot('riskColor')"
                                    v-if="riskHazard.riskColor ==null">
                                </td>
                                <%--<td v-text="riskHazard.manageUnit" v-show="showOrNot('manageUnit')"></td>--%>
                                <%--<td v-text="riskHazard.accountabilityUnit"--%>
                                <%--v-show="showOrNot('accountabilityUnit')"></td>--%>
                                <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                                <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                                <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                                <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                                <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                                <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                                <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                                <td v-if="riskHazard.mRiskControlRange.length!=0"
                                    v-text="riskHazard.mRiskControlRange[0].controlRangeStartDay"
                                ></td>
                                <td v-if="riskHazard.mRiskControlRange.length!=0"
                                    v-text="riskHazard.mRiskControlRange[0].controlRangeEndDay"
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
                                <td style="white-space: nowrap">
                                    <a @click="updateRiskControlMeasure(riskHazard,riskIndex)" data-toggle="modal"
                                       data-target="#modal-regular" style="color: #337ab7">措施</a>

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
    </div>
    <div id="modal-regular" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" style="min-height: 100%;">
            <div class="modal-content" style="min-height: 100%;">
                <div class="modal-body"
                     style="min-height: 100%; height: auto; overflow-y: auto" <%--style="min-height: 100%; height: auto;"--%>>
                    <div class="block-title">
                        <h4 style="width: 100%;">
                            {{'Name'|titleFilter('风险')}}:{{risk1.name
                            }}<span></span>
                            <div style="float: right;font-size:12px">{{'riskLevel'|titleFilter('风险等级')}}：<span
                                    style="font-size:16px;color: #FF0000; ">{{risk1.riskLevel}}</span>
                            </div>
                        </h4>
                    </div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">

                        <div class="form-group">
                            <label class="col-md-12 text-left" for="example-textarea-input">{{'name'|titleFilter('风险描述')}}</label>
                            <div class="col-md-12">
                                <textarea id="example-textarea-input" v-text="risk1.hazardDesc"
                                          name="example-textarea-input" rows="7"
                                          class="form-control" readonly="readonly"></textarea></div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6" style="padding: 0;"><label class="col-md-12 text-left"
                                                                             for="example-textarea-input"
                            >{{'managerUnitName'|titleFilter('责任部门')}}</label>
                                <div class="col-md-12">
                                    <%--  <select name="" class="form-control">
                                          <option value=""></option>
                                      </select>--%>
                                    <span type="text" class="form-control" readonly="readonly"
                                          v-text="risk1.accountabilityUnit"></span>
                                </div>
                            </div>
                            <div class="col-sm-6" style="padding: 0;"><label class="col-md-12 text-left"
                                                                             for="example-textarea-input"
                            >{{'dutyRole'|titleFilter('责任岗位')}}</label>
                                <div class="col-md-12">
                                    <%--  <select name=""  class="form-control">
                                          <option value=""></option>
                                      </select>--%>
                                    <span type="textd" class="form-control" readonly="readonly"
                                          v-text="tempParam.dutyRole"></span>
                                </div>
                            </div>
                        </div>
                        <div class="block full" style="    padding-top: 25px; min-height: 100%">
                            <!-- Block Tabs Title -->
                            <div class="block-title">

                                <ul class="nav nav-tabs" data-toggle="tabs">
                                    <li class="active">
                                        <a href="#zjcs" style="font-weight: bold;">增加措施</a>
                                    </li>
                                    <li>
                                        <a href="#scbdwj" style="font-weight: bold;">上传本地文件</a>
                                    </li>
                                    <%-- <li>
                                         <a href="#glzxfa">关联专项方案</a>
                                     </li>--%>

                                </ul>
                            </div>
                            <!-- END Block Tabs Title -->

                            <!-- Tabs Content -->
                            <div class="tab-content">
                                <div class="tab-pane active" id="zjcs">
                                    <form method="post" class="form-horizontal" onsubmit="return false;">
                                        <div class="form-group">

                                            <div class="col-sm-12 text-right">
                                                <button type="submit" class="btn btn-effect-ripple btn-primary"
                                                        @click="getNewRiskControlMeasure">清空
                                                </button>
                                                <button type="submit" class="btn btn-effect-ripple btn-primary"
                                                        @click="tempAddMeasure">添加
                                                </button>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-12 text-left" for="example-textarea-input">{{'MeasureContent'|titleFilter1('措施内容')}}</label>
                                            <div class="col-md-12">
                                                <textarea id="measurecontent" name="example-textarea-input"
                                                          rows="7" class="form-control" placeholder="内容.."></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-sm-12 text-right">
                                                <label style="float: left;margin-top: 7px;"
                                                       for="example-textarea-input">管控措施</label>
                                            </div>
                                        </div>
                                        <div>
                                            <table id="general-table"
                                                   class="table table-striped table-bordered table-vcenter table-hover">
                                                <thead>
                                                <tr>
                                                    <th class="text-center" style="width: 45px">
                                                        序号
                                                    </th>
                                                    <th class="text-center" style="width: 60px">
                                                        {{'MeasureContent'|titleFilter1('内容')}}
                                                    </th>
                                                    <th class="text-center" style="width:65px;">
                                                        {{'measureCreateTime'|titleFilter1('时间')}}
                                                    </th>
                                                    <th class="text-center" style="width: 25px">操作</th>

                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr v-for="(rcm,index) in riskControlMeasure">
                                                    <td class="text-center" v-text="index+1">
                                                    </td>
                                                    <td class="text-center">
                                                        <textarea v-text="rcm.measureContent"
                                                                  name="example-textarea-input"
                                                                  class="form-control" readonly="readonly"></textarea>
                                                    </td>
                                                    <td class="text-center">
                                                        {{rcm.measureCreateTime}}
                                                    </td>
                                                    <td class="text-center">
                                                        <p><a @click="controlMeasureUpdate(rcm,index)">
                                                            修改
                                                        </a></p>
                                                        <p></p>
                                                        <p><a href="javascript:void(0)" data-toggle="tooltip"

                                                              @click="deleperson(index)"
                                                              title="删除">
                                                            删除
                                                        </a></p>

                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </form>
                                </div>
                                <div class="tab-pane" id="scbdwj">
                                    <div class="col-sm-12">
                                        <form method="post" class="form-horizontal" id="uploadForm"
                                              onsubmit="return false;">
                                            <div class="col-sm-hh2">
                                                <label class="control-label bjc" for="example-textarea-input">文件</label>
                                                <div class="col-sm-hh3">
                                                    <div class="input-group" style="width: 100%;">
                                                        <input type="file"
                                                               name="example-input2-group2" id="upFile"
                                                               class="form-control" placeholder="">
                                                        <input type="text" name="fguid"
                                                               value="001"
                                                               hidden="hidden">
                                                        <input type="text" name="usefor"
                                                               value="ych"
                                                               hidden="hidden">
                                                        <input type="text" name="returnUrl" value="test"
                                                               hidden="hidden">
                                                        <span class="input-group-btn"></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <label class="control-label bjc" for="example-textarea-input">已上传的文件</label>
                                        <div style="height:400px;overflow-y: auto">
                                            <table id="general-table"
                                                   class="table table-striped table-bordered table-vcenter table-hover">
                                                <thead>
                                                <tr>
                                                    <th class="text-center" style="width: 53px">
                                                        序号
                                                        <%-- <label class="csscheckbox csscheckbox-primary">
                                                             <input type="checkbox">
                                                             <span></span>
                                                         </label>--%>
                                                    </th>
                                                    <th class="text-center">附件名</th>
                                                    <th class="text-center">上传时间</th>
                                                    <th class="text-center" style="width: 53px">操作</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr v-for="(trcm,index) in tempriskControlMeasure1">
                                                    <td class="text-center" v-text="index+1">
                                                        <%--  <label class="csscheckbox csscheckbox-primary">
                                                              <input type="checkbox">
                                                              <span></span>
                                                          </label>--%>
                                                    </td>
                                                    <td class="text-center"><a @click="downloadFile(trcm)"
                                                                               v-text="trcm.measureName"></a></td>
                                                    <td class="text-center">{{trcm.measureCreateTime}}</td>
                                                    <td class="text-center">
                                                        <a href="javascript:void(0)" data-toggle="tooltip"
                                                           @click="deleperson1(index)"
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
                                <div class="tab-pane" id="glzxfa">2</div>
                            </div>
                            <!-- END Tabs Content -->
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" @click="conmitAll">保存</button>
                    <button type="button" class="btn btn-effect-ripple btn-danger" <%--data-dismiss="modal" --%>
                    <%--data-toggle="modal" data-target="#modal-delete"--%> @click="confirmDelete">关闭
                    </button>
                </div>
                <form id="downloadForm" hidden="hidden">
                    <table>
                        <tr>
                            <td>
                                checkid:
                            </td>
                            <td>
                                <input type="text" name="checkId" id="checkid">
                            </td>
                        </tr>
                    </table>
                    <%-- <input id="subButton" value="提交" type="button" @click="downloadFile">--%>
                </form>
                <form id="downFile" action="<%=request.getContextPath()%>/RiskControlMeasureControl/downFile"
                      method="post">
                    <input id="downloadUrl" name="downloadUrl" type="hidden"/>
                    <input id="realFileName" name="realFileName" type="hidden"/>
                </form>
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
<script src="../js/nowDate.js"></script>
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
    var pageVar = "rcm1list";//页面唯一变量标识，每个页面不能重复
    var attrArray = null;
    /**
     * Created by txianwei on 2017/9/14
     */
    var vueApp = new Vue({
        el: "#app",
        data: {
            riskSite: "",
            riskHazards: "",
            risk1: "",
            tempupdateindex: "",
            tempfullnumber: "",
            tempriskControlMeasure: "",
            tempriskControlMeasure1: "",
            tempindex: -1,
            riskControlMeasure: "",
            tempriskControlMeasure2: "",
            newriskControlMeasure1: "",
            filePath: "",
            fileName: "",
            uploadRiskControlMeasure: "",
            tempdeleteadd: new Array,
            attributes: new Array(),
            propertys: new Array(),
            tempcrm: "",
            tempParam: "",
            mydate: "",


        },
        created: function () {
            var _self = this;
            _self.getHazardByID();
            _self.getRiskAttributes();

        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
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

                _self.getHazardByID();
            },
            clearAllParam: function () {
                var _self = this;
                _self.riskSite = "";
                _self.riskHazards = "";
                _self.risk1 = "";
                _self.tempupdateindex = "";
                _self.tempfullnumber = "";
                _self.tempriskControlMeasure = "";
                _self.tempriskControlMeasure1 = "";
                _self.tempindex = "";
                _self.riskControlMeasure = "";
                _self.tempriskControlMeasure2 = "";
                _self.newriskControlMeasure1 = "";
                _self.filePath = "";
                _self.fileName = "";
                _self.uploadRiskControlMeasure = "";
                _self.tempdeleteadd = [];
                _self.tempindex = -1;
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
            //修改管控措施
            controlMeasureUpdate: function (crm, index) {
                var _self = this;
                _self.tempcrm = crm;
                $("#measurecontent").val(crm.measureContent);
                $("#measurecontent1").val(crm.measureContent);
                _self.tempindex = index;

            },
            //关闭确认删除框
            confirmDelete: function () {
                var _self = this;
                $("#modal-regular").modal('hide');
                $("#modal-regular1").modal('hide');
                /*_self.clearMeasure();*/
            },
            //附件下载
            downloadFile: function (trcm) {
                var _self = this;
                $("#checkid").val(trcm.measureURL)
                var downloadForm = new FormData($("#downloadForm")[0]);
                $.ajax({
                    url: fileDownloadPath,
                    type: 'POST',
                    data: downloadForm,
                    async: false,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function (data) {
                        var result = eval(data);
                        $("#downloadUrl").val(result.savePath);
                        $("#realFileName").val(result.oldFileName);
                        $("#downFile").submit();
                    },
                    error: function () {
                        _self.showToast("error", "下载失败");
                    }
                });
            },
            //暂时删除一个管控措施
            deleperson: function (key) {
                var _self = this;
                if (_self.riskControlMeasure[key].measureID != "") {
                    _self.tempdeleteadd.push(_self.riskControlMeasure[key].measureID);
                }
                this.riskControlMeasure.splice(key, 1);
            },
            //暂时删除一个管控措施附件
            deleperson1: function (key) {
                var _self = this;
                if (_self.tempriskControlMeasure1[key].measureID != null) {
                    _self.tempdeleteadd.push(_self.tempriskControlMeasure1[key].measureID);
                }
                this.tempriskControlMeasure1.splice(key, 1);
            },
            //点击修改换值
            updateRiskControlMeasure: function (riskhazard, riskIndex) {
                var _self = this;
                var hazardid = riskhazard.hazardID;
                _self.tempParam = riskhazard;
                $.get(projectName + "/RiskAssessment/getRiskhazard/" + hazardid, function (data) {

                    _self.risk1 = data;
                    _self.tempfullnumber = _self.risk1.risksiteFullNumber;
                    _self.tempriskControlMeasure = [];
                    _self.tempriskControlMeasure1 = [],
                        _self.tempriskControlMeasure2 = [],
                        _self.tempriskControlMeasure = data.mriskControlMeasure;
                    for (var j = 0; j < _self.tempriskControlMeasure.length; j++) {
                        if (_self.tempriskControlMeasure[j].measureURL != null) {
                            _self.tempriskControlMeasure1.push(_self.tempriskControlMeasure[j]);
                        } else {
                            _self.tempriskControlMeasure2.push(_self.tempriskControlMeasure[j])
                        }
                    }
                    _self.riskControlMeasure = _self.tempriskControlMeasure2;
                    $("#measurecontent").val("");
                    $("#measurecontent1").val("");
                });
            },

            //三级菜单暂时保存一个管控措施
            tempAddMeasure: function () {
                var _self = this;
                $.get(projectName + "/RiskControlMeasureControl/newRiskcontrolmeasure", {}, function (data) {
                    if ($("#measurecontent").val() == "" ) {
                        _self.showToast("warning", "措施内容为空！");
                    } else {
                        if (_self.tempindex != -1) {
                            _self.newriskControlMeasure1 = _self.tempcrm;
                            _self.newriskControlMeasure1.riskSiteFullNumber = _self.tempfullnumber;
                            _self.newriskControlMeasure1.measureContent = $("#measurecontent").val();
                            _self.newriskControlMeasure1.hazardID = _self.risk1.hazardID;
                            _self.newriskControlMeasure1.risksiteID = _self.risk1.risksiteID;
                            _self.riskControlMeasure.splice(_self.tempindex, 1, _self.newriskControlMeasure1);
                            _self.tempindex = -1;
                            //_self.clearMeasure();

                        } else {
                            var mydate = new Date().format("yyyy-MM-dd hh:mm:ss");
                            _self.newriskControlMeasure1 = data;
                            _self.mydate = mydate;
                            _self.newriskControlMeasure1.measureCreateTime = _self.mydate;
                            _self.newriskControlMeasure1.riskSiteFullNumber = _self.tempfullnumber;
                            _self.newriskControlMeasure1.measureContent = $("#measurecontent").val();
                            _self.newriskControlMeasure1.hazardID = _self.risk1.hazardID;
                            _self.newriskControlMeasure1.risksiteID = _self.risk1.risksiteID;
                            _self.riskControlMeasure.push(_self.newriskControlMeasure1);
                            //_self.clearMeasure();

                        }
                    }
                })
            },
            //清空添加措施方法
            clearMeasure: function () {
                var _self = this;
                $("#measurecontent").val("");
                $("#measurecontent1").val("");
                _self.tempindex != -1

            },
            //提交方式
            conmitAll: function () {
                var _self = this;
                _self.tempfile = $("#upFile").val();
                if (_self.tempfile != "") {
                    _self.fileupload();
                    _self.clearMeasure();
                } else {
                    _self.cmitMeasure();
                    _self.clearMeasure();
                }
            },
            //子附件上传
            fileupload: function () {
                var _self = this;
                var formData = new FormData($("#uploadForm")[0]);
                _self.filePath = $("#upFile").val();
                _self.fileName = _self.filePath.substring(_self.filePath.lastIndexOf("\\") + 1);
                $.ajax({
                    url: fileUploadPath,
                    type: 'POST',
                    data: formData,
                    async: false,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function (data) {
                        if (data == 0) {
                            _self.showToast("warning", "请上传附件！");
                        } else {
                            _self.tempurl = data;
                            $.get(projectName + "/RiskControlMeasureControl/newRiskcontrolmeasure", {}, function (data) {
                                _self.uploadRiskControlMeasure = data;
                                _self.uploadRiskControlMeasure.riskSiteFullNumber = _self.tempfullnumber;
                                _self.uploadRiskControlMeasure.measureURL = _self.tempurl;
                                _self.uploadRiskControlMeasure.measureName = _self.fileName;
                                _self.uploadRiskControlMeasure.hazardID = _self.risk1.hazardID;
                                _self.uploadRiskControlMeasure.risksiteID = _self.risk1.risksiteID;
                                var mydate = new Date().format("yyyy-MM-dd hh:mm:ss");
                                _self.mydate = mydate;
                                _self.uploadRiskControlMeasure.measureCreateTime = _self.mydate;
                                $.ajax({
                                    type: "POST",
                                    url: projectName + "/RiskControlMeasureControl/addMeasure",
                                    dataType: "json",
                                    contentType: "application/json",
                                    data: JSON.stringify(_self.uploadRiskControlMeasure),
                                    success: function (data) {
                                        _self.showToast("success", "上传成功！");
                                        /* _self.tempdupdateid = _self.uploadRiskControlMeasure.measureID;
                                         $.post(projectName + "/RiskControlMeasureControl/addMeasure/"+_self.tempdupdateid,function(data){

                                         });*/
                                        _self.cmitMeasure();
                                    }
                                })
                            });
                        }
                    },
                });

            },
            //保存一个管控措施
            cmitMeasure: function () {
                var _self = this;
                if (_self.tempdeleteadd != null) {
                    for (var i = 0; i < _self.tempdeleteadd.length; i++) {
                        if (_self.tempdeleteadd[i] != null) {
                            _self.tempdeleteadd1 = _self.tempdeleteadd[i].toString();
                            $.ajax({
                                url: projectName + "/RiskControlMeasureControl/deleteMeasure/" + _self.tempdeleteadd1, //发送请求的地址。
                                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                dataType: "json",//预期服务器返回的数据类型。
                                async: false,
                                success: function (data) {
                                    if (data) {
                                        $("#modal-regular").modal('hide');
                                        $("#modal-regular1").modal('hide');
                                        _self.clearMeasure();

                                    }
                                },
                                error: function (XMLHttpRequest) {
                                    alert("Error: " + XMLHttpRequest.responseText);
                                }
                            });
                        }
                        ;
                    }
                }

                for (var i = 0; i < _self.riskControlMeasure.length; i++) {
                    if (_self.riskControlMeasure[i].measureID != null) {
                        $.ajax({
                            url: projectName + "/RiskControlMeasureControl/updateMeasure", //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: JSON.stringify(_self.riskControlMeasure[i]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            contentType: "application/json",
                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                if (data) {
                                }
                            },
                        });

                    } else {
                        delete _self.riskControlMeasure[i].handler;
                        $.ajax({
                            type: "POST",
                            url: projectName + "/RiskControlMeasureControl/addMeasure",
                            dataType: "json",
                            contentType: "application/json",
                            data: JSON.stringify(_self.riskControlMeasure[i]),
                            async: false,
                            success: function (data) {

                                if (data) {
                                    $("#modal-regular").modal('hide');
                                    $("#modal-regular1").modal('hide');
                                    $("#measurecontent").val("");
                                    $("#measurecontent1").val("");
                                    $("#modal-regular").modal('hide');
                                    $("#modal-regular1").modal('hide');
                                }
                            },
                        });
                    }
                }
                $("#modal-regular").modal('hide');
                $("#modal-regular1").modal('hide');
                $("#modal-regular").modal('hide');
                $("#modal-regular1").modal('hide');
                _self.clearAllParam();
            },
            getNewRiskControlMeasure: function () {
                $("#measurecontent").val("");
                $("#measurecontent1").val("");
                $("#upFile").val("");
                $("#upFile1").val("");
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
                        data: {name: 'Riskhazard'},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            attrArray = data;
                            for (var i = 0; i < attrArray.length; i++) {
                                if (val.toLowerCase() == attrArray[i].classpropertyName.toLowerCase()) {
                                    result = attrArray[i].classpropertyTitle;
                                    break;
                                } else {
                                    continue;
                                }
                            }
                        },
                    });

                } else {
                    for (var i = 0; i < attrArray.length; i++) {
                        if (val.toLowerCase() == attrArray[i].classpropertyName.toLowerCase()) {
                            result = attrArray[i].classpropertyTitle;
                            break;
                        } else {
                            continue;
                        }
                    }
                }
                return result;
            }, titleFilter1: function (val, defaultName) {
                var _self = this;
                var result = defaultName;
                if (attrArray == null) {
                    $.ajax({
                        url: projectName + "/SystemAttributeDevelop/classAttributes", //发送请求的地址。
                        type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: {name: 'Riskcontrolmeasure'},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
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