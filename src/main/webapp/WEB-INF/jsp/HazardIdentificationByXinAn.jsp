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
    <title>重点管控对象</title>
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

        #test li, #test1 li, #test2 li, #test3 li, #test4 li {
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

        td a {
            color: #337ab7
        }

        a {
            cursor: pointer;
        }

        .ivu-select-dropdown {

            position: absolute !important;
        }

        input[type=file] {
            width: 100% !important;
            height: 100% !important;
            opacity: 0;
        }

        .form-group1 {
            background-color: #e9ecf1;
            padding: 10px 15px;
        }

        .form-group1 label {
            margin: 0 !important;
        }

    </style>
</head>

<body onkeydown="selectName()">
<div id="page-content" style="min-height: 794px;">
    <% Emp userObj = (Emp) request.getSession().getAttribute("emp");
        String userid = userObj.getFFrame_ID();
    %>
    <%Integer currentPage = (Integer) request.getSession().getAttribute("currentPage");%>

    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section" style="overflow: hidden;">
                    <h1 style="float: left;padding:0">重点管控对象</h1>
                    <div style="float: right;padding:0">
                        <div class="searchCon"><i class="hi hi-search"></i><input name="search" id="keywords"
                                                                                  placeholder="输入风险名称 回车查询"
                                                                                  class="searchWrap"
                                                                                  type="text"></div>
                        <button type="button" id="queryInfo" class="btn btn-effect-ripple btn-primary"
                                @click="queryName">查询
                        </button>
                        <button type="button" class="btn btn-effect-ripple btn-primary" data-toggle="modal"
                                data-target="#modal-select" id="screen">设置筛选条件
                        </button>
                        <a class="btn btn-primary" id="file-picker"
                           style="position: relative;vertical-align: middle;cursor:pointer;">导入文件</a>
                        <a class="btn btn-primary" href="../file/重点管控对象模板.xlsx">模板下载</a>
                        <button id="import" type="button" @click="confirmImport" class="btn btn-primary">确认导入</button>
                        <a id="lasttext" class="btn btn-primary" @click="lasttext">返回</a>
                        <button type="submit" id="addInfo" data-toggle="modal" data-target="#modal-add"
                                class="btn btn-effect-ripple btn-primary">新增
                        </button>
                        <button type="submit" id="specified_Place" @click="specifiedPlace"
                                class="btn btn-effect-ripple btn-primary">按管控对象指定地点
                        </button>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full" style="padding: 0;overflow-x: scroll">
        <div class="">
            <div class="">
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
                        <td class="text-center" rowspan="2">管控对象
                        </td>
                        <td class="text-center" rowspan="2">管控对象类型
                        </td>
                        <td class="text-center" rowspan="2" style="min-width: 150px">风险
                        </td>
                        <td class="text-center" rowspan="2">风险类型
                        </td>
                        <td class="text-center" rowspan="2">风险种类
                        </td>
                        <td class="text-center" rowspan="2" style="min-width:400px">风险描述
                        </td>
                        <td class="text-center" rowspan="2">专业
                        </td>
                        <td class="text-center" rowspan="2">灾害类型
                        </td>
                        <td class="text-center" rowspan="2">事故类型
                        </td>

                        <%--   <td class="text-center" rowspan="2">管控部门
                           </td>
                           <td class="text-center" rowspan="2">操作岗位
                           </td>--%>
                        <td class="text-center" rowspan="2">风险分析
                        </td>
                        <td class="text-center" rowspan="2">风险值(D)
                        </td>
                        <td class="text-center" rowspan="2">风险等级
                        </td>
                        <td class="text-center" rowspan="2">风险颜色
                        </td>
                        <td class="text-center" rowspan="2">是否评估
                        </td>
                        <td class="text-center" rowspan="2">绑定地点
                        </td>
                        <td class="text-center" rowspan="2">操作</td>
                        <tbody>
                        <tr v-for="(hazard,index) in detailedList">
                            <td class="text-center" v-text="pagesize*(nowpage-1)+index+1"></td>
                            <td v-text="hazard.riskObject"></td>
                            <td v-text="hazard.riskObjectType"></td>
                            <td v-text="hazard.name"></td>
                            <td v-text="hazard.riskType"></td>
                            <td v-text="hazard.riskKind"></td>
                            <td v-text="hazard.hazardDesc"></td>
                            <td v-text="hazard.majorType"></td>
                            <td v-text="hazard.damageType"></td>
                            <td v-text="hazard.accidentType"></td>
                            <%--    <td v-text="hazard.manageUnit"></td>
                                <td v-text="hazard.operatingPost"></td>--%>
                            <td v-if="hazard.sseverity==0&&hazard.lossConsequence==0"></td>
                            <td v-if="hazard.sseverity==null&&hazard.lossConsequence==null"></td>
                            <td style="white-space: nowrap"
                                v-if="hazard.lossConsequence!=null&&hazard.lossConsequence!=0">评估方法(LEC):
                                L={{hazard.possibility}} , E={{hazard.expose}} , C={{hazard.lossConsequence}}
                            </td>
                            <td style="white-space: nowrap" v-if="hazard.sseverity!=0&&hazard.sseverity!=null">评估方法(LS):
                                L={{hazard.possibility}} ,
                                S={{hazard.sseverity}}
                            </td>

                            <td v-text="hazard.riskValue"></td>
                            <td v-text="hazard.riskLevel"></td>
                            <td class="text-center">
                                <span v-bind:style="'background-color:'+hazard.riskColor"
                                      class="btys"></span>

                            </td>
                            <td v-if="hazard.status==true">是</td>
                            <td v-if="hazard.status==false||hazard.status==null">否</td>
                            <td><a @click="showLocation(hazard.mPaleAndRange)">{{hazard.mPaleAndRange.length}}</a>
                            </td>
                            <%--<td><a @click="showLocation(hazard.hazardID)">{{hazard.mPaleAndRange.length}}</a>--%>
                            <%--</td>--%>
                            <%--
                                                        <td><a @click="showLocation(hazard.mPaleAndRange)">{{hazard.mPaleAndRange.length}}</a></td>
                            --%>
                            <td style="white-space: nowrap">
                                <a data-toggle="modal" data-target="#modal-delete" @click="deleteHazard=hazard">删除</a>
                                <a @click="updateInfo(hazard)">修改</a>
                                <a @click="updateAssessment(hazard)">评估</a>
                                <a @click="jumpHazardPlace(hazard)">指定地点</a>
                            </td>
                        </tr>
                        </tbody>
                </table>
                <table id="showInputInfo" class="table table-striped table-bordered table-vcenter table-hover">
                    <tr class="biaot">
                        <td style="position: relative" class="text-center tcrk" rowspan="2">
                            序号
                        </td>
                        <td class="text-center" rowspan="2">管控对象
                        </td>
                        <td class="text-center" rowspan="2">管控对象类型
                        </td>
                        <td class="text-center" rowspan="2" style="min-width: 150px">风险
                        </td>
                        <td class="text-center" rowspan="2" style="min-width: 400px">风险描述
                        </td>
                        <td class="text-center" rowspan="2">专业类型
                        </td>
                        <td class="text-center" rowspan="2">风险类型
                        </td>
                        <td class="text-center" rowspan="2">灾害类型
                        </td>
                        <td class="text-center" rowspan="2">事故类型
                        </td>
                        <td class="text-center" rowspan="2">风险分析
                        </td>
                        <td class="text-center" rowspan="2">风险值(D)
                        </td>
                        <td class="text-center" rowspan="2">是否评估
                        </td>
                        <td class="text-center" rowspan="2" style="min-width: 400px">管控措施
                        </td>
                        <td class="text-center" rowspan="2">风险种类
                        </td>
                        <tbody>
                        <tr v-for="(hazard,index) in temList">
                            <td class="text-center" v-text="index+1"></td>
                            <td v-text="hazard.riskObject"></td>
                            <td v-text="hazard.riskObjectType"></td>
                            <td v-text="hazard.name"></td>
                            <td v-text="hazard.hazardDesc"></td>
                            <td v-text="hazard.majorType"></td>
                            <td v-text="hazard.riskType"></td>
                            <td v-text="hazard.damageType"></td>
                            <td v-text="hazard.accidentType"></td>
                            <td style="white-space: nowrap"
                                v-if="hazard.lossConsequence!=null&&hazard.lossConsequence!=0">评估方法(LEC):
                                L={{hazard.possibility}} , E={{hazard.expose}} , C={{hazard.lossConsequence}}
                            </td>
                            <td style="white-space: nowrap" v-if="hazard.sseverity!=0&&hazard.sseverity!=null">评估方法(LS):
                                L={{hazard.possibility}} ,
                                S={{hazard.sseverity}}
                            </td>
                            <td style="white-space: nowrap" v-if="hazard.possibility==null||hazard.possibility==0">
                            </td>
                            <td v-text="hazard.riskValue"></td>
                            <td v-if="hazard.status==true">是</td>
                            <td v-if="hazard.status==false||hazard.status==null">否</td>
                            <td v-for="(tem,tindex) in temmeasure" v-if="index==tindex"
                                v-text="tem.measureContent"></td>
                            <td v-text="hazard.riskKind"></td>
                        </tr>
                        </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-7 col-xs-12 clearfix">
            <div class="dataTables_paginate paging_bootstrap" id="example-datatable_paginate">
                <nav class="pull-right">
                    <ul class="pagination pagination-sm remove-margin "
                        id="pagination">
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <!--筛选风险-->
    <div id="modal-select" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body" style="height:851px;">
                    <div class="block-title">
                        <h4>查询风险信息</h4></div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">管控对象</label>
                            <div class="col-sm-8">
                                <i-input placeholder="请输入管控对象" type="text"
                                         v-model="templatehazard.riskObject"></i-input>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">管控对象类型</label>
                            <div class="col-sm-8">
                                <%--<i-input placeholder="请输入管控对象类型" type="text"--%>
                                         <%--v-model="templatehazard.riskObjectType"></i-input>--%>

                                <i-select placeholder="请选择管控对象类型" v-model="templatehazard.riskObjectType" clearable filterable>
                                    <i-option value="作业活动"></i-option>
                                    <i-option value="设施"></i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险名称</label>
                            <div class="col-sm-8">
                                <i-input placeholder="请输入风险名称" type="text"
                                         v-model="templatehazard.name"></i-input>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险描述</label>
                            <div class="col-sm-8">
                                <i-input placeholder="请输入风险描述" type="text"
                                         v-model="templatehazard.hazardDesc"></i-input>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">灾害类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskDamageType">--%>
                                <i-select v-model="templatehazard.damageType" placeholder="请选择灾害类型"
                                          type="text" clearable filterable>
                                    <%--<option value=null>请选择灾害类型</option>--%>
                                    <i-option v-for="(mydamage,index) in damageList"
                                              :value="mydamage.fData_Name"
                                              :label="mydamage.fData_Name">
                                        <span v-text="mydamage.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="mydamage.fData_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">事故类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskDamageType">--%>
                                <i-select v-model="templatehazard.accidentType" placeholder="请选择事故类型"
                                          clearable filterable >
                                    <%--<option value=null>请选择灾害类型</option>--%>
                                        <i-option v-for="(accident,index) in accidentList"
                                                  :value="accident.fData_Name"
                                                  :label="accident.fData_Name"
                                                  :key="index">
                                            <span v-text="accident.fData_Name"></span>
                                            <span style="float:right;color:#ccc"
                                                  v-text="accident.fData_Name_Shorthand"></span>

                                        </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险等级</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskLevel">--%>
                                <%----%>
                                <i-select placeholder="请选择风险等级" type="text"
                                          v-model="templatehazard.riskLevelSettingID" clearable filterable>
                                    <%--<i-option value=null>请选择风险等级</i-option>--%>
                                    <i-option v-for="(risklever,index) in riskleversettingList"
                                              :value="risklever.riskLevelSettingID"
                                              :label="risklever.riskLevel">
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">专业类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskMajorType"></div>--%>
                                <i-select v-model="templatehazard.majorType" placeholder="请选择专业类型"
                                          type="text" clearable filterable>
                                    <%--<i-option value=null>请选择专业类型</i-option>--%>
                                    <i-option v-for="(mycategory,index) in majorList"
                                              :value="mycategory.fData_Name"
                                              :label="mycategory.fData_Name">
                                        <span v-text="mycategory.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="mycategory.fData_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskMajorType"></div>--%>
                                <i-select placeholder="请选择风险类型" v-model="templatehazard.riskType" clearable
                                          filterable>
                                    <i-option v-for="(risk,index) in leiBieList"
                                              :value="risk.fData_Name"
                                              :label="risk.fData_Name"
                                              :key="index">
                                        <span v-text="risk.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="risk.fData_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="getPageCount1"
                                data-dismiss="modal">确认
                        </button>
                        <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!--新增风险-->
    <div id="modal-add" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body" style="height:851px;">
                    <div class="block-title">
                        <h4>新增风险信息</h4></div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险名称</label>
                            <div class="col-sm-8">
                                <input v-model="templatehazardByAdd.name" class="form-control nihao1" placeholder=""
                                       type="text">
                            </div>
                            <span style="color: red;margin-left:-10px;font-size: 16px">*</span>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险描述</label>
                            <div class="col-sm-8">
                                <textarea class="form-control nihao1" v-model="templatehazardByAdd.hazardDesc" name=""
                                          id="" cols="30" rows="10"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">专业类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskControlTier"></div>--%>

                                <i-select placeholder="请选择专业类型" v-model="templatehazardByAdd.majorType" clearable
                                          filterable>
                                    <i-option v-for="(major,index) in majorList"
                                              :value="major.fData_Name"
                                              :label="major.fData_Name"
                                              :key="index">
                                        <span v-text="major.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="major.fData_Name_Shorthand"></span>

                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">灾害类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskDamageType">--%>
                                <i-select placeholder="请选择灾害类型" v-model="templatehazardByAdd.damageType" clearable
                                          filterable>
                                    <i-option v-for="(damage,index) in damageList"
                                              :value="damage.fData_Name"
                                              :label="damage.fData_Name"
                                              :key="index">
                                        <span v-text="damage.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="damage.fData_Name_Shorthand"></span>

                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">事故类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskLevel">--%>
                                <%----%>
                                <i-select placeholder="请选择事故类型" v-model="accidentTypeList"
                                          filterable multiple>
                                    <i-option v-for="(accident,index) in accidentList"
                                              :value="accident.fData_Name"
                                              :label="accident.fData_Name"
                                              :key="index">
                                        <span v-text="accident.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="accident.fData_Name_Shorthand"></span>

                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskMajorType"></div>--%>
                                <i-select placeholder="请选择风险类型" v-model="templatehazardByAdd.riskType" clearable
                                          filterable>
                                    <i-option v-for="(risk,index) in leiBieList"
                                              :value="risk.fData_Name"
                                              :label="risk.fData_Name"
                                              :key="index">
                                        <span v-text="risk.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="risk.fData_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险种类</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskMajorType"></div>--%>
                                <i-input placeholder="请输入风险种类" v-model="templatehazardByAdd.riskKind">
                                </i-input>
                            </div>
                        </div>
                        <%--           <div class="form-group">
                                       <label class="col-sm-3 control-label">管控部门</label>
                                       <div class="col-sm-8">
                                           &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                           &lt;%&ndash;v-model="riskSite.riskMajorType"></div>&ndash;%&gt;
                                           <i-select placeholder="请选择管控部门" v-model="manageunitList" multiple filterable>
                                               <i-option style=" width: 413px;right: 0;top: 32px;"
                                                         v-for="(mydepart,index) in departmentList"
                                                         :value="mydepart.fOrg_Name"
                                                         :label="mydepart.fOrg_Name"
                                                         :key="index">
                                                   <span v-text="mydepart.fOrg_Name"></span>
                                                   <span style="float:right;color:#ccc"
                                                         v-text="mydepart.fOrg_Name_Shorthand"></span>
                                               </i-option>
                                           </i-select>
                                       </div>
                                   </div>
                                   <div class="form-group">
                                       <label class="col-sm-3 control-label">管控岗位</label>
                                       <div class="col-sm-8">
                                           &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                           &lt;%&ndash;v-model="riskSite.riskMajorType"></div>&ndash;%&gt;
                                               <i-select placeholder="请选择管控岗位" v-model="templatehazardByAdd.dutyRole" clearable
                                                         filterable>
                                                   <i-option v-for="(role,index) in roleList"
                                                             :value="role.fRole_Name"
                                                             :label="role.fRole_Name"
                                                             :key="index">
                                                       <span v-text="role.fRole_Name"></span>
                                                       <span style="float:right;color:#ccc"
                                                             v-text="role.fRole_Name_Shorthand"></span>
                                                   </i-option>
                                               </i-select>
                                       </div>
                                   </div>
                                   <div class="form-group">
                                       <label class="col-sm-3 control-label">操作岗位</label>
                                       <div class="col-sm-8">
                                           &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                           &lt;%&ndash;v-model="riskSite.riskMajorType"></div>&ndash;%&gt;
                                           <i-select placeholder="请选择操作岗位" v-model="templatehazardByAdd.operatingPost" clearable
                                                     filterable>
                                               <i-option v-for="(role,index) in roleList"
                                                         :value="role.fRole_Name"
                                                         :label="role.fRole_Name"
                                                         :key="index">
                                                   <span v-text="role.fRole_Name"></span>
                                                   <span style="float:right;color:#ccc"
                                                         v-text="role.fRole_Name_Shorthand"></span>
                                               </i-option>
                                           </i-select>
                                       </div>
                                   </div>--%>
                        <%--<div class="form-group">
                            <label class="col-sm-3 control-label">产生的后果</label>
                            <div class="col-sm-8">
                                &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                &lt;%&ndash;v-model="riskSite.riskMajorType"></div>&ndash;%&gt;
                                <i-input placeholder="请选择管控对象" v-model="templatehazardByAdd.consequence" multiple filterable>
                                </i-input>
                            </div>
                        </div>--%>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">管控对象</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskMajorType"></div>--%>
                                <i-input placeholder="请输入管控对象" v-model="templatehazardByAdd.riskObject" multiple
                                         filterable>
                                </i-input>
                            </div>
                            <span style="color: red;margin-left:-10px;font-size: 16px">*</span>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">管控对象类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskMajorType"></div>--%>
                                <i-select placeholder="请选择管控对象类型" v-model="templatehazardByAdd.riskObjectType" clearable filterable>
                                    <i-option value="作业活动"></i-option>
                                    <i-option value="设施"></i-option>
                                </i-select>
                            </div>
                            <span style="color: red;margin-left:-10px;font-size: 16px">*</span>
                        </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="addTemplatehazard">确认
                        </button>
                        <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--修改风险-->
    <div id="modal-update" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body" style="height:851px;">
                    <div class="block-title">
                        <h4>修改风险信息</h4></div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险名称</label>
                            <div class="col-sm-8">
                                <input v-model="upName" class="form-control nihao1" placeholder="请输入风险名称"
                                       type="text">
                            </div>
                            <span style="color: red;margin-left:-10px;font-size: 16px">*</span>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险描述</label>
                            <div class="col-sm-8">
                                <textarea class="form-control nihao1" v-model="upDesc" name=""
                                          cols="30" rows="10" placeholder="请输入风险描述"></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">专业类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskControlTier"></div>--%>

                                <i-select placeholder="请选择专业类型" ref="major" v-model="upMajor" clearable
                                          filterable label-in-value>
                                    <i-option v-for="(major,index) in majorList"
                                              :value="major.fData_Name"
                                              :label="major.fData_Name"
                                              :key="index">
                                        <span v-text="major.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="major.fData_Name_Shorthand"></span>

                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">灾害类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskDamageType">--%>
                                <i-select placeholder="请选择灾害类型" ref="damage" v-model="upDamage" clearable
                                          filterable label-in-value>
                                    <i-option v-for="(damage,index) in damageList"
                                              :value="damage.fData_Name"
                                              :label="damage.fData_Name"
                                              :key="index">
                                        <span v-text="damage.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="damage.fData_Name_Shorthand"></span>

                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">事故类型</label>
                            <div class="col-sm-8">
                                <i-select placeholder="请选择事故类型" v-model="upAccident"
                                          filterable multiple>
                                    <i-option v-for="(accident,index) in accidentList"
                                              :value="accident.fData_Name"
                                              :label="accident.fData_Name"
                                              :key="index">
                                        <span v-text="accident.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="accident.fData_Name_Shorthand"></span>

                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskMajorType"></div>--%>
                                <i-select placeholder="请选择风险类型" ref="riskType" v-model="upRiskType" clearable
                                          filterable label-in-value>
                                    <i-option v-for="(risk,index) in leiBieList"
                                              :value="risk.fData_Name"
                                              :label="risk.fData_Name"
                                              :key="index">
                                        <span v-text="risk.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="risk.fData_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险种类</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskMajorType"></div>--%>
                                <i-input placeholder="请输入风险种类" v-model="upriskKind">
                                </i-input>
                            </div>
                        </div>
                        <%-- <div class="form-group">
                             <label class="col-sm-3 control-label">管控部门</label>
                             <div class="col-sm-8">
                                 &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                 &lt;%&ndash;v-model="riskSite.riskMajorType"></div>&ndash;%&gt;
                                 <i-select placeholder="请选择管控部门" v-model="updateunitList" multiple filterable>
                                     <i-option style=" width: 413px;right: 0;top: 32px;"
                                               v-for="(mydepart,index) in departmentList"
                                               :value="mydepart.fOrg_Name"
                                               :label="mydepart.fOrg_Name"
                                               :key="index">
                                         <span v-text="mydepart.fOrg_Name"></span>
                                         <span style="float:right;color:#ccc"
                                               v-text="mydepart.fOrg_Name_Shorthand"></span>
                                     </i-option>
                                 </i-select>
                             </div>
                         </div>
                         <div class="form-group">
                             <label class="col-sm-3 control-label">管控岗位</label>
                             <div class="col-sm-8">
                                 &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                 &lt;%&ndash;v-model="riskSite.riskMajorType"></div>&ndash;%&gt;
                                 <i-select placeholder="请选择管控岗位" ref="duty" v-model="dutyRole" clearable
                                           filterable label-in-value>
                                     <i-option v-for="(role,index) in roleList"
                                               :value="role.fRole_Name"
                                               :label="role.fRole_Name"
                                               :key="index">
                                         <span v-text="role.fRole_Name"></span>
                                         <span style="float:right;color:#ccc"
                                               v-text="role.fRole_Name_Shorthand"></span>
                                     </i-option>
                                 </i-select>
                             </div>
                         </div>
                         <div class="form-group">
                             <label class="col-sm-3 control-label">操作岗位</label>
                             <div class="col-sm-8">
                                 &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                 &lt;%&ndash;v-model="riskSite.riskMajorType"></div>&ndash;%&gt;
                                 <i-select placeholder="请选择操作岗位" ref="operat"  v-model="operatingPost" label-in-value clearable
                                           filterable>
                                     <i-option value="null">请选择操作岗位</i-option>
                                     <i-option v-for="(role,index) in roleList"
                                               :value="role.fRole_Name"
                                               :label="role.fRole_Name"
                                               :key="index">
                                         <span v-text="role.fRole_Name"></span>
                                         <span style="float:right;color:#ccc"
                                               v-text="role.fRole_Name_Shorthand"></span>
                                     </i-option>
                                 </i-select>
                             </div>
                         </div>--%>
                        <%--<div class="form-group">
                            <label class="col-sm-3 control-label">管控对象</label>
                            <div class="col-sm-8">
                                &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                &lt;%&ndash;v-model="riskSite.riskMajorType"></div>&ndash;%&gt;
                                <i-input placeholder="请选择管控对象" v-model="upconsequence" multiple filterable>
                                </i-input>
                            </div>
                        </div>--%>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">管控对象</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskMajorType"></div>--%>
                                <i-input placeholder="请输入管控对象" v-model="upriskObject" multiple filterable>
                                </i-input>
                            </div>
                            <span style="color: red;margin-left:-10px;font-size: 16px">*</span>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">管控对象类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskMajorType"></div>--%>
                                <i-select placeholder="请选择管控对象类型" v-model="upriskObjectType" clearable filterable>
                                    <i-option value="作业活动"></i-option>
                                    <i-option value="设施"></i-option>
                                </i-select>
                            </div>
                            <span style="color: red;margin-left:-10px;font-size: 16px">*</span>
                        </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="confirmUpdate">确认
                        </button>
                        <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!--删除风险-->
    <div class="modal inmodal" id="modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="height: 100%">
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
                            @click="confirmDelete">确认
                    </button>
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
                            风险:{{riskName}} <span>({{riskType}})</span>
                            <div style="float: right;font-size:12px">风险等级：<span
                                    style="font-size:16px;">{{riskLevel}}</span>
                            </div>
                        </h4>
                    </div>
                    <div>
                        <input type="radio" v-model="LecOrLs" :value="true"><span
                            style="font-size: 18px;font-weight: 600">风险矩阵分析法（LS）</span>
                        <input type="radio" v-model="LecOrLs" :value="false"><span
                            style="font-size: 18px;font-weight: 600">LEC风险评价法</span>
                    </div>
                    <form method="post" class="form-horizontal" onsubmit="return false;" id="showLS">

                        <div class="form-group">
                            <div class="col-sm-6">
                                <label class="col-sm-12 control-label " style="text-align: left;"
                                       for="example-input-small">可能性(L)</label>
                                <div class="col-sm-12" style="padding: 0;">
                                    <ul id="test1">
                                        <li id="l6" class="active" @click="getLS(6,0)"><span class="wxdj wxdj-h"></span>6
                                            <div class="wxdj-wz">有时发生≥10/1年</div>
                                        </li>
                                        <li id="l5" @click="getLS(5,0)"><span class="wxdj wxdj-h"></span>5
                                            <div class="wxdj-wz">能发生1/1年</div>
                                        </li>
                                        <li id="l4" @click="getLS(4,0)"><span class="wxdj wxdj-u"></span>4
                                            <div class="wxdj-wz">可能发生1/5年</div>
                                        </li>
                                        <li id="l3" @click="getLS(3,0)"><span class="wxdj wxdj-u"></span>3
                                            <div class="wxdj-wz">低可能1/10年</div>
                                        </li>
                                        <li id="l2" @click="getLS(2,0)"><span class="wxdj wxdj-j"></span>2
                                            <div class="wxdj-wz">很少1/40年</div>
                                        </li>
                                        <li id="l1" @click="getLS(1,0)"><span class="wxdj wxdj-l"></span>1
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
                                        <li id="s6" @click="getLS(0,6)"><span class="wxdj wxdj-h"></span>6
                                            <div class="wxdj-wz">多人死亡 500万以上</div>
                                        </li>
                                        <li id="s5" @click="getLS(0,5)"><span class="wxdj wxdj-h"></span>5
                                            <div class="wxdj-wz">一人死亡 100万到500万之间</div>
                                        </li>
                                        <li id="s4" @click="getLS(0,4)"><span class="wxdj wxdj-u"></span>4
                                            <div class="wxdj-wz">多人收严重伤害 4万到100万之间</div>
                                        </li>
                                        <li id="s3" @click="getLS(0,3)"><span class="wxdj wxdj-u"></span>3
                                            <div class="wxdj-wz">一人受严重伤害 1万到4万之间</div>
                                        </li>
                                        <li id="s2" @click="getLS(0,2)"><span class="wxdj wxdj-j"></span>2
                                            <div class="wxdj-wz">一人受到伤害，需要急救；或多人受轻微伤害2000到1万之间</div>
                                        </li>
                                        <li id="s1" @click="getLS(0,1)"><span class="wxdj wxdj-l"></span>1
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
                                     v-bind:style="'background-color:'+riskColor">
                                    <p style="text-align:center">{{riskLevel}}</p>
                                </div>
                            </div>
                        </div>
                    </form>

                    <div class="form-horizontal" id="showLEC">


                        <div class="form-group">
                            <div class="col-sm-4">
                                <label class="col-sm-12 control-label " style="text-align: left;">可能性(L)</label>
                                <div class="col-sm-12" style="padding: 0;">
                                    <ul id="test4">
                                        <li id="el6" @click="getLEC(10,0,0)"
                                            v-bind:class="{active:possibility==10&&lossConsequence!=0&&lossConsequence!=null}">
                                            <span class="wxdj wxdj-h"></span>10
                                            <div class="wxdj-wz1">完全可能预料</div>
                                        </li>
                                        <li id="el5" @click="getLEC(6,0,0)"
                                            v-bind:class="{active:possibility==6&&lossConsequence!=0&&lossConsequence!=null}">
                                            <span class="wxdj wxdj-h"></span>6
                                            <div class="wxdj-wz1">相当可能</div>
                                        </li>
                                        <li id="el4" @click="getLEC(3,0,0)"
                                            v-bind:class="{active:possibility==3&&lossConsequence!=0&&lossConsequence!=null}">
                                            <span class="wxdj wxdj-u"></span>3
                                            <div class="wxdj-wz1">可能但不经常</div>
                                        </li>
                                        <li id="el3" @click="getLEC(1,0,0)"
                                            v-bind:class="{active:possibility==1&&lossConsequence!=0&&lossConsequence!=null}">
                                            <span class="wxdj wxdj-u"></span>1
                                            <div class="wxdj-wz1">可能性小完全以外</div>
                                        </li>
                                        <li id="el2" @click="getLEC(0.5,0,0)"
                                            v-bind:class="{active:possibility==0.5&&lossConsequence!=0&&lossConsequence!=null}">
                                            <span class="wxdj wxdj-j"></span>0.5
                                            <div class="wxdj-wz1">很有可能可以设想</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <label class="col-sm-12 control-label " style="text-align: left;"
                                       for="example-input-small">暴露率(E)</label>
                                <div class="col-sm-12" style="padding: 0;">
                                    <ul id="test2">
                                        <li id="e6" @click="getLEC(0,10,0)" v-bind:class="{active:expose==10}"><span
                                                class="wxdj wxdj-h"></span>10
                                            <div class="wxdj-wz1">连续暴露</div>
                                        </li>
                                        <li id="e5" @click="getLEC(0,6,0)" v-bind:class="{active:expose==6}"><span
                                                class="wxdj wxdj-h"></span>6
                                            <div class="wxdj-wz1">经常暴露</div>
                                        </li>
                                        <li id="e4" @click="getLEC(0,3,0)" v-bind:class="{active:expose==3}"><span
                                                class="wxdj wxdj-u"></span>3
                                            <div class="wxdj-wz1">工作时间暴露</div>
                                        </li>
                                        <li id="e3" @click="getLEC(0,2,0)" v-bind:class="{active:expose==2}"><span
                                                class="wxdj wxdj-u"></span>2
                                            <div class="wxdj-wz1">不经常暴露</div>
                                        </li>
                                        <li id="e2" @click="getLEC(0,1,0)" v-bind:class="{active:expose==1}"><span
                                                class="wxdj wxdj-j"></span>1
                                            <div class="wxdj-wz1">偶然暴露</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <label class="col-sm-12 control-label " style="text-align: left;"
                                       for="example-input-small">产生的后果(C)</label>
                                <div class="col-sm-12" style="padding: 0;">
                                    <ul id="test3">
                                        <li id="ec6" @click="getLEC(0,0,100)"
                                            v-bind:class="{active:lossConsequence==100}"><span
                                                class="wxdj wxdj-h"></span>100
                                            <div class="wxdj-wz1">大灾难或造成许多人死亡</div>
                                        </li>
                                        <li id="ec5" @click="getLEC(0,0,40)"
                                            v-bind:class="{active:lossConsequence==40}"><span
                                                class="wxdj wxdj-h"></span>40
                                            <div class="wxdj-wz1">灾难或造成数人死亡</div>
                                        </li>
                                        <li id="ec4" @click="getLEC(0,0,15)"
                                            v-bind:class="{active:lossConsequence==15}"><span
                                                class="wxdj wxdj-u"></span>15
                                            <div class="wxdj-wz1">非常严重或造成一人死亡</div>
                                        </li>
                                        <li id="ec3" @click="getLEC(0,0,7)" v-bind:class="{active:lossConsequence==7}">
                                            <span class="wxdj wxdj-u"></span>7
                                            <div class="wxdj-wz1">严重或造成人员重伤</div>
                                        </li>
                                        <li id="ec2" @click="getLEC(0,0,3)" v-bind:class="{active:lossConsequence==3}">
                                            <span class="wxdj wxdj-j"></span>3
                                            <div class="wxdj-wz1">重大或造成人员伤害</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-12 control-label " style="text-align: left;" for="example-input-small">{{'riskLevel'|titleFilter('风险等级')}}</label>
                            <div class="col-sm-12">
                                <div v-if="updateRiskHazard.riskColor !=''"
                                     v-bind:style="'background-color:'+riskColor">
                                    <p style="text-align:center">{{riskLevel}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary"
                            @click="getAssessmentRiskHazard">保存
                    </button>
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <!--地点展示-->
    <div class="modal inmodal" id="modal-locationShow" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="height: 100%">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">绑定地点详细信息</h4>
                    <small></small>
                </div>
                <div class="modal-body" style="overflow-y: auto;height: 600px">
                    <table class="table table-striped table-bordered table-vcenter table-hover">
                        <tr class="biaot">
                            <td style="position: relative" class="text-center tcrk" rowspan="2">
                                序号
                            </td>
                            <td class="text-center" rowspan="2">地点名称
                            </td>
                            <td class="text-center" rowspan="2">管控周期(始)
                            </td>
                            <td class="text-center" rowspan="2">管控周期(终)
                            </td>
                            <tbody>
                            <tr v-for="(location,index) in locationList">
                                <td class="text-center" v-text="index+1"></td>
                                <td v-text="location.placeName"></td>
                                <td v-text="location.mRange[0].controlRangeStartDay"></td>
                                <td v-text="location.mRange[0].controlRangeEndDay"></td>
                            </tr>
                            </tbody>
                    </table>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>

    <!--按管控对象指定地点-->
    <div class="modal inmodal" id="modal-selectPlace" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="height: 100%">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">按管控对象指定地点</h4>
                    <small></small>
                </div>
                <div class="modal-body" style="overflow-y: auto;height: 600px">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">管控对象</label>
                        <div class="col-sm-8">
                            <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                            <%--v-model="riskSite.riskDamageType">--%>
                            <i-select v-model="riskObjName" ref="riskObj" placeholder="请选择管控对象"
                                      type="text" clearable filterable>
                                <%--<option value=null>请选择灾害类型</option>--%>
                                <i-option v-for="(mydamage,index) in objList"
                                          :value="mydamage"
                                          :label="mydamage">
                                </i-option>
                            </i-select>
                        </div>
                    </div>
                    <div class="row" style="background-color: #fff;padding-top: 0;">
                        <div class="col-sm-12" style="padding: 0;margin-top: 10px;">
                            <div id="" class="">
                                <form method="post" class="form-inline" onsubmit="return false;">

                                    <div class="form-group1">
                                        <label class="" for="example-if-password">待指定地点</label>
                                    </div>

                                </form>

                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">待指定地点</label>
                                <div class="col-sm-8">
                                    <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                    <%--v-model="riskSite.riskDamageType">--%>
                                    <i-select v-model="placeChild" placeholder="请指定地点" filterable multiple>
                                        <%--<option value=null>请选择灾害类型</option>--%>
                                        <i-option v-for="(myplace,index) in placeList"
                                                  :value="myplace.fPlace_Name"
                                                  :label="myplace.fPlace_Name">
                                            <span v-text="myplace.fPlace_Name"></span>
                                            <span style="float:right;color:#ccc"
                                                  v-text="myplace.fPlace_Name_Shorthand"></span>
                                        </i-option>
                                    </i-select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" @click="confirmAddAndPlace">确认
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
<script src="../iview/iview.js"></script>
<script src="../js/echarts.min.js"></script>
<script src="../js/plugins/uploader/webuploader.js"></script>
<script>
    $(document).ready(function () {
        $("#showLEC").hide();
        $("#import").hide();
        $("#lasttext").hide();
        $("#showInputInfo").hide();

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
<script type="text/javascript">
    function selectName() {
        if (event.keyCode == 13) {
            var keywords = $("#keywords").val();
            vueApp.templatehazard.name = keywords;
            vueApp.getPageCount1();
        }

    }

    var projectName = '<%=request.getContextPath() %>';
    var pageVar = "HazardByXinAn";//页面唯一变量标识，每个页面不能重复
    var attrArray = null;
    /**
     * Created by txianwei on 2017/9/14
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            Width: 300,
            pagesize: 10,
            nowpage: 1,
            attributes: new Array(),
            propertys: new Array(),
            templatehazard: "",//风险对象，查询所用
            templatehazardByAdd: "",//风险对象，新增所用
            detailedList: "",//获取集合
            majorList: [],//平台专业
            damageList: [],//平台灾害
            accidentList: [],//平台事故
            riskControlTierList: [],//平台管控层级
            riskFrequencyList: [],//平台管控频次
            leiBieList: [],//风险类型
            departmentList: [],//平台部门
            manageunitList: [],//管控部门集合
            updateunitList: [],//修改部门集合
            deleteHazard: "",//删除风险
            updateHazard: "",//修改风险所用
            upName: "",
            upMajor: "",
            upDesc: "",
            upDamage: "",
            upAccident: [],
            upRiskType: "",
            updateRiskHazard: "",
            riskdegree: "",
            riskdegreeList: "",
            LecOrLs: true,
            //评估所用
            possibility: 0,
            sseverity: 0,
            lossConsequence: 0,
            expose: 0,
            riskColor: null,
            riskLevel: null,
            riskvalue: null,
            riskName: "",//风险名称
            riskType: "",//风险类型
            riskLevelSetting: 0,//风险等级
            upriskObject: "",//修改管控对象
            dutyRole: "",//修改管控岗位
            roleList: "",//岗位集合
            operatingPost: "",//修改操作岗位
            riskleversetting: "",
            riskleversettingList: [],
            temList: [],//导入重点管控模板List
            temmeasure: [],//导入管控措施模板List
            upriskObjectType: "",//管控对象类型
            locationList: [],//点击地点数目获取地点list
            accidentTypeList: [],//事故类型多选
            upriskKind: "",//修改风险种类
            objList: "",//获取管控对象List
            riskObjName: "",
            placeList: [],
            placeChild: [],
            hazardList: [],
            savePlaceByAJ: [],
            temHazardID: -1,
            riskhazardcontrolrangeList: [],
            detailedList: "",
            judge: false,
//            accident:[],//筛选事故类型

        },
        created: function () {
            var _self = this;
            _self.getNewTemplatehazard();
            _self.getNewTemplatehazard1();
            _self.getEnterprise_data_dictionaryListForOrg();
            _self.getPlaceListForEnterprise();
            _self.getDepartment();
            _self.getNewRiskdegree();
            _self.getRoleTypes();
            _self.getNewRiskleversetting();
//          _self.getRiskAttributes();


        },
        mounted: function () {
            var _self = this;
            var uploader = WebUploader.create({
                // 自动上传。
                auto: true,
                // swf文件路径
                swf: '../uploader/Uploader.swf',
                // 文件接收服务端。
                server: '../Templatehazard/UploadFile',
                // 选择文件的按钮。可选。
                // 内部根据当前运行是创建，可能是input元素，也可能是flash.
                pick: '#file-picker',
                //文件数限制
                fileNumLimit: 1,
                //文件大小限制
                fileSingleSizeLimit: 10 * 1024 * 1024, //10M
                // 只允许选择文件类型，可选。
                accept: {
                    title: 'files',
                    extensions: 'xls,xlsx',
                    mimeTypes: 'application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
                }
            });
            uploader.on("startUpload", function () {
                layer.load();
            }),
                uploader.on("uploadSuccess", function (file, response) {

                    if (response == 1) {

                        _self.showToast("error", "导入表单的标题和模板不一致，请保持标题一致！");
                        layer.closeAll('loading');
                        uploader.reset();
                        return;
                    }

                    _self.showToast("success", "上传成功");
                    _self.temList = response.temList;
                    _self.temmeasure = response.temmeasure;
                    $("#pagination").hide();
                    $("#general-table").hide();
                    $("#screen").hide();
                    $(".searchCon").hide();
                    $("#queryInfo").hide();
                    $("#addInfo").hide();
                    $("#specified_Place").hide();
                    $("#import").show();
                    $("#lasttext").show();
                    $("#showInputInfo").show();
                    layer.closeAll('loading');
                    uploader.reset();

                });

            uploader.on('uploadError', function (file) {
                _self.showToast("error", "抱歉上传失败");
                layer.closeAll('loading');
                uploader.reset();
            });
        },
        updated: function () {
        },
        methods: {
            //确认添加地点
            confirmAddAndPlace: function () {
                var _self = this;
                _self.savePlaceByAJ = [];
                if (_self.riskObjName == null || _self.riskObjName == "") {
                    _self.showToast("warning", "请输入管控对象");
                    return;

                }
                if (_self.placeChild.length == 0) {
                    _self.showToast("warning", "请选择要指定的地点");
                    return;

                }
                $.ajax({
                    url: projectName + "/Templatehazard/getTemplatehazardByRiskObj", //发送请求的地址。
                    type: "post", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {
                        "riskObjName": _self.riskObjName
                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (hdata) {
                        //请求成功后的回调函数
                        _self.hazardList = hdata;
                        var judge = false;
                        for (var m = 0; m < _self.hazardList.length; m++) {
                            if (_self.hazardList[m].riskLevelSettingID == null || _self.hazardList[m].riskLevelSettingID == "") {
                                _self.showToast("warning", "该管控对象中，" + _self.hazardList[m].name + "的风险未进行评估；请先进行评估后在指定地点！");
                                judge = true;
                            }
                        }
                        if (judge) {
                            return;
                        }
                        layer.load();
                        for (var j = 0; j < _self.placeChild.length; j++) {
                            for (var i = 0; i < _self.placeList.length; i++) {
                                if (_self.placeChild[j] == _self.placeList[i].fPlace_Name) {
                                    $.ajax({
                                        url: projectName + "/Templatehazard/newPlace", //发送请求的地址。
                                        type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                        data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                        dataType: "json",//预期服务器返回的数据类型。
                                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                        success: function (mdata) {
                                            //请求成功后的回调函数
                                            mdata.fPlace_Name = _self.placeChild[j];
                                            mdata.fPlace_GUID = _self.placeList[i].fPlace_GUID;
                                            _self.savePlaceByAJ.push(mdata);
                                            for (var n = 0; n < 5; n++) {
                                                $.ajax({
                                                    url: projectName + "/Templatehazard/getNewRiskhazardcontrolrange", //发送请求的地址。
                                                    type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                                    data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                                    dataType: "json",//预期服务器返回的数据类型。
                                                    async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                                    success: function (data) {
                                                        //请求成功后的回调函数
                                                        if (n == 0) {
                                                            data.controlRangeName = "矿级";
                                                        } else if (n == 1) {
                                                            data.controlRangeName = "专业级";

                                                        } else if (n == 2) {
                                                            data.controlRangeName = "职能部室级";

                                                        } else if (n == 3) {
                                                            data.controlRangeName = "区队级";

                                                        } else if (n == 4) {
                                                            data.controlRangeName = "班组个人级";
                                                        }
                                                        _self.riskhazardcontrolrangeList.push(data);

                                                    },
                                                });
                                            }
                                        },
                                    });
                                    break;
                                }
                            }
                        }
                        for (var j = 0; j < _self.hazardList.length; j++) {
                            _self.temHazardID = _self.hazardList[j].hazardID;
                            _self.detailedList = _self.hazardList[j];
                            $.ajax({
                                url: projectName + "/Templatehazard/addRiskToPlaceList/" + _self.temHazardID, //发送请求的地址。
                                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                data: JSON.stringify(_self.savePlaceByAJ),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                dataType: "json",//预期服务器返回的数据类型。
                                contentType: "application/json",
                                async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                success: function (data) {
                                    //请求成功后的回调函数
//                            _self.showToast("success", "保存成功");
                                    $.ajax({
                                        url: projectName + "/Templatehazard/getTemplatehazardAndPlace/" + _self.temHazardID, //发送请求的地址。
                                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                        data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                        dataType: "json",//预期服务器返回的数据类型。
                                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                        success: function (mdata) {
                                            //请求成功后的回调函数
                                            var rangList = mdata.mPaleAndRange;
                                            for (var i = 0; i < rangList.length; i++) {
                                                for (var h = 0; h < _self.placeChild.length; h++) {
                                                    if (rangList[i].placeName == _self.placeChild[h]) {
                                                        var min = h * 5;
                                                        _self.riskhazardcontrolrangeList[min].hazardID = rangList[i].hazardID;
                                                        _self.riskhazardcontrolrangeList[min].hazardUUID = rangList[i].hazardUUID;
                                                        _self.riskhazardcontrolrangeList[min].riskSiteFullNumber = rangList[i].riskSiteFullNumber;
                                                        _self.riskhazardcontrolrangeList[min].riskSiteID = rangList[i].riskSiteID;

                                                        _self.riskhazardcontrolrangeList[min + 1].hazardID = rangList[i].hazardID;
                                                        _self.riskhazardcontrolrangeList[min + 1].hazardUUID = rangList[i].hazardUUID;
                                                        _self.riskhazardcontrolrangeList[min + 1].riskSiteFullNumber = rangList[i].riskSiteFullNumber;
                                                        _self.riskhazardcontrolrangeList[min + 1].riskSiteID = rangList[i].riskSiteID;

                                                        _self.riskhazardcontrolrangeList[min + 2].hazardID = rangList[i].hazardID;
                                                        _self.riskhazardcontrolrangeList[min + 2].hazardUUID = rangList[i].hazardUUID;
                                                        _self.riskhazardcontrolrangeList[min + 2].riskSiteFullNumber = rangList[i].riskSiteFullNumber;
                                                        _self.riskhazardcontrolrangeList[min + 2].riskSiteID = rangList[i].riskSiteID;

                                                        _self.riskhazardcontrolrangeList[min + 3].hazardID = rangList[i].hazardID;
                                                        _self.riskhazardcontrolrangeList[min + 3].hazardUUID = rangList[i].hazardUUID;
                                                        _self.riskhazardcontrolrangeList[min + 3].riskSiteFullNumber = rangList[i].riskSiteFullNumber;
                                                        _self.riskhazardcontrolrangeList[min + 3].riskSiteID = rangList[i].riskSiteID;

                                                        _self.riskhazardcontrolrangeList[min + 4].hazardID = rangList[i].hazardID;
                                                        _self.riskhazardcontrolrangeList[min + 4].hazardUUID = rangList[i].hazardUUID;
                                                        _self.riskhazardcontrolrangeList[min + 4].riskSiteFullNumber = rangList[i].riskSiteFullNumber;
                                                        _self.riskhazardcontrolrangeList[min + 4].riskSiteID = rangList[i].riskSiteID;
                                                        continue;
                                                    }
                                                }
                                            }
                                            $.ajax({
                                                url: projectName + "/Templatehazard/addRiskhazardcontrolrange", //发送请求的地址。
                                                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                                data: JSON.stringify(_self.riskhazardcontrolrangeList),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                                dataType: "json",//预期服务器返回的数据类型。
                                                contentType: "application/json",
                                                async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                                success: function (data) {
                                                    //请求成功后的回调函数
                                                    if (j == _self.hazardList.length - 1) {
                                                        _self.judge = true;
                                                    }
                                                    _self.getAssessmentHazard();
                                                },
                                            });
                                        },
                                    });

                                },
                            });
                        }
                    },
                });

            },
            getAssessmentHazard: function () {
                var _self = this;
                $.ajax({
                    url: projectName + "/Templatehazard/getTemplatehazardAndPlace/" + _self.temHazardID, //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        var hazardList = data.mPaleAndRange;
                        if (hazardList.length != 0) {
                            for (var i = 0; i < hazardList.length; i++) {
                                for (var j = 0; j < _self.placeChild.length; j++) {
                                    if (hazardList[i].placeName == _self.placeChild[j]) {
                                        var hazardID = hazardList[i].hazardID;
                                        $.ajax({
                                            url: projectName + "/RiskAssessment/getRiskhazard/" + hazardID, //发送请求的地址。
                                            type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                            data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                            dataType: "json",//预期服务器返回的数据类型。
                                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                            success: function (mdata) {
                                                //请求成功后的回调函数
                                                _self.assmentHazard = mdata;
                                                _self.assmentHazard.Sseverity = _self.detailedList.sseverity;
                                                _self.assmentHazard.Lpossibility = _self.detailedList.possibility;
                                                _self.assmentHazard.Eexpose = _self.detailedList.expose;
                                                _self.assmentHazard.clossConsequence = _self.detailedList.lossConsequence;
                                                $.ajax({
                                                    type: "PUT",
                                                    url: projectName + "/RiskAssessment/assessmentHazardLevel",
                                                    dataType: "json",
                                                    contentType: "application/json",
                                                    data: JSON.stringify(_self.assmentHazard),
                                                    async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                                    success: function (data) {
//                                                        _self.showToast("success", "评估成功");
//                                                        layer.closeAll('loading');

                                                    },
                                                });
                                            },
                                        });
                                    }

                                }
                            }
                        }
                        if (_self.judge) {
                            _self.placeChild = [];
                            _self.savePlaceByAJ = [];
                            _self.riskhazardcontrolrangeList = [];
                            _self.judge = false;
                            _self.showToast("success", "保存成功");
                            _self.getPageCount();
                            $("#modal-selectPlace").modal("hide");
                            layer.closeAll('loading');
                        }

                    },

                });
            },
            //按管控对象指定地点
            specifiedPlace: function () {
                var _self = this;
                var riskObjType = null;
                $.ajax({
                    url: projectName + "/Templatehazard/getDistinctRiskObject", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {
                        "riskObjType": riskObjType,
                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.objList = data;
                        $("#modal-selectPlace").modal("show");
                    },
                });


            },
            showLocation: function (placeList) {
                var _self = this;
                    if (placeList == 0) {
                        _self.showToast("warning", "暂未指定地点");
                        return;
                    } else {
                        _self.locationList = placeList;
                        $("#modal-locationShow").modal("show");
                    }

            },
            confirmImport: function () {
                var _self = this;
                //url:发送请求地址。
                //data:待发送 Key/value 参数。
                //callback:发送成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                layer.load();
                for (var i = 0; i < _self.temList.length; i++) {
                    $.ajax({
                        url: projectName + "/Templatehazard/addTemplatehazard", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: JSON.stringify(_self.temList[i]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        contentType: "application/json",
                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
                            var hazardID = data;
                            if (_self.temmeasure[i].measureContent != "" || _self.temmeasure[i].measureContent != null) {
                                _self.temmeasure[i].hazardID = hazardID;
                                _self.temmeasure[i].measureType = "工程技术";

                                $.ajax({
                                    url: projectName + "/Templatehazard/addTemplateriskControlmeasure", //发送请求的地址。
                                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                    data: JSON.stringify(_self.temmeasure[i]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                    dataType: "json",//预期服务器返回的数据类型。
                                    contentType: "application/json",
                                    async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                    success: function (data) {
                                        //请求成功后的回调函数

                                    },
                                });
                            }

                        },
                    });
                    if (i == _self.temList.length - 1) {
                        _self.showToast("success", "导入成功");
                        _self.lasttext();
                        layer.closeAll('loading');
                    }
                }
            },
            //返回事件
            lasttext: function () {
                var _self = this;
                $("#pagination").show();
                $("#general-table").show();
                $(".searchCon").show();
                $("#specified_Place").show();
                $("#queryInfo").show();
                $("#screen").show();
                $("#addInfo").show();
                $("#import").hide();
                $("#lasttext").hide();
                $("#showInputInfo").hide();
                _self.temList = [];
                _self.getPageCount1();
            },
            //获取地点信息
            getPlaceListForEnterprise: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.post(projectName + "/PlatForm/getPlaceListForEnterprise", function (data) {
                    _self.placeList = data.rows;
                });
            }
            ,
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
            queryName: function () {
                var _self = this;
                _self.templatehazard.name = $("#keywords").val();
                _self.getPageCount1();

            },
            //获取平台岗位信息
            getRoleTypes: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Keyalue 参数。
                //callback:载入成功时回调函数。
                $.post(projectName + "/PlatForm/getRoleTypes", {"orgID": null, "typeName": null}, function (data) {
                    _self.roleList = data;


                });
            },
            getAssessmentRiskHazard: function () {
                var _self = this;
                _self.updateHazard.expose = _self.expose;
                _self.updateHazard.lossConsequence = _self.lossConsequence;
                _self.updateHazard.possibility = _self.possibility;
                _self.updateHazard.sseverity = _self.sseverity;
                _self.updateHazard.riskLevel = _self.riskLevel;
                _self.updateHazard.riskColor = _self.riskColor;
                _self.updateHazard.riskValue = _self.riskValue;
                _self.updateHazard.riskLevelSettingID = _self.riskLevelSetting;
                _self.updateHazard.status = true;
                $.ajax({
                    url: projectName + "/Templatehazard/updateTemplatehazard", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.updateHazard),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        $("#modal-regularharzard").modal("hide");
                        _self.getPageCount();
                        _self.showToast("success", "评估成功");

                    },
                });

            },
            //得到riskdegree空对象
            getNewRiskdegree: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/RiskAssessment/getNewRiskdegree", function (data) {
                    _self.riskdegree = data;
                    _self.getRiskdegreeList();

                });

            },
            getRiskdegreeList: function () {
                var _self = this;
                $.ajax({
                    url: projectName + "/RiskAssessment/getRiskdegreeList", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.riskdegree),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.riskdegreeList = data;
                    },

                });


            },


            getLS: function (L, S) {
                var _self = this;
                _self.expose = 0;
                _self.lossConsequence = 0;
                if (L != 0) {
                    _self.possibility = L;
                }
                if (S != 0) {
                    _self.sseverity = S;

                }
                if (_self.sseverity == null || _self.sseverity == "" || _self.possibility == "" || _self.possibility == null) {
                    return

                } else {
                    var value = _self.sseverity * _self.possibility;
                    for (var i = 0; i < _self.riskdegreeList.length; i++) {
                        if (_self.riskdegreeList[i].hazardidentificationMethod.indexOf("LS") != -1) {
                            var itemList = _self.riskdegreeList[i].mRiskdegreeitems;
                            for (var j = 0; j < itemList.length; j++) {
                                var vmax = itemList[j].riskRangMAX;
                                var vmin = itemList[j].riskRangMIX;
                                if (value <= vmax && value >= vmin) {
                                    _self.riskColor = itemList[j].mRiskLevelSetting.riskColor;
                                    _self.riskLevel = itemList[j].mRiskLevelSetting.riskLevel;
                                    _self.riskLevelSetting = itemList[j].mRiskLevelSetting.riskLevelSettingID;
                                    break;
                                }

                            }

                        }


                    }
                    _self.riskValue = value;
                }

            },


            getLEC: function (L, E, C) {
                var _self = this;
                _self.sseverity = 0;
                if (L != 0) {
                    _self.possibility = L;
                }
                if (E != 0) {
                    _self.expose = E;

                }
                if (C != 0) {
                    _self.lossConsequence = C;

                }
                if (_self.expose == null || _self.expose == ""
                    || _self.possibility == "" || _self.possibility == null
                    || _self.lossConsequence == "" || _self.lossConsequence == null

                ) {
                    return

                } else {
                    var value = _self.expose * _self.possibility * _self.lossConsequence;
                    for (var i = 0; i < _self.riskdegreeList.length; i++) {
                        if (_self.riskdegreeList[i].hazardidentificationMethod.indexOf("LEC") != -1) {
                            var itemList = _self.riskdegreeList[i].mRiskdegreeitems;
                            for (var j = 0; j < itemList.length; j++) {
                                var vmax = itemList[j].riskRangMAX;
                                var vmin = itemList[j].riskRangMIX;
                                if (value <= vmax && value >= vmin) {
                                    _self.riskColor = itemList[j].mRiskLevelSetting.riskColor;
                                    _self.riskLevel = itemList[j].mRiskLevelSetting.riskLevel;
                                    _self.riskLevelSetting = itemList[j].mRiskLevelSetting.riskLevelSettingID;

                                    break;
                                }

                            }

                        }
                    }
                    _self.riskValue = value;
                }
            },
            updateAssessment: function (hazard) {
                var _self = this;
                _self.expose = hazard.expose;
                _self.lossConsequence = hazard.lossConsequence;
                _self.possibility = hazard.possibility;
                _self.sseverity = hazard.sseverity;
                _self.riskLevel = hazard.riskLevel;
                _self.riskColor = hazard.riskColor;
                _self.riskName = hazard.name;
                _self.riskType = hazard.riskType;
                _self.updateHazard = hazard;
                if (hazard.sseverity != 0 && hazard.sseverity != null) {
                    _self.LecOrLs = true;
                    $("#test li").removeClass("active");
                    $("#test1 li").removeClass("active");
//                    $("#test2 li").removeClass("active")
//                    $("#test3 li").removeClass("active")
//                    $("#test4 li").removeClass("active")
                    if (_self.sseverity == "6") {
                        $("#s6").addClass("active");
                    } else if (_self.sseverity == "5") {
                        $("#s5").addClass("active");

                    } else if (_self.sseverity == "4") {
                        $("#s4").addClass("active");

                    } else if (_self.sseverity == "3") {
                        $("#s3").addClass("active");

                    } else if (_self.sseverity == "2") {
                        $("#s2").addClass("active");

                    } else if (_self.sseverity == "1") {
                        $("#s1").addClass("active");

                    }
                    if (_self.possibility == "6") {
                        $("#l6").addClass("active");
                    } else if (_self.possibility == "5") {
                        $("#l5").addClass("active");

                    } else if (_self.possibility == "4") {
                        $("#l4").addClass("active");

                    } else if (_self.possibility == "3") {
                        $("#l3").addClass("active");

                    } else if (_self.possibility == "2") {
                        $("#l2").addClass("active");

                    } else if (_self.possibility == "1") {
                        $("#l1").addClass("active");

                    }
                } else {
                    $("#test li").removeClass("active");
                    $("#test1 li").removeClass("active");
                    _self.LecOrLs = false;
                }
                $("#modal-regularharzard").modal("show");
            },
            jumpHazardPlace: function (hazard) {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                var hazardID = hazard.hazardID;
                if (hazard.status != true || hazard.status == null) {
                    _self.showToast("warning", "请先评估该风险");
                    return;
                }
                $.post(projectName + "/Templatehazard/addHazardIDBySession/" + hazardID + "/" + _self.nowpage, function (data) {
                    location.href = projectName + "/menu/HazardIdentificationByXinAnPlace.action";
                });
            },
            confirmUpdate: function () {
                var _self = this;
                var info = "";
                if (_self.upName == null || _self.upName == "") {
                    _self.showToast("warning", "风险名称不能为空");
                    return;

                }
                if (_self.upriskObject == null || _self.upriskObject == "") {
                    _self.showToast("warning", "管控对象不能为空");
                    return;

                }
                if (_self.upriskObjectType == null || _self.upriskObjectType == "") {
                    _self.showToast("warning", "管控对象类型不能为空");
                    return;

                }
                _self.updateHazard.name = _self.upName;
                _self.updateHazard.hazardDesc = _self.upDesc;
                _self.updateHazard.majorType = _self.upMajor;
                _self.updateHazard.damageType = _self.upDamage;
                if (_self.upAccident.length != 0) {
                    var pei = ""
                    for (var i = 0; i < _self.upAccident.length; i++) {
                        if (i != _self.upAccident.length - 1) {
                            pei += _self.upAccident[i] + ","

                        }
                        if (i == _self.upAccident.length - 1) {
                            pei += _self.upAccident[i]

                        }

                    }
                    _self.updateHazard.accidentType = pei;

                } else {
                    _self.updateHazard.accidentType = "";

                }
                _self.updateHazard.riskKind = _self.upriskKind
                _self.updateHazard.riskType = _self.upRiskType;
                _self.updateHazard.riskObject = _self.upriskObject;
                _self.updateHazard.dutyRole = _self.dutyRole;
                _self.updateHazard.operatingPost = _self.operatingPost;
                _self.updateHazard.riskObjectType = _self.upriskObjectType;
                for (var i = 0; i < _self.updateunitList.length; i++) {

                    info += _self.updateunitList[i] + ",";
                }
                if (info != "") {
                    info = info.substring(0, info.length - 1);
                    _self.updateHazard.manageUnit = info;
                } else {
                    _self.updateHazard.manageUnit = null;
                }
                $.ajax({
                    url: projectName + "/Templatehazard/updateTemplatehazard", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.updateHazard),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        $("#modal-update").modal('hide');
                        _self.updateHazard = "";
                        _self.updateunitList = [];
                        _self.getPageCount();
                        _self.showToast("success", "修改成功");
                    },
                });

            },
            updateInfo: function (hazard) {
                var _self = this;
                _self.upName = hazard.name;
                _self.upDesc = hazard.hazardDesc;
                _self.upMajor = hazard.majorType;
                _self.upDamage = hazard.damageType;
                if (hazard.accidentType != "" && hazard.accidentType != null) {
                    _self.upAccident = hazard.accidentType.split(",");

                } else {
                    _self.upAccident = [];
                }
                _self.upriskKind = hazard.riskKind;
                _self.upRiskType = hazard.riskType;
                _self.upriskObject = hazard.riskObject;
                _self.operatingPost = hazard.operatingPost;
                _self.dutyRole = hazard.dutyRole;
                _self.upriskObjectType = hazard.riskObjectType;
                if (hazard.manageUnit != "" && hazard.manageUnit != null) {
                    _self.updateunitList = hazard.manageUnit.split(",");
                } else {
                    _self.updateunitList = [];
                }
                _self.updateHazard = hazard;
                $("#modal-update").modal('show');
            },
            confirmDelete: function () {
                var _self = this;
                $.post(projectName + "/Templatehazard/getTemplatehazardAndPlace/" + _self.deleteHazard.hazardID, function (data) {
                    for (var i = 0; i < data.mPaleAndRange.length; i++) {
                        var riskID = data.mPaleAndRange[i].riskSiteID;
                        var riskFullNumber = ((data.mPaleAndRange[i].riskSiteFullNumber).replace(/\./g, "%2E"));
                        if (data.mPaleAndRange[i].mRange.length != 0) {
                            $.ajax({
                                url: projectName + "/Templatehazard/deleteRiskhazardcontrolrangeList", //发送请求的地址。
                                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                data: JSON.stringify(data.mPaleAndRange[i].mRange),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                dataType: "json",//预期服务器返回的数据类型。
                                contentType: "application/json",
                                async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                success: function (mdata) {
                                    //请求成功后的回调函数
                                    $.ajax({
                                        url: projectName + "/HazardIdentificationControl/deleteRiskByFullNumber/" + riskID + "/" + riskFullNumber + "/", //发送请求的地址。
                                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                        data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                        dataType: "json",//预期服务器返回的数据类型。
                                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                        success: function (ndata) {
                                            //请求成功后的回调函数
                                        },
                                    });
                                },
                            });
                        } else {
                            $.ajax({
                                url: projectName + "/HazardIdentificationControl/deleteRiskByFullNumber/" + riskID + "/" + riskFullNumber, //发送请求的地址。
                                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                dataType: "json",//预期服务器返回的数据类型。
                                async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                success: function (hdata) {
                                    //请求成功后的回调函数
                                },
                            });
                        }

                    }
                });
                $.ajax({
                    url: projectName + "/Templatehazard/deleteTemplateriskcontrolmeasureByHazardID", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {
                        "hazardID": _self.deleteHazard.hazardID,
                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        $.ajax({
                            url: projectName + "/Templatehazard/deleteTemplatehazard", //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: JSON.stringify(_self.deleteHazard),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            contentType: "application/json",
                            async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                //请求成功后的回调函数
                                _self.getPageCount();
                                _self.showToast("success", "删除成功");

                            },
                        });
                    },

                });


            },
            addTemplatehazard: function () {
                var _self = this;
                var info = "";
                if (_self.templatehazardByAdd.name == null || _self.templatehazardByAdd.name == "") {
                    _self.showToast("warning", "请输入风险名称");
                    return;
                }
                if (_self.templatehazardByAdd.riskObject == null || _self.templatehazardByAdd.riskObject == "") {
                    _self.showToast("warning", "请输入管控对象");
                    return;

                }
                if (_self.templatehazardByAdd.riskObjectType == null || _self.templatehazardByAdd.riskObjectType == "") {
                    _self.showToast("warning", "请选择管控对象类型");
                    return;

                }
                if (_self.accidentTypeList.length != 0) {
                    var pei = ""
                    for (var i = 0; i < _self.accidentTypeList.length; i++) {
                        if (i != _self.accidentTypeList.length - 1) {
                            pei += _self.accidentTypeList[i] + ","

                        }
                        if (i == _self.accidentTypeList.length - 1) {
                            pei += _self.accidentTypeList[i]

                        }

                    }
                    _self.templatehazardByAdd.accidentType = pei;

                } else {
                    _self.templatehazardByAdd.accidentType = null;

                }
                for (var i = 0; i < _self.manageunitList.length; i++) {

                    info += _self.manageunitList[i] + ",";
                }
                if (info != "") {
                    info = info.substring(0, info.length - 1);
                    _self.templatehazardByAdd.manageUnit = info;
                } else {
                    _self.templatehazardByAdd.manageUnit = null;
                }
                _self.templatehazardByAdd.status = false;
                _self.templatehazardByAdd.riskValue = 0;
                $.ajax({
                    url: projectName + "/Templatehazard/addTemplatehazard", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.templatehazardByAdd),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        $("#modal-add").modal('hide');
                        _self.templatehazardByAdd = "";
                        _self.getNewTemplatehazard1();
                        _self.manageunitList = [];
                        _self.getPageCount();
                        _self.showToast("success", "新增成功");
                    },
                });


            },
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
            //获取辅助资料
            getEnterprise_data_dictionaryListForOrg: function () {
                var _self = this;
                $.ajax({
                    url: projectName + "/PlatForm/getEnterprise_data_dictionaryListForOrg",
                    type: "POST",
                    data: {
                        "orgID": null,
                        "data_TypeOrName": null,
                    },
                    dataType: "json",
                    async: "false",
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.majorList = data.专业类型;
                        _self.damageList = data.灾害类型;
                        _self.accidentList = data.事故类型;
                        _self.riskControlTierList = data.管控层级;
                        _self.riskFrequencyList = data.管控频次;
                        _self.leiBieList = data.风险类型;
                    },
                });
            },
            //获取templatehazard对象
            getNewTemplatehazard: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/Templatehazard/newTemplatehazard", {}, function (data) {
                    _self.templatehazard = data;
                    _self.getPageCount();
                });

            },
            //获取templatehazard对象
            getNewTemplatehazard1: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/Templatehazard/newTemplatehazard", {}, function (data) {
                    _self.templatehazardByAdd = data;
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
            }
            ,
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
            forwardMRiskSite: function (risk) {
                var _self = this;
                var riskSiteID = risk.riskSiteID;
                var firstName = risk.name;
                var position = firstName;

                $.post(projectName + "/RiskControlMeasureControl/gotoMRiskSite/" + riskSiteID + "/" + position, function (data) {
                    if (data) {
                        window.location.href = "<%=request.getContextPath()%>/menu/RiskAssessmentShowMRiskSite.action";
                    }
                });
            }

            ,
            //获取总条数，参数是Risksite 对象
            getPageCount1: function () {
                var _self = this;
                _self.nowpage=1;
                _self.templatehazard.pageSize = _self.pagesize;
                /*if(_self.accident.length!=0){
                    var info="";
                    for(var i=0;i<_self.accident.length;i++){
                        if(i!=_self.accident.length-1){
                            info+=_self.accident[i]+",";
                        }
                        if(i==_self.accident.length-1){
                            info+=_self.accident[i];
                        }
                    }
                    _self.templatehazard.accidentType=info;
                } else {
                    _self.templatehazardByAdd.accidentType = null;

                }*/
                _self.detailedList =[];
                $.ajax({
                    type: "POST",
                    url: projectName + "/Templatehazard/getTemplatehazardAndPlaceByCount",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.templatehazard),
                    success: function (data) {
                        if (data > 0) {
                            if (data == 1) {
                                $("#pagination").hide();
                            } else {
                                $("#pagination").show();
                            }
                            var currentPage =<%=currentPage%>;
                            if (currentPage != null && currentPage != "") {
                                _self.nowpage =<%=currentPage%>;
                            }
                            //分页设置
                            var page_options =
                                {
                                    size: 'small',
                                    bootstrapMajorVersion: 3,
                                    currentPage: _self.nowpage,
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
            //获取总条数，参数是Risksite 对象
            getPageCount: function () {
                var _self = this;
//                _self.nowpage=1;
                _self.templatehazard.pageSize = _self.pagesize;
                /*if(_self.accident.length!=0){
                    var info="";
                    for(var i=0;i<_self.accident.length;i++){
                        if(i!=_self.accident.length-1){
                            info+=_self.accident[i]+",";
                        }
                        if(i==_self.accident.length-1){
                            info+=_self.accident[i];
                        }
                    }
                    _self.templatehazard.accidentType=info;
                } else {
                    _self.templatehazardByAdd.accidentType = null;

                }*/
                _self.detailedList =[];
                $.ajax({
                    type: "POST",
                    url: projectName + "/Templatehazard/getTemplatehazardAndPlaceByCount",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.templatehazard),
                    success: function (data) {
                        if (data > 0) {
                            if (data == 1) {
                                $("#pagination").hide();
                            } else {
                                $("#pagination").show();
                            }
                            var currentPage =<%=currentPage%>;
                            if (currentPage != null && currentPage != "") {
                                _self.nowpage =<%=currentPage%>;
                            }
                            //分页设置
                            var page_options =
                                {
                                    size: 'small',
                                    bootstrapMajorVersion: 3,
                                    currentPage: _self.nowpage,
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
                _self.templatehazard.page = page;
                $.ajax({
                    type: "POST",
                    url: projectName + "/Templatehazard/getTemplatehazardAndPlaceByPage",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.templatehazard),
                    success: function (data) {
                        _self.detailedList = data;
                        <%session.removeAttribute("currentPage");%>
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
        watch: {

            "LecOrLs": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (_self.LecOrLs) {
                        $("#showLEC").hide();
                        $("#showLS").show();

                    } else {
                        $("#showLS").hide();
                        $("#showLEC").show();

                    }
                },
                deep: true
            },
            /*"operatingPost":{
                handler: function (val, oldVal) {
                    var _self = this;
                    if(val==""||val==null){
                        this.$refs.operat.clearSingleSelect();

                    }
                },
                deep: true
            },*/
            /*"dutyRole":{
                handler: function (val, oldVal) {
                    var _self = this;
                    if(val==""||val==null){
                        this.$refs.duty.clearSingleSelect();

                    }
                },
                deep: true
            },*/
            "upRiskType": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.riskType.clearSingleSelect();

                    }
                },
                deep: true
            },
            "upMajor": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.major.clearSingleSelect();

                    }
                },
                deep: true
            },
            "upDamage": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.damage.clearSingleSelect();

                    }
                },
                deep: true
            },
            /*"upAccident": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.accident.clearSingleSelect();
                    }
                },
                deep: true
            },*/
        },
        filters: {
            upCaseFilter: function (val) {
                return val.toUpperCase();
            }
            ,
            titleFilter: function (val, defaultName) {
                var _self = this;
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