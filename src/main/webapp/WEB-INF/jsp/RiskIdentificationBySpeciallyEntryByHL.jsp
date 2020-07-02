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
    <title>黄陵二矿专项辨识维护页面</title>
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
    <style>.control-label {
        float: left;
    }

    .col-sm-hh {
        float: left;
        width: 16%;
        margin-right: 5px;
    }

    .col-sm-hh1 {
        float: left;
        width: 55%;
        margin-left: 5px;
    }

    .col-sm-hh2 {
        float: left;
        width: 100%;
        margin-right: 5px;
    }

    .col-sm-hh3 {
        float: left;
        width: 96%;
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

    .yans{
        background: #f8f8f9;
        font-weight: bold;
    }


    .file-upload {
        padding: 6px 10px;
        height: 35px;
        width: 125px;
        line-height: 20px;
        position: relative;
        cursor: pointer;
        text-align: center;
        color: #FFF;
        background: #0B8DE5;
        border: 1px solid #ddd;
        border-color: #0B8DE5;
        border-radius: 4px;
        overflow: hidden;
        display: inline-block;
        *display: inline;
        *zoom: 1
    }

    .file-upload input {
        position: absolute;
        font-size: 100px;
        right: 0;
        top: 0;
        opacity: 0;
        filter: alpha(opacity=0);
        cursor: pointer
    }

    .file-upload:hover {
        color: #888;
        background: #2E62AF;
        border-color: #2E62AF;
        text-decoration: none
    }

    .fa-caret-right {
        transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -webkit-transform: rotate(45deg);
        -o-transform: rotate(45deg);
    }

    .tianjia {
        color: #5ccdde;
    }

    .searchCon {
        width: 240px;
        height: 40px;
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

    .biaot2 td {
        text-align: left;
    }
    .input-group-addon, .input-group-btn {
        width: 1% !important;
        white-space: nowrap;
        vertical-align: middle;
    }
    .btys {
        display: inline-block;
        padding: 10px 40px;
        vertical-align: sub;
    }
    .form-horizontal .form-group {
        margin-right: -15px;
        margin-left: 0px;
    }
    /*.btys{ display: inline-block; padding: 8px 20px; background-color: #ff0000; vertical-align: sub; }*/
    </style>
</head>

<body>
<%String frameid = (String) request.getSession().getAttribute("frameid");%>
<%String userName = (String) request.getSession().getAttribute("userName");%>
<div id="page-content" style="min-height: 794px;">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section">
                    <h1 style="float:left;">黄陵二矿专项辨识维护页面</h1>
                    <div class="form-group" style="float: right; position: relative;right: 35px">
                        <button type="submit" class="btn btn-effect-ripple btn-primary" id="addshow"
                        @click="uploadFile">保存
                    </button>
                    <button type="submit" class="btn btn-effect-ripple btn-primary" id="updateshow"
                    @click="updateFile">保存
                </button>

                <div hidden>
                    <button type="submit" class="btn btn-effect-ripple btn-primary" id="addreset"
                    @click="addReset" >重置
                </button>
                <button type="submit" class="btn btn-effect-ripple btn-primary" id="updatereset"
                @click="updateReset" >重置
            </button>
        </div>

        <%--<button type="submit" class="btn btn-effect-ripple btn-primary">导出</button>--%>
    </div>

</div>
</div>
</div>
        </div>
        <!-- END Table Styles Header -->
        <!-- Table Styles Block -->
<div class="block full">
<div class="table-responsive" style="border-bottom: 2px solid rgb(225, 225, 225);">
    <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
        <div class="row" style="background-color: #fff;">
            <div class="col-sm-12">
                <div id="" class="">
                    <form method="post" class="form-inline" onsubmit="return false;">
                        <div class="form-group">
                            <label class="" for="example-if-password">会议信息</label>
                            <div class="form-control" style="border: 0;"></div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-sm-12" style="margin: 10px 0px;">
                <div id="" class="">
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                    <div class="col-sm-hh" id="yearadd" hidden style="width: 12%">
                        <label class="control-label">年份</label>
                        <div class="col-sm-hh1">
                            <input type="text" id="identificationYear" name="example-input-small"
                                   class="form-control input-sm datepicker" placeholder=""
                                   readonly="readonly">
                        </div>
                        <span style="color: red;position: absolute;top:5px;font-size: 16px">*</span>


                    </div>
                    <div class="col-sm-hh" id="yearupdate" hidden style="width: 12%">
                        <label class="control-label">年份</label>
                        <div class="col-sm-hh1">
                            <input type="text" id="identificationYearup" name="example-input-small"
                                   class="form-control input-sm " placeholder=""
                                   readonly="readonly">
                        </div>
                        <span style="color: red;position: absolute;top:5px;font-size: 16px">*</span>


                    </div>
                    <div class="col-sm-hh" id="monthadd" hidden style="width: 12%">
                        <label class="control-label">月份</label>
                        <div class="col-sm-hh1">
                            <input type="text" id="IdentificationMonth" name="example-input-small"
                                   class="form-control input-sm datepicker1" placeholder=""
                                   readonly="readonly"></div>
                        <span style="color: red;position: absolute;top:5px;font-size: 16px">*</span>

                    </div>
                    <div class="col-sm-hh" id="monthupdate" hidden style="width: 12%">
                        <label class="control-label">月份</label>
                        <div class="col-sm-hh1">
                            <input type="text" id="IdentificationMonthup" name="example-input-small"
                                   class="form-control input-sm " placeholder=""
                                   readonly="readonly"></div>
                        <span style="color: red;position: absolute;top:5px;font-size: 16px">*</span>

                    </div>
                    <div class="col-sm-hh">
                        <label class="control-label">会议地点</label>
                        <div class="col-sm-hh1">
                            <input type="text" id="meetingPlace" name="example-input-small"
                                   class="form-control input-sm" style="width: 150px" placeholder=""></div>
                        <span style="color: red;position: absolute;top:5px;font-size: 16px">*</span>

                    </div>
                    <div class="col-sm-hh" style="width: 22%">
                        <label class="control-label">专项辨识类型</label>
                        <div class="col-sm-hh1">
                            <%--<select name="" id="identityType" class="form-control input-sm"--%>
                            <%--style="width: 150px">--%>
                            <%--<option value="作业活动">作业活动</option>--%>
                            <%--<option value="设备">设备</option>--%>
                            <%--</select>--%>
                        <i-select  v-model="sptitytype"  filterable
                        >

                            <%--<option v-for="(mycategory,index) in categoryList">{{mycategory.fData_Name}}</option>--%>
                            <i-option v-for="(mycategory,index) in categoryList"
                                      v-bind:value="mycategory.fData_Name"
                                      v-bind:label="mycategory.fData_Name"
                                      :key="index">
                                <span v-text="mycategory.fData_Name"></span>
                                <span style="float:right;color:#ccc"
                                      v-text="mycategory.fData_Name_Shorthand"></span>

                            </i-option>
                        </i-select>

                    </div>
                    <span style="color: red;position: absolute;top:5px;font-size: 16px">*</span>

                </div>
                <div class="col-sm-hh">
                    <label class="control-label">主持人</label>
                    <div class="col-sm-hh1">
                        <input type="text" id="meetingCompere" name="example-input-small"
                               class="form-control input-sm" placeholder=""></div>
                    <span style="color: red;position: absolute;top:5px;font-size: 16px">*</span>

                </div>
                <div class="col-sm-hh">
                    <label class="control-label">记录人</label>
                    <div class="col-sm-hh1">
                        <input type="text" id="meetingRecorder" name="example-input-small"
                               class="form-control input-sm" placeholder=""></div>
                    <span style="color: red;position: absolute;top:5px;font-size: 16px">*</span>

                </div>
            </form>
        </div>
    </div>
    <%--<div class="col-sm-12" style="margin: 10px 0px;">--%>
        <%--<div id="" class="">--%>
            <%--<form method="post" class="form-horizontal" onsubmit="return false;">--%>
                <%--<div class="col-sm-hh2">--%>
                    <%--<label class="control-label">辨识结论</label>--%>
                    <%--<div class="col-sm-hh3">--%>
                                        <%--<textarea style="width: 100%;" id="meetingContent" name="example-textarea-input"--%>
                                                  <%--rows="7" class="form-control" placeholder=""></textarea>--%>
                    <%--</div>--%>
                    <%--<span style="color: red;right:45px;position: absolute;top:95px;font-size: 16px">*</span>--%>

                <%--</div>--%>
            <%--</form>--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="col-sm-12" style="margin: 10px 0px;">
        <div id="" class="">
            <form method="post" class="form-horizontal" onsubmit="return false;"
                  id="meetringAttachmentids">
                <div class="col-sm-hh2">
                    <label class="control-label">会议人员</label>
                    <div class="col-sm-hh3">
                        <div class="input-group" style="width: 100%;">
                            <input style="width:100%" type="text" id="meetingParticipant"
                                   name="example-input2-group2" class="form-control" placeholder="">
                            <span style="color: red;position: absolute;top:5px;font-size: 16px">*</span>

                        </div>

                    </div>
                </div>
            </form>
        </div>
    </div>



    <div class="col-sm-12" style="margin: 10px 0px;">
        <form class="form-group" id="meetringAttachmentid" method="post">
        <label >专项辨识报告</label>
        <div style="position: relative;display:inline-block;margin-left: 15px">
            <div style="display:inline-block;    width: 200px;">
                <input type="file" name="file" id="AttachmentUUID" @change="speciallyfilename" class="">
                <input type="text" name="fguid"
                       value="<%=frameid%>"
                       hidden="hidden">
                <input type="text" name="usefor"
                       value="<%=userName%>"
                       hidden="hidden">
                <input type="text" name="returnUrl" value="test" hidden="hidden">
            </div>

            <span id="showUpdate">原附件名为: &nbsp{{updatefileName}} &nbsp </span>
            <a id="delfile" class="btn btn-effect-ripple btn-primary" data-toggle="modal" data-target="#Modal-delete" @click="">删除附件</a>

    </div>

    <span class="input-group-btn"></span>
</form>
</div>



        </div>
        </div>
        </div>

<%--<div class="table-responsive" style="padding: 0 15px;">--%>
<%--<div id="example-datatable_wrappe" class="dataTables_wrapper form-inline no-footer">--%>
    <%--<div class="row" style="background-color: #fff;">--%>
        <%--<div class="col-sm-12" style="padding: 0">--%>
            <%--<div class="form-group" style="float: right;">--%>
                <%--<button type="submit" class="btn btn-effect-ripple btn-primary" @click="risksitshow" >选择风险点--%>
            <%--</button>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<%--<table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">--%>
    <%--<tr class="yans">--%>
        <%--<td class="text-center" rowspan="2">序号</td>--%>
        <%--<td class="text-center" rowspan="2">{{'Name'|titleFilter('风险点')}}</td>--%>
        <%--<td class="text-center" rowspan="2">{{'RiskDescription'|titleFilter('风险点描述')}}</td>--%>
        <%--<td class="text-center" rowspan="2">{{'RiskDamageType'|titleFilter('灾害类型')}}</td>--%>
        <%--&lt;%&ndash;<td class="text-center" rowspan="2">可能导致事故原因</td>&ndash;%&gt;--%>
        <%--<td class="text-center" rowspan="2">事故类型</td>--%>
        <%--<td class="text-center" rowspan="2">{{'riskLevel'|titleFilter('风险点等级')}}</td>--%>
        <%--<td class="text-center" rowspan="2">{{'RiskColor'|titleFilter('预警程度')}}</td>--%>
        <%--<td class="text-center" rowspan="2">{{'managerUnitName'|titleFilter('责任部门')}}</td>--%>
        <%--<td class="text-center" rowspan="2">{{'managerName'|titleFilter('责任人')}}</td>--%>
        <%--<td class="text-center" rowspan="2">{{'riskSupervisor'|titleFilter('监管部门')}}</td>--%>
        <%--<td class="text-center" rowspan="2">{{'RiskControlTier'|titleFilter('管控层次')}}</td>--%>
        <%--<tr class="yans">--%>
        <%--</tr>--%>
        <%--<tbody v-for="(risk,riskIndex) in riskSitelst" style="border:0">--%>

        <%--<tr>--%>
            <%--<td v-text="riskIndex+1"></td>--%>
            <%--<td><i class="fa fa-caret-right fa-fw"></i>--%>
                <%--<a v-text="risk.name+'('+risk.mchildRiskSite.length+')'"--%>
                <%--@click="showChild(risk)"--%>
                <%--></a></td>--%>

        <%--<td v-text="risk.riskDescription"></td>--%>
        <%--<td v-text="risk.riskDamageType"></td>--%>
        <%--&lt;%&ndash;<td></td>&ndash;%&gt;--%>
        <%--<td v-text="risk.riskAccident"></td>--%>
        <%--<td v-text="risk.riskLevel"></td>--%>
        <%--<td class="text-center"><span  v-bind:style="'background-color:'+risk.riskColor"--%>
                                       <%--class="btys"></span></td>--%>
        <%--<td  v-text="risk.managerUnitName"></td>--%>
        <%--<td  v-text="risk.managerName"></td>--%>
        <%--<td  v-text="risk.riskSupervisor"></td>--%>
        <%--<td  v-text="risk.riskControlTier"></td>--%>
    <%--</tr>--%>

    <%--<tr v-for="(riskc,index) in risk.mchildRiskSite" v-show="risk.showChild"--%>
        <%--v-bind:id="'risk'+riskc.riskSiteID">--%>
        <%--<td v-text=" (riskIndex+1)+'.'+(index+1)"></td>--%>
        <%--<td style="padding-left: 20px"><i class="fa fa-caret-right fa-fw"></i> <a--%>
                <%--v-text="riskc.name +'('+riskc.mhazards.length+')'"--%>
            <%--@click="showHazard(riskc)"> </a></td>--%>

    <%--<td v-text="riskc.riskDescription"></td>--%>
    <%--<td v-text="riskc.riskDamageType"></td>--%>
    <%--<td v-text="riskc.riskAccident"></td>--%>
    <%--<td v-text="riskc.riskLevel"></td>--%>
    <%--<td class="text-center"><span  v-bind:style="'background-color:'+riskc.riskColor"--%>
                                   <%--class="btys"></span></td>--%>
    <%--<td  v-text="riskc.managerUnitName"></td>--%>
    <%--<td  v-text="riskc.managerName"></td>--%>
    <%--<td  v-text="riskc.riskSupervisor"></td>--%>
    <%--<td v-text="riskc.riskControlTier"></td>--%>
<%--</tr>--%>

<%--</tbody>--%>
        <%--</table>--%>
        <%--</div>--%>
        <%--</div>--%>



<div class="modal inmodal" id="Modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
<div class="modal-dialog">
    <div class="modal-content animated flipInY">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span
                    aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            <i class="fa  modal-icon"></i>
            <h4 class="modal-title">删除</h4>
            <small></small>
        </div>
        <div class="modal-body">
            <p> 如有附件将都会被清空删除确认吗？</p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
            <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal"
            @click="deleteudupdate">确认
        </button>
    </div>
</div>
</div>
        </div>


<%--<div id="modal-add" class="modal" tabindex="-1" role="dialog" onkeydown="search()" aria-hidden="true">--%>
<%--<div class="modal-dialog">--%>
    <%--<div class="modal-content" style="min-height: 100%">--%>
        <%--<div class="modal-body">--%>
            <%--<div class="block-title">--%>
                <%--<h4>选择风险点</h4></div>--%>
            <%--<div class="col-sm-12" style="text-align: right;padding:0">--%>
                <%--<div class="searchCon"><i class="hi hi-search"></i><input name="search" id="keywords"--%>
                                                                          <%--placeholder="输入风险点名称 回车查询"--%>
                                                                          <%--class="searchWrap"--%>
                                                                          <%--type="text"></div>--%>
            <%--</div>--%>

            <%--<table id="gener" class="table table-striped table-bordered table-vcenter table-hover">--%>
                <%--<thead>--%>
                <%--<tr class="yans">--%>
                    <%--<th class="text-center" style="width: 10%">序号</th>--%>
                    <%--<th class="text-center" style="width: 20%">{{'Name'|titleFilter('风险点')}}</th>--%>
                    <%--<th class="text-center" style="width: 20%">{{'riskLevel'|titleFilter('风险点等级')}}</th>--%>
                    <%--<th class="text-center" style="width: 20%">{{'riskFrequency'|titleFilter('管控频次')}}</th>--%>
                    <%--<th class="text-center" style="width: 20%">{{'managerUnitName'|titleFilter('责任部门')}}</th>--%>
                    <%--<th class="text-center" style="width: 10%">操作</th>--%>

                <%--</tr>--%>
                <%--</thead>--%>
                <%--<tbody>--%>
                <%--<tr v-for="(rcm,index) in detailedList">--%>
                    <%--<th  v-text="pagesize*(nowpage-1)+index+1">1</th>--%>
                    <%--<td  v-text="rcm.name"></td>--%>
                    <%--<td  v-text="rcm.riskLevel"></td>--%>
                    <%--<td  v-text="rcm.riskFrequency"></td>--%>
                    <%--<td  v-text="rcm.managerUnitName"></td>--%>
                    <%--<td class="text-center"><a class="btn btn-effect-ripple btn-primary"  @click="checkRisksite(rcm,index)">添加</a></td>--%>
            <%--</tr>--%>
        <%--</tbody>--%>
    <%--</table>--%>
    <%--<div class="row">--%>
        <%--<div class="col-sm-7 col-xs-12 clearfix">--%>
            <%--<div class="dataTables_paginate paging_bootstrap" id="example-datatable_paginatefy">--%>
                <%--<ul class="pagination pagination-sm remove-margin "--%>
                    <%--id="pagination">--%>
                <%--</ul>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>

<%--</div>--%>
<%--<div class="modal-footer">没找到？请去<-风险辨识界面->添加风险点--%>
    <%--<button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal" >关闭</button>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
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
<script src="../js/vue.js"></script>
<script src="../js/iview.min.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/resource.js"></script>

<script>
$(document).ready(function () {
    var tadate = new Date();
    if ($("#identificationYear").val() == "" || $("#identificationYear").val() == null || $("#IdentificationMonth").val() == "" || $("#IdentificationMonth").val() == null) {
        $("#identificationYear").val(tadate.getFullYear())
        var date = tadate.getDate() < 10 ? "0" + tadate.getDate() : tadate.getDate();
        var mouth =tadate.getMonth()+1;
        if(mouth<10){
            $("#IdentificationMonth").val("0" + mouth+"-"+date);
        }else{
            $("#IdentificationMonth").val(mouth+"-"+date);
        }
    }
});
</script>
<script>
$(document).ready(function(){
    // var tadate =new Date();
    var nowDate = new Date();
    var year = nowDate.getFullYear();
    var month = nowDate.getMonth() + 1 < 10 ? "0" + (nowDate.getMonth() + 1) : nowDate.getMonth() + 1;
    var date = nowDate.getDate() < 10 ? "0" + nowDate.getDate() : nowDate.getDate();
    var hour = nowDate.getHours()< 10 ? "0" + nowDate.getHours() : nowDate.getHours();
    var minute = nowDate.getMinutes()< 10 ? "0" + nowDate.getMinutes() : nowDate.getMinutes();
    var second = nowDate.getSeconds()< 10 ? "0" + nowDate.getSeconds() : nowDate.getSeconds();

    vueApp.meetingtime = "-" + date;
});

</script>

<script type="text/javascript">
var projectName = '<%=request.getContextPath() %>';
var attrArray = null;
//按回车查询风险点
function search() {
    if (event.keyCode == 13) {
        var keywords = $("#keywords").val();
        vueApp.riskSite.name = keywords;
        vueApp.getPageCount();
    }
}


/**
 * Created by Administrator on 2017/9/21
 */
var vueApp = new Vue({
    el: "#page-content",
    data: {
        pagesize: 10,
        nowpage: 1,
        speid: "",             //主键值
        riskSite: "",          //风险点的空对象
        riskidBySpecially: "", //添加建立的专项空对象
        detailedList: null,   //提示框风险点对象
        byspeciallylist: null, //页面展示风险点对象
        riskSitelst: new Array(), //风险点信息对象
        speciallyarr: "",         //提交对象
        addspeciall: "",
        categoryList:"",         //平台专项检查类型
        filePath:"",
        fileName:"",
        sptitytype:"",
        showUpdate:"",
        updatefileName:"",
        updateuuid:"",
        meetingtime:"",

    },
    created: function () {
        var _self = this;
        _self.newRiskidenspecially();

        _self.getNewRiskSite();
        _self.display();
        _self.getEnterprise_data_dictionaryListForOrg();
        //_self.Speciallyshow();
    },
    mounted: function () {
    },
    updated: function () {
    },
    watch:{
        "categoryList":function(){
            this.$nextTick(function(){
                vueApp.Speciallyshow();
            })
        }
    },
    methods: {
        //获取辅助资料（专业）
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
                    _self.categoryList = data.专项检查类型;
                },
            });
        },
        //提示框点击事件
        checkRisksite: function (risksit, index) {
            var _self = this;

            if(_self.riskSitelst !=""){
                if( _self.riskSitelst[0].mchildRiskSite.length > 0){
                    _self.riskSitelst.showChild = false;
                    var childs = _self.riskSitelst[0].mchildRiskSite;
                    for (var i = 0; i < childs.length; i++) {
                        if ($("#riskHazard" + childs[i].riskSiteID).length > 0) {
                            $("#riskHazard" + childs[i].riskSiteID).remove();
                        }
                    }
                }
            }
            _self.speciallyarr = [];
            _self.speciallyarr = risksit;
            _self.riskSitelst = [];
            _self.riskSitelst.push(_self.speciallyarr);

        },

        //提交事件
//               tijiao:function(){
//                   var _self = this;
//                   _self.riskSitelst =[];
//                  _self.riskSitelst.push(_self.speciallyarr);
//               },
        //二级风险点展示
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
        //危险源展示
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
                        '<td class="text-center" rowspan="2">序号</td>' +
                        '<td class="text-center" rowspan="2">风险</td>' +
                        '<td class="text-center" rowspan="2">灾害类型</td>' +
                        //                            '<td class="text-center" colspan="4">管控措施</td>' +
                        //                            '<td class="text-center" rowspan="2">可能性(L)</td>' +
                        //                            '<td class="text-center" rowspan="2">暴露率(E)</td>' +
                        //                            '<td class="text-center" rowspan="2">后果(C)</td>' +
                        '<td class="text-center" rowspan="4">风险分析</td>' +
                        '<td class="text-center" rowspan="2">风险值(D)</td>' +
                        '<td class="text-center" rowspan="2">风险等级</td>' +
                        '<td class="text-center" rowspan="2">管控部门</td>' +
                        '<td class="text-center" rowspan="2">责任单位</td>' +
                        '<td class="text-center" rowspan="2">状态</td>' +
                        //                            '<tr class="biaot">' +
                        //                            '<td class="text-center">管理措施</td>' +
                        //                            '<td class="text-center">培训教育</td>' +
                        //                            '<td class="text-center">个体防护</td>' +
                        //                            '<td class="text-center">应急处置</td>' +
                        //                            '</tr>' +
                        '</thead>';

                    for (var i = 0; i < risk.mhazards.length; i++) {
                        var riskHazard = risk.mhazards[i];
                        //console.log(riskHazard.clossConsequence);
                        var tid = "hazrd_" + riskHazard.hazardID;
                        //var hazrdid=riskHazard.hazardID;
                        riskHazard.name = riskHazard.name == null ? "" : riskHazard.name;
                        riskHazard.clossConsequence = riskHazard.clossConsequence == null ? "" : riskHazard.clossConsequence;
                        riskHazard.Lpossibility = riskHazard.Lpossibility == null ? "" : riskHazard.Lpossibility;
                        riskHazard.Sseverity = riskHazard.Sseverity == null ? "" : riskHazard.Sseverity;
                        riskHazard.Eexpose = riskHazard.Eexpose == null ? "" : riskHazard.Eexpose;
                        riskHazard.consequence = riskHazard.consequence == null ? "" : riskHazard.consequence;
                        riskHazard.driskValue = riskHazard.driskValue == null ? "" : riskHazard.driskValue;
                        riskHazard.riskLevel = riskHazard.riskLevel == null ? "" : riskHazard.riskLevel;
                        riskHazard.manageUnit = riskHazard.manageUnit == null ? "" : riskHazard.manageUnit;
                        riskHazard.accountabilityUnit = riskHazard.accountabilityUnit == null ? "" : riskHazard.accountabilityUnit;
                        var lec = ""
                        if (riskHazard.clossConsequence != ""&&riskHazard.clossConsequence != 0) {

                            lec = "评估方法(LEC): L=" + riskHazard.Lpossibility + ", E=" + riskHazard.Eexpose + ", C=" + riskHazard.clossConsequence
                        } else if (riskHazard.Sseverity != ""&&riskHazard.Sseverity != 0) {
                            lec = "评估方法(LS): L=" + riskHazard.Lpossibility + ", S=" + riskHazard.Sseverity

                        }
                        var status = ""
                        if(riskHazard.status ==1){
                            status = "已评估"
                        }else{
                            status = "未评估"
                        }
                        html += '<tr class="biaot1 biaot2">' +
                            '<td>' + (i + 1) + '</td>' +
                            '<td >' + riskHazard.name + '</td>' +
                            '<td>' + riskHazard.damageType + '</td>'+
                            //                                '<td>' + '' + '</td>' +
                            //                                '<td>' + '' + '</td>' +
                            //                                '<td>' + '' + '</td>' +
                            //                                '<td>' + '' + '</td>' +
                            //                                '<td>' + riskHazard.Lpossibility + '</td>' +
                            //                                '<td>' + riskHazard.Eexpose + '</td>' +
                            //                                '<td>' + riskHazard.consequence + '</td>' +
                            '<td>' + lec + '</td>'+
                            '<td >' + riskHazard.driskValue + '</td>' +
                            '<td>' + riskHazard.riskLevel + '</td>' +
                            '<td>' + riskHazard.manageUnit + '</td>' +
                            '<td>' + riskHazard.accountabilityUnit + '</td>' +
                            '<td>' + status + '</td>' +
                            '</tr>';

                        $(document).on('click', '#' + riskHazard.hazardID, function () {
                            //console.log(this.id);
                            _self.getRiskHazardMethod(this.id);

                        });

                    }
                    html += '</table> </td> </tr>';
                    $("#" + id).after(html);
                }
            }

        },

        //专项辨识的空对象
        newRiskidenspecially: function () {
            var _self = this;
            $.get(projectName + "/RiskIdentificationBySpecially/newRiskidentificationbyspecially", function (data) {
                _self.riskidBySpecially = data;
                _self.byspeciallylist = data;
            });
        },
        //提示框分页建立空对象
        getNewRiskSite: function () {
            var _self = this;
            $.get(projectName + "/RiskDetailedList/newRiskSite", function (data) {
                _self.riskSite = data;
                _self.addspeciall = data;
                //初始查询风险点信息，可以先注释掉，在下面选择风险点在进行查询
                //  _self.getPageCount();
            });
        },

        //选择风险点
        risksitshow:function(){
            var _self = this;
            _self.getPageCount();
            $("#modal-add").modal("show");
        },

        //提示框分页查询总条数
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
        //提示框分页查询数据
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
                    console.log(data);
                    _self.detailedList = data;
                    layer.closeAll('loading');
                }
            });

        },

        //判断月份是否重复
        byyearandmonth: function(){
            var _self = this;
            var identificationYear =$("#identificationYear").val();
            var IdentificationMonth = $("#IdentificationMonth").val();
            $.ajax({
                type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                url:projectName+"/RiskIdentificationBySpecially/byyearandmonth", //发送请求的地址。
                data:{
                    "identificationYear":identificationYear,
                    "IdentificationMonth":IdentificationMonth,
                },
                dataType:"json",//预期服务器返回的数据类型。
                async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                success: function(data){
                    if(data==0){
                        _self.uploadFile();
                    }else{
                        _self.showToast("error","该月份已录入辨识信息");
                    }
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    console.log(XMLHttpRequest.status);
                    console.log(XMLHttpRequest.readyState);
                    console.log(textStatus);
                }
            });

        },

        //添加方法
        addtaks: function (data) {
            var _self = this;
            _self.addspeciall = _self.riskSitelst[0];

//            if (_self.addspeciall == '' || _self.addspeciall == null) {
//                _self.showToast("warning", "请选择风险点");
//                return;
//            }
            _self.riskidBySpecially.identificationYear = $("#identificationYear").val();
            _self.riskidBySpecially.identificationMonth = $("#IdentificationMonth").val();
            _self.riskidBySpecially.meetingPlace = $("#meetingPlace").val();
            // _self.riskidBySpecially.identityType = $("#identityType").val();
            _self.riskidBySpecially.identityType = _self.sptitytype;
            _self.riskidBySpecially.meetingCompere = $("#meetingCompere").val();
            _self.riskidBySpecially.meetingRecorder = $("#meetingRecorder").val();
            _self.riskidBySpecially.meetingContent = $("#meetingContent").val();
            _self.riskidBySpecially.meetingParticipant = $("#meetingParticipant").val();
            _self.riskidBySpecially.meetringAttachmentUUID = data;
            _self.riskidBySpecially.meetringAttachmentFileName = _self.fileName;
            _self.riskidBySpecially.mRiskSite = _self.addspeciall;
//            _self.riskidBySpecially.riskSiteID = _self.addspeciall.riskSiteID;

            if ($("#identificationYear").val() == '') {
                _self.showToast("warning", "请选择年份");
                return;
            }
            if ($("#IdentificationMonth").val() == '') {
                _self.showToast("warning", "请选择月份");
                return;
            }
            if ($("#meetingPlace").val() == '') {
                _self.showToast("warning", "请添加会议地点");
                return;
            }
            if (_self.sptitytype == '' || _self.sptitytype ==null ) {
                _self.showToast("warning", "请选择专项类型");
                return;
            }
            if ($("#meetingCompere").val() == '') {
                _self.showToast("warning", "请添加主持人");
                return;
            }
            if ($("#meetingRecorder").val() == '') {
                _self.showToast("warning", "请添加记录人");
                return;
            }
            if ($("#meetingContent").val() == '') {
                _self.showToast("warning", "请添加会议内容");
                return;
            }
            if ($("#meetingParticipant").val() == '') {
                _self.showToast("warning", "请添加会议人员");
                return;
            }
            _self.riskidBySpecially.meetingTime = $("#identificationYear").val()+"-"+$("#IdentificationMonth").val();

            $.ajax({
                type: "POST",
                url: projectName + "/RiskIdentificationBySpecially/add",
                data: JSON.stringify(_self.riskidBySpecially),
                contentType: "application/json",
                success: function (data) {
                    if (data) {
                        _self.showToast("success", "添加成功！");
                        var tadate = new Date();
                        $("#identificationYear").val(tadate.getFullYear());
                        $("#IdentificationMonth").val("0" + (tadate.getMonth() + 1));
                        $("#meetingPlace").val("");
                        $("#identityType").val("");
                        $("#meetingCompere").val("");
                        $("#meetingRecorder").val("");
                        $("#meetingContent").val("");
                        $("#meetingParticipant").val("");
                        $("#AttachmentUUID").val("");
                        _self.riskSitelst = [];
                        window.location.href="<%=request.getContextPath()%>/menu/RiskIdentificationBySpeciallyByHL.do"
                    } else {
                        //  _self.showToast("error", "添加失败！");
                    }
                },

            });

        },

        //附件上传（添加方法）
        uploadFile: function () {
            var _self = this;
            var formData = new FormData($("#meetringAttachmentid")[0]);
            _self.filePath = $("#AttachmentUUID").val();
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
                        // _self.showToast("warning", "请上传附件！");
                        _self.addtaks(data);
                    } else {
                        //_self.attachment = data;
                        _self.addtaks(data);
                    }

                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log(XMLHttpRequest.status);
                    console.log(XMLHttpRequest.readyState);
                    console.log(textStatus);
                    _self.showToast("error", "上传出错！");
                }
            });

        },

        //删除清空附件事件
        deleteudupdate:function(){
            var _self = this;
            $("#showUpdate").hide();
            $("#AttachmentUUID").val("");
            $("#meetringAttachmentidd").val("");
            _self.updatefileName = "";
            _self.updateuuid ="";
            $("#delfile").hide();
        },

        //附件修改的change事件
        speciallyfilename:function(){
            var _self = this;
            if($("#AttachmentUUID").val()!="" && $("#AttachmentUUID").val()!=null ){
                $("#delfile").show();
            }else{
                $("#delfile").hide();
            }

            if( _self.updateuuid!="" && _self.updateuuid!=0 ){
                $("#delfile").show();
            }
        },

        //根据主键查询回填
        Speciallyshow: function () {
            var _self = this;
            var speciallyid = <%=request.getSession().getAttribute("Speciallyid") %>;
            _self.speid = speciallyid;
            $.ajax({
                type: "POST",
                url: projectName + "/RiskIdentificationBySpecially/bySpeciallyid",
                data: {
                    "speciallyid": speciallyid,
                },
                dataType: "json",
                success: function (data) {
                    _self.byspeciallylist = data;
                    _self.riskSitelst.push(data.mRiskSite);
                    $("#identificationYearup").val(data.identificationYear);
                    $("#IdentificationMonthup").val(data.identificationMonth);
                    $("#meetingPlace").val(data.meetingPlace);
                    //$("#identityType").val(data.identityType);
                    _self.sptitytype = data.identityType;
                    $("#meetingCompere").val(data.meetingCompere);
                    $("#meetingRecorder").val(data.meetingRecorder);
                    $("#meetingContent").val(data.meetingContent);
                    $("#meetingParticipant").val(data.meetingParticipant);
                    _self.updateuuid = data.meetringAttachmentUUID;
                    _self.updatefileName = data.meetringAttachmentFileName;

                    if(_self.updateuuid!="" && _self.updateuuid!=0){
                        $("#showUpdate").show();
                        $("#delfile").show();
                    }else{
                        $("#showUpdate").hide();
                        $("#delfile").hide();
                    }


                },
            });
        },

        //附件修改上传
        updateFile: function () {
            var _self = this;
            var formData = new FormData($("#meetringAttachmentid")[0]);
            _self.filePath = $("#AttachmentUUID").val();
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
                        _self.updaetSpecially();
                    } else {
                        _self.updateSpeciallyfile(data);
                    }

                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log(XMLHttpRequest.status);
                    console.log(XMLHttpRequest.readyState);
                    console.log(textStatus);
                    _self.showToast("error", "上传出错！");
                }
            });

        },

        //修改方法（附件未修改）
        updaetSpecially: function () {
            var _self = this;
            _self.addspeciall = _self.riskSitelst[0];
            _self.riskidBySpecially.riskidentificationSpeciallyID = _self.speid;
            _self.riskidBySpecially.identificationYear = $("#identificationYearup").val();
            _self.riskidBySpecially.identificationMonth = $("#IdentificationMonthup").val();
            _self.riskidBySpecially.meetingPlace = $("#meetingPlace").val();
            _self.riskidBySpecially.identityType = _self.sptitytype;
            _self.riskidBySpecially.meetingCompere = $("#meetingCompere").val();
            _self.riskidBySpecially.meetingRecorder = $("#meetingRecorder").val();
            _self.riskidBySpecially.meetingContent = $("#meetingContent").val();
            _self.riskidBySpecially.meetingParticipant = $("#meetingParticipant").val();
            _self.riskidBySpecially.meetringAttachmentUUID = _self.updateuuid;
            _self.riskidBySpecially.meetringAttachmentFileName = _self.updatefileName;
            _self.riskidBySpecially.mRiskSite = _self.addspeciall;
            _self.riskidBySpecially.riskSiteID = _self.addspeciall.riskSiteID;
            if ($("#identificationYearup").val() == '') {
                _self.showToast("warning", "请选择年份");
                return;
            }
            if ($("#IdentificationMonthup").val() == '') {
                _self.showToast("warning", "请选择月份");
                return;
            }
            if ($("#meetingPlace").val() == '') {
                _self.showToast("warning", "请添加会议地点");
                return;
            }
            if (_self.sptitytype == '' || _self.sptitytype ==null ) {
                _self.showToast("warning", "请选择专项类型");
                return;
            }
            if ($("#meetingCompere").val() == '') {
                _self.showToast("warning", "请添加主持人");
                return;
            }
            if ($("#meetingRecorder").val() == '') {
                _self.showToast("warning", "请添加记录人");
                return;
            }
            if ($("#meetingContent").val() == '') {
                _self.showToast("warning", "请添加会议内容");
                return;
            }
            if ($("#meetingParticipant").val() == '') {
                _self.showToast("warning", "请添加会议人员");
                return;
            }

            $.ajax({
                type: "POST",
                url: projectName + "/RiskIdentificationBySpecially/updatespeciy",
                data: JSON.stringify(_self.riskidBySpecially),
                dataType: "json",
                contentType: "application/json",
                success: function (data) {
                    if (data) {
                        _self.showToast("success", "修改成功！");
                        window.location.href="<%=request.getContextPath()%>/menu/RiskIdentificationBySpeciallyByHL.do"
                    } else {
                        // _self.showToast("error", "修改失败！");
                    }
                },

            });

        },

        //修改方法（附件已修改）
        updateSpeciallyfile: function (data) {
            var _self = this;
            _self.addspeciall = _self.riskSitelst[0];
            _self.riskidBySpecially.riskidentificationSpeciallyID = _self.speid;
            _self.riskidBySpecially.identificationYear = $("#identificationYearup").val();
            _self.riskidBySpecially.identificationMonth = $("#IdentificationMonthup").val();
            _self.riskidBySpecially.meetingPlace = $("#meetingPlace").val();
            // _self.riskidBySpecially.identityType = $("#identityType").val();
            _self.riskidBySpecially.identityType = _self.sptitytype;
            _self.riskidBySpecially.meetingCompere = $("#meetingCompere").val();
            _self.riskidBySpecially.meetingRecorder = $("#meetingRecorder").val();
            _self.riskidBySpecially.meetingContent = $("#meetingContent").val();
            _self.riskidBySpecially.meetingParticipant = $("#meetingParticipant").val();
            _self.riskidBySpecially.meetringAttachmentUUID = data;
            _self.riskidBySpecially.meetringAttachmentFileName = _self.fileName;
            _self.riskidBySpecially.mRiskSite = _self.addspeciall;
            _self.riskidBySpecially.riskSiteID = _self.addspeciall.riskSiteID;
            if ($("#identificationYear").val() == '') {
                _self.showToast("warning", "请选择年份");
                return;
            }
            if ($("#IdentificationMonthup").val() == '') {
                _self.showToast("warning", "请选择月份");
                return;
            }
            if ($("#meetingPlace").val() == '') {
                _self.showToast("warning", "请添加会议地点");
                return;
            }
            if (_self.sptitytype == '' || _self.sptitytype ==null ) {
                _self.showToast("warning", "请选择专项类型");
                return;
            }
            if ($("#meetingCompere").val() == '') {
                _self.showToast("warning", "请添加主持人");
                return;
            }
            if ($("#meetingRecorder").val() == '') {
                _self.showToast("warning", "请添加记录人");
                return;
            }
            if ($("#meetingContent").val() == '') {
                _self.showToast("warning", "请添加会议内容");
                return;
            }
            if ($("#meetingParticipant").val() == '') {
                _self.showToast("warning", "请添加会议人员");
                return;
            }

            $.ajax({
                type: "POST",
                url: projectName + "/RiskIdentificationBySpecially/updatespeciy",
                data: JSON.stringify(_self.riskidBySpecially),
                dataType: "json",
                contentType: "application/json",
                success: function (data) {
                    if (data) {
                        _self.showToast("success", "修改成功！");
                        window.location.href="<%=request.getContextPath()%>/menu/RiskIdentificationBySpeciallyByHL.do"
                    } else {
                        //  _self.showToast("error", "修改失败！");
                    }
                },

            });

        },

        //初始化显示
        display: function () {
            var _self = this;
            _self.speid = <%=request.getSession().getAttribute("Speciallyid") %>;
            if (_self.speid == 0) {
                $("#addshow").show();
                $("#updateshow").hide();
                $("#addreset").show();
                $("#updatereset").hide();
                $("#yearadd").show();
                $("#monthadd").show();
                $("#delfile").hide();
                $("#showUpdate").hide();
            } else {
                $("#addshow").hide();
                $("#updateshow").show();
                $("#updatereset").show();
                $("#addreset").hide();
                $("#yearupdate").show();
                $("#monthupdate").show();
            }
        },

        //添加重置
        addReset: function () {
            var _self = this;
            var tadate = new Date();
            $("#identificationYear").val(tadate.getFullYear());
            var mouth =tadate.getMonth()+1;
            if(mouth<10){
                $("#IdentificationMonth").val("0" + mouth)
            }else{
                $("#IdentificationMonth").val(mouth)
            }
            $("#meetingPlace").val("");
            $("#identityType").val("");
            $("#meetingCompere").val("");
            $("#meetingRecorder").val("");
            $("#meetingContent").val("");
            $("#meetingParticipant").val("");
            $("#AttachmentUUID").val("");
            _self.riskSitelst = [];
        },

        //修改重置
        updateReset: function () {
            var _self = this;
            _self.riskSitelst = [];
            _self.Speciallyshow();
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
        titleFilter: function (val,defaultName) {
            var _self = this;
            console.log(val);
            console.log(defaultName);
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
        }
    },
})

</script>

<script>
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

lay('.datepicker').each(function () {
    laydate.render({
        elem: this
        , trigger: 'click'
        , type: 'year'
    });
});

</script>
<script>

lay('.datepicker1').each(function () {
    laydate.render({
        elem: this
        , trigger: 'click'
//            , type: 'month'
        , format: 'MM-dd'
    });
});

</script>

        </body>

        </html>