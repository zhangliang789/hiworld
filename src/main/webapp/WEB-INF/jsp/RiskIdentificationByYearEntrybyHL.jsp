<%@ page import="sun.rmi.server.InactiveGroupException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
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
    <title>黄陵二矿年度辨识维护页面</title>
    <meta name="description"
          content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
    <meta name="author" content="pixelcave">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- Icons -->
    <!-- The following icons can be replaced with your own, they are used by desktop and mobile browsers -->
    <link rel="shortcut icon" href="../../img/favicon.png">
    <link rel="apple-touch-icon" href="../../img/icon57.png" sizes="57x57">
    <link rel="apple-touch-icon" href="../../img/icon72.png" sizes="72x72">
    <link rel="apple-touch-icon" href="../../img/icon76.png" sizes="76x76">
    <link rel="apple-touch-icon" href="../../img/icon114.png" sizes="114x114">
    <link rel="apple-touch-icon" href="../../img/icon120.png" sizes="120x120">
    <link rel="apple-touch-icon" href="../../img/icon144.png" sizes="144x144">
    <link rel="apple-touch-icon" href="../../img/icon152.png" sizes="152x152">
    <link rel="apple-touch-icon" href="../../img/icon180.png" sizes="180x180">
    <!-- END Icons -->
    <!-- Stylesheets -->
    <!-- Bootstrap is included in its original form, unaltered -->
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <!-- Related styles of various icon packs and plugins -->
    <link rel="stylesheet" href="../../css/plugins.css">
    <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
    <link rel="stylesheet" href="../../css/main.css">
    <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->
    <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
    <link rel="stylesheet" href="../../css/themes.css">
    <!-- END Stylesheets -->
    <!-- Modernizr (browser feature detection library) -->
    <link rel="stylesheet" href="../../css/layui.css"/>
    <script src="../../js/vendor/modernizr-3.3.1.min.js"></script>
    <link href="../../css/bootstrap-treeview.css" rel="stylesheet">
    <link href="../../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../iview/iview.css">
    <style>.bjc {
        font-weight: 100;
    }

    .control-label {
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
        width:98%;
        margin-right: 5px;
    }

    .col-sm-hh3 {
        float: left;
        width: 95%;
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


    /*.table-striped > tbody > tr:nth-of-type(1) {*/
    /*background-color: #f9f9f9 !important;*/
    /*font-weight: bold;*/
    /*}*/

    /*.table-striped > tbody > tr:nth-of-type(2) {*/
    /*background-color: #f8f8f9 !important;*/
    /*font-weight: bold;*/
    /*}*/

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
    .xiugai{
        color:#5ccdde;
    }
    .shanchu{
        color:#5ccdde;
    }

    .searchCon {
        width: 240px;
        height:40px;
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
    .modal-footer{
        background-color: #fff;
    }
    .input-group-addon, .input-group-btn {
        width: 1% !important;
        white-space: nowrap;
        vertical-align: middle;
    }
    td textarea {

        background-color: transparent;
        /* scrollbar-arrow-color:yellow;
         scrollbar-base-color:lightsalmon;
         overflow: hidden;*/
        height: auto;
        resize: none;
        border: 0;
        width: 100%;
    }

    .dib {
        background-color: #f1f1f1;
        padding: 5px 15px;
        font-size: 16px;
        line-height: 37px;
    }
    .searchCon .searchWrap {
        width: 100%;
        height: 25px;
        border-radius: 15px;
        font-size: 12px;
        font-family: "Microsoft Yahei";
        padding-left: 33px;
        padding-right: 26px;
        box-sizing: border-box;
        border: none;
        background-color: rgb(241, 243, 247);
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
    .fa-caret-right {
        transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        -moz-transform: rotate(45deg);
        -webkit-transform: rotate(45deg);
        -o-transform: rotate(45deg);
    }


    /*.btys{ display: inline-block; padding: 8px 20px; background-color: #ff0000; vertical-align: sub; }*/</style>
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
                    <h1  style="float: left;">黄陵二矿年度辨识维护页面</h1>
                    <div class="form-group"  style="float: right; position: relative;right:18px">
                        <button type="submit" class="btn btn-effect-ripple btn-primary" id="addyear"
                                @click="bymyear">保存
                        </button>
                        <button type="submit" class="btn btn-effect-ripple btn-primary" id="updateyear"
                                @click="updateFile">保存
                        </button>
                        <div hidden>
                            <button type="submit" class="btn btn-effect-ripple btn-primary" id="addquery" @click="addquery">重置</button>
                            <button type="submit" class="btn btn-effect-ripple btn-primary" id="updatequery" @click="updatequery">重置</button>
                        </div>
                        <%--<button type="submit" class="btn btn-effect-ripple btn-primary" >导出</button>--%>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->

    <div class="block full" style="padding: 0;">
        <div class="table-responsive">
            <div class="table-responsive" style="border-bottom: 2px solid rgb(225, 225, 225);">
                <div id="exampl" class="dataTables_wrapper form-inline no-footer">
                    <div class="row" style="background-color: #fff; padding: 0;">
                        <div class="col-sm-12">
                            <div id="" class="">
                                <form method="post" class="form-inline" onsubmit="return false;">
                                    <div class="form-group">
                                        <label class="">会议信息</label>
                                        <div class="form-control" style="border: 0;"></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-12" style="margin: 10px 0px;padding: 0;">
                            <div id="" class="">
                                <form method="post" class="form-horizontal" onsubmit="return false;">
                                    <div class="col-sm-hh" id="myearadd" hidden>
                                        <label class="control-label bjc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年份</label>
                                        <div class="col-sm-hh1">
                                            <input type="text" id="myear" name="example-input-small"
                                                   class="form-control input-sm datepicker" readonly="readonly"
                                                   placeholder=""></div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                    </div>
                                    <div class="col-sm-hh" id="myearupdate" hidden>
                                        <label class="control-label bjc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年份</label>
                                        <div class="col-sm-hh1">
                                            <input type="text" id="myearup" name="example-input-small"
                                                   class="form-control input-sm " readonly="readonly"
                                                   placeholder=""></div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                    </div>

                                    <div class="col-sm-hh">
                                        <label class="control-label bjc">会议时间</label>
                                        <div class="col-sm-hh1">
                                            <input type="text" id="time" name="example-input-small"
                                                   class="form-control input-sm datepicker1" readonly="readonly"
                                                   placeholder=""></div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                    </div>
                                    <div class="col-sm-hh">
                                        <label class="control-label bjc">会议地点</label>
                                        <div class="col-sm-hh1">
                                            <input type="text" id="place" name="example-input-small"
                                                   class="form-control input-sm" placeholder=""></div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                    </div>
                                    <div class="col-sm-hh">
                                        <label class="control-label bjc">主持人</label>
                                        <div class="col-sm-hh1">
                                            <input type="text" id="compere" name="example-input-small"
                                                   class="form-control input-sm" placeholder=""></div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                    </div>
                                    <div class="col-sm-hh">
                                        <label class="control-label bjc">记录人</label>
                                        <div class="col-sm-hh1">
                                            <input type="text" id="recorder" name="example-input-small"
                                                   class="form-control input-sm" placeholder=""></div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                    </div>
                                </form>
                            </div>
                        </div>
                        <%--<div class="col-sm-12" style="margin: 10px 0px;padding: 0;">--%>
                            <%--<div id=" " class="">--%>
                                <%--<form method="post" class="form-horizontal" onsubmit="return false;">--%>
                                    <%--<div class="col-sm-hh2">--%>
                                        <%--<label class="control-label bjc">辨识结论</label>--%>
                                        <%--<div class="col-sm-hh3">--%>
                                            <%--<textarea style="width: 100%;" id="content"--%>
                                                      <%--name="example-textarea-input" rows="7" class="form-control"--%>
                                                      <%--placeholder=""></textarea>--%>
                                        <%--</div>--%>
                                        <%--<span style="color: red;position: absolute;top:55px;right:22px;font-size: 16px">*</span>--%>

                                    <%--</div>--%>
                                <%--</form>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <div class="col-sm-12" style="margin: 10px 0px;padding: 0;">
                            <div class="">
                                <form method="post" class="form-horizontal" id="meetringAttachmentidds"
                                      onsubmit="return false;">
                                    <div class="col-sm-hh2">
                                        <label class="control-label bjc">参会人员</label>
                                        <div class="col-sm-hh3">
                                            <div class="input-group" style="width: 100%;">
                                                <input style="width: 100%" type="text" id="participant"
                                                       name="example-input2-group2" class="form-control" placeholder="">
                                                <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>



                        <div class="col-sm-12" style="margin: 10px 0px;padding: 0;">
                            <form class="form-group" id="meetringAttachmentidd" method="post">
                                <label >年度辨识报告</label>
                                <div style="position: relative;display:inline-block;margin-left: 15px">
                                    <div style="display:inline-block;    width: 200px;">
                                        <input type="file" name="file" id="AttachmentUUID" class="" @change="niandufujian">
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
        </div>

    </div>



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


    <%--<div id="modal-add" class="modal" tabindex="-1" role="dialog" aria-hidden="true">--%>
        <%--<div class="modal-dialog">--%>
            <%--<div class="modal-content" style="min-height:100%;">--%>
                <%--<div class="modal-body">--%>
                    <%--<div class="block-title">--%>
                        <%--<h4>选择风险点</h4></div>--%>
                    <%--<div class="col-sm-12" style="text-align: right;padding:0">--%>
                        <%--<div class="searchCon"><i class="hi hi-search"></i><input name="search" v-model="checkIDs" id="keywords"--%>
                                                                                  <%--placeholder="输入风险点名称 回车查询"--%>
                                                                                  <%--class="searchWrap"--%>
                                                                                  <%--type="text"></div>--%>
                    <%--</div>--%>
                    <%--<table id="gener" class="table table-striped table-bordered table-vcenter table-hover">--%>
                        <%--<thead>--%>
                        <%--<tr>--%>
                            <%--<th class="text-center" style="width: 10%">序号</th>--%>
                            <%--<th class="text-center" style="width: 20%">{{'Name'|titleFilter('风险点')}}</th>--%>
                            <%--<th class="text-center" style="width: 20%">{{'riskLevel'|titleFilter('风险等级')}}</th>--%>
                            <%--<th class="text-center" style="width: 20%">{{'riskFrequency'|titleFilter('管控频次')}}</th>--%>
                            <%--<th class="text-center" style="width: 20%">{{'managerUnitName'|titleFilter('责任部门')}}</th>--%>
                            <%--<th class="text-center" style="width: 10%">操作</th>--%>

                        <%--</tr>--%>
                        <%--</thead>--%>
                        <%--<tbody id="myid" v-for="(rcm,index) in detailedList">--%>
                        <%--<tr :id="rcm.riskSiteID">--%>
                            <%--<th class="text-center" v-text="index+1">1</th>--%>
                            <%--<td v-text="rcm.name"></td>--%>
                            <%--<td v-text="rcm.riskLevel"></td>--%>
                            <%--<td v-text="rcm.riskFrequency"></td>--%>
                            <%--<td v-text="rcm.managerUnitName"></td>--%>
                            <%--<td class="text-center"><a class="btn btn-effect-ripple btn-primary"--%>
                                                       <%--@click="checkRisksite(rcm)">添加</a></td>--%>
                        <%--</tr>--%>
                        <%--</tbody>--%>
                    <%--</table>--%>

                    <%--<div class="modal-footer">没找到？请去<-风险辨识界面->添加风险点--%>
                        <%--<button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal" >关闭</button>--%>
                    <%--</div>--%>

                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>








</div>

<script src="../../js/vendor/jquery-2.2.4.min.js"></script>
<script src="../../js/vendor/bootstrap.min.js"></script>
<script src="../../js/bootstrap-treeview.js"></script>
<script src="../../js/treeview-demo.min.js"></script>
<script src="../../js/plugins.js"></script>
<script src="../../js/app.js"></script>
<script src="../../js/pages/uiTables.js"></script>
<script src="../../js/pages/compTree.js"></script>
<script src="../../js/vue.js"></script>
<script src="../../js/plugins/layer/layer.min.js"></script>
<script src="../../js/plugins/toastr/toastr.min.js"></script>
<script src="../../js/plugins/laydate/laydate.js"></script>
<script src="../../js/bootstrap-paginator.min.js"></script>
<script src="../../js/resource.js"></script>

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
        if($("#myear").val()==""||$("#myear").val()==null||$("#time").val()==""||$("#time").val()==null) {
            $("#myear").val(year)
            $("#time").val(month + "-" + date+" "+hour+":"+minute)
        }
    });

</script>

<script type="text/javascript">
    var projectName = '<%=request.getContextPath() %>';
    var attrArray = null;

    /**
     * Created by Administrator on 2017/9/15
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            pagesize: 10,
            nowpage: 1,
            attachment: "",
            updateid: "",
            riskSite: "",
            items:"",
            detailedList: null,
            byyearList:null,
            checkedone: false,//全选按钮控制器
            //  checkIDs:new Array(),
            riskSitelst:new Array(),
            //  riskSiteArray:new Array(),
            riskSiteArray:"",
            newgRiskidentificationbyyear:"",
            riskyear:new Array(),
            checkrcm:false,
            number:0,
            risksitess:"",
            filePath:"",
            fileName:"",
            checkIDs:"",
            saveData:new Array(),
            showUpdate:"",
            updatefileName:"",
            updateuuid:"",

        },
        created: function () {
            var _self = this;
            _self.showyear();
            // _self.byyearid();
            _self.getNewRiskSite();
            _self.getNewRiskSitelist();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {

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
                            '<td class="text-center" rowspan="4">风险分析</td>' +
                            '<td class="text-center" rowspan="2">风险值(D)</td>' +
                            '<td class="text-center" rowspan="2">风险等级</td>' +
                            '<td class="text-center" rowspan="2">管控部门</td>' +
                            '<td class="text-center" rowspan="2">责任单位</td>' +
                            '<td class="text-center" rowspan="2">状态</td>' +
                            '<td class="text-center" rowspan="2" style="width: 50px"></td>' +
                            '</thead>';

                        for (var i = 0; i < risk.mhazards.length; i++) {
                            var riskHazard = risk.mhazards[i];
                            var tid = "hazrd_" + riskHazard.hazardID;
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
                                '<td>' + lec + '</td>'+
                                '<td >' + riskHazard.driskValue + '</td>' +
                                '<td>' + riskHazard.riskLevel + '</td>' +
                                '<td>' + riskHazard.manageUnit + '</td>' +
                                '<td>' + riskHazard.accountabilityUnit + '</td>' +
                                '<td>' + status + '</td>' +
                                '<td>' + '' + '</td>' +
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




            //选择风险点事件
            watchInfo:function(){
                var _self=this
                if(_self.detailedList==null){
                    _self.getpageCountrisk();
                }else{
                    _self.showRiskInfo();
                }
            },
            showRiskInfo: function () {
                var _self = this;
                var count = 0;
                var keywords = $("#keywords").val();
                if (keywords == "" || keywords == null) {
                    vueApp.hideorshows();
                } else {//keywords=='1' 进行模糊查询
                    if (count == 0) {
                        for (var i = 0; i < vueApp.detailedList.length; i++) {
                            if (vueApp.detailedList[i].name.indexOf(keywords) != -1) {
                                $("#" + vueApp.detailedList[i].riskSiteID + "").show()
                                vueApp.saveData.push(vueApp.detailedList[i]);
                                for (var j = 0; j < vueApp.riskSitelst.length; j++) {
                                    if (vueApp.riskSitelst[j].riskSiteID == vueApp.detailedList[i].riskSiteID) {
                                        $("#" + vueApp.detailedList[i].riskSiteID + "").hide()
                                    }
                                }
                                count = 2;
                            } else {
                                $("#" + vueApp.detailedList[i].riskSiteID + "").hide()

                            }
                        }
                        if (count != 2) {
                            vueApp.showToast("warning", "没有找到你要找的风险点");
                            return;
                        }
                    }
                }

            },
            hideorshow:function(){
                var _self=this;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskByYearControl/risksiteByname",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskSite),
                    async:"false",
                    success: function (data) {
                        console.log(data);
                        _self.detailedList = data;
                        layer.closeAll('loading');

                        if(_self.detailedList.length!=0&&_self.detailedList.length!=""){
                            for(var i=0;i<_self.detailedList.length; i++){
                                $("#" + _self.detailedList[i].riskSiteID + "").show()
                            }
                            for (var i = 0; i < _self.detailedList.length; i++) {
                                for (var j = 0; j < _self.riskSitelst.length; j++) {
                                    if (_self.riskSitelst[j].riskSiteID == _self.detailedList[i].riskSiteID) {
                                        $("#" + _self.detailedList[i].riskSiteID + "").hide()
                                    }
                                }
                            }
                        }
                    }
                });


            },

            hideorshows:function(){
                var _self=this;
                if(_self.detailedList.length!=0&&_self.detailedList.length!=""){
                    for(var i=0;i<_self.detailedList.length; i++){
                        $("#" + _self.detailedList[i].riskSiteID + "").show()
                    }
                    for (var i = 0; i < _self.detailedList.length; i++) {
                        for (var j = 0; j < _self.riskSitelst.length; j++) {
                            if (_self.riskSitelst[j].riskSiteID == _self.detailedList[i].riskSiteID) {
                                $("#" + _self.detailedList[i].riskSiteID + "").hide()
                            }
                        }
                    }
                }
            },


            //弹出框中风险点的多选事件
            checkRisksite: function (riskSite) {
                var _self = this;
                console.log(riskSite)
                _self.riskSiteArray = riskSite;
                //  _self.riskSiteArray = riskSite.riskSiteID;
                _self.riskSitelst.push(_self.riskSiteArray);
                if(_self.checkIDs==null||_self.checkIDs==""){
                    _self.hideorshows();
                }
                for (var i = 0; i < _self.saveData.length; i++) {
                    for (var j = 0; j < _self.riskSitelst.length; j++) {
                        if (_self.riskSitelst[j].riskSiteID == _self.saveData[i].riskSiteID) {
                            $("#" + _self.saveData[i].riskSiteID + "").hide()
                        }
                    }
                }
                _self.riskSiteArray = "";
                _self.number =_self.number + 1;
            },

            //删除showRiskInfo数组中元素
            deleperson: function (index) {
                var _self = this;

                //按照删除的危险源ID进行移除危险源的展示
                //   _self.riskSitelst[index].showChild = false;
//                if(_self.riskSitelst[index].mchildRiskSite.length >0){
//                    for(var i=0;i< _self.riskSitelst[index].mchildRiskSite.length;i++){
//                        var risksiteid = _self.riskSitelst[index].mchildRiskSite[i].riskSiteID;
//                        $("#riskHazard" + risksiteid).hide();
//                    }
//
//                }

                //根据对象只要执行删除方法，就全部移除对象中危险源的展示（避免危险源信息展示错误）
                for(var s= 0;s< _self.riskSitelst.length;s++){
                    if(_self.riskSitelst[s].mchildRiskSite.length >0){

                        for(var j=0;j< _self.riskSitelst[s].mchildRiskSite.length;j++){

                            var risksitesid = _self.riskSitelst[s].mchildRiskSite[j].riskSiteID;
                            $("#riskHazard" + risksitesid).remove();
                        }
                    }
                }

                _self.riskSitelst.splice(index, 1);
            },


            //提示框分页建立空对象
            getNewRiskSite: function () {
                var _self = this;
                $.get(projectName + "/RiskDetailedList/newRiskSite", function (data) {
                    _self.riskSite = data;
                    _self.risksitess = data;
                    _self.byyearid();

                });
            },
            //年度辨识byyear的空对象
            getNewRiskSitelist: function () {
                var _self = this;
                //加载层
                // layer.load();
                $.get(projectName + "/RiskByYearControl/newRickbyyear", function (data) {
                    _self.byyearList = data;
                    _self.newgRiskidentificationbyyear = data;
                });
            },

            //判读年份是否重复录入
            bymyear:function(){
                var _self = this;
                var myear =$("#myear").val();
                $.ajax({
                    type:"GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    url:projectName+"/RiskByYearControl/bymyear/"+myear, //发送请求的地址。
                    data:{},
                    dataType:"json",
                    contentType: "application/json",
                    success: function(data){
                        if(data==0){
                            _self.uploadFile();
                        }else{
                            _self.showToast("error", "该年度信息已录入！");
                        }
                    },
                    error: function(XMLHttpRequest, textStatus, errorThrown) {
                        console.log(XMLHttpRequest.status);
                        console.log(XMLHttpRequest.readyState);
                        console.log(textStatus);
                    }
                });

            },

            //添加事件
            addtaks: function (data) {
                var _self = this;
                var sumNewItem=_self.riskSitelst.length;
                //  var sumNewItem=_self.number;
                var FileName = _self.fileName;
                $.ajax({
                    url:projectName + "/RiskByYearControl/newRiskidentificationbyyearentry/"+sumNewItem, //发送请求的地址。
                    type:"GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data:{},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType:"json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data1){
                        _self.items = data1;
                        for(var i=0;i< _self.riskSitelst.length;i++){
                            _self.items[i].riskSiteID = _self.riskSitelst[i].riskSiteID;
                            _self.items[i].mriskSite = _self.riskSitelst[i];
                            _self.items[i].riskidentificationYearID = 0;
                            _self.items[i].riskidentificationYearEntryID = 0
                        }
                        _self.newgRiskidentificationbyyear.myear =$("#myear").val();
                        _self.newgRiskidentificationbyyear.meetingTime = $("#time").val();
                        _self.newgRiskidentificationbyyear.meetingPlace = $("#place").val();
                        _self.newgRiskidentificationbyyear.meetingCompere =  $("#compere").val();
                        _self.newgRiskidentificationbyyear.meetingRecorder = $("#recorder").val();
                        _self.newgRiskidentificationbyyear.meetingContent = $("#content").val();
                        _self.newgRiskidentificationbyyear.meetingParticipant =  $("#participant").val();
                        _self.newgRiskidentificationbyyear.riskidentificationYearID = 0;
                        _self.newgRiskidentificationbyyear.meetringAttachmentUUID = data;
                        _self.newgRiskidentificationbyyear.meetringAttachmentFileName = _self.fileName;
                        _self.newgRiskidentificationbyyear.myearEntry =_self.items;
                        if( $("#myear").val()==''){
                            _self.showToast("warning", "请选择年份！");
                            return;
                        }
                        if($("#time").val() ==''){
                            _self.showToast("warning","请选择会议时间");
                            return;
                        }
                        if($("#place").val() ==''){
                            _self.showToast("warning","请添加会议地点");
                            return;
                        }
                        if($("#compere").val()==''){
                            _self.showToast("warning","请添加主持人");
                            return;
                        }
                        if($("#recorder").val()==''){
                            _self.showToast("warning","请添加记录人");
                            return;
                        }
                        if($("#content").val()==''){
                            _self.showToast("warning","请添加会议内容");
                            return;
                        }
                        if($("#participant").val()==''){
                            _self.showToast("warning","请添加参会人员");
                            return;
                        }
                        $.ajax({
                            type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            url:projectName+"/RiskByYearControl/add", //发送请求的地址。
                            data:JSON.stringify(_self.newgRiskidentificationbyyear),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            contentType: "application/json",
                            success: function(data){
                                if(data){
                                    _self.showToast("success","添加成功！");
                                    var tadate =new Date();
                                    $("#myear").val(tadate.getFullYear());
                                    $("#time").val("");
                                    $("#place").val("");
                                    $("#compere").val("");
                                    $("#recorder").val("");
                                    $("#content").val("");
                                    $("#participant").val("");
                                    $("AttachmentUUID").val("");
                                    _self.riskSitelst =[];
                                    window.location.href="<%=request.getContextPath()%>/menu/RiskIdentificationByYearByHL.do"
                                } else {
                                    _self.showToast("error", "添加失败！");
                                }
                            },
                            error: function(XMLHttpRequest, textStatus, errorThrown) {
                                console.log(XMLHttpRequest.status);
                                console.log(XMLHttpRequest.readyState);
                                console.log(textStatus);
                            }
                        });

                    },
                });

            },

            //风险点查询方法
            getPageCount: function () {
                var _self = this;
                //加载层
                layer.load();
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskControlPlaneByMonthControl/RiskSiteBySearch",
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

            //风险点模糊查询方法
            getpageCountrisk:function(){
                var _self = this;
                layer.load();
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskByYearControl/risksiteByname",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskSite),
                    success: function (data) {
                        console.log(data);
                        _self.detailedList = data;
                        _self.hideorshows();
//                        if(_self.detailedList.length!=0&&_self.detailedList.length!=""){
//                            for(var i=0;i<_self.detailedList.length; i++){
//                                $("#" + _self.detailedList[i].name + "").show()
//                            }
//                            for (var i = 0; i < _self.detailedList.length; i++) {
//                                for (var j = 0; j < _self.riskSitelst.length; j++) {
//                                    if (_self.riskSitelst[j].riskSiteID == _self.detailedList[i].riskSiteID) {
//                                        $("#" + _self.detailedList[i].name + "").hide()
//                                    }
//                                }
//                            }
//                        }

                        layer.closeAll('loading');
                    }
                });
            },

            //附件上传（添加方法）
            uploadFile: function () {
                var _self = this;
                var formData = new FormData($("#meetringAttachmentidd")[0]);
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
                            //  _self.showToast("warning", "请上传附件！");
                            _self.addtaks(data);

                        } else {
                            _self.attachment = data;

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

            //选择附件的change事件
            niandufujian:function(){
                var _self = this;

                $("#showUpdate").hide();
                if( $("#AttachmentUUID").val()!="" &&  $("#AttachmentUUID").val()!=null ){
                    $("#delfile").show();
                }else{
                    $("#delfile").hide();
                }
                if(_self.updateuuid!="" && _self.updateuuid!=0){
                    $("#delfile").show();
                }
            },

            //根据ID查询数据回填
            byyearid: function () {
                var _self = this;
                var idd = "${id}";
                _self.updateid = "${id}";
                $.ajax({
                    type: "GET",
                    url: projectName + "/RiskByYearControl/" + idd,
                    dataType: "json",

                    success: function (data) {
                        if (data) {
                            _self.byyearList = data;

//                            for(var i=0;i<_self.byyearList.myearEntry.length;i++){
//                                _self.riskSitelst.push(_self.byyearList.myearEntry[i].mriskSite);
//                            }
                            for(var i=0;i<_self.byyearList.myearEntry.length;i++){

                                if(_self.byyearList.myearEntry[0].mriskSite==null){

                                    _self.riskSitelst = _self.risksitess;
                                }else{
                                    _self.riskSitelst.push(_self.byyearList.myearEntry[i].mriskSite);

                                }
                            }

                            $("#myearup").val(data.myear);
                            $("#time").val(data.meetingTime);
                            $("#place").val(data.meetingPlace);
                            $("#compere").val(data.meetingCompere);
                            $("#recorder").val(data.meetingRecorder);
                            $("#content").val(data.meetingContent);
                            $("#participant").val(data.meetingParticipant);
//                            $("#AttachmentUUID").val(data.meetringAttachmentFileName);
                            $("#meetringAttachmentidd").val(data.meetringAttachmentUUID);
                            _self.updatefileName = data.meetringAttachmentFileName;
                            _self.updateuuid =data.meetringAttachmentUUID;
                            if(_self.updateuuid!="" && _self.updateuuid!=0){
                                $("#showUpdate").show();
                                $("#delfile").show();
                            }else{
                                $("#showUpdate").hide();
                                $("#delfile").hide();
                            }

                        }
                    }
                });
            },

            //附件上传（修改功能）
            updateFile: function () {
                var _self = this;
                var formData = new FormData($("#meetringAttachmentidd")[0]);
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
                            _self.updatebyyear();//没有修改附件执行的修改方法
                        } else {
                            _self.attachment = data;
                            _self.updatebyyears(_self.attachment);//附件修改后执行的修改方法
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

            //附件未修改上传（修改方法）
            updatebyyea1: function () {
                var _self = this;
                var mYear = $("#myearup").val();
                var time = $("#time").val();
                var place = $("#place").val();
                var compere = $("#compere").val();
                var recorder = $("#recorder").val();
                var content = $("#content").val();
                var participant = $("#participant").val();
                var riskIdentificationYearID = _self.updateid;

                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskByYearControl/update",
                    dataType: "json",
                    data: {
                        "mYear": mYear,
                        "meetingTime": time,
                        "meetingPlace": place,
                        "meetingCompere": compere,
                        "meetingRecorder": recorder,
                        "meetingContent": content,
                        "meetingParticipant": participant,
                        "riskIdentificationYearID": riskIdentificationYearID
                    },
                    success: function (data) {
                        if (data) {
                            _self.showToast("warning", "附件已修改，上传成功！");
                        }
                    }
                });
            },
            //附件未修改
            updatebyyear: function () {
                var _self = this;
                var sumNewItem=_self.riskSitelst.length;
                $.ajax({
                    url:projectName + "/RiskByYearControl/newRiskidentificationbyyearentry/"+sumNewItem, //发送请求的地址。
                    type:"GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data:{},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType:"json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data1){
                        _self.items = data1;
                        for(var i=0;i< _self.riskSitelst.length;i++){
                            _self.items[i].riskSiteID = _self.riskSitelst[i].riskSiteID;
                            _self.items[i].mriskSite = _self.riskSitelst[i];
                            _self.items[i].riskidentificationYearID = _self.updateid;
                            _self.items[i].riskidentificationYearEntryID = 0
                        }
                        _self.newgRiskidentificationbyyear.myear =$("#myearup").val();
                        _self.newgRiskidentificationbyyear.meetingTime = $("#time").val();
                        _self.newgRiskidentificationbyyear.meetingPlace = $("#place").val();
                        _self.newgRiskidentificationbyyear.meetingCompere =  $("#compere").val();
                        _self.newgRiskidentificationbyyear.meetingRecorder = $("#recorder").val();
                        _self.newgRiskidentificationbyyear.meetingContent = $("#content").val();
                        _self.newgRiskidentificationbyyear.meetingParticipant =  $("#participant").val();
                        _self.newgRiskidentificationbyyear.riskidentificationYearID = _self.updateid;
                        _self.newgRiskidentificationbyyear.meetringAttachmentUUID = _self.updateuuid;
                        _self.newgRiskidentificationbyyear.meetringAttachmentFileName = _self.updatefileName;
                        _self.newgRiskidentificationbyyear.myearEntry =_self.items;

                        if( $("#myearup").val()==''){
                            _self.showToast("warning", "请选择年份！");
                            return;
                        }
                        if($("#time").val() ==''){
                            _self.showToast("warning","请选择会议时间");
                            return;
                        }
                        if($("#place").val() ==''){
                            _self.showToast("warning","请添加会议地点");
                            return;
                        }
                        if($("#compere").val()==''){
                            _self.showToast("warning","请添加主持人");
                            return;
                        }
                        if($("#recorder").val()==''){
                            _self.showToast("warning","请添加记录人");
                            return;
                        }
                        if($("#content").val()==''){
                            _self.showToast("warning","请添加会议内容");
                            return;
                        }
                        if($("#participant").val()==''){
                            _self.showToast("warning","请添加参会人员");
                            return;
                        }
                        $.ajax({
                            type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            url:projectName+"/RiskByYearControl/add", //发送请求的地址。
                            data:JSON.stringify(_self.newgRiskidentificationbyyear),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            contentType: "application/json",
                            success: function(data){
                                if(data){
                                    _self.showToast("success","修改成功！");
                                    window.location.href="<%=request.getContextPath()%>/menu/RiskIdentificationByYearByHL.do"
                                } else {
                                    _self.showToast("error", "修改失败！");
                                }
                            },
                            error: function(XMLHttpRequest, textStatus, errorThrown) {
                                console.log(XMLHttpRequest.status);
                                console.log(XMLHttpRequest.readyState);
                                console.log(textStatus);
                            }
                        });

                    },
                });

            },

            //附件修改上传（修改方法）
            updatebyyears1: function (data) {
                var _self = this;
                var mYear = $("#myearup").val();
                var time = $("#time").val();
                var place = $("#place").val();
                var compere = $("#compere").val();
                var recorder = $("#recorder").val();
                var content = $("#content").val();
                var participant = $("#participant").val();
                var riskIdentificationYearID = _self.updateid;

                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskByYearControl/update",
                    dataType: "json",
                    data: {
                        "mYear": mYear,
                        "meetingTime": time,
                        "meetingPlace": place,
                        "meetingCompere": compere,
                        "meetingRecorder": recorder,
                        "meetingContent": content,
                        "meetingParticipant": participant,
                        "meetringAttachmentUUID": data,
                        "riskIdentificationYearID": riskIdentificationYearID,

                    },
                    success: function (data) {
                        if (data) {
                            _self.showToast("success", "附件已修改，上传成功！");

                        } else {
                            _self.showToast("error", "修改失败！");
                        }
                    }
                });
            },
            //附件已修改
            updatebyyears: function (data) {
                var _self = this;
                var sumNewItem=_self.riskSitelst.length;
//                var sumNewItem=_self.number;
                $.ajax({
                    url:projectName + "/RiskByYearControl/newRiskidentificationbyyearentry/"+sumNewItem, //发送请求的地址。
                    type:"GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data:{},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType:"json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data1){
                        _self.items = data1;
                        for(var i=0;i< _self.riskSitelst.length;i++){
                            _self.items[i].riskSiteID = _self.riskSitelst[i].riskSiteID;
                            _self.items[i].mriskSite = _self.riskSitelst[i];
                            _self.items[i].riskidentificationYearID = _self.updateid;
                            _self.items[i].riskidentificationYearEntryID = 0
                        }
                        _self.newgRiskidentificationbyyear.myear =$("#myearup").val();
                        _self.newgRiskidentificationbyyear.meetingTime = $("#time").val();
                        _self.newgRiskidentificationbyyear.meetingPlace = $("#place").val();
                        _self.newgRiskidentificationbyyear.meetingCompere =  $("#compere").val();
                        _self.newgRiskidentificationbyyear.meetingRecorder = $("#recorder").val();
                        _self.newgRiskidentificationbyyear.meetingContent = $("#content").val();
                        _self.newgRiskidentificationbyyear.meetingParticipant =  $("#participant").val();
                        _self.newgRiskidentificationbyyear.riskidentificationYearID = _self.updateid;
                        _self.newgRiskidentificationbyyear.meetringAttachmentUUID = data;
                        _self.newgRiskidentificationbyyear.meetringAttachmentFileName = _self.fileName;
                        _self.newgRiskidentificationbyyear.myearEntry =_self.items;
                        if( $("#myearup").val()==''){
                            _self.showToast("warning", "请选择年份！");
                            return;
                        }
                        if($("#time").val() ==''){
                            _self.showToast("warning","请选择会议时间");
                            return;
                        }
                        if($("#place").val() ==''){
                            _self.showToast("warning","请添加会议地点");
                            return;
                        }
                        if($("#compere").val()==''){
                            _self.showToast("warning","请添加主持人");
                            return;
                        }
                        if($("#recorder").val()==''){
                            _self.showToast("warning","请添加记录人");
                            return;
                        }
                        if($("#content").val()==''){
                            _self.showToast("warning","请添加会议内容");
                            return;
                        }
                        if($("#participant").val()==''){
                            _self.showToast("warning","请添加参会人员");
                            return;
                        }
                        $.ajax({
                            type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            url:projectName+"/RiskByYearControl/add", //发送请求的地址。
                            data:JSON.stringify(_self.newgRiskidentificationbyyear),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            contentType: "application/json",
                            success: function(data){
                                if(data){
                                    _self.showToast("success", "修改成功！");
                                    window.location.href="<%=request.getContextPath()%>/menu/RiskIdentificationByYearByHL.do"
                                } else {
                                    _self.showToast("error", "添加失败！");
                                }
                            },
                            error: function(XMLHttpRequest, textStatus, errorThrown) {
                                console.log(XMLHttpRequest.status);
                                console.log(XMLHttpRequest.readyState);
                                console.log(textStatus);
                            }
                        });

                    },
                });
            },

            //初始化显示判断
            showyear:function(){
                var yearid = "${id}";
                if(yearid ==0){
                    $("#addyear").show();
                    $("#updateyear").hide();
                    $("#myearadd").show();
                    $("#delfile").hide();
                    $("#showUpdate").hide();
                }else{
                    $("#addyear").hide();
                    $("#updateyear").show();
                    $("#myearupdate").show();
                }
                if(yearid ==0){
                    $("#addquery").show();
                    $("#updatequery").hide();
                }else{
                    $("#addquery").hide();
                    $("#updatequery").show();
                }
            },

            //新增的重置事件
            addquery:function(){
                var _self = this;
                var nowDate = new Date();
                var year = nowDate.getFullYear();
                var month = nowDate.getMonth() + 1 < 10 ? "0" + (nowDate.getMonth() + 1) : nowDate.getMonth() + 1;
                var date = nowDate.getDate() < 10 ? "0" + nowDate.getDate() : nowDate.getDate();
                var hour = nowDate.getHours()< 10 ? "0" + nowDate.getHours() : nowDate.getHours();
                var minute = nowDate.getMinutes()< 10 ? "0" + nowDate.getMinutes() : nowDate.getMinutes();
                var second = nowDate.getSeconds()< 10 ? "0" + nowDate.getSeconds() : nowDate.getSeconds();
                $("#myear").val(year);
                $("#time").val(month + "-" + date+" "+hour+":"+minute);
                $("#place").val("");
                $("#compere").val("");
                $("#recorder").val("");
                $("#content").val("");
                $("#participant").val("");
                $("AttachmentUUID").val("");
                _self.riskSitelst =[];
            },
            //修改的重置事件
            updatequery:function(){
                var _self = this;
                _self.riskSitelst =[];
                _self.byyearid();
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
        watch: {
            //监视数据数组，以便控制全选的选中与不选中
            'checkIDs': {
                handler: function (val, oldVal) {

                    var count = 0;
                    var keywords = $("#keywords").val();
                    if (keywords == "" || keywords == null) {
                        vueApp.hideorshows();
                    } else {//keywords=='1' 进行模糊查询
                        if (count == 0) {
                            for (var i = 0; i < vueApp.detailedList.length; i++) {
                                if (vueApp.detailedList[i].name.indexOf(keywords) != -1) {
                                    $("#" + vueApp.detailedList[i].riskSiteID + "").show()
                                    vueApp.saveData.push(vueApp.detailedList[i]);
                                    for (var j = 0; j < vueApp.riskSitelst.length; j++) {
                                        if (vueApp.riskSitelst[j].riskSiteID == vueApp.detailedList[i].riskSiteID) {
                                            $("#" + vueApp.detailedList[i].riskSiteID + "").hide()
                                        }
                                    }
                                    count = 2;
                                } else {
                                    $("#" + vueApp.detailedList[i].riskSiteID + "").hide()

                                }
                            }
                            if (count != 2) {
                                vueApp.showToast("warning", "没有找到你要找的风险点");
                                return;
                            }
                        }
                    }
                },
                deep: true
            }

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
        }
//         watch: {
//            //监视数据数组，以便控制全选的选中与不选中
//            'checkIDs': {
//                handler: function (val, oldVal) {
//
//                    console.log(this.checkIDs);
//                    if (this.checkIDs.length === this.detailedList.length) {
//                        this.checkedone = true;
//                    } else {
//                        this.checkedone = false;
//                    }
//                },
//                deep: true
//            }
//
//        }

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

    lay('.datepicker').each(function () {
        laydate.render({
            elem: this
            , trigger: 'click'
            , type: 'year'
            // ,showBottom:false
        });
    });

</script>
<script>

    lay('.datepicker1').each(function () {
        laydate.render({
            elem: this
            , trigger: 'click'
            , type: 'datetime'
            , format: 'MM-dd HH:mm'
//            , festival: true,
//            istoday: true,
//            start: laydate.now(0, "yyyy-MM-dd HH:mm"),
//            istime: true





            //,showBottom:false
//            ,start: laydate.now(0, "YYYY/MM/DD hh:00"),
        });
    });

</script>

</body>

</html>
