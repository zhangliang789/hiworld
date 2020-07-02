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
        Integer currentPage = (Integer) request.getSession().getAttribute("currentPage");
    %>

    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section" style="overflow: hidden;">
                    <h1 style="float: left;padding:0">黄陵二矿重点管控对象</h1>
                    <div style="float: right;padding:0">
                        <div class="searchCon"><i class="hi hi-search"></i><input name="search" id="keywords"
                                                                                  placeholder="输入工作流程 回车查询"
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
                        <a class="btn btn-primary" href="../file/黄陵二矿重点管控对象模板.xlsx">模板下载</a>
                        <button id="import" type="button" @click="confirmImport" class="btn btn-primary">确认导入</button>
                        <a id="lasttext" class="btn btn-primary" @click="lasttext">返回</a>
                        <button type="submit" id="addInfo" data-toggle="modal" data-target="#modal-add"
                                class="btn btn-effect-ripple btn-primary">新增
                        </button>
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
                        <td style="position: relative" class="text-center tcrk" rowspan="2">
                            <span class="dj">序号</span>
                        </td>
                        <td class="text-center" rowspan="2">管控对象</td>
                        <td class="text-center" colspan="3">风险识别</td>
                        <td class="text-center" colspan="4">风险评估</td>
                        <td class="text-center" colspan="1">风险控制</td>
                        <td class="text-center" rowspan="2">操作</td>
                    </tr>
                    <tr class="biaot">
                        <td class="text-center">工作流程</td>
                        <td class="text-center">工作步骤</td>
                        <td class="text-center">可能造成的事故及后果</td>
                        <td class="text-center">事故发生可能性（L）</td>
                        <td class="text-center">事故后果严重性（S）</td>
                        <td class="text-center">风险度（R）</td>
                        <td class="text-center">风险等级</td>
                        <td class="text-center">控制措施</td>
                    </tr>
                        <tbody>
                        <tr v-for="(hazard,index) in detailedList">
                            <td class="text-center" v-text="index+1"></td>
                            <td v-text="hazard.controlObjectName"></td>
                            <td v-text="hazard.workflowContent"></td>
                            <td v-text="hazard.workStep"></td>
                            <td v-text="hazard.workResult"></td>
                            <td v-text="hazard.resultAbility"></td>
                            <td v-text="hazard.resultSeriously"></td>
                            <td v-text="hazard.resultRisklradio"></td>
                            <td v-text="hazard.resultRisklevel"></td>
                            <td v-text="hazard.controlMeasure"></td>
                            <td style="white-space: nowrap">
                                <a @click="deleteHazard(hazard)">删除</a>
                                <a @click="updateTemplateHazard(hazard)">修改</a>
                            </td>
                        </tr>
                        </tbody>
                </table>


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
                                         v-model="templatehazardHL.controlObjectName"></i-input>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">工作流程</label>
                            <div class="col-sm-8">
                                <i-input placeholder="请输入工作流程" type="text"
                                         v-model="templatehazardHL.workflowContent"></i-input>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">工作步骤</label>
                            <div class="col-sm-8">
                                <i-input placeholder="请输入工作步骤" type="text"
                                         v-model="templatehazardHL.workStep"></i-input>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">可能造成的事故及后果</label>
                            <div class="col-sm-8">
                                <i-input placeholder="请输入可能造成的事故及后果" type="text"
                                         v-model="templatehazardHL.workResult"></i-input>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">控制措施</label>
                            <div class="col-sm-8">
                                <i-input placeholder="请输入控制措施" type="text"
                                         v-model="templatehazardHL.controlMeasure"></i-input>
                            </div>
                        </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="getPageCount"
                                data-dismiss="modal">确认
                        </button>
                        <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--新增重点管控对象-->
    <div id="modal-add" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body" style="height:851px;">
                    <div class="block-title">
                        <h4>新增重点管控对象信息</h4></div>
                    <form :model="controlObjContent" :ref="controlObjFormRef"  method="post" class="form-horizontal" onsubmit="return false;">

                        <div class="form-group">
                            <label class="col-sm-3 control-label">工作流程</label>
                            <div class="col-sm-8">
                                <input v-model="controlObjContent.workflowContent" class="form-control nihao1" placeholder=""
                                       type="text">
                            </div>
                        </div>
                        <div v-for="(data,index) in controlObjContent.detailList" :key="index" >
                            <template>
                                <Row>
                                    <i-col span="24">
                                        <Tabs active-key="key1" @on-click="ontabs">
                                            <Tab-pane label="风险识别" key="key1">
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">管控对象</label>
                                                    <div class="col-sm-8">
                                                        <input v-model="data.controlObjectName" class="form-control nihao1" placeholder="" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">工作步骤</label>
                                                    <div class="col-sm-8">
                                                        <input v-model="data.workStep" class="form-control nihao1" placeholder="" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">可能造成的事故及后果</label>
                                                    <div class="col-sm-8">
                                                        <input v-model="data.workResult" class="form-control nihao1" placeholder="" type="text">
                                                    </div>
                                                </div>
                                            </Tab-pane>
                                            <Tab-pane label="风险评估" key="key2">
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">事故发生可能性（L）</label>
                                                    <div class="col-sm-8">
                                                        <input v-model="data.resultAbility" class="form-control nihao1" placeholder="" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">事故后果严重性（S）</label>
                                                    <div class="col-sm-8">
                                                        <input v-model="data.resultSeriously" class="form-control nihao1" placeholder="" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">风险度（R）</label>
                                                    <div class="col-sm-8">
                                                        <input v-model="data.resultRisklradio" class="form-control nihao1" placeholder="" type="text">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">风险等级</label>
                                                    <div class="col-sm-8">
                                                        <input v-model="data.resultRisklevel" class="form-control nihao1" placeholder="" type="text">
                                                    </div>
                                                </div>
                                            </Tab-pane>
                                            <Tab-pane label="风险控制" key="key3">
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">控制措施</label>
                                                    <div class="col-sm-8">
                                                        <input v-model="data.controlMeasure" class="form-control nihao1" placeholder="" type="text">
                                                    </div>
                                                </div>
                                            </Tab-pane>
                                        </Tabs>
                                    </i-col>
                                </Row>
                            </template>
                            <div type="button" class="btn btn-effect-ripple btn-primary" @click="delTemplatehazardHLDetail(data)">删除
                            </div>
                        </div>
                        <div type="button" class="btn btn-effect-ripple btn-primary" @click="addTemplatehazardHLDetail">增加管控信息
                        </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="addTemplatehazardHL">确认
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
<%--<script src="../js/vue.js"></script>--%>
<%--<script src="../iview/iview.js"></script>--%>
<script src="../js/echarts.min.js"></script>
<script src="../js/plugins/uploader/webuploader.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>
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
            vueApp.templatehazardHL.workflowContent = keywords;
            vueApp.getPageCount();
        }

    }

    var projectName = '<%=request.getContextPath() %>';
    var pageVar = "HazardByHuangling";//页面唯一变量标识，每个页面不能重复
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

            value2:'1',
            templatehazardHL:{},
            //workfolwContent
            controlObjFormRef:"controlObjForm",
            controlObjContent:{
                workflowContent:"",
                detailList:[
                    {
                        id:"",
                        controlObjectName:"",
                        workStep:"",
                        workResult:"",
                        resultAbility:"",
                        resultSeriously:"",
                        resultRisklradio:"",
                        resultRisklevel:"",
                        controlMeasure:""
                    }
                ]
            },






            attributes: new Array(),
            propertys: new Array(),

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
//            deleteHazard: "",
            delHazardHLID:"",//删除风险
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
            var $this = this;
            $this.getPageCount();
        },
        mounted: function () {
            var _self = this;
            var uploader = WebUploader.create({
                // 自动上传。
                auto: true,
                // swf文件路径
                swf: '../uploader/Uploader.swf',
                // 文件接收服务端。
                server: '../TemplatehazardHL/UploadFile',
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
                    _self.showToast("success", "上传成功");
                    _self.getPageCount();
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
//                _self.getPageCount1();
            },
            //获取地点信息

            queryName: function () {
                var _self = this;
//                _self.templatehazard.name = $("#keywords").val();
//                _self.getPageCount1();

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






            //获取总条数，参数是Risksite 对象
            getPageCount: function () {
                var _self = this;
                _self.templatehazardHL.pageSize = _self.pagesize;
                _self.templatehazardHL.detailList = [];
                $.ajax({
                    type: "POST",
                    url: projectName + "/TemplatehazardHL/getTemplatehazardHLByCount",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.templatehazardHL),
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
//                            _self.templatehazardHL = {};
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
                _self.templatehazardHL.page = page;
                $.ajax({
                    type: "POST",
                    url: projectName + "/TemplatehazardHL/getTemplatehazardHLByPage",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.templatehazardHL),
                    success: function (data) {
                        _self.detailedList = data;
                        <%session.removeAttribute("currentPage");%>
                        layer.closeAll('loading');
                    }
                });

            }
            ,
            addTemplatehazardHLDetail:function(){
                this.controlObjContent.detailList.push({
                    id:"",
                    controlObjectName:"",
                    workStep:"",
                    workResult:"",
                    resultAbility:"",
                    resultSeriously:"",
                    resultRisklradio:"",
                    resultRisklevel:"",
                    controlMeasure:""
                });
            },
            deleteHazard:function(hazard){
                $("#modal-delete").modal("show");
                this.delHazardHLID = hazard.id;
            },
            delTemplatehazardHLDetail:function(item){
                var index = this.controlObjContent.detailList.indexOf(item);
                if(index !== -1){
                    this.controlObjContent.detailList.splice(index, 1);
                }
            },
            ontabs:function(){

            },
            addTemplatehazardHL: function () {
                var $this = this;
                $.ajax({
                    url: projectName + "/TemplatehazardHL/updateTemplatehazardHL", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify($this.controlObjContent),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        $("#modal-add").modal('hide');
                        $this.controlObjContent = {};
                        $this.getPageCount();
                        $this.showToast("success", "新增成功");
                    },
                });
            },
            confirmDelete: function(delId) {
                var $this= this;
                var ids = $this.delHazardHLID;
                $.ajax({
                    url: projectName + "/TemplatehazardHL/delete", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {
                        "hazardID": ids,
                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        $this.showToast("success", "删除成功");
                        $this.getPageCount();
                    },

                });


            },
            updateTemplateHazard:function(hazard){
                var $this = this;
                var hazardHL = {};
                hazardHL.workflowId = hazard.workflowId;
                hazardHL.page = 1;
                hazardHL.pageSize = 0;
                $.ajax({
                    type: "POST",
                    url: projectName + "/TemplatehazardHL/getTemplatehazardHLList",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(hazardHL),
                    success: function (data) {
                        $("#modal-add").modal('show');
                        $this.controlObjContent.workflowContent = data[0].workflowContent;
                        $this.controlObjContent.detailList = data;
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