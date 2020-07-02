

<%@ page import="org.platform4j.model.Userinfo" %>
<%@ page import="org.platform4j.model.Emp" %><%--<%@ page import="org.kplatform4j.model.User" %>--%>
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
    <title>风险管控-风险管控分析-新增</title>
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
    <%--<link href="../css/jquery.editable-select.min.css" rel="stylesheet">--%>
    <link rel="stylesheet" type="text/css" href="../iview/iview.css">
    <style>.control-label {
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
        width: 88%;
        margin-left: 5px;
    }

    .input-group-addon, .input-group-btn {
        width: 1% !important;
        white-space: nowrap;
        vertical-align: middle;
    }

    .table {
        margin-bottom: 0;
    }

    .btn1 {
        padding: 0 15px;
    }

    .close {
        line-height: 0;
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

    .form-group {
        margin-bottom: 5px;
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

    .fxdj {
        background-color: #00a3e9;
        height: 30px;
        width: 100%;
    }

    .modal-footer {
        background-color: #fff;
    }

    .switch-success input:checked + span {
        background-color: #00a3e9;
    }

    .ivu-select-dropdown {

        position: absolute !important;
    }

    th {
        white-space: nowrap;
    }

    /*.btys{ display: inline-block; padding: 8px 20px; background-color: #ff0000; vertical-align: sub; }*/</style>
</head>

<body>
<div id="app">
    <% Emp userObj = (Emp) request.getSession().getAttribute("emp");
        String username = userObj.getFEmp_Name();
        Integer userid = userObj.getfEmp_ID_Auto();
        String userDepartment = userObj.getFOrg_Name();
        Integer userDepartmentID = userObj.getfOrgID_Auto();
        Integer manalyzeid = (Integer) request.getSession().getAttribute("manalyzeid");
        Integer pagestatus = (Integer) request.getSession().getAttribute("status");

    %>
    <div id="page-content" style="min-height: 794px;">
        <!-- Table Styles Header -->
        <div class="content-header">
            <div class="row">
                <div class="col-sm-6">
                    <div class="header-section">
                        <h1>管控效果分析</h1></div>
                </div>
            </div>
        </div>
        <!-- END Table Styles Header -->
        <!-- Table Styles Block -->
        <div class="block full">
            <div class="table-responsive">
                <div class="table-responsive">
                    <div class="dataTables_wrapper form-inline no-footer">
                        <div class="row" style="background-color: #fff;">
                            <div class="col-sm-12" style="padding: 0">
                                <div class="">
                                    <form method="post" class="form-inline" onsubmit="return false;">
                                        <div class="form-group">
                                            <label class="">检查信息</label>
                                            <div class="form-control" style="border: 0;"></div>
                                        </div>
                                        <div class="form-group" style="float: right;">
                                            <button type="submit" class="btn btn-effect-ripple btn-primary" @click="saveAnzalyze">保存 </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-12" style="margin: 10px 0px;">
                                <div class="">
                                    <form method="post" class="form-horizontal" onsubmit="return false;">
                                        <div class="col-sm-hh">
                                            <label class="control-label">年份</label>
                                            <div class="col-sm-hh1">
                                                <input type="text" id="checkyear1" class="form-control" readonly="readonly"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-hh">
                                            <label class="control-label">月份</label>
                                            <div class="col-sm-hh1">
                                                <input type="text" id="checkmonth1" readonly="readonly" class="form-control "/>
                                            </div>
                                        </div>
                                        <div class="col-sm-hh">
                                        <label class="control-label">专业类型</label>
                                        <div class="col-sm-hh1">
                                            <input type="text" id="checkmajortype1" readonly class="form-control "/>
                                        </div>
                                    </div>
                                        <div class="col-sm-hh">
                                            <label class="control-label">频次</label>
                                            <div class="col-sm-hh1">
                                                <input type="text" id="frequency" readonly class="form-control "/>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-12" style="margin: 10px 0px;">
                                <div>
                                    <form method="post" class="form-horizontal" onsubmit="return false;">
                                        <div class="col-sm-hh7">
                                            <label class="control-label" for="example-textarea-input">管控效果分析</label>
                                            <div class="col-sm-hh3">
                                                <textarea id="descriptionId" style="width: 100%;" v-text="riskanalyzeby.description"  name="example-textarea-input" rows="7" class="form-control" placeholder="" ></textarea>
                                            </div>
                                        </div>
                                        <div class="col-sm-hh2" style="margin-left: 46px;margin-top: 20px;">
                                            <label class="control-label" for="example-textarea-input">概况</label>
                                            <div class="col-sm-hh3">
                                                <textarea id="riskreviews" style="width: 100%;" v-text="riskanalyzeby.reviews"  name="example-textarea-input" rows="7" class="form-control" placeholder="" onclick="popTip()"></textarea>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-12" style="margin: 10px 0px; width: 300px">
                                <div>
                                    <form method="post" class="form-horizontal" onsubmit="return false;">
                                        <div class="col-sm-hh2">
                                            <label class="control-label" for="example-textarea-input">文件</label>
                                            <div style="width:  40%">
                                                <upload :action="fileUploadPath" :show-upload-list=false :on-success="uploadSuccess" :data='idObject' >
                                                    <i-button type="ghost" icon="ios-cloud-upload-outline">文件上传 </i-button>
                                                </upload>
                                            </div>
                                        </div>
                                        <div style="width:  40%">
                                            <label class="control-label" @click="downFile" for="example-textarea-input" style="color: #0B8DE5; cursor:pointer;" id="fileName">{{analyzefile}}</label>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <div class="table-responsive">
                        <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                            <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                                <thead>
                                <tr>
                                    <th class="text-center">序号</th>
                                    <th class="text-center">风险点</th>
                                    <th class="text-center">风险</th>
                                    <th class="text-center">{{'damageType'|titleFilter('灾害类型')}}</th>
                                    <th class="text-center">{{'driskValue'|titleFilter('风险值(D)')}}</th>
                                    <th class="text-center">存在问题</th>
                                    <th class="text-center" style="width:70px">状态</th>
                                    <th class="text-center" style="width:350px">操作</th>
                                </tr>
                                </thead>
                                <tbody v-for="(riskanalyzebyitem,riskanalyzebyitemindex) in riskanalyzebyitems">
                                <tr>
                                    <td class="text-center" v-text="pagesize*(nowpage-1)+riskanalyzebyitemindex+1"></td>
                                    <td v-text="riskanalyzebyitem.lostcontrolItem.risksiteName"></td>
                                    <td v-text="riskanalyzebyitem.lostcontrolItem.hazard.name"></td>
                                    <td class="text-center" v-text="riskanalyzebyitem.lostcontrolItem.hazard.damageType"></td>
                                    <td class="text-center" v-text="riskanalyzebyitem.lostcontrolItem.hazard.driskValue"></td>
                                    <td v-text="riskanalyzebyitem.keyContent"></td>
                                    <td v-if="riskanalyzebyitem.lostcontrolItem.outOfControlStatus!=true">未失控</td>
                                    <td v-else>失控
                                    </td>
                                    <td>
                                        <a class="btn1" @click="assessControlMeasure(riskanalyzebyitem,riskanalyzebyitemindex)">重新评估风险等级</a>
                                        <a href="#modal-regular1" class="btn1" data-toggle="modal" @click="modifyControlMeasure(riskanalyzebyitem,riskanalyzebyitemindex)">重新修订管控措施</a>
                                        <a class="btn1" @click="modifyHT(riskanalyzebyitem,riskanalyzebyitemindex)">录入隐患</a></tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="modal-regular" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="min-height: 100%; height: auto">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <div class="block-title">
                            <h4>重新评价风险</h4></div>
                        <form method="post" class="form-horizontal" onsubmit="return false;">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">可能性</label>
                                <div class="col-md-6">
                                    <input class="form-control" type="text" size="1" v-model="remhazard.Lpossibility"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">频繁程度</label>
                                <div class="col-md-6">
                                    <input class="form-control" type="text" size="1" v-model="remhazard.Eexpose"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">可能后果</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" size="1" v-model="remhazard.consequence"/>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="saveAssess" data-dismiss="modal">保存</button>
                        <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
        <div id="modal-regular1" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="min-height: 100%; height: auto">
                    <div class="modal-body" style="height: 100%;overflow-y: auto">
                        <div class="block-title">
                            <h4 style="width: 100%;">
                                {{'Name'|titleFilter('风险')}}:{{updateHazard.name}}<span></span>
                                <div style="float: right;font-size:12px">{{'riskLevel'|titleFilter('风险等级')}}：<span style="font-size:16px;color: #FF0000; ">{{updateHazard.riskLevel}}</span>
                                </div>
                            </h4>
                        </div>
                        <form method="post" class="form-horizontal" onsubmit="return false;">

                            <div class="form-group">
                                <label class="col-md-12 text-left" for="example-textarea-input">{{'name'|titleFilter('风险描述')}}</label>
                                <div class="col-md-12">
                                <textarea id="example-textarea-input" v-text="updateHazard.hazardDesc"
                                          name="example-textarea-input" rows="7"
                                          class="form-control" readonly="readonly"></textarea></div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-6" style="padding: 0;">
                                    <label class="col-md-12 text-left" for="example-textarea-input">{{'managerUnitName'|titleFilter('责任部门')}}</label>
                                    <div class="col-md-12">
                                        <span class="form-control" readonly="readonly" v-text="updateHazard.accountabilityUnit" id="zerendepartment"></span>
                                    </div>
                                </div>
                                <div class="col-sm-6" style="padding: 0;">
                                    <label class="col-md-12 text-left" for="example-textarea-input">{{'dutyRole'|titleFilter('责任岗位')}}</label>
                                    <div class="col-md-12">
                                        <span type="text" class="form-control" readonly="readonly" v-text="updateHazard.dutyRole"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="block full" style="    padding-top: 25px;">
                                <!-- Block Tabs Title -->
                                <div class="block-title">
                                    <ul class="nav nav-tabs" data-toggle="tabs">
                                        <li class="active">
                                            <a href="#zjcs">增加措施</a>
                                        </li>
                                        <li>
                                            <a href="#scbdwj">上传本地文件</a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- END Block Tabs Title -->

                                <!-- Tabs Content -->
                                <div class="tab-content">
                                    <div class="tab-pane active" id="zjcs">
                                        <form method="post" class="form-horizontal" onsubmit="return false;">
                                            <div class="form-group">

                                                <div class="col-sm-12 text-right">
                                                    <button type="submit" class="btn btn-effect-ripple btn-primary" @click="clearMeasure">清空
                                                    </button>
                                                    <button type="submit" class="btn btn-effect-ripple btn-primary"@click="updateMeasure">添加
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
                                                <table
                                                        class="table table-striped table-bordered table-vcenter table-hover">
                                                    <thead>
                                                    <tr>
                                                        <th class="text-center" style="width: 45px">
                                                            序号
                                                        </th>
                                                        <th class="text-center">
                                                            {{'MeasureContent'|titleFilter1('措施内容')}}
                                                        </th>
                                                        <th class="text-center" style="width: 100px;">
                                                            {{'MeasureCreateTime'|titleFilter1('制定时间')}}
                                                        </th>
                                                        <th class="text-center" style="width: 45px">操作</th>

                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr v-for="(measure,controlindex) in measure1">
                                                        <td class="text-center" v-text="controlindex+1"></td>
                                                        <td class="text-center" v-text="measure.measureContent"
                                                            name="example-textarea-input" readonly="readonly">
                                                        </td>
                                                        <td class="text-center"> {{measure.measureCreateTime}}</td>
                                                        <td class="text-center">
                                                            <p><a @click="controlMeasureUpdate(measure,controlindex)">
                                                                修改
                                                            </a></p>
                                                            <p></p>
                                                            <p><a href="javascript:void(0)" data-toggle="tooltip"

                                                                  @click="deleteMeasure(measure,controlindex)"
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
                                                <div class="col-sm-hh2" style="margin-bottom: 10px">
                                                    <label class="control-label bjc"
                                                           for="example-textarea-input">文件</label>
                                                    <div class="col-sm-hh3">
                                                        <div class="input-group" style="width: 100%;">
                                                            <input type="file"
                                                                   name="example-input2-group2" id="upFile"
                                                                   class="form-control" placeholder="">
                                                            <input type="text" name="fguid"
                                                                   value="<%=userid%>"
                                                                   hidden="hidden">
                                                            <input type="text" name="usefor"
                                                                   value="<%=username%>"
                                                                   hidden="hidden">
                                                            <input type="text" name="returnUrl" value="test"
                                                                   hidden="hidden">
                                                            <span class="input-group-btn"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                            <label class="bjc" for="example-textarea-input"
                                                   style="margin: 15px 0;">已上传的文件</label>
                                            <div style="height:400px;overflow-y: auto">
                                                <table
                                                        class="table table-striped table-bordered table-vcenter table-hover">
                                                    <thead>
                                                    <tr>
                                                        <th class="text-center" style="width: 45px">
                                                            序号
                                                        </th>
                                                        <th class="text-center" style="width: 80px">附件名</th>
                                                        <th class="text-center" style="width: 50px">上传时间</th>
                                                        <th class="text-center" style="width: 45px">操作</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody v-for="(measurefile,fileindex) in measure2">
                                                    <tr>
                                                        <td class="text-center" v-text="fileindex+1">
                                                        </td>
                                                        <td class="text-center"><a @click="downloadFile(measurefile)"
                                                                                   v-text="measurefile.measureName"></a>
                                                        </td>
                                                        <td class="text-center">
                                                            {{measurefile.measureCreateTime}}
                                                        </td>
                                                        <td class="text-center">
                                                            <a href="javascript:void(0)" data-toggle="tooltip"
                                                               @click="deleteMeasurefile(measurefile,fileindex)"
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
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="saveMeasure">保存</button>
                        <button type="button" class="btn btn-effect-ripple btn-danger" <%--data-dismiss="modal" --%>
                                data-dismiss="modal" data-dismiss="modal">关闭
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
                    </form>
                    <form id="downFile" action="<%=request.getContextPath()%>/RiskControlMeasureControl/downFile"
                          method="post">
                        <input id="downloadUrl" name="downloadUrl" type="hidden"/>
                        <input id="realFileName" name="realFileName" type="hidden"/>
                    </form>
                </div>
            </div>
        </div>
        <div id="modal-regular2" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="min-height:100%">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <div class="block-title">
                            <h4>隐患信息</h4></div>
                        <form method="post" class="form-horizontal" onsubmit="return false;">
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="example-select">检查类型</label>
                                <div class="col-md-8">
                                    <label style="width: 100%;">
                                        <div class="input-group" style="width:100%;">
                                            <select id="fpCFS" style="display: inline-block;font-weight:100"
                                                    name="example-if-password"
                                                    class="form-control nihao1"
                                                    type="text">
                                                <option value="-1">请选择检查类型</option>
                                                <option v-for="(mycheck,index) in checkData">{{mycheck.fData_Name}}
                                                </option>
                                            </select>
                                            <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>
                                        </div>
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label">陪检人部门</label>
                                <div class="col-sm-8">
                                    <i-select v-model="createUnitName" placeholder="请选择陪检人部门" filterable clearable type="text">
                                        <%--<i-option value="">请选择陪检人部门</i-option>--%>
                                        <i-option v-for="(mydepart,index) in departList" :label="mydepart.fOrg_Name"
                                                  :value="mydepart.fOrg_Name">
                                            <span v-text="mydepart.fOrg_Name"></span>
                                            <span style="float:right;color:#ccc"
                                                  v-text="mydepart.fOrg_Name_Shorthand"></span>
                                        </i-option>
                                    </i-select>

                                </div>
                            </div>
                            <%--后面增加陪检人员--%>
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="example-select">陪检人员</label>
                                <div class="col-md-8">
                                    <label style="width: 100%;">
                                        <div class="input-group" style="width: 100%">
                                            <i-select v-if="judgeAddOrShowInfo!=1" v-model="peijianren"
                                                      style="font-weight: 500"
                                                      placeholder="请选择陪检人员" multiple>
                                                <i-Option v-for="item in peijianList" :value="item.fEmp_Name">
                                                    {{item.fEmp_Name }}
                                                </i-Option>
                                            </i-select>
                                            <input style="font-weight: 500" class="form-control nihao1"
                                                   v-if="judgeAddOrShowInfo==1" id="peijianren" v-model="peijianren">
                                        </div>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="example-select">隐患地点</label>
                                <div class="col-md-8">
                                    <label style="width: 100%;">
                                        <div class="input-group" style="width: 100%">
                                            <%--<div class="input-group-btn"style="width: 100%;">--%>
                                            <input type="text" id="flocation" v-model="flocation"
                                                   class="form-control nihao1" style="font-weight: 500" placeholder="">
                                            <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>


                                        </div>

                                    </label>

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">隐患描述</label>
                                <div class="col-md-8">
                                    <label style="width: 100%;">
                                        <div class="input-group" style="width: 100%">
                                            <div class="input-group-btn" style="width: 100%;">
                                                <select style="min-height:60px; font-weight:500" id="fdescription"
                                                        @change="showStandard"
                                                        name="example-if-password"
                                                        class="form-control nihao1">
                                                    <option value="">请选择隐患描述</option>
                                                    <option v-for="(myemp,index ) in standardList" :value="myemp.fHtdetailDescription" v-text="myemp.fHtdetailDescription">
                                                    </option>
                                                </select>
                                                <input style="font-weight: 500" type="text" style="min-height:60px"
                                                       id="myfdescription"
                                                       placeholder="请添加隐患描述" name="example-if-password"
                                                       class="form-control nihao1">

                                                <span v-if="addfd==1" @click="addFdescription"
                                                      style="cursor:pointer;color: deepskyblue;position: absolute;top:2px;font-size: 20px">+</span>
                                                <span id="myfd" v-if="addfd==0" @click="addFdescription1"
                                                      style="cursor:pointer;color: red;position: absolute;top:2px;font-size: 16px">↶</span>
                                                <span v-if="addfd==2"
                                                      style="color: red;position: absolute;top:7px;font-size: 16px">*</span>
                                            </div>
                                        </div>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="example-input-small">专业/等级</label>
                                <div class="col-sm-8">
                                    <select style="width:52%;display: inline-block;" id="fcatagories"
                                            name="example-if-password"
                                            class="form-control nihao1">
                                        <option value="-1">请选择专业</option>
                                        <option v-for="(mycategory,index) in majorList">{{mycategory.fData_Name}}
                                        </option>
                                    </select>
                                    <select style="width: 46%;display: inline-block;" id="flevel"
                                            name="example-if-password"
                                            class="form-control nihao1"
                                            type="text">
                                        <option value="-1">请选择隐患等级</option>
                                        <option v-for="(htdetail,index) in htdetailfLevelName"
                                                :value="htdetail.fLevelName"
                                                v-text="htdetail.fLevelName"></option>
                                    </select>
                                    <span style="color: red;right:0px;position: absolute;top:7px;font-size: 16px">*</span>

                                </div>

                            </div>
                            <%--
                            v1.3版本更新，增加描述
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="example-input-small">隐患分类/班次</label>
                                <div class="col-sm-8">
                                    &lt;%&ndash;<input style="width: 59%;display: inline-block;" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="" type="text">&ndash;%&gt;
                                    <select style="width: 52%;display: inline-block;" id="fyhfl"
                                            name="example-if-password"
                                            class="form-control nihao1" placeholder=""
                                            type="text">
                                        <option value="">请选择责任部门</option>
                                        <option v-for="(mydepart,index) in departmentList">
                                            {{mydepart.fOrg_Name}}
                                        </option>
                                    </select>
                                    &lt;%&ndash;<input style="width: 39%;display: inline-block;" id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="" type="text">&ndash;%&gt;
                                    &lt;%&ndash; <select style="width: 46%;display: inline-block;" id="fdutyPersonName"
                                             name="example-if-password"
                                             class="form-control nihao1" placeholder=""
                                             type="text">
                                         <option value="-1" v-if="empList==''">请选择责任人</option>
                                         <option v-for="(myemp,index ) in empList">{{myemp.fEmp_Name}}</option>
                                     </select>&ndash;%&gt;
                                    <select id="classIndex" style="width: 46%;display: inline-block;"
                                            name="example-if-password"
                                            class="form-control nihao1" placeholder=""
                                            type="text">
                                        <option value="-1">请选择班次</option>
                                        <option v-for="(mybanCi,index) in banCi">{{mybanCi.fData_Name}}</option>
                                    </select>
                                    <span style="color: red;right:0px;position: absolute;top:7px;font-size: 16px">*</span>

                                </div>
                            </div>--%>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="example-input-small">责任部门<span v-if="judgeInfo==0">/责任人</span></label>
                                <div class="col-sm-8">
                                    <select style="width: 52%;display: inline-block;" id="fdutyUnitName"
                                            v-model="fdutyUnitName" name="example-if-password"
                                            class="form-control nihao1" placeholder=""
                                            type="text" @change="myChange">
                                        <option value="">请选择责任部门</option>
                                        <option v-for="(mydepart,index) in departmentList">
                                            {{mydepart.fOrg_Name}}
                                        </option>
                                    </select>
                                     <select style="width: 46%;display: inline-block;" id="fdutyPersonName"
                                             name="example-if-password"
                                             class="form-control nihao1" placeholder=""
                                             type="text">
                                         <option value="-1">请选择责任人</option>
                                         <option v-if="updateInfo!=''">{{updateInfo}}</option>
                                         <option v-for="(myemp,index ) in empList3">{{myemp.fEmp_Name}}</option>
                                     </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">班次</label>
                                <div class="col-md-8">
                                    <select id="classIndex" style="width: 52%;display: inline-block;"
                                            name="example-if-password"
                                            class="form-control nihao1" placeholder=""
                                            type="text">
                                        <option value="-1">请选择班次</option>
                                        <option v-for="(mybanCi,index) in banCi">{{mybanCi.fData_Name}}</option>
                                    </select>
                                    <span style="color: red;position: relative;top:7px;font-size: 16px">*</span>

                                </div>

                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="example-input-small">当班处理</label>
                                <div class="col-sm-6">
                                    <label class="switch switch-success"><input type="checkbox" id="mycheckboxID"
                                                                                v-model="checkboxID"
                                    ><span></span></label>
                                </div>
                            </div>
                            <div class="form-group" id="showDiv">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" for="example-input-small">整改期限</label>
                                    <div class="col-sm-8">
                                        <input style="width: 52%;display: inline-block; position: relative;left: 10px"
                                               id="fwillSolutionTime" readonly name="example-input-small"
                                               class="form-control input-sm" placeholder="点击选择整改期限" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" for="example-input-small">直接下达</label>
                                    <div class="col-sm-6">
                                        <label style="position: absolute;left: 23px"
                                               class="switch switch-success"><input
                                                type="checkbox" id="mycheckQuick" v-model="checkQuick"
                                        ><span> </span></label>
                                        <span id="showspan1"
                                              style="margin-left: 50px;color:red;font-weight: 600; position: absolute;left: 36px;top: 6px">将进入隐患下达模块五定下达</span>
                                        <span id="showspan2"
                                              style="margin-left: 50px;color:red;font-weight: 600;position: absolute;left: 36px;top: 6px"
                                              hidden>将下达到{{fdutyUnitName}}下的所有员工</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="example-input-small">是否罚款</label>
                                <div class="col-sm-6">
                                    <div style="width: 49%;display: inline-block;"><label
                                            class="switch switch-success"><input type="checkbox" id="mycheckDuty"
                                                                                 v-model="checkDuty"
                                    ><span> </span></label>
                                    </div>
                                </div>
                                <div id="showDuty" hidden>
                                    <div class="col-sm-12 nihao2">
                                        <label class="col-md-4 control-label"
                                               for="example-if-password">罚款方式</label>
                                        <div class="col-md-6">
                                            <select id="fselect" v-model="fineway" name="example-if-password"
                                                    class="form-control nihao1"
                                                    placeholder="" type="text">
                                                <option value="0">处罚单位</option>
                                                <option value="1">处罚个人</option>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="col-sm-12 nihao2" id="fineByUnit" style="overflow: hidden;">
                                        <label class="col-md-4 control-label"
                                               for="example-if-password">罚款金额</label>
                                        <div class="col-md-6"><input id="fMoeney" name="example-if-password"
                                                                     class="form-control nihao1"
                                                                     placeholder="元" type="text"></div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                    </div>
                                    <div class="col-sm-12 nihao2">
                                        <button type="submit" v-if="judgeAddOrShowInfo!=1"
                                                @click="getNewHtdetailstandardpunish"
                                                class="btn btn-effect-ripple btn-primary">添加罚款信息
                                        </button>
                                    </div>

                                </div>
                                <div class="col-sm-12" id="fineByPerson">
                                    <table class="table table-striped table-bordered table-vcenter table-hover">
                                        <tr>
                                            <th class="text-center">
                                                序号
                                            </th>
                                            <th class="text-center">岗位</th>
                                            <th class="text-center">是否主要责任人</th>
                                            <th class="text-center">责任部门</th>
                                            <th class="text-center">责任人</th>
                                            <th class="text-center">扣分</th>
                                            <th class="text-center">罚款</th>
                                            <th class="text-center" v-if="judgeAddOrShowInfo!=1">操作</th>

                                        </tr>
                                        <tr v-if="finewayList.length!=0&&judgeAddOrShowInfo!=1"
                                            v-for="(myfine,index) in finewayList">
                                            <td class="text-center" v-text="index+1"></td>
                                            <td v-if="myfine.fFineDuty!=null&&myfine.page!=1"
                                                v-text="myfine.fFineDuty"></td>
                                            <td v-if="myfine.fFineDuty==null||myfine.page==1">
                                                <select class="form-control" v-model="myfine.fFineDuty">
                                                    <option v-for="(role,index) in roleList"
                                                            :value="role.fRole_Name">{{role.fRole_Name}}
                                                    </option>
                                                </select>
                                            </td>
                                            <td v-if="myfine.fDutyPerson=='1'&&myfine.page!=1">是</td>
                                            <td v-if="myfine.fDutyPerson=='0'&&myfine.page!=1">联责处罚</td>
                                            <td v-if="myfine.fDutyPerson==null||myfine.page==1">
                                                <select class="form-control" v-model="myfine.fDutyPerson">
                                                    <option value="1">是</option>
                                                    <option value="0">联责处罚</option>

                                                </select>

                                            </td>
                                            <td>
                                                <select class="form-control" v-model="myfine.fFineDepartment"
                                                        @change="getCurrOrgEmpList(index,1)">
                                                    <option v-for="(mydepart,index) in departmentList">
                                                        {{mydepart.fOrg_Name}}
                                                    </option>
                                                </select>
                                            </td>
                                            <td>

                                                <select style="width: 75px" class="form-control" :id="'t'+index"
                                                        v-model="myfine.fFineDepartmentPerson">
                                                    <option>{{myfine.fFineDepartmentPerson}}</option>
                                                    <option v-for="(myemp,index ) in empList">
                                                        {{myemp.fEmp_Name}}
                                                    </option>
                                                </select>

                                            </td>
                                            <td><input class="form-control" v-model="myfine.fDeductPoint"></td>
                                            <td>
                                                <input class="form-control" v-model="myfine.fFineMoney">
                                            </td>
                                            <td class="text-center"><a @click="deleteInfoList(index)">删除</a>
                                            </td>

                                        </tr>
                                        <tr v-if="fineInfoList!=''&&index!=saveUnitIndex" v-for="(myfine,index) in fineInfoList">
                                            <td class="text-center" v-text="index+1"></td>
                                            <td v-for="(myduty,mindex) in dutyList" v-if="index==mindex"
                                                v-text="myduty"></td>
                                            <td v-if="myfine.fdutyPerson=='1'">是</td>
                                            <td v-if="myfine.fdutyPerson=='0'">联责处罚</td>
                                            <td v-text="myfine.fBePunishUnitName"></td>
                                            <td v-text="myfine.fBePunishPersonName"></td>
                                            <td v-text="myfine.fdeductPoint"></td>
                                            <td v-text="myfine.fMoeney"></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="judgeAddOrShow">提交
                        </button>
                        <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>

        <div id="modal-regularharzard" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="height: auto;min-height: 1081px">
                    <div class="modal-body">

                        <div class="block-title">
                            <h4 style="width: 100%;">
                                风险:{{updateRiskHazard.name}} <span>({{updateRiskHazard.riskType}})</span>
                                <div style="float: right;font-size:12px">风险等级：<span style="font-size:16px;">{{updateRiskHazard.riskLevel}}</span>
                                </div>
                            </h4>
                            <input type=" " v-model="updateRiskHazard.name" hidden>
                            <input type=" " v-model="updateRiskHazard.riskObject" hidden>
                            <input type=" " v-model="updateRiskHazard.riskLevel" hidden>

                        </div>
                        <div>
                            <input type="radio" v-model="LecOrLs" :value="true"><span>风险矩阵分析法（LS）</span>
                            <input type="radio" v-model="LecOrLs" :value="false"><span>LEC风险评价法</span>
                        </div>
                        <form method="post" class="form-horizontal" onsubmit="return false;" id="showLS">


                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label class="col-sm-12 control-label " style="text-align: left;"
                                           for="example-input-small">可能性(L)</label>
                                    <div class="col-sm-12" style="padding: 0;">
                                        <ul id="test1">
                                            <li id="l6" class="active" @click="getLS(6,0)"><span
                                                    class="wxdj wxdj-h"></span>6
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
                                <label class="col-sm-12 control-label " style="text-align: left;"
                                       for="example-input-small">{{'riskLevel'|titleFilter('风险等级')}}</label>
                                <div class="col-sm-12">
                                    <div v-if="updateRiskHazard.riskColor !=''"
                                         v-bind:style="'background-color:'+updateRiskHazard.riskColor">
                                        <p style="text-align:center">{{updateRiskHazard.riskLevel}}</p>
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
                                                v-bind:class="{active:updateRiskHazard.Lpossibility==10&&updateRiskHazard.clossConsequence!=0&&updateRiskHazard.clossConsequence!=null}">
                                                <span class="wxdj wxdj-h"></span>10
                                                <div class="wxdj-wz1">完全可能预料</div>
                                            </li>
                                            <li id="el5" @click="getLEC(6,0,0)"
                                                v-bind:class="{active:updateRiskHazard.Lpossibility==6&&updateRiskHazard.clossConsequence!=0&&updateRiskHazard.clossConsequence!=null}">
                                                <span class="wxdj wxdj-h"></span>6
                                                <div class="wxdj-wz1">相当可能</div>
                                            </li>
                                            <li id="el4" @click="getLEC(3,0,0)"
                                                v-bind:class="{active:updateRiskHazard.Lpossibility==3&&updateRiskHazard.clossConsequence!=0&&updateRiskHazard.clossConsequence!=null}">
                                                <span class="wxdj wxdj-u"></span>3
                                                <div class="wxdj-wz1">可能但不经常</div>
                                            </li>
                                            <li id="el3" @click="getLEC(1,0,0)"
                                                v-bind:class="{active:updateRiskHazard.Lpossibility==1&&updateRiskHazard.clossConsequence!=0&&updateRiskHazard.clossConsequence!=null}">
                                                <span class="wxdj wxdj-u"></span>1
                                                <div class="wxdj-wz1">可能性小完全以外</div>
                                            </li>
                                            <li id="el2" @click="getLEC(0.5,0,0)"
                                                v-bind:class="{active:updateRiskHazard.Lpossibility==0.5&&updateRiskHazard.clossConsequence!=0&&updateRiskHazard.clossConsequence!=null}">
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
                                            <li id="e6" @click="getLEC(0,10,0)"
                                                v-bind:class="{active:updateRiskHazard.Eexpose==10}"><span
                                                    class="wxdj wxdj-h"></span>10
                                                <div class="wxdj-wz1">连续暴露</div>
                                            </li>
                                            <li id="e5" @click="getLEC(0,6,0)"
                                                v-bind:class="{active:updateRiskHazard.Eexpose==6}"><span
                                                    class="wxdj wxdj-h"></span>6
                                                <div class="wxdj-wz1">经常暴露</div>
                                            </li>
                                            <li id="e4" @click="getLEC(0,3,0)"
                                                v-bind:class="{active:updateRiskHazard.Eexpose==3}"><span
                                                    class="wxdj wxdj-u"></span>3
                                                <div class="wxdj-wz1">工作时间暴露</div>
                                            </li>
                                            <li id="e3" @click="getLEC(0,2,0)"
                                                v-bind:class="{active:updateRiskHazard.Eexpose==2}"><span
                                                    class="wxdj wxdj-u"></span>2
                                                <div class="wxdj-wz1">不经常暴露</div>
                                            </li>
                                            <li id="e2" @click="getLEC(0,1,0)"
                                                v-bind:class="{active:updateRiskHazard.Eexpose==1}"><span
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
                                                v-bind:class="{active:updateRiskHazard.clossConsequence==100}"><span
                                                    class="wxdj wxdj-h"></span>100
                                                <div class="wxdj-wz1">大灾难或造成许多人死亡</div>
                                            </li>
                                            <li id="ec5" @click="getLEC(0,0,40)"
                                                v-bind:class="{active:updateRiskHazard.clossConsequence==40}"><span
                                                    class="wxdj wxdj-h"></span>40
                                                <div class="wxdj-wz1">灾难或造成数人死亡</div>
                                            </li>
                                            <li id="ec4" @click="getLEC(0,0,15)"
                                                v-bind:class="{active:updateRiskHazard.clossConsequence==15}"><span
                                                    class="wxdj wxdj-u"></span>15
                                                <div class="wxdj-wz1">非常严重或造成一人死亡</div>
                                            </li>
                                            <li id="ec3" @click="getLEC(0,0,7)"
                                                v-bind:class="{active:updateRiskHazard.clossConsequence==7}"><span
                                                    class="wxdj wxdj-u"></span>7
                                                <div class="wxdj-wz1">严重或造成人员重伤</div>
                                            </li>
                                            <li id="ec2" @click="getLEC(0,0,3)"
                                                v-bind:class="{active:updateRiskHazard.clossConsequence==3}"><span
                                                    class="wxdj wxdj-j"></span>3
                                                <div class="wxdj-wz1">重大或造成人员伤害</div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-12 control-label " style="text-align: left;"
                                       for="example-input-small">{{'riskLevel'|titleFilter('风险等级')}}</label>
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
                        <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭
                        </button>
                    </div>
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
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/vue.js"></script>
<script src="../js/iview.min.js"></script>
<%--<script src="../js/jquery.editable-select.min.js"></script>--%>
<script src="../js/resource.js"></script>
<script src="../js/nowDate.js"></script>
<script>
    function watchInfo() {
        if ($("#fdescription").val() == "") {
            vueApp.htdetail.fhiddenDangerStandard = null;
        }
    }
    $(document).ready(function () {
//        $("#myfdescription").hide();
        $("#fdescription").hide();
        $("#myfdescription").show();
        $("#addPlace").hide();
        $("#fineByPerson").hide();
    });
    var ispop = false;
    function popTip(){
        if(!ispop){
            alert("如修改自动生成的概况描述，可能将会导致出现数据不一致，请谨慎修改!");
            ispop = true;
        }

    }
    $(document).ready(function () {
        $("#showLEC").hide();
    });
</script>


<script>
    var projectName = '<%=request.getContextPath() %>';
    var attrArray = null;
    var vueApp = new Vue({
        el: "#app",
        data: {
            mark1:"",
            mark2:"",
            mark3:"",
            nowpage: 1,
            pagesize: 10,
            riskanalyzeby: "",
            riskanalyzebyitems: "",
            months: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
            departments: ["部门1", "部门2"],
            checkpeopler: ["检查人1", "检查人2"],
            remriskcontrolmeasure: "",
            remriskcontrolmeasures: "",//重新修订管控措施
            tempriskanalyzebyitemindex: "",//重新修订管管控措施在数组中的位置
            remriskcontrolmeasure1: "",//保存管控措施
            remhazard: "",//重新评估管控措施
            updateHazard: "",//重新修改时危险源对象
            measures: "",//修改时管控措施对象
            measure1: "",//措施
            measure2: "",//附件
            tempfullnumber: "",
            tempcontrolindex: -1,//管控措施所在的位置用来保存至措施到危险源
            tempmeasureindex: -1,//措施在措施集合里面的位置
            newmeasure: "",//一个空的管控措施
            newmeasure1: "",//一个空的管控措施1
            lostmeasure: new Array,//删除后的管控措施
            updateRiskHazard: "",
            tempmmm: 0,
            autodata: "",
            tempreviews: "",
            nowtime: "",
            majorList: "",//平台专业类型
            jihualeixing: "",//计划类型
            placeList: "",//平台获取地点
            departmentList: "",//平台获取部门
            empList: "",//平台获取人员
            checkboxID: false,//判断是否当班处理
            checkQuick: false,//判断是否快速下达
            checkDuty: false,//判断是否罚款
            htdetail: "",//隐患空对象
            htdetailTry: "",
            finerecord: "",//罚款空对象
            finerecorded: "",//返现查询罚款所用空对象
            banCi: "",//平台班次
            checkData: "",//检查类型
            standardList: "",//隐患描述集合
            htdetailstandard: "",//获取隐患描述对象
            getPeople: 0,//返现责任人所用
            fileName: "",
            fileTime: "",
            mydate: "",
            analyzefile: "",
            idObject: {"fguid": "<%=userid%>"},
            htdetailfLevelName: "",//隐患标准空对象
            addfd: 0, //添加描述
//            addDi: 1, //添加地点
            flocation: "",//地点
            LecOrLs: true,
//            spID: "",//专项计划ID
            speciallyPlanID: "",//专项检查类型
            speciallyPlanList: "",
            peijianList: "",
            peijianren: [],
            mainData: "",
            monthPlane: "",
            riskdegree: "",
            riskdegreeList: "",
            manalyzeItem: "",
            sPlan: "",//专项检查计划控对象
            safetyManagerUnit: "",
            fineway: "0",
            finewayList: [],
            fdutyUnitName: "",
            roleList: "",
           /* judgeshowSafe: false,//判断上级单位
            judgesPlan: false,//判断专项计划*/
            judgeAddOrShowInfo: 0,
            judgeBack: 0,
//            yhflList:"", V1.3版本更新内容,增加隐患分类

            recordOldVal: [],//用于记录当选择完隐患描述后，再更改处罚单位或者处罚个人时，finewayList处罚信息展示问题
            fisFinePerson: "",
            dutyList: [],//用于存放岗位
            saveUnitIndex:-1,
            dutyList:[],
            fineInfoList:"",
            empList3:"",//责任人
            updateInfo:"",
            judgeInfo:0,
            fileUploadPath:fileUploadPath,
            lossControlItemID:"",
            createUnitName:"",
            departList:"",
        },
        created: function () {
            var _self = this;
            _self.getNewRiskControlMeasure();
            _self.getNowTime();
            _self.getPlaceListForEnterprise();
            _self.getDepartment();
            _self.getEnterprise_data_dictionaryListForOrg();
            _self.getNewHtdetail();
            _self.getNewFinerecord();
            _self.Htdetaillevelsettin();
            _self.NowHtdetailStandard();
            _self.getNowTime1();
          //  _self.getUserinfoList();
            _self.getDepart();
            _self.initData();
            _self.getNewRiskdegree();
//          _self.getNewSpecialplan();
            _self.getRoleTypes();
        },
        mounted: function () {
        },
        updated: function () {

        },
        methods: {
            //获取部门信息
            getDepart: function () {
                var _self = this;
                $.post(projectName + "/PlatForm/getDepartment", {}, function (data) {
                    _self.departList = data;
                })
            },

            //获取平台岗位信息
            getRoleTypes: function () {
                var _self = this;
                $.post(projectName + "/PlatForm/getRoleTypes", function (data) {
                    _self.roleList = data;
                });
            },

            deleteInfoList: function (index) {
                var _self = this;
                _self.finewayList.splice(index, 1);
            },

            //获取隐患标准从表空对象
            getNewHtdetailstandardpunish: function () {
                var _self = this;
                $.get(projectName + "/RiskControlAnalyzeControl/NewHtdetailstandardpunish", function (data) {
                    if (_self.fineway == "1") {

                        if (_self.finewayList.length != 0) {
                            for (var i = 0; i < _self.finewayList.length; i++) {
                                if (_self.finewayList[i].fDutyPerson == 1) {
                                    data.fDutyPerson = 0;
                                }
                            }
                        } else {
                            data.fDutyPerson = 1;
                        }

                        data.page = 1;
                    } else {
                        data.fDutyPerson = '0'
                        data.page = null;
                    }
                    data.fDeductPoint = 0;
                    data.fFineMoney = 0;
                    _self.finewayList.push(data);
                });

            },
            getNewSpecialplan: function () {
                var _self = this;
                $.get(projectName + "/RiskControlAnalyzeControl/newSpecialplan", function (data) {
                    _self.sPlan = data;
                    _self.getSpecialPlanAllList();
                });
            },
            getSpecialPlanAllList: function () {
                var _self = this;
                $.ajax({
                    url: projectName + "/RiskControlAnalyzeControl/getSpecialplanList", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.sPlan),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.speciallyPlanList = data;
                    },
                });

            },
            //得到riskdegree空对象
            getNewRiskdegree: function () {
                var _self = this;
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
            initData: function () {
                var _self = this;
                if ((<%=pagestatus%>) > 0) {
                    _self.getModifyData();
                } else {
                    _self.getMainData();
                }
            },
            //获取主表的生成数据(修改操作)
            getModifyData: function () {
                var _self = this;
                $.post(projectName + "/RiskControlAnalyzeControl/getAnalyzebyid", {}, function (data) {
                    _self.riskanalyzeby = data;
                    _self.analyzefile = data.attachName;
                    $("#checkyear1").val(data.name.substring(0, 4));
                    $("#checkmonth1").val(data.name.substring(5, 7));
                    $("#checkmajortype1").val(data.majorType);
                    $("#frequency").val(data.frequency);
                    _self.riskanalyzebyitems = data.manalyzeItem;

                    //根据河南平煤需求（可维护概况信息）
                    if(data.frameeorkID =="41.01.02.01.130"){
                        $('#riskreviews').attr("readonly",false);
                    }
                });
            },
            //获取主表的生成数据(新建操作)
            getMainData: function () {
                var _self = this;
                var planid = <%=request.getSession().getAttribute("monthplaneID")%>;
                var framework = "<%=request.getSession().getAttribute("framework")%>";
                var frameworklist = framework.split(",");
                var frameworkByid = frameworklist[2].split('=');
                var frameworkid = frameworkByid[1];
                $.post(projectName + "/RiskControlAnalyzeControl/getMainDatabyallStatus", {}, function (data) {
                    _self.riskanalyzeby = data;
                    _self.analyzefile = data.attachName;
                    _self.riskanalyzebyitems = data.manalyzeItem;

                    //根据河南平煤矿的id进行判断
                    if(frameworkid == "41.01.02.01.130" ){
                        _self.NewRiskcontrolanalyze();//河南平煤需求
                        $('#riskreviews').attr("readonly",false);
                    }else{
                        _self.getMonthPlanYearAndMonth();
                    }
                });
            },

            //创建一个管控分析对象(河南平煤需求)
            NewRiskcontrolanalyze:function(){
                var _self = this;
                $.ajax({
                    url:projectName +"/RiskControlAnalyzeControl/getMainDataByHeNanPingMei", //发送请求的地址。
                    type:"GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data:{},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType:"json",//预期服务器返回的数据类型。
                    async:false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data){
                        _self.riskanalyzeby = data;
                        _self.getMonthPlanYearAndMonthBypingmei();
                    },
                });
            },

            //获取月度计划年月(河南平煤需求)
            getMonthPlanYearAndMonthBypingmei: function () {
                var _self = this;
                var planid = <%=request.getSession().getAttribute("monthplaneID")%>;
                $.post(projectName + "/RiskControlAnalyzeControl/getMonthPlaneByID", {"monthplaneID": planid}, function (data) {
                    _self.monthPlane = data;
                    $("#checkyear1").val(data.fyear);
                    $("#checkmonth1").val(data.fMonth);
                    $("#checkmajortype1").val(data.monthplanMajorType);
                    $("#frequency").val(data.monthPlanFrequency);
                    _self.riskanalyzeby.reviews = data.monthplanContent;

                    _self.riskanalyzeby.majorType = data.monthplanMajorType;//专业
                    _self.riskanalyzeby.monthplanType = data.monthplanType;//专项检查
                    _self.riskanalyzeby.name = data.monthplanName+"管控情况分析";//名称
                    _self.riskanalyzeby.monthPlaneID = data.monthplaneID;//id
                    _self.riskanalyzeby.createTime = new Date().format("yyyy-MM-dd hh:mm:ss");
                });
            },

            //获取月度计划年月(主线流程)
            getMonthPlanYearAndMonth: function () {
                var _self = this;
                var planid = <%=request.getSession().getAttribute("monthplaneID")%>;
                console.log(planid);
                $.post(projectName + "/RiskControlAnalyzeControl/getMonthPlaneByID", {"monthplaneID": planid}, function (data) {
                    _self.monthPlane = data;
                    $("#checkyear1").val(data.fyear);
                    $("#checkmonth1").val(data.fMonth);
                    $("#checkmajortype1").val(data.monthplanMajorType);
                    $("#frequency").val(data.monthPlanFrequency);
                });
            },

            getUserinfoList: function () {
                var _self = this;
                $.get(projectName + "/PlatForm/getUserinfoList", function (data) {
                    _self.peijianList = data;

                });
            },
            //还原失控状态
            resetOutOfControlStatus: function () {
                var _self = this;
                var param = 0;
                var lostControlItemID = _self.riskanalyzebyitems[_self.tempcontrolindex].lostcontrolItem.itemID;
                var oHiddenTroubleID = _self.riskanalyzebyitems[_self.tempcontrolindex].oHiddenTroubleID;
                if (oHiddenTroubleID != null && oHiddenTroubleID != "") {
                    $.ajax({
                        url: projectName + "/RiskControlAnalyzeControl/UpdateStatus1", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: JSON.stringify(_self.riskanalyzebyitems[_self.tempcontrolindex]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        contentType: "application/json",
                        dataType: "json",//预期服务器返回的数据类型。
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            if (data == 1) {
                                _self.riskanalyzebyitems[_self.tempcontrolindex].lostcontrolItem.outOfControlStatus = false;
                            }
                        },
                    });
                } else {
                    $.post(projectName + "/RiskControlAnalyzeControl/UpdateStatus/" + lostControlItemID + "/" + false, {}, function (data) {
                        if (data) {
                            _self.riskanalyzebyitems[_self.tempcontrolindex].lostcontrolItem.outOfControlStatus = false;
                        }
                    });
                }
                for (var j = 0; j < _self.riskanalyzebyitems.length; j++) {
                    if (_self.riskanalyzebyitems[j].outOfControlStatus == false) {
                        param = 1;
                    }
                }
            },
            addFdescription1: function () {
                var _self = this;
                _self.addfd = 1;
                _self.finewayList = [];
                $("#myfdescription").hide();
                $("#fdescription").show();
                _self.showStandard();
            },
            addFdescription: function () {
                var _self = this;
                _self.addfd = 0;
                $("#fdescription").hide();
                $("#myfdescription").show();
                _self.finewayList = [];
                _self.htdetail.fhiddenDangerStandard = null;
            },
            //获取隐患等级
            Htdetaillevelsettin: function () {
                var _self = this;
                $.post(projectName + "/RiskControlAnalyzeControl/htdetaillevelsetting", function (data) {
                    _self.htdetailfLevelName = data;
                });
            },

            getNowTime1: function () {
                var _self = this;
                var mydate = new Date().format("yyyy-MM-dd hh:mm:ss");
                _self.mydate = mydate;
            },

            uploadSuccess: function (response, file, fileList) {
                var _self = this;
                _self.riskanalyzeby.attachID = response;
                _self.riskanalyzeby.attachName = file.name;
                _self.riskanalyzeby.attachTime = _self.mydate;
                _self.analyzefile = file.name;
            },

            downFile: function () {
                var _self = this;
                $("#checkid").val(_self.riskanalyzeby.attachID);
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

            updateitem: function () {
                var _self = this;
                if ($("#checkmajortype1").val() == null || $("#checkmajortype1").val() == "") {
                    _self.showToast("warning", "专业类型不能为空");
                    return;
                }
                _self.getAutoData();
            },
            modifyHT: function (riskanalyzebyitem, riskanalyzebyitemindex) {
                var _self = this;
                _self.tempcontrolindex = riskanalyzebyitemindex;

                if (_self.riskanalyzebyitems[_self.tempcontrolindex].oHiddenTrouble == 1) {
                    _self.judgeAddOrShowInfo = 1;
                    _self.showHtdetail();

                } else {
                    _self.flocation =riskanalyzebyitem.lostcontrolItem.risksiteName;
//                    _self.flocation = $("#" + riskanalyzebyitemindex + "aaa").text();
                    _self.judgeAddOrShowInfo = 0;
                    _self.lossControlItemID =riskanalyzebyitem.lostcontrolItemID+"";
                    $("#myfdescription").val(riskanalyzebyitem.keyContent);
                    _self.clearData();
                }
            },

            judgeAddOrShow: function () {
                var _self = this;
                _self.mark3="3";
                if (_self.riskanalyzebyitems[_self.tempcontrolindex].oHiddenTrouble) {
                    $("#modal-regular2").modal("hide");

                } else {
                    _self.addHtdetail();
                }
            },
            showStandard: function () {
                var _self = this;
                for (var i = 0; i < _self.standardList.length; i++) {
                    if (_self.standardList[i].fHtdetailDescription != $("#fdescription").val()) {
                    } else {

                        $("#flevel").val(_self.standardList[i].fHtdetailLevel);
                        $("#fcatagories").val(_self.standardList[i].fMajorType);
//                        $("#fdutyUnitName").val(_self.standardList[i].mPunish[0].fFineDepartment);
                        _self.htdetail.fhiddenDangerStandard = _self.standardList[i].fStandardID;
//                        _self.finewayList = _self.standardList[i].mPunish;

                        vueApp.finewayList = [];
                        vueApp.recordOldVal = [];
                        if (vueApp.standardList[i].mPunish.length > 0) {
                            var PersonOrUnit = -1;
                            for (var j = 0; j < vueApp.standardList[i].mPunish.length; j++) {
                                if (vueApp.standardList[i].mPunish[j].fFineDuty != null) {
                                    vueApp.finewayList.push(vueApp.standardList[i].mPunish[j]);
                                    vueApp.recordOldVal.push(vueApp.standardList[i].mPunish[j]);
                                } else {
                                    PersonOrUnit = 0;

                                    $("#fMoeney").val(vueApp.standardList[i].mPunish[0].fFineMoney);

                                }
                            }
                            if (PersonOrUnit == 0) {
                                _self.fineway = "0";
                                _self.fisFinePerson = "0";
                            } else {
                                _self.fineway = "1";
                                _self.fisFinePerson = "1";
                            }
                            _self.checkDuty = true;
                        } else {
                        }
                    }
                    ;
                }
            }
            ,
            //创建隐患标准的空对象
            NowHtdetailStandard: function () {
                var _self = this;
                $.get(projectName + "/RiskControlAnalyzeControl/NewHtdetailstandard", function (data) {
                    _self.htdetailstandard = data;

                    _self.getHtdetailstandardList();
                });
            },
            getHtdetailstandardList: function () {
                var _self = this;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskControlAnalyzeControl/getHtdetailstandardList",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.htdetailstandard),
                    success: function (data) {
                        _self.standardList = data;
                    }
                })
            }
            ,
            //录入隐患
            addHtdetail: function () {
                var _self = this;
                if ($("#fpCFS").val() == "-1" || $("#fpCFS").val() == "" || $("#fpCFS").val() == null) {
                    _self.showToast("warning", "请选择检查类型")
                    return;
                }
                if (_self.flocation == "" || _self.flocation == null) {

                    _self.showToast("warning", "请选择隐患地点")
                    return;
                }

                if (_self.addfd == 1) {
                    if ($("#fdescription").val() == "") {
                        _self.showToast("warning", "请选择隐患描述");
                        return;
                    } else {
                        _self.htdetail.fdescription = $("#fdescription").val();

                    }

                } else if (_self.addfd == 0) {

                    if ($("#myfdescription").val() == "") {
                        _self.showToast("warning", "请填写隐患描述");
                        return;
                    } else {
                        _self.htdetail.fdescription = $("#myfdescription").val();
                        _self.htdetail.fhiddenDangerStandard = null;
                    }
                }


                if ($("#fcatagories").val() == "-1" || $("#fcatagories").val() == "" || $("#fcatagories").val() == null) {
                    _self.showToast("warning", "请选择专业");
                    return;
                }
                if ($("#flevel").val() == "-1" || $("#flevel").val() == "" || $("#flevel").val() == null) {
                    _self.showToast("warning", "请选择隐患等级");
                    return;
                }
                if ($("#fdutyUnitName").val() == "" || $("#fdutyUnitName").val() == null) {
                    _self.showToast("warning", "请选择责任单位");
                    return;
                }
                if ($("#classIndex").val() == "-1" || $("#classIndex").val() == "" || $("#classIndex").val() == null) {
                    _self.showToast("warning", "请选择班次");
                    return;
                }

                if (_self.checkDuty) {
                    if (_self.fineway == "0") {
                        if ($("#fMoeney").val() == "") {
                            _self.showToast("warning", "请填写罚款金额")
                            return;
                        } else {
                            var reg = /(^[1-9](\d+)?(\.\d{1,2})?$)|(^(0){1}$)|(^\d\.\d{1,2}?$)/;
                            if (!reg.test($("#fMoeney").val())) {
                                _self.showToast("warning", "罚款金额为整数或最多为小数点后两位");
                                return;
                            }
                        }
                        var reg = /(^[1-9](\d+)?(\.\d{1,2})?$)|(^(0){1}$)|(^\d\.\d{1,2}?$)/;
                        for (var i = 0; i < _self.finewayList.length; i++) {
                            if (_self.finewayList[i].fFineDuty == "" || _self.finewayList[i].fFineDuty == null) {
                                _self.showToast("warning", "请选择岗位");
                                return;

                            }
                            if (_self.finewayList[i].fFineDepartment == "" || _self.finewayList[i].fFineDepartment == null) {
                                _self.showToast("warning", "请选择责任部门");
                                return;

                            }
                            if (_self.finewayList[i].fFineDepartmentPerson == "" || _self.finewayList[i].fFineDepartmentPerson == null) {

                                _self.showToast("warning", "请选择责任人");
                                return;
                            }
                            if (!reg.test(_self.finewayList[i].fDeductPoint)) {
                                _self.showToast("warning", "分值为整数或最多为小数点后两位");
                                return;
                            }

                            if (!reg.test(_self.finewayList[i].fFineMoney)) {
                                _self.showToast("warning", "罚款金额为整数或最多为小数点后两位");
                                return;
                            }
                        }

                    } else {
                        var reg = /(^[1-9](\d+)?(\.\d{1,2})?$)|(^(0){1}$)|(^\d\.\d{1,2}?$)/;
                        var judge = 0;
                        for (var i = 0; i < _self.finewayList.length; i++) {
                            if (_self.finewayList[i].fDutyPerson == 1||_self.finewayList[i].fDutyPerson == "1") {
                                judge++;
                            }

                            if (_self.finewayList[i].fFineDepartment == "" || _self.finewayList[i].fFineDepartment == null) {
                                _self.showToast("warning", "请选择责任部门");
                                return;

                            }
                            if (_self.finewayList[i].fFineDepartmentPerson == "" || _self.finewayList[i].fFineDepartmentPerson == null) {

                                _self.showToast("warning", "请选择责任人");
                                return;
                            }
                            if (!reg.test(_self.finewayList[i].fDeductPoint)) {
                                _self.showToast("warning", "分值为整数或最多为小数点后两位");
                                return;
                            }

                            if (!reg.test(_self.finewayList[i].fFineMoney)) {
                                _self.showToast("warning", "罚款金额为整数或最多为小数点后两位");
                                return;
                            }
                        }
                        if (judge == 0) {
                            _self.showToast("warning", "主要责任人至少要有一个");
                            return;

                        }
                        if (judge > 1) {
                            _self.showToast("warning", "主要责任人只能有一个");
                            return;

                        }
                    }
                }
                if (_self.checkboxID) {
                    _self.htdetail.fdangBanChuLi = true;
                } else {
                    if ($("#fwillSolutionTime").val() == "") {
                        _self.showToast("warning", "请选择整改期限");
                        return;
                    }
                    _self.htdetail.fdangBanChuLi = false;

                }
                if (_self.checkQuick) {
                    _self.htdetail.fisRightNow = true;
                    _self.htdetail.fZGLX = 1;
                } else {

                    _self.htdetail.fisRightNow = false;
                    _self.htdetail.fZGLX = 2;
                }
                //是否罚款的操作
                if (_self.checkDuty) {
                    if ($("#fselect").val() == "0") {
                        _self.finerecord.fPunishUnit = true;
                        _self.finerecord.fPunishPersonal = false;
                        var info = "<%=userDepartment%>" + "," + "<%=username%>" + "," + _self.fdutyUnitName + "," + $("#fdescription").val() + "," + "0,0,0,0;";
                        for (var i = 0; i < _self.finewayList.length; i++) {
                            if (i != _self.finewayList.length - 1) {
                                info += _self.finewayList[i].fFineDepartment + "," + _self.finewayList[i].fFineDuty + "," + _self.finewayList[i].fFineDepartmentPerson + "," + _self.finewayList[i].fDeductPoint + "," + _self.finewayList[i].fFineMoney + "," + _self.finewayList[i].fDutyPerson + "," + $("#fdescription").val() + "," + _self.finewayList[i].page + ";"
                            } else {
                                info += _self.finewayList[i].fFineDepartment + "," + _self.finewayList[i].fFineDuty + "," + _self.finewayList[i].fFineDepartmentPerson + "," + _self.finewayList[i].fDeductPoint + "," + _self.finewayList[i].fFineMoney + "," + _self.finewayList[i].fDutyPerson + "," + $("#fdescription").val() + "," + _self.finewayList[i].page;

                            }
                        }
                        _self.finerecord.fBePunishUnitName = _self.fdutyUnitName;
                        _self.finerecord.fDescription = info;
                        _self.finerecord.fMoeney = $("#fMoeney").val();
                    } else {
                        _self.finerecord.fPunishUnit = false;
                        _self.finerecord.fPunishPersonal = true;
                        var info = "";
                        for (var i = 0; i < _self.finewayList.length; i++) {
                            if (i != _self.finewayList.length - 1) {
                                info += _self.finewayList[i].fFineDepartment + "," + _self.finewayList[i].fFineDuty + "," + _self.finewayList[i].fFineDepartmentPerson + "," + _self.finewayList[i].fDeductPoint + "," + _self.finewayList[i].fFineMoney + "," + _self.finewayList[i].fDutyPerson + "," + _self.htdetail.fdescription + "," + _self.finewayList[i].page + ";"
                            } else {
                                info += _self.finewayList[i].fFineDepartment + "," + _self.finewayList[i].fFineDuty + "," + _self.finewayList[i].fFineDepartmentPerson + "," + _self.finewayList[i].fDeductPoint + "," + _self.finewayList[i].fFineMoney + "," + _self.finewayList[i].fDutyPerson + "," + _self.htdetail.fdescription + "," + _self.finewayList[i].page;
                            }
                        }
                        _self.finerecord.fDescription = info;
                    }
                    _self.finerecord.fPunishTime = _self.htdetail.fdetectionTime;
                    _self.finerecord.fBePunishUnitName = $("#fdutyUnitName").val();
                    _self.finerecord.fCreater = "<%=username%>";
                    _self.finerecord.fCreaterID =<%=userid%>;
                    _self.finerecord.fPunishNumber = _self.htdetail.fdetectionTime + "罚款单";
                }
                for (var i = 0; i < _self.departmentList.length; i++) {
                    if ($("#fdutyUnitName").val() == _self.departmentList[i].fOrg_Name) {
                        _self.htdetail.fdutyUnitName = _self.departmentList[i].fOrg_Name;
                        _self.htdetail.fdutyUnitID = _self.departmentList[i].fOrgID_Auto;
                        if (_self.checkDuty) {
                            _self.finerecord.fBePunishUnitID = _self.departmentList[i].fOrgID_Auto + "";
                        }
                    }
                }
                var judgeYOrN = 0;
                for (var i = 0; i < _self.placeList.length; i++) {
                    if (_self.flocation == _self.placeList[i].fPlace_Name) {
                        _self.htdetail.flocationID = _self.placeList[i].fPlace_GUID;
                        _self.htdetail.flocation = _self.flocation;
                        judgeYOrN = 1;
                        break;
                    }

                }
                if (judgeYOrN != 1) {
                    _self.htdetail.flocation = _self.flocation;
                    $.ajax({
                        url: projectName + "/PlatForm/savePlaceOfBussiness/" + _self.flocation,
                        type: "POST",
                        dataType: "json",
                        async: false,
                        contentType: "application/json",
                        success: function (data) {
                            _self.htdetail.flocationID = data;
                            _self.getPlaceListForEnterprise();
                        },
                    })
                }
                _self.htdetail.fcheckedDeptName = "<%=userDepartment%>";
                _self.htdetail.fcheckedDeptID = <%=userDepartmentID%>;
                _self.htdetail.fcreaterID = "<%=userid%>";
                _self.htdetail.fcreaterName = "<%=username%>";
                _self.htdetail.fregisterID = "<%=userid%>";
                _self.htdetail.fregister = "<%=username%>";
                _self.htdetail.fpCFS = $("#fpCFS").val();
                _self.htdetail.fisFromTrineSystem = _self.lossControlItemID;
                if (_self.peijianren.length != 0) {
                    var pei = ""
                    for (var i = 0; i < _self.peijianren.length; i++) {
                        if (i != _self.peijianren.length - 1) {
                            pei += _self.peijianren[i] + ","

                        }
                        if (i == _self.peijianren.length - 1) {
                            pei += _self.peijianren[i]
                        }
                    }
                    _self.htdetail.peijianRenYuan = pei;

                } else {
                    _self.htdetail.peijianRenYuan = null;

                }
//                _self.htdetail.flocation = $("#flocation").val();
                _self.htdetail.fcatagories = $("#fcatagories").val();
                _self.htdetail.flevel = $("#flevel").val();
                    if(_self.fineway=="0"){
                        if ($("#fdutyPersonName").val() == "-1") {
                            _self.htdetail.fdutyPersonName = null

                        }else{
                            _self.htdetail.fdutyPersonName = $("#fdutyPersonName").val();
                            for (var i = 0; i < _self.empList3.length; i++) {
                                if ($("#fdutyPersonName").val() == _self.empList3[i].fEmp_Name) {
                                    _self.htdetail.fdutyPersonID = _self.empList3[i].fEmp_ID_Auto;
                                    _self.htdetail.fdutyPersonName = $("#fdutyPersonName").val();
                                    if (_self.checkDuty == true) {
                                        _self.finerecord.fBePunishPersonID = _self.departmentList[i].fEmp_ID_Auto + "";
                                    }
                                }

                            }
                        }
                    }else{
                        for (var i = 0; i < _self.finewayList.length; i++) {
                            if (_self.finewayList[i].fDutyPerson == "1"||_self.finewayList[i].fDutyPerson == 1) {

                                _self.htdetail.fdutyPersonName = _self.finewayList[i].fFineDepartmentPerson;
                                break;
                            }
                        }
                    }


                _self.htdetail.classIndex = $("#classIndex").val();

                _self.htdetail.fwillSolutionTime = $("#fwillSolutionTime").val();
                _self.commitHtdetail();
            }
            ,
            clearData: function () {
                var _self = this;
                _self.empList = ""
                _self.checkboxID = false,//判断是否当班处理
                    _self.checkQuick = false,//判断是否快速下达
                    _self.checkDuty = false,//判断是否罚款
//                    _self.addDi = 1;
                    _self.addfd = 0;
                _self.finewayList = [];
                _self.fineway = "0";
//                _self.spID = "";
                _self.peijianren = [];
                _self.fineInfoList="";
                $("#fdescription").val("");
//                $("#myfdescription").val("");
                $("#addPlace").val("");
                $("#fcatagories").val(_self.riskanalyzeby.majorType);
                $("#flevel").val("-1");
                $("#fdutyUnitName").val("");
                $("#fdutyPersonName").val("-1");
                _self.updateInfo="";
                $("#classIndex").val("-1");
                $("#fMoeney").val("");
                $("#fpCFS").val("企业检查");
                $("#fwillSolutionTime").val("");
                $("#fdetectionTime").attr("disabled", false);
                $("#fcheckedDeptName").attr("disabled", false);
                $("#fpCFS").attr("disabled", false);
                $("#mycheckQuick").attr("disabled", false);
                $("#mycheckboxID").attr("disabled", false);
                $("#mycheckDuty").attr("disabled", false);
                $("#myfdescription").attr("disabled", false);
                $("#addPlace").attr("disabled", false);
                $("#fcatagories").attr("disabled", false);
                $("#flevel").attr("disabled", false);
                $("#fdutyUnitName").attr("disabled", false);
                $("#fwillSolutionTime").attr("disabled", false);
                $("#fdutyPersonName").attr("disabled", false);
                $("#flocation").attr("disabled", false);
                $("#classIndex").attr("disabled", false);
                $("#fselect").attr("disabled", false);
                $("#fMoeney").attr("disabled", false);
                $("#speciallyPlanID").attr("disabled", false);
                $("#safetyManagerUnit").attr("disabled", false);
//                $("#spID").attr("disabled", false);
                $("#peijianren").attr("disabled", false);

                $("#modal-regular2").modal("show");
            },
            showHtdetail: function () {
                var _self = this;
                _self.fineway = "";
                _self.peijianren = "";
                _self.finewayList = [];
                _self.dutyList=[];
                //url:发送请求地址。
                //data:待发送 Key/value 参数。
                //callback:发送成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.post(projectName + "/RiskControlAnalyzeControl/getHtdetail/" + _self.riskanalyzebyitems[_self.tempcontrolindex].oHiddenTroubleID, function (data) {
                    $("#fdetectionTime").val(data.fdetectionTime);
                    $("#fcheckedDeptName").val(data.fcheckedDeptName);
                    $("#fpCFS").val(data.fpCFS);
                    $("#myfdescription").val(data.fdescription);
//                    $("#addPlace").val(data.flocation);
                    _self.flocation = data.flocation;
                    $("#fcatagories").val(data.fcatagories);
                    $("#fwillSolutionTime").val(data.fwillSolutionTime);
                    $("#flevel").val(data.flevel);
                    $("#fdutyUnitName").val(data.fdutyUnitName);
                    var orgID = null;
                    for (var i = 0; i < _self.departmentList.length; i++) {
                        if (_self.departmentList[i].fOrg_Name == $("#fdutyUnitName").val()) {
                            orgID = _self.departmentList[i].fOrgID;
                        }
                    }
                    $.post(projectName + "/PlatForm/getCurrOrgEmpList/" + orgID, function (mydata) {
//                        mydata[0].fEmp_Name = data.fdutyPersonName
                        _self.empList3 = mydata;
                    });
                    _self.updateInfo=data.fdutyPersonName
                    $("#fdutyPersonName").val(data.fdutyPersonName);
                    $("#classIndex").val(data.classIndex);
                    _self.checkboxID = data.fdangBanChuLi;
                    _self.checkQuick = data.fisRightNow;
                    if (data.peijianRenYuan != null) {

                        _self.peijianren = data.peijianRenYuan;
                    } else {
                        _self.peijianren = "";
                    }
                    $.ajax({
                        url: projectName + "/RiskControlAnalyzeControl/newFinerecord", //发送请求的地址。
                        type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        dataType: "json",//预期服务器返回的数据类型。
                        contentType: "application/json",
                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (mydata) {
                            //请求成功后的回调函数
                            _self.finerecorded = mydata;
                            _self.finerecorded.fHiddenTroubleID = _self.riskanalyzebyitems[_self.tempcontrolindex].oHiddenTroubleID;
                            _self.finerecorded.fPunishID = null;
                            $.ajax({
                                url: projectName + "/RiskControlAnalyzeControl/getFinerecordList", //发送请求的地址。
                                type: "post", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                dataType: "json",//预期服务器返回的数据类型。
                                data: JSON.stringify(_self.finerecorded),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                contentType: "application/json",
                                async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                success: function (fdata) {
                                    //请求成功后的回调函数
                                    if (fdata.length != 0) {
                                        _self.checkDuty = true;
                                        _self.fineInfoList = fdata;
                                        var select=-1;
                                        for(var i=0;i<_self.fineInfoList.length;i++){
                                            if(_self.fineInfoList[i].fPunishUnit){
                                                select=0;
                                                _self.saveUnitIndex=i;
                                                $("#fMoeney").val(fdata[i].fMoeney);
                                                _self.dutyList.push(0);
                                            }else{
                                                var infoList = fdata[i].fDescription.split(fdata[i].fBePunishPersonName);
                                                var index = infoList[0].indexOf(fdata[i].fBePunishUnitName);
                                                var count = fdata[i].fBePunishUnitName.length;
                                                var indexA = index + count;
                                                var fFineDuty = infoList[0].substring(indexA, infoList[0].length);
                                                _self.dutyList.push(fFineDuty);
                                            }
                                        }
                                        if(select==0){
                                            _self.fineway = "0";
                                            $("#fselect").val("0");
                                        }else{

                                            _self.fineway = "1";
                                            $("#fselect").val("1");
                                        }

                                    } else {
                                        _self.checkDuty = false;
                                        $("#fdutyPersonName").show();
                                        $("#fineByPerson").hide();

                                    }
                                    $("#mycheckDuty").attr("disabled", true);
                                },
                            });
                        },
                    });

                    $("#fdutyPersonName").val(data.fdutyPersonName);
                    $("#fdetectionTime").attr("disabled", true);
                    $("#fcheckedDeptName").attr("disabled", true);
//                    _self.addDi=2;
                    _self.addfd = 2;
                    $("#fpCFS").attr("disabled", true);
                    $("#mycheckboxID").attr("disabled", true);
                    $("#mycheckQuick").attr("disabled", true);
                    $("#fwillSolutionTime").attr("disabled", true);
                    $("#myfdescription").attr("disabled", true);
                    $("#addPlace").attr("disabled", true);
                    $("#fcatagories").attr("disabled", true);
                    $("#flevel").attr("disabled", true);
                    $("#fdutyUnitName").attr("disabled", true);
                    $("#flocation").attr("disabled", true);
                    $("#fdutyPersonName").attr("disabled", true);
                    $("#classIndex").attr("disabled", true);
//                    $("#spID").attr("disabled", true);
                    $("#peijianren").attr("disabled", true);
                    $("#fselect").attr("disabled", true);
                    $("#fMoeney").attr("disabled", true);
                    $("#modal-regular2").modal("show");

                });
            },
            commitHtdetail: function () {
                var _self = this;
                $.ajax({
                    type: "POST", //T(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    url: projectName + "/RiskControlAnalyzeControl/saveHtdetail", //发送请求的地址。
                    dataType: "json",//预期服务器返回的数据类型。
                    data: JSON.stringify(_self.htdetail),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.riskanalyzebyitems[_self.tempcontrolindex].oHiddenTrouble = 1;
                        _self.riskanalyzebyitems[_self.tempcontrolindex].oHiddenTroubleID = data;
                        /* _self.riskanalyzeby.oHiddenTrouble = 1;
                         _self.riskanalyzeby.oHiddenTroubleID = data;*/
                        if (_self.finerecord.fPunishTime != null) {
                            _self.finerecord.fHiddenTroubleID = data;
                            $.ajax({
                                type: "POST", //T(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                url: projectName + "/RiskControlAnalyzeControl/addFinerecord", //发送请求的地址。
                                data: JSON.stringify(_self.finerecord),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                contentType: "application/json",
                                dataType: "json",//预期服务器返回的数据类型。
                                async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                success: function (mydata) {
                                    //请求成功后的回调函数
                                    $("#modal-regular2").modal("hide");
                                    _self.showToast("success", "添加成功");
                                },
                            });
                        } else {

                            $("#modal-regular2").modal("hide");
                            _self.showToast("success", "添加成功");
                        }
                    },
                });
            },
            getNewFinerecord: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/RiskControlAnalyzeControl/newFinerecord", function (data) {
                    _self.finerecord = data;
                });
            },
            getNewHtdetail: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/RiskControlAnalyzeControl/newHtdetail", function (data) {
                    _self.htdetail = data;
                    _self.htdetailTry = data;
                    lay("#fwillSolutionTime").each(function () {
                        laydate.render({
                            elem: this
                            , trigger: 'click'
                            , type: 'date'
                            , theme: '#3188f2'
                            , min: _self.htdetail.fdetectionTime
                        });
                    });
                });
            },
//            //是否罚款的事件
//            checkedDuty: function () {
//                var _self = this;
//                if (_self.checkDuty) {//模态框隐藏
//                    $("#showDuty").hide();
//                } else {//模态框展示
//                    $("#showDuty").show();
//                    //_self.htdetail.fdangBanChuLi=true;
//                }
//            }
//            ,

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
            myChange: function () {
                var _self = this;

                _self.empList3 = "";
                _self.fdutyPersonName = "";
//                var orgID = $("#fcheckedDeptName").val()
                var orgID = "-1";
                for (var i = 0; i < _self.departmentList.length; i++) {
                    if (_self.departmentList[i].fOrg_Name == _self.fdutyUnitName) {
                        orgID = _self.departmentList[i].fOrgID;
                    }
                }
                if (orgID != "-1") {
                    //url:发送请求地址。
                    //data:待发送 Key/value 参数。
                    //callback:发送成功时回调函数。
                    //type:返回内容格式，xml, html, script, json, text, _default。
                    $.post(projectName + "/PlatForm/getCurrOrgEmpList/" + orgID, function (data) {
                        _self.empList3 = data;
                       /* if (_self.updatePersonName != "") {
                            _self.fdutyPersonName = _self.updatePersonName;

                        }*/
                        /* if (_self.empList3.length != 0) {

                             _self.fdutyPersonName = _self.empList3[0].fEmp_Name;
                         }
 */
                    });

                }

            },
            //获取人员信息
            getCurrOrgEmpList: function (index, judge) {
                var _self = this;
                _self.empList = "";
//                _self.fdutyPersonName = "";
//                var orgID = $("#fdutyUnitName").val()
                var orgID = "-1";
                if (judge == 1) {
                    for (var i = 0; i < _self.finewayList.length; i++) {
                        if (i == index) {

                            _self.finewayList[index].fFineDepartmentPerson = "";
                            $("#t" + i).attr("disabled", false);
                        } else {
                            $("#t" + i).attr("disabled", true);
                        }
                    }
                } else {
                    for (var i = 0; i < _self.finewayList.length; i++) {

                        $("#t" + i).attr("disabled", false);
                    }
                }
                for (var i = 0; i < _self.departmentList.length; i++) {
                    if (_self.departmentList[i].fOrg_Name == _self.finewayList[index].fFineDepartment) {
                        orgID = _self.departmentList[i].fOrgID;

                    }
                }
                if (orgID != "-1") {
                    //url:发送请求地址。
                    //data:待发送 Key/value 参数。
                    //callback:发送成功时回调函数。
                    //type:返回内容格式，xml, html, script, json, text, _default。
                    $.post(projectName + "/PlatForm/getCurrOrgEmpList/" + orgID, function (data) {
                        _self.empList = data;
                    });
                }
            }
            ,
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
                        _self.majorList = data.专业类型
                        _self.jihualeixing = data.计划类型;
                        _self.banCi = data.班次;
                        _self.checkData = data.检查类型
                    },
                });
            },
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
            //子提交方式
            conmitAll: function () {
                var _self = this;
                _self.tempfile = $("#upFile").val();
                if (_self.tempfile != "") {
                    _self.fileupload();
                } else {
                    _self.cmitMeasure();
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
                            _self.showToast("warning", "上传附件错误！");
                        } else {
                            _self.tempurl = data;
                            $.get(projectName + "/RiskControlMeasureControl/newRiskcontrolmeasure", {}, function (data) {
                                _self.uploadRiskControlMeasure = data;
                                _self.uploadRiskControlMeasure.riskSiteFullNumber = _self.tempfullnumber;
                                _self.uploadRiskControlMeasure.measureURL = _self.tempurl;
                                _self.uploadRiskControlMeasure.measureName = _self.fileName;
                                _self.uploadRiskControlMeasure.hazardID = _self.updateHazard.hazardID;
                                _self.uploadRiskControlMeasure.risksiteID = _self.updateHazard.risksiteID;
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
                                        _self.measure2.push(_self.uploadRiskControlMeasure);
                                        _self.showToast("success", "上传成功！");
                                        _self.saveMeasure1();
                                    }
                                })
                            });
                        }
                    },
                });
            },

            //获取一个空的管控措施
            getNewRiskControlMeasure: function () {
                var _self = this;
                $.get(projectName + "/RiskControlMeasureControl/newRiskcontrolmeasure", {}, function (data) {
                    $("#measurecontent").val("");
                    _self.newmeasure = data;
                });
            }
            ,
            //获取一个新的风险点对象
            getNewRiskSite: function () {
                var _self = this;
                $.get(projectName + "/RiskDetailedList/newRiskSite", function (data) {
                    _self.riskSite = data;

                });
            },

            //清空添加措施方法
            clearMeasure: function () {
                var _self = this;
                $("#measurecontent").val("");
                _self.tempmeasureindex = -1;
                _self.lostmeasure = [];
            },
            //关闭确认删除框
            confirmDelete: function () {
                var _self = this;
                $("#modal-regular1").modal('hide');
                /*_self.clearMeasure();*/
            },
            //在管控数组里修改管控措施
            controlMeasureUpdate: function (measure, tempcontrolindex) {
                var _self = this;
                _self.newmeasure = measure;
                _self.tempmeasureindex = tempcontrolindex;
                $("#measurecontent").val(measure.measureContent);
            },
            //删除管控措施
            deleteMeasure: function (measure, controlindex) {
                var _self = this;
                _self.measure1.splice(controlindex, 1);
                if (measure.measureID != "" && measure.measureID != null) {
                    _self.lostmeasure.push(measure);
                }
            },
            //删除管控措施附件
            deleteMeasurefile: function (measurefile, fileindex) {
                var _self = this;
                _self.measure2.splice(fileindex, 1);
                if (measurefile.measureID != "" && measurefile.measureID != null) {
                    _self.lostmeasure.push(measurefile);
                }
            }
            ,
            //保存修改后管控措施
            updateMeasure: function () {
                var _self = this;
                if ( $("#measurecontent").val() == "") {
                    _self.showToast("warning", "管控措施内容为空！")
                    return;
                }
                var mydate = new Date().format("yyyy-MM-dd hh:mm:ss");
                _self.mydate = mydate;
                //如果不为空则执行修改操作
                if (_self.tempmeasureindex != -1) {
                    var tempmeasure = _self.measure1;
                    tempmeasure.splice(_self.tempmeasureindex, 1);
                    _self.measure1.splice(_self.tempmeasureindex, 0, _self.newmeasure);
                    //把删除的那个管控措施加入
                    _self.newmeasure.measureContent = $("#measurecontent").val();
                    _self.measure1[_self.tempmeasureindex] = _self.newmeasure;
                    _self.tempmeasureindex = -1;

                } else {
                    _self.newmeasure.measureContent = $("#measurecontent").val();
                    _self.newmeasure.riskSiteFullNumber = _self.tempfullnumber;
                    _self.newmeasure.hazardID = _self.updateHazard.hazardID;
                    _self.newmeasure.risksiteID = _self.updateHazard.risksiteID;
                    if (_self.tempmmm == 1) {
                        _self.tempmmm = 0;
                        return;
                    } else {
                        _self.newmeasure.measureCreateTime = _self.mydate;
                        _self.measure1.push(_self.newmeasure);
                        _self.newmeasure = "";
                        _self.tempmeasureindex = -1;
                        _self.getNewRiskControlMeasure();
                    }
                }
            },
            //点击提交保存措施
            saveMeasure: function () {
                var _self = this;
                _self.mark2="2";
                _self.tempfile = $("#upFile").val();
                if (_self.tempfile != "") {
                    _self.fileupload();
                } else {
                    _self.saveMeasure1();
                }
                _self.resetOutOfControlStatus();
            },
            //提交管控保存到数据
            saveMeasure1: function () {
                var _self = this;
                if (_self.lostmeasure != null && _self.lostmeasure != "") {
                    for (var x = 0; x < _self.lostmeasure.length; x++) {
                        if (_self.lostmeasure[x].measureID != null && _self.lostmeasure[x].measureID != "") {
                            $.ajax({
                                url: projectName + "/RiskControlMeasureControl/deleteMeasureByObject", //发送请求的地址。
                                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                data: JSON.stringify(_self.lostmeasure[x]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                dataType: "json",//预期服务器返回的数据类型。
                                contentType: "application/json",
                                async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                success: function (data) {
                                    if (data) {
                                    }
                                },
                            });
                        }
                    }
                }
                for (var j = 0; j < _self.measure1.length; j++) {
                    if (_self.measure1[j].measureID == null || _self.measure1[j].measureID == "") {
                        $.ajax({
                            url: projectName + "/RiskControlMeasureControl/addMeasure", //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: JSON.stringify(_self.measure1[j]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            contentType: "application/json",
                            async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                if (data) {

                                }
                            },
                        });
                    } else {
                        $.ajax({
                            url: projectName + "/RiskControlMeasureControl/updateMeasure", //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: JSON.stringify(_self.measure1[j]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            contentType: "application/json",
                            async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                if (data) {

                                }
                            },
                        });
                    }
                }
                _self.measures = [];
                _self.measures.push(_self.measure1);
                for (var y = 0; y < _self.measure2.length; y++) {
                    _self.measure1.push(_self.measure2[y]);
                }
                _self.measures = _self.measure1;
                /* $("#zerenperson").val();
                 $("#zerendepartment").val();*/
                _self.riskanalyzeby.manalyzeItem[_self.tempcontrolindex].oMeasure = 1;
                _self.updateHazard.mriskControlMeasure = _self.measures;
                _self.updateHazard.manageUnit = $("#zerendepartment").val();
                _self.riskanalyzeby.manalyzeItem[_self.tempcontrolindex].lostcontrolItem.hazard = _self.updateHazard;
                $.post(projectName + "/RiskControlAnalyzeControl/getAnalyzebyid", function (data) {
                    _self.riskanalyzebyitems = data.manalyzeItem;
                })
                $("#modal-regular1").modal('hide');
            },

            //重新修订管控措施
            modifyControlMeasure: function (riskanalyzebyitem, riskanalyzebyitemindex) {
                var _self = this;
                _self.clearMeasure();
                $.post(projectName + "/", {}, function (data) {
                });
                _self.updateHazard = riskanalyzebyitem.lostcontrolItem.hazard;
                $("#zerenperson").val(_self.updateHazard.dutyRole);
                _self.measures = _self.updateHazard.mriskControlMeasure;
                _self.tempfullnumber = _self.updateHazard.risksiteFullNumber;
                _self.tempcontrolindex = riskanalyzebyitemindex;
                _self.measure1 = [];
                _self.measure2 = [];
                for (var j = 0; j < _self.measures.length; j++) {
                    if (_self.measures[j].measureURL != null) {
                        _self.measure2.push(_self.measures[j]);
                    } else {
                        _self.measure1.push(_self.measures[j])
                    }
                }

                $("#measurecontent").val("");

                //接到对象后接到这，管控措施制定。--------------------------------修改处1
                _self.tempriskanalyzebyitem = riskanalyzebyitem;
                _self.tempriskanalyzebyitemindex = riskanalyzebyitemindex;
                _self.remriskcontrolhazard = riskanalyzebyitem.lostcontrolItem.hazard;
                _self.remriskcontrolmeasures = riskanalyzebyitem.lostcontrolItem.hazard.mriskControlMeasure;
            }
            ,


            //重新评估管控措施时
            assessControlMeasure: function (riskanalyzebyitem, riskanalyzebyitemindex) {
                var _self = this;
                _self.tempcontrolindex = riskanalyzebyitemindex;
                //接到对象后接到这，管控措施评估。--------------------------------修改处2---------频繁程度绑定的值未找到默认后果
                _self.tempriskanalyzebyitem1 = riskanalyzebyitem;
                _self.tempriskanalyzebyitemindex = riskanalyzebyitemindex;
                _self.remhazard = riskanalyzebyitem.lostcontrolItem.hazard;
                _self.updateRiskHazard = riskanalyzebyitem.lostcontrolItem.hazard;
                _self.getRiskHazardMethod();
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
                } else {
                    var value = _self.updateRiskHazard.Sseverity * _self.updateRiskHazard.Lpossibility
                    for (var i = 0; i < _self.riskdegreeList.length; i++) {
                        if (_self.riskdegreeList[i].hazardidentificationMethod.indexOf("LS") != -1) {
                            var itemList = _self.riskdegreeList[i].mRiskdegreeitems;
                            for (var j = 0; j < itemList.length; j++) {
                                var vmax = itemList[j].riskRangMAX;
                                var vmin = itemList[j].riskRangMIX;
                                if (value <= vmax && value >= vmin) {
                                    _self.updateRiskHazard.riskColor = itemList[j].mRiskLevelSetting.riskColor;
                                    _self.updateRiskHazard.riskLevel = itemList[j].mRiskLevelSetting.riskLevel;
                                    break;
                                }
                            }
                        }
                    }
                }
            },
            getLEC: function (L, E, C) {
                var _self = this;
                _self.updateRiskHazard.Sseverity = 0;
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
                } else {
                    var value = _self.updateRiskHazard.Eexpose * _self.updateRiskHazard.Lpossibility * _self.updateRiskHazard.clossConsequence;
                    for (var i = 0; i < _self.riskdegreeList.length; i++) {
                        if (_self.riskdegreeList[i].hazardidentificationMethod.indexOf("LEC") != -1) {
                            var itemList = _self.riskdegreeList[i].mRiskdegreeitems;
                            for (var j = 0; j < itemList.length; j++) {
                                var vmax = itemList[j].riskRangMAX;
                                var vmin = itemList[j].riskRangMIX;
                                if (value <= vmax && value >= vmin) {
                                    _self.updateRiskHazard.riskColor = itemList[j].mRiskLevelSetting.riskColor;
                                    _self.updateRiskHazard.riskLevel = itemList[j].mRiskLevelSetting.riskLevel;
                                    break;
                                }
                            }
                        }
                    }
                }
            },
            //根据hazardID得到Riskhazard对象
            getRiskHazardMethod: function () {
                var _self = this;
                var hazardID = _self.remhazard.hazardID;
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/RiskAssessment/getRiskhazard/" + hazardID, function (data) {
                    _self.updateRiskHazard = data;
                    if (_self.updateRiskHazard.Sseverity != 0 && _self.updateRiskHazard.Sseverity != null) {
                        _self.LecOrLs = true;
                        $("#test li").removeClass("active")
                        $("#test1 li").removeClass("active")
                        if (_self.updateRiskHazard.Sseverity == "6") {
                            $("#s6").addClass("active")
                        } else if (_self.updateRiskHazard.Sseverity == "5") {
                            $("#s5").addClass("active")

                        } else if (_self.updateRiskHazard.Sseverity == "4") {
                            $("#s4").addClass("active")

                        } else if (_self.updateRiskHazard.Sseverity == "3") {
                            $("#s3").addClass("active")

                        } else if (_self.updateRiskHazard.Sseverity == "2") {
                            $("#s2").addClass("active")

                        } else if (_self.updateRiskHazard.Sseverity == "1") {
                            $("#s1").addClass("active")
                        }
                        if (_self.updateRiskHazard.Lpossibility == "6") {
                            $("#l6").addClass("active")
                        } else if (_self.updateRiskHazard.Lpossibility == "5") {
                            $("#l5").addClass("active")

                        } else if (_self.updateRiskHazard.Lpossibility == "4") {
                            $("#l4").addClass("active")

                        } else if (_self.updateRiskHazard.Lpossibility == "3") {
                            $("#l3").addClass("active")

                        } else if (_self.updateRiskHazard.Lpossibility == "2") {
                            $("#l2").addClass("active")

                        } else if (_self.updateRiskHazard.Lpossibility == "1") {
                            $("#l1").addClass("active")
                        }
                    } else {
                        $("#test li").removeClass("active")
                        $("#test1 li").removeClass("active")
                        _self.LecOrLs = false;
                    }
                    $("#modal-regularharzard").modal("show");
                })
            },
            //危险源评估提交
            getAssessmentRiskHazard: function (myriskHazard) {
                var _self = this;
                _self.updateRiskHazard = myriskHazard;
                _self.updateRiskHazard.status = 1;
                _self.mark1="1";
                //alert(_self.updateRiskHazard.Lpossibility + "   " + _self.updateRiskHazard.Sseverity)
                $.ajax({
                    type: "PUT",
                    url: projectName + "/RiskAssessment/assessmentHazardLevel",
                    dataType: "json",
                    data: JSON.stringify(_self.updateRiskHazard),
                    success: function (data) {
                        /* _self.riskdegreeitem = data;*/
                        _self.showToast("success", "评估成功");
                    /*    $.post(projectName + "/RiskControlAnalyzeControl/getAnalyzebyid", function (data) {
                            _self.riskanalyzeby = data;
                            _self.riskanalyzeby.manalyzeItem[_self.tempcontrolindex].oRiskLevel = 1;
                            //这是给循环列表复制------------------------------------修改处4
                            _self.riskanalyzebyitems = data.manalyzeItem;
                        });*/
                    $.get(projectName+"/RiskAssessment/getRiskhazard/"+_self.updateRiskHazard.hazardID,function(mydata){
                        _self.riskanalyzebyitems[_self.tempcontrolindex].lostcontrolItem.hazard=mydata;
                    });
                    //重新评估风险等级时,只改变风险值,状态不改变
                       // _self.resetOutOfControlStatus();
                        $("#modal-regularharzard").modal("hide");
                    },
                });
            },
            //保存重新评估
            saveAssess: function () {
                var _self = this;
                _self.tempriskanalyzebyitem1.lostcontrolItem.hazard = _self.remhazard;
                _self.riskanalyzebyitems[_self.tempriskanalyzebyitemindex] = _self.tempriskanalyzebyitem1;
                $.ajax({
                    url: projectName + "/RiskAssessment/assessmentHazardLevel", //发送请求的地址。
                    type: "PUT", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.remhazard),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        if (data) {
                            _self.showToast("success", "评估成功");
                            _self.resetOutOfControlStatus();
                        }
                        //请求成功后的回调函数
                    },
                });
            },
            //获取当前时间YYYY-MM-DD
            getNowTime: function () {
                var _self = this;
                var date = new Date();
                var year = date.getFullYear();
                var month = date.getMonth() + 1;
                var day = date.getUTCDate();
                if (month < 10) {
                    month = "0" + month;
                }
                if (day < 10) {
                    day = "0" + day;
                }
                _self.nowtime = year + "-" + month + "-" + day;
            },

            //保存管控分析信息
            saveAnzalyze: function () {
                var _self = this;
                _self.riskanalyzeby.reviews = $("#riskreviews").val();
                _self.riskanalyzeby.description = $("#descriptionId").val();

               // 获取重新评估等级、重新修订措施、录入隐患进行操作后的标示，在对风控的重新评估等级、重新修订措施、录入隐患进行操作后才可以改变风控的状态
                if(_self.mark1=="1"||_self.mark2=="2"||_self.mark3=="3"){
                    _self.riskanalyzeby.status = true;
                }
                $.ajax({
                    url: projectName + "/RiskControlAnalyzeControl/saveRiskcontrolanalyze", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.riskanalyzeby),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    contentType: "application/json",
                    success: function (data) {
                        if (data) {
                            _self.showToast("success", "保存成功");
                            window.location.href = "<%=request.getContextPath()%>/menu/RiskControlAnalyzeByMangLai.do";
                        }
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
            trimFunction: function (str) {
                return str.replace(/(^\s*)|(\s*$)/g, "");
            }
        },
        computed: {}
        ,
        watch: {
            'createUnitName': {
                handler: function (val, oldVal) {
                    var _self = this;
                    if(val!= undefined){
                        _self.peijianList = ""
                        var orgID = "";
                        for (var i = 0; i < _self.departList.length; i++) {
                            if (_self.departList[i].fOrg_Name == _self.createUnitName) {
                                orgID = _self.departList[i].fOrgID;
                            }
                        }
                        if (orgID != "null") {
                            $.post(projectName + "/PlatForm/getCurrOrgEmpList/" + orgID, function (data) {
                                _self.peijianList = data;
                            });

                        }
                    }
                }
            },

            "fdutyUnitName": {
                handler: function (val, oldVal) {
                    var _self = this;

                    for (var i = 0; i < _self.finewayList.length; i++) {
                        if (_self.finewayList[i].fDutyPerson == "1"||_self.finewayList[i].fDutyPerson == 1) {
                            _self.judgeBack = 1;
                            _self.finewayList[i].fFineDepartment = _self.fdutyUnitName;
                        } else {
                            _self.judgeBack = 0;
                        }
                        if (_self.judgeBack == 1) {
                            _self.getCurrOrgEmpList(i, 0);

                        } else {
                            $("#t" + i).attr("disabled", true);
                        }
                    }
                },
                deep: true
            },
            'fineway': {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (_self.finewayList.length != 0 && _self.fisFinePerson != val) {
                        _self.recordOldVal = _self.finewayList;
                        _self.finewayList = [];
                    }
                    if (_self.fineway == "0") {
                        $("#fineByUnit").show();
                        $("#fineByPerson").show();
                        $("#fdutyPersonName").show();
                        _self.judgeInfo=0;
                    } else {
                        $("#fineByUnit").hide();
                        $("#fineByPerson").show();
                        $("#fdutyPersonName").hide();
                        _self.judgeInfo=1;
                    }

                    if (_self.fineway == _self.fisFinePerson) {
                        _self.finewayList = _self.recordOldVal;
                    }

                },
                deep: true
            },

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
            'checkDuty': {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (_self.finewayList.length != 0 && _self.fisFinePerson != val) {
                        _self.recordOldVal = _self.finewayList;
                        _self.finewayList = [];
                    }
                    if (_self.checkDuty) {//模态框隐藏
                        $("#showDuty").show();
                        if (_self.fineway == "0") {
                            $("#fineByUnit").show();
                            $("#fineByPerson").show();

                        } else {
                            $("#fineByUnit").hide();
                            $("#fineByPerson").show();
                        }
                    } else {//模态框展示
                        $("#showDuty").hide();
                        $("#fineByPerson").hide();
                        $("#fineByUnit").hide();

                        //_self.htdetail.fdangBanChuLi=true;
                    }
                    if (_self.fineway == _self.fisFinePerson) {
                        _self.finewayList = _self.recordOldVal;
                    }
                },
                deep: true
            },
            'checkboxID': {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (_self.checkboxID) {//模态框隐藏
                        $("#showDiv").hide();
                    } else {//模态框展示
                        $("#showDiv").show()
                    }
                },
                deep: true
            },
            //是否直接下达的事件
            'checkQuick': {
                handler: function (val, oldVal) {
                    var _self = this;
                    var _self = this;
                    if (_self.checkQuick) {//模态框隐藏
                        $("#showspan1").hide();
                        $("#showspan2").show();
                    } else {//模态框展示
                        $("#showspan2").hide();
                        $("#showspan1").show();
                    }
                },
                deep: true
            }
            ,
            'addfd': {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (_self.addfd == 1) {
                        $("#myfdescription").hide();
                        $("#fdescription").show();

                    } else if (_self.addfd == 0) {
                        $("#fdescription").hide();
                        $("#myfdescription").show();

                    } else if (_self.addfd == 2) {
                        $("#fdescription").hide();
                        $("#myfdescription").show();

                    }
                },
                deep: true
            },
        },
        filters: {
            upCaseFilter: function (val) {
                return val.toUpperCase();
            }
            ,
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
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                        }
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
            },
            titleFilter1: function (val, defaultName) {
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
            },
            titleFilter3: function (val, defaultName) {
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
<script src="../js/resource.js"></script>
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

    lay('.datepicker1').each(function () {
        laydate.render({
            elem: this
            , trigger: 'click'
            , type: 'year'
            /*, showBottom: false*/

        });
    });
    lay('.datepicker').each(function () {
        laydate.render({
            elem: this
            /*  , showBottom: false*/
            , trigger: 'click'
            , type: 'month'
            , format: 'MM'


        });
    });

    laydate.render({});

    /* $("#checkyear1").val(new Date().getFullYear());
     if ((new Date().getMonth() + 1) < 10) {
         $("#checkmonth1").val("0" + (new Date().getMonth() + 1));
     } else {
         $("#checkmonth1").val((new Date().getMonth() + 1));
     }*/


</script>
</body>

</html>