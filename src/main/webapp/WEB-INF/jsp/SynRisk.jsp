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
    <title>风险信息上报</title>
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
    <link href="../iview/iview.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../css/bootstrap-switch.min.css">
    <link href="../iview/iview.css" rel="stylesheet" type="text/css">


    <style type="text/css">
        p {
            margin-bottom: 0;
        }
        li{
            font-size: 14px;

        }
        .close {
            top: 8px;
            position: absolute;
            right: 15px;
        }

        .jqstooltip {
            width: auto !important;
            height: auto !important;
            position: absolute;
            left: 0px;
            top: 0px;
            visibility: hidden;
            background: #000000;
            color: white;
            font-size: 11px;
            text-align: left;
            white-space: nowrap;
            padding: 5px;
            z-index: 10000;
        }

        .jqsfield {
            color: white;
            font: 10px arial, san serif;
            text-align: left;
        }

        .input-group-but {
            border: 0;
            background-color: #fff;
        }

        .chosen-search {
            position: relative;
            z-index: 1010;
            margin: 0;
            padding: 3px 4px;
            white-space: nowrap;
        }

        .chosen-search input[type="text"] {
            margin: 1px 0;
            padding: 4px 20px 4px 5px;
            width: 100%;
            height: auto;
            outline: 0;
            border: 1px solid #dae0e8;
            border-radius: 4px;
            font-size: 1em;
            line-height: normal;
        }

        #easy-tree1 {
            max-height: 300px;
            overflow-y: auto;
        }

        @media (max-width: 768px) {
            label {
                width: 100%
            }

            .input-group-btn {
                width: 100%;
            }

            .form-group {
                margin-right: 0 !important;
            }
        }

        .block {
            overflow: hidden;
        }

        .nav {
            border: 1px solid #ebeef2;
        }

        .nav > li > a {
            position: relative;
            display: block;
            padding: 18px 15px;
        }

        .nav-pills > li.active > a button {
            background-color: #0B8DE5;
        }

        .nav > li > a button {
            background-color: #fff;
            border: 0;
            font-size: 12px;
            color: #c2cbd0;
        }

        .nav > li > a button:hover {
            color: #3CBAFF;
        }

        .nav-stacked > li > a {
            margin: 0px 0 0;
        }

        .nav-pills > li > a {
            border-radius: 0px;
        }

        .nav > li > a span {
            float: right;
        }

        .flsl {
            width: 16px;
            line-height: 16px;
            height: 16px;
            text-align: center;
            display: block;
            float: right;
            background-color: #cbd0da;
            margin-left: 20px;
        }

        .lbtj {
            display: block;
            width: 100%;
            height: 50px;
            line-height: 50px;
            text-align: center;
            background-color: #d1d1d1;
            text-decoration: none !important;
            color: #fff;
            font-size: 13px;
        }

        .biaota h1 {
            font-weight: 500;
            font-size: 24px;
            padding: 10px 5px;
        }

        p {
            margin-bottom: 0;
        }

        .close {
            top: 8px;
            position: absolute;
            right: 15px;
        }

        .jqstooltip {
            width: auto !important;
            height: auto !important;
            position: absolute;
            left: 0px;
            top: 0px;
            visibility: hidden;
            background: #000000;
            color: white;
            font-size: 11px;
            text-align: left;
            white-space: nowrap;
            padding: 5px;
            z-index: 10000;
        }

        .jqsfield {
            color: white;
            font: 10px arial, san serif;
            text-align: left;
        }

        .input-group-but {
            border: 0;
            background-color: #fff;
        }

        .chosen-search {
            position: relative;
            z-index: 1010;
            margin: 0;
            padding: 3px 4px;
            white-space: nowrap;
        }

        .chosen-search input[type="text"] {
            margin: 1px 0;
            padding: 4px 20px 4px 5px;
            width: 100%;
            height: auto;
            outline: 0;
            border: 1px solid #dae0e8;
            border-radius: 4px;
            font-size: 1em;
            line-height: normal;
        }

        #easy-tree1 {
            max-height: 300px;
            overflow-y: auto;
        }

        @media (max-width: 768px) {
            label {
                width: 100%
            }

            .input-group-btn {
                width: 100%;
            }

            .form-group {
                margin-right: 0 !important;
            }
        }

        #treetable {
            width: 100%;
        }

        #treetable ul {
            overflow: hidden;
            width: 100%;
        }

        #treetable > ul > ul > li:first-child {
            padding-left: 20px;
        }

        #treetable > ul > ul > ul > li:first-child {
            padding-left: 40px;
        }

        #treetable ul li {
            float: left;
            border: 1px solid #ddd;
            padding: 0 10px;
            height: 28px;
            line-height: 28px;
        }

        .tgh {
            display: none;
        }

        .thtou li {
            padding: 15px;
            border-color: #ebeef2;
            border-bottom-width: 2px;
            border: 1px solid #ddd;
        }

        .thtou {
            font-size: 15px;
            font-weight: 600;
            text-align: center;
            vertical-align
        }

        .searchCon {
            width: 100%;
            height: 25px;
            text-align: center;
            position: relative;
            margin: 5px auto 10px auto;
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

        .biaot > td {
            white-space: nowrap;
            background-color: #f1f1f1;
            font-weight: bold;
        }

        .qiehxg {
            color: #333;
        }
        th{

            white-space: nowrap;
        }
    </style>
</head>

<body>
<% Emp user = (Emp) request.getSession().getAttribute("emp");
    String frameworkID = user.getFFrame_ID();
%>
<div id="page-content" style="min-height: 794px;">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section">

                    <h1 style="float: left;">风险信息上报 <span style="font-size: 14px;color: #0B8DE5;"></span></h1>
                    <div class="form-group" style="float: right;">

                        <button id="toReport" type="submit" data-toggle="modal" data-target="#modal-delete"  class="btn btn-effect-ripple btn-primary">上报</button>
                        <label class="csscheckbox csscheckbox-primary">
                            <input type="checkbox" v-model="showMajorRisk">
                            <span></span>
                        </label>
                        <span class="el-checkbox__label" style="font-size: medium;">显示重大风险</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="full">
        <div class="col-sm-4" style="padding-left: 0;">
            <div id="">
                <!-- Collapsible Options -->
                <a href="javascript:void(0)" class="btn btn-block btn-default visible-xs" data-toggle="collapse"
                   data-target="#media-options">Media Box</a>
                <div id="media-options" class="collapse navbar-collapse remove-padding">
                    <!-- Filter -->
                    <div class="block-section">
                        <div style="padding:10px;width:100%;">
                            <template>
                                <Row>
                                    <i-col span="24">
                                        <Tabs active-key="key1" @on-click="ontabs">
                                            <Tab-pane label="待上报风险" key="key1">
                                                <div class="searchCon">
                                                    <i class="hi hi-search"></i>
                                                    <input name="search" value="" placeholder="输入名称" v-model="riskNameBySelect" class="searchWrap" type="text">
                                                </div>
                                                <ul class="nav nav-pills nav-stacked nav-icons media-filter" style="margin-top: 5px;">
                                                    <div id="treetable">
                                                        <ul class="thtou">
                                                            <li style="width: 53%;">名称</li>
                                                            <li style="width: 23%;">类型</li>
                                                            <li style="width: 24%;">更新数量</li>
                                                        </ul>
                                                        <ul :id="'risk'+index" v-for="(myrisk,index) in SynByRiskHistoryList" v-if="myrisk.ParentID=='0'">
                                                            <li style="width: 53%;">

                                                                <a @click="showChild(index)" class="qiehxg" ><i v-if="judgeList[index]==1" class="fa fa-caret-right fa-fw"></i><i v-if="judgeList[index]!=1" class="fa fa-caret-down fa-fw"></i>{{myrisk.RiskName}}</a>
                                                            </li>
                                                            <li style="width: 23%;" v-text="myrisk.RiskSiteType"></li>
                                                            <li style="width: 24%;" v-text="countList[index]"></li>
                                                            <ul :class="{tgh:judgeList[index]==1}" v-for="(myriskchild,hindex) in SynByRiskHistoryList" v-if="myrisk.RiskSiteID==myriskchild.ParentID" >
                                                                <li style="width: 53%;">
                                                                    <a class="qiehxg" @click="getHazardInfo(myriskchild,1)"><i class="fa fa-caret-right fa-fw"></i>{{myriskchild.RiskName}}</a>
                                                                </li>
                                                                <li style="width: 23%;" v-text="myriskchild.RiskSiteType"></li>
                                                                <li style="width: 24%;" v-text="myriskchild.NeedSyn"></li>
                                                            </ul>
                                                        </ul>
                                                    </div>
                                                </ul>
                                                <!-- END Filter by Type links -->

                                            </Tab-pane>
                                            <Tab-pane label="已上报风险" key="key2">
                                                <div class="searchCon">
                                                    <i class="hi hi-search"></i>
                                                    <input name="search" value="" placeholder="输入名称" v-model="riskNameBySelect" class="searchWrap" type="text">
                                                </div>
                                                <ul class="nav nav-pills nav-stacked nav-icons media-filter" style="margin-top: 5px;">
                                                    <div id="treetable">
                                                        <ul class="thtou">
                                                            <li style="width: 53%;">名称</li>
                                                            <li style="width: 23%;">类型</li>
                                                            <li style="width: 24%;">更新数量</li>
                                                        </ul>
                                                        <ul :id="'risk'+index" v-for="(myrisk,index) in SynByRiskHistoryList" v-if="myrisk.ParentID=='0'">
                                                            <li style="width: 53%;">

                                                                <a @click="showReportedChild(index)" class="qiehxg" ><i v-if="judgeList[index]==1" class="fa fa-caret-right fa-fw"></i><i v-if="judgeList[index]!=1" class="fa fa-caret-down fa-fw"></i>{{myrisk.RiskName}}</a>
                                                            </li>
                                                            <li style="width: 23%;" v-text="myrisk.RiskSiteType"></li>
                                                            <li style="width: 24%;" v-text="countList[index]"></li>
                                                            <ul :class="{tgh:judgeList[index]==1}" v-for="(myriskchild,hindex) in SynByRiskHistoryList" v-if="myrisk.RiskSiteID==myriskchild.ParentID" >
                                                                <li style="width: 53%;">
                                                                    <a class="qiehxg" @click="getReportedHazardInfo(myriskchild,1)"><i class="fa fa-caret-right fa-fw"></i>{{myriskchild.RiskName}}</a>
                                                                </li>
                                                                <li style="width: 23%;" v-text="myriskchild.RiskSiteType"></li>
                                                                <li style="width: 24%;" v-text="myriskchild.NeedSyn"></li>
                                                            </ul>
                                                        </ul>
                                                    </div>
                                                </ul>
                                            </Tab-pane>
                                        </Tabs>
                                    </i-col>
                                </Row>
                            </template>
                        </div>



                        <!-- END Filter by Type links -->
                    </div>
                </div>
                <!-- END Collapsible Options -->
            </div>
        </div>
        <div class="table-responsive col-sm-8">
            <div class="table-responsive">
                <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                    <label style="font-size: 18px;font-weight: 600">{{RiskName}}
                        <span style="white-space: nowrap" v-if="judgeOneOrAll==1">/{{RiskNameChild}}/包含{{SynByRiskhazardList.length}}条{{harzardTitle}}</span>
                        <span style="white-space: nowrap" v-if="judgeOneOrAll==0">共包含{{SynByRiskhazardList.length}}条{{harzardTitle}}</span>

                    </label>
                    <table id="general-table" class="table table-striped table-bordered table-vcenter"
                           style="margin-top: 30px;">
                        <thead>
                        <tr>
                            <th class="text-center">序号</th>
                            <th class="text-center">风险</th>
                            <th class="text-center">专业类型</th>
                            <th class="text-center">灾害类型</th>
                            <th class="text-center">风险类型人机环管</th>
                            <th class="text-center">风险描述</th>
                            <%--<th class="text-center">操作</th>--%>
                        </tr>
                        </thead>
                        <tbody>
                        <tr v-for="(mySynByRiskhazard,index) in SynByRiskhazardList">
                            <td class="text-center"  v-text="index+1"></td>
                            <td class="text-center" v-text="mySynByRiskhazard.Name"></td>
                            <td class="text-center" v-text="mySynByRiskhazard.MajorType"></td>
                            <td class="text-center" v-text="mySynByRiskhazard.DamageType"></td>
                            <td class="text-center" v-text="mySynByRiskhazard.RiskType"></td>
                            <td v-text="mySynByRiskhazard.HazardDesc"></td>
                            <%--<td class="text-center" style="white-space: nowrap">--%>
                            <%--<a @click="deleteSynByRiskhazard(index)">不上报</a>--%>
                            <%--</td>--%>

                        </tbody>
                    </table>
                    <div class="row">
                        <div class="col-sm-7 col-xs-12 clearfix">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal inmodal" id="modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="height: 100%;!important;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">上报</h4>
                    <small></small>
                </div>
                <div class="modal-body">
                    <p> 确认要上报风险信息吗？</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal"
                            @click="submitSynByRiskhazardList">确认
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal inmodal" id="input_pwd" tabindex="-1" onkeydown="search()" data-backdrop="static" data-keyboard="false" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="height: 100%;overflow-y: auto">
                <div class="modal-header">
                    <%--<button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>--%>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">您需要先输入密码</h4>
                    <small></small>
                </div>
                <div class="modal-body" style="width: 562px">
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">密码:</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskMajorType"></div>--%>
                                <i-input placeholder="请先输入上报密码" autofocus="true" type="password" v-model="INPWD">
                                </i-input>
                            </div>
                        </div>
                    </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" @click="confirmPWD">确认
                    </button>
                    <%--<button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>--%>

                </div>
            </div>
        </div>
    </div>

</div>
<!-- 弹窗 -->
<div id="modal-regular" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <div class="block-title">
                    <h4>添加信息</h4></div>
                <form method="post" class="form-horizontal" onsubmit="return false;">

                    <div class="form-group">

                    </div>
                    <div class="form-group">

                    </div>


                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-effect-ripple btn-primary">提交</button>
                <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
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
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/bootstrap-switch.min.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>

<script>
    function search() {
        if (event.keyCode == 13) {
            vueApp.confirmPWD();
        }
    }

</script>
<script>
    /**
     * Created by Administrator on 2018/1/11
     */
    var projectName = '<%=request.getContextPath() %>';
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            SynByRiskHistoryList: [],
            qiehxg:'qiehxg',
            judgeList:[],
            SynByRiskhazardList:[],
            judgeHide:-1,
            RiskName:"",
            RiskNameChild:"",
            riskNameBySelect:"",
            countList:[],
            judgeOneOrAll:-1,
            showMajorRisk:false,
            passwordLC:'',
            INPWD:'',
            harzardTitle:'待上报风险',
        },
        created: function () {
            var _self = this;
            //_self.getPWD();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            getPWD:function(){
                var _self= this;
                //url:发送请求地址。
                //data:待发送 Key/value 参数。
                //callback:发送成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.post(projectName+"/Syn/getPWD",{},function(data){
                    _self.passwordLC=data;
                    if(data!=""){
                        _self.loading=true;
                        $("#input_pwd").modal("show");
                    }else{
                        _self.loading=false;
                        _self.getWaittingForSynByRiskHistory("0");
                    }
                });
            },
            confirmPWD:function(){
                var _self=this;
                if(_self.passwordLC==_self.INPWD){
                    _self.loading=false;
                    _self.getWaittingForSynByRiskHistory("0");
                    $("#input_pwd").modal("hide");
                }else{
                    _self.showToast("warning","你输入的密码有误");
                    _self.loading=true;
                }
            },
            //上报风险
            submitSynByRiskhazardList:function(){
                var _self=this;
                if(_self.SynByRiskhazardList.length==0){
                    _self.showToast("warning","上报信息不能为空");
                    return;
                }
                layer.load();
                $.ajax({
                    url:projectName+"/Syn/SynRiskData", //发送请求的地址。
                    type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data:JSON.stringify(_self.SynByRiskhazardList),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType:"json",//预期服务器返回的数据类型。
                    contentType:"application/json",
                    async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data){
                        //请求成功后的回调函数
                        if(data){
                            _self.showToast("success","上报成功");
                            _self.SynByRiskhazardList=[];
                            //显示重大风险
                            if(_self.showMajorRisk){
                                _self.getWaittingForSynByRiskHistory("1");
                            }else{
                                _self.getWaittingForSynByRiskHistory("0");
                            }
                        }else{
                            _self.showToast("error","上报失败")

                        }
                        layer.closeAll('loading');
                    },
                    error:function(XMLHttpRequest, textStatus, errorThrown){
                        _self.showToast("error","上报失败");
                        layer.closeAll('loading');
                    }

                });
            },
            //不上报，
            deleteSynByRiskhazard:function(index){
                var _self=this;
                _self.SynByRiskhazardList.splice(index,1);


            },
            //得到二级风险下的危险源信息
            getHazardInfo:function(risk,index){
                var _self=this;
                _self.judgeOneOrAll=index;
                _self.RiskNameChild=risk.RiskName;
                _self.SynByRiskhazardList=[];
                $.ajax({
                    url:projectName+"/Syn/getHazardInfoBySelectRisk", //发送请求的地址。
                    type:"post", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data:{"riskFullNumber":risk.FullNumber},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType:"json",//预期服务器返回的数据类型。
                    async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data){
                        //请求成功后的回调函数
                        _self.SynByRiskhazardList=data;
                    },
                });
            },
            //得到二级风险下的已上报危险源信息
            getReportedHazardInfo:function(risk,index){
                var _self=this;
                _self.judgeOneOrAll=index;
                _self.RiskNameChild=risk.RiskName;
                _self.SynByRiskhazardList=[];
                $.ajax({
                    url:projectName+"/Syn/getReportedHazardInfo", //发送请求的地址。
                    type:"post", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data:{"riskFullNumber":risk.FullNumber},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType:"json",//预期服务器返回的数据类型。
                    async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data){
                        //请求成功后的回调函数

                        _self.SynByRiskhazardList=data;
                    },
                });
            },
            //获取待上传风险清单信息
            getWaittingForSynByRiskHistory: function (showMajor) {
                var _self = this;
                layer.load();
                //url:发送请求地址。
                //data:待发送 Key/value 参数。
                //callback:发送成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.post(projectName + "/Syn/getWaittingForSynByRiskHistory",{showMajor:showMajor}, function (data) {
                    _self.SynByRiskHistoryList = data;
                    for(var i=0;i<_self.SynByRiskHistoryList.length;i++){
                        if(_self.SynByRiskHistoryList[i].ParentID=="0"){
                            _self.judgeList.splice(i,0,1);
                            _self.countList.splice(i,0,0);
                            var count = 0;
                            for(var j=0;j<_self.SynByRiskHistoryList.length;j++) {
                                if (_self.SynByRiskHistoryList[i].RiskSiteID == _self.SynByRiskHistoryList[j].ParentID) {
                                    count++;
                                    _self.countList.splice(i,0,count);
                                }
                            }

                        }else{
                            _self.judgeList.splice(i,0,0);
                            _self.countList.splice(i,0,0);
                        }

                    }
                    layer.closeAll('loading');
                });

            },
            showReportedChild:function(index){
                var _self = this;
                _self.SynByRiskhazardList=[];
                _self.RiskName=_self.SynByRiskHistoryList[index].RiskName;
                _self.RiskNameChild="";
                if(_self.judgeHide!=-1&&_self.judgeHide!=index){
                    _self.judgeList.splice(_self.judgeHide,1,1);
                }
                if(_self.judgeList[index]==1){
                    _self.judgeList.splice(index,1,2);
                }else{
                    _self.judgeList.splice(index,1,1);

                }
                _self.judgeHide=index;
                _self.getReportedHazardInfo(_self.SynByRiskHistoryList[index],0);
            },
            showChild: function (index) {
                var _self = this;
                _self.SynByRiskhazardList=[];
                _self.RiskName=_self.SynByRiskHistoryList[index].RiskName;
                _self.RiskNameChild="";
                if(_self.judgeHide!=-1&&_self.judgeHide!=index){
                    _self.judgeList.splice(_self.judgeHide,1,1);
                }
                if(_self.judgeList[index]==1){
                    _self.judgeList.splice(index,1,2);
                }else{
                    _self.judgeList.splice(index,1,1);

                }

                _self.judgeHide=index;
                _self.getHazardInfo(_self.SynByRiskHistoryList[index],0);
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
            // 切换tab页
            ontabs:function(name) {
                this.tabs = name;
                if( name == '0'){
                    this.harzardTitle = "待上报风险";
                    $('#toReport').removeAttr("disabled");
                }else if(name == '1'){
                    this.harzardTitle ="已上报风险";
                    $("#toReport").attr("disabled","disabled");
                }
                this.SynByRiskhazardList = [];
                this.SynByRiskHistoryList=[];
                this.getWaittingForSynByRiskHistory("0");
            },
        },
        watch:{
            "riskNameBySelect":{
                handler:function(val,oldVal){
                    var _self=this;
                    _self.judgeOneOrAll=-1;
                    _self.RiskName="";
                    _self.RiskNameChild="";
                    _self.SynByRiskhazardList=[];
                    _self.judgeList.splice(_self.judgeHide,1,1);
                    for(var i=0;i<_self.SynByRiskHistoryList.length;i++){
                        if(_self.SynByRiskHistoryList[i].ParentID=="0"){
                            if(val==""){
                                $("#risk"+i).show();

                            }
                            if(_self.SynByRiskHistoryList[i].RiskName.indexOf(val)!=-1){

                                $("#risk"+i).show()
                            }else{
                                $("#risk"+i).hide()
                            }
                        }

                    }

                },
                deep:true
            },
            showMajorRisk:function () {
                var _self=this;
                //console.log(_self.showMajorRisk);
                if(_self.showMajorRisk){
                    _self.getWaittingForSynByRiskHistory("1");
                }else{
                    _self.getWaittingForSynByRiskHistory("0");
                }
            },

        },
        computed: {
        }
    })


</script>
<script>
    $(function () {
        CompTree.init();
    });
</script>
<script>
    $(function () {
        UiTables.init();

    });
</script>
<script>
    $(document).ready(function () {
        $("#treetable .qiehxg").click(function () {

            var b = $(this).parent().siblings("ul").css("display");
            $(this).parent().siblings("ul").toggle(300);

            if (b == 'none'||b == undefined) {
                $(this).siblings("i").addClass("fa fa-caret-down").removeClass("a fa-caret-right");
            } else {
                $(this).siblings("i").addClass("a fa-caret-right").removeClass("a fa-caret-down");
            }
            //
        });
    });
</script>
</body>

</html>