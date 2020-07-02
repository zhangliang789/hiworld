<%@ page import="cn.com.kingc.risk.model.Riskcontrolplanebymonth" %>
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
    <title>风险管控-管控方案管理-新增</title>
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
    <link href="../css/iview.css" rel="stylesheet">

    <style>
        th {
            white-space: nowrap;
        }

        .control-label {
            float: left;
        }

        .col-sm-hh {
            float: left;
            width: 18%;
            margin-right: 5px;
        }

        .col-sm-hh1 {
            float: left;
            width: 65%;
            margin-left: 5px;
        }

        td a {
            color: #5ccdde
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

        .close {
            line-height: 0;
        }

        td input {
            width: 100%;
            border: 0;
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

        td select {

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

        .monthp1 {
            padding: 5px;
            padding-right: 0px;
            resize: none;
            width: 100%;
            max-height: 250px;
            overflow-y: auto;
        }

        .monthp1:focus {
            border-color: #5ccdde;
        }

        .searchCon {
            width: 400px;
            height: 25px;
            text-align: center;
            position: relative;
            display: inline-block;
            margin-bottom: 20px;
        }

        .searchCon i {
            position: absolute;
            top: 8px;
            left: 10px;
            z-index: 1;
        }

        .datepicker2:focus {
            border-color: #5ccdde;
        }

        .changeStyle:focus {
            border-color: #5ccdde;
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

        ::-webkit-input-placeholder { /* WebKit browsers */
            color: #f21f19;

        }

        :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
            color: #f21f19;
        }

        ::-moz-placeholder { /* Mozilla Firefox 19+ */
            color: #f21f19;
        }

        :-ms-input-placeholder { /* Internet Explorer 10+ */
            color: #f21f19;
        }

        ::-webkit-textarea-placeholder { /* WebKit browsers */
            color: #f21f19;
            padding-top: 20px;
        }

        :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
            color: #f21f19;
            padding-top: 20px;

        }

        ::-moz-placeholder { /* Mozilla Firefox 19+ */
            color: #f21f19;
            padding-top: 20px;
        }

        :-ms-input-placeholder { /* Internet Explorer 10+ */
            color: #f21f19;
            padding-top: 20px;
        }

        .btys {
            display: inline-block;
            padding: 10px 40px;
            vertical-align: sub;
        }

        /*.btys{ display: inline-block; padding: 8px 20px; background-color: #ff0000; vertical-align: sub; }*/</style>
</head>

<body>
<%String frameid = (String) request.getSession().getAttribute("frameid");%>
<%String userName = (String) request.getSession().getAttribute("userName");%>
<%String riskControlSchemeID =  (String)request.getSession().getAttribute("riskControlSchemeID");%>

<div id="page-content" style="min-height: 794px;">

    <input id="riskControlSchemeID" value="<%=riskControlSchemeID%>" hidden>
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-6">
                <div class="header-section">
                    <h1>管控方案管理</h1></div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full">
        <div class="table-responsive">
            <div class="table-responsive">
                <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                    <div class="row" style="background-color: #fff;">
                        <div class="col-sm-12 dib" style="margin: 10px 0px;">
                            <label class="control-label">管控方案管理内容</label>
                            <div class="form-group" style="float: right;" v-if="showDelete!=-1">
                                <button type="submit" class="btn btn-effect-ripple btn-primary"  @click="saveRiskControlScheme">
                                    保存
                                </button>
                            </div>
                            <div class="form-group" style="float: right;" v-if="showDelete==-1">
                                <button type="" @click="backPlanMonth" data-toggle="modal" class="btn btn-effect-ripple btn-primary">返回
                                </button>
                            </div>
                            <div style="margin: 10px -15px;"></div>
                        </div>
                        <div class="col-sm-12" style="margin: 10px 0px;">
                                    <div class="col-sm-3">
                                        <label class="col-md-5 control-label">方案名称</label>
                                        <div class="col-md-7">
                                            <input type="text" v-model="riskControlScheme.riskControlSchemeName" name="example-input-small" class="form-control input-sm" placeholder="">
                                        </div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                    </div>
                                    <div class="col-sm-3">
                                        <label class="col-md-5 control-label" for="example-input-small">责任单位</label>
                                        <div class="col-md-7">
                                            <i-select placeholder="部门"  label-in-value v-model="dutyUnitInfo" clearable filterable>
                                                <i-option v-for="(dp,index) in departmentList" :value="dp.fOrgID+'||'+dp.fOrg_Name" :label="dp.fOrg_Name" :key="index">
                                                    <span v-text="dp.fOrg_Name"></span>
                                                    <span style="float:right;color:#ccc" v-text="dp.fOrg_Name_Shorthand"></span>
                                                </i-option>
                                            </i-select>
                                        </div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>
                                    </div>
                                    <div class="col-sm-3">
                                        <label class="col-md-5 control-label" for="example-input-small">责任人</label>
                                        <div class="col-md-7">
                                            <i-select v-model="dutyPersonInfo" placeholder="请选择人员" filterable clearable>
                                                <i-option v-for="(myemp,index) in empList" :value="myemp.fEmp_ID_Auto+'||'+myemp.fEmp_Name" :label="myemp.fEmp_Name" :key="index">
                                                    <span v-text="myemp.fEmp_Name"></span>
                                                    <span style="float:right;color:#ccc" v-text="myemp.fEmp_Name_Shorthand"></span>
                                                </i-option>
                                            </i-select>
                                        </div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>
                                    </div>
                        </div>
                        <div class="col-sm-12" style="margin: 10px 0px;">
                            <div class="col-sm-6">
                                <label class="col-md-2 control-label">管控时间段</label>
                                <div class="col-md-10">
                                    <input type="date" id="manageStartDate" style="width: 45%" name="example-input-small" class="form-control input-sm datepicker-select" readonly="readonly">
                                         ~
                                    <input type="date" id="manageEndDate"  style="width: 45%" name="example-input-small" class="form-control input-sm  datepicker-select" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <label class="col-md-3 control-label" for="example-input-small">经费</label>
                                <div class="col-md-9">
                                    <input type="text" v-model="riskControlScheme.funds" style="width: 100%"  class="form-control input-sm" >
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <label class="col-md-3 control-label" for="example-input-small">物资</label>
                                <div class="col-md-9">
                                    <input type="text" v-model="riskControlScheme.material" style="width: 100%"  class="form-control input-sm" >
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12" style="margin: 10px 0px;">
                            <div class="col-sm-3">
                                <label class="col-md-5 control-label">管控风险点</label>
                                <div class="col-md-7">
                                    <i-select placeholder="请选择风险点"  label-in-value v-model="riskSiteInfo" clearable filterable>
                                        <i-option v-for="(riskSite,index) in riskSiteList" :value="riskSite.riskSiteID+'||'+riskSite.name" :label="riskSite.name" :key="index">
                                            <span v-text="riskSite.name"></span>
                                        </i-option>
                                    </i-select>
                                </div>
                                <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                            </div>
                            <div class="col-sm-3">
                                <label class="col-md-5 control-label" for="example-input-small">管控对象</label>
                                <div class="col-md-7">
                                    <i-select placeholder="请选择管控对象"  label-in-value v-model="controlObjectInfo" clearable filterable>
                                        <i-option v-for="(controlObject,index) in controlObjectList" :value="controlObject.riskSiteID+'||'+controlObject.name" :label="controlObject.name" :key="index">
                                            <span v-text="controlObject.name"></span>
                                        </i-option>
                                    </i-select>
                                </div>
                                <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>
                            </div>
                            <div class="col-sm-3">
                                <label class="col-md-5 control-label" for="example-input-small">管控风险</label>
                                <div class="col-md-7">
                                    <i-select v-model="riskInfo" placeholder="请选择风险名称" filterable clearable>
                                        <i-option v-for="(risk,index) in riskList" :value="risk.hazardID+'||'+risk.name" :label="risk.name" :key="index">
                                            <span v-text="risk.name"></span>
                                        </i-option>
                                    </i-select>
                                </div>
                                <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>
                            </div>
                        </div>
                        <div class="col-sm-12" style="margin: 10px 0px;">
                            <label class="col-sm-1 control-label">风险描述</label>
                            <div class="col-sm-11 " style="margin: 10px -15px;">
                                <textarea style="width:100%;" class="monthp1 form-control" v-model="hazardDesc"  rows="1" cols="90" disabled="disabled">
                                </textarea>
                            </div>
                        </div>
                        <div class="col-sm-12" style="margin: 10px 0px;">
                            <label class="col-sm-1 control-label">管控要求</label>
                            <div class="col-sm-11 " style="margin: 10px -15px;">
                                <textarea style="width:100%;" class="monthp1 form-control" placeholder="请填写管控要求，最大长度不超过200字" v-model="riskControlScheme.controlRequirements"  rows="3" cols="90"  maxlength="400">
                                </textarea>
                            </div>
                        </div>
                        <div class="col-sm-12" style="margin: 10px 0px;">
                            <label class="col-sm-1 control-label">安全措施</label>
                            <div class="col-sm-11 " style="margin: 10px -15px;">
                                <textarea style="width:100%;" class="monthp1 form-control"  placeholder="请填写安全措施，最大长度不超过200字" v-model="riskControlScheme.securityArrangement"  rows="3" cols="90" maxlength="400">
                                </textarea>
                            </div>
                        </div>
                        <div class="col-sm-12" style="margin: 10px 0px;">
                            <label class="col-sm-1 control-label">应急预案</label>
                            <div class="col-sm-11 " style="margin: 10px -15px;">
                                <textarea style="width:100%;" class="monthp1 form-control"  placeholder="请填写应急预案，最大长度不超过200字" v-model="riskControlScheme.contingencyPlan"  rows="3" cols="90" maxlength="400">
                                </textarea>
                            </div>
                        </div>

                        <div class="col-sm-12" style="margin: 10px 0px;">
                            <form class="form-group" id="meetringAttachmentid" method="post">
                                <label >管控方案文件</label>
                                <div style="position: relative;display:inline-block;margin-left: 15px">
                                    <div style="display:inline-block;    width: 200px;">
                                        <input type="file" name="file" id="AttachmentUUID" @change="changeFilename" class="">
                                        <input type="text" name="fguid" value="<%=frameid%>" hidden="hidden">
                                        <input type="text" name="usefor" value="<%=userName%>" hidden="hidden">
                                        <input type="text" name="returnUrl" value="test" hidden="hidden">
                                    </div>
                                    <span id="showUpdate">原附件名为: &nbsp{{updatefileName}} &nbsp </span>
                                    <a id="delfile" class="btn btn-effect-ripple btn-primary" data-toggle="modal" data-target="#Modal-delete" @click="">删除附件</a>
                                </div>
                                <span class="input-group-btn"></span>
                            </form>
                            <div class="modal inmodal" id="Modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content animated flipInY">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">
                                                <span aria-hidden="true">&times;</span>
                                                <span class="sr-only">Close</span>
                                            </button>
                                            <i class="fa  modal-icon"></i>
                                            <h4 class="modal-title">删除</h4>
                                            <small></small>
                                        </div>
                                        <div class="modal-body">
                                            <p> 如有附件将都会被清空删除确认吗？</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
                                            <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal" @click="deleteudupdate">确认</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-12 dib" style="margin: 10px 0px;">
                            <label class="control-label">管控措施记录列表</label>
                            <div class="form-group" style="float: right;">
                                <button type="submit" class="btn btn-effect-ripple btn-primary"  @click="showAddMeasureModal">附加管控措施</button>

                            </div>
                            <div style="margin: 10px -15px;"></div>
                        </div>
                        <div class="col-sm-12 dib" style="margin: 10px 0px;">
                            <template>
                                <i-table :columns="columns1" :data="controlMeasureList"></i-table>
                            </template>
                        </div>
                    </div>
                </div>
            </div>
            <div id="modal-add" class="modal" tabindex="-1" role="dialog" onkeydown="search()" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content" style="min-height: 100%">
                        <div class="modal-body">
                            <div class="block-title">
                                <h4>选择管控措施</h4></div>
                            <table id="gener" class="table table-striped table-bordered table-vcenter table-hover">
                                <thead>
                                <tr class="yans">
                                    <th class="text-center" style="width: 10%">序号</th>
                                    <%--<th class="text-center" style="width: 20%">管控措施类型</th>--%>
                                    <th class="text-center" style="width: 20%">管控措施内容</th>
                                    <th class="text-center" style="width: 10%">操作</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr v-for="(controlMeasure,index) in riskControlMeasureList">
                                    <th  v-text="index+1"></th>
                                    <%--<td  v-text="controlMeasure.measureType"></td>--%>
                                    <td  v-text="controlMeasure.measureContent"></td>
                                    <td class="text-center">
                                        <a class="btn btn-effect-ripple btn-primary"  @click="addControlMeasure(controlMeasure,index)">添加</a></td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="row">
                                <div class="col-sm-7 col-xs-12 clearfix">
                                    <div class="dataTables_paginate paging_bootstrap" id="example-datatable_paginatefy">
                                        <ul class="pagination pagination-sm remove-margin "
                                            id="pagination">
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal" >关闭</button>
                        </div>
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
<%--<script src="../js/vue.js"></script>--%>
<script src="../js/iview.min.js"></script>
<script src="../js/pages/uiTables.js"></script>
<script src="../js/pages/compTree.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/resource.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>

<script>
    $(document).ready(function () {
        var tadate = new Date();
        if ($("#myyear").val() == "" || $("#myyear").val() == null || $("#mymonth").val() == "" || $("#mymonth").val() == null) {
            $("#myyear").val(tadate.getFullYear())
            if ((tadate.getMonth() + 1) < 10) {
                $("#mymonth").val("0" + (tadate.getMonth() + 1))
            } else {
                $("#mymonth").val((tadate.getMonth() + 1))

            }
        }

        $("#showX").hide();
        $("#showZ").hide();



    });
</script>
<script>
    var projectName = '<%=request.getContextPath() %>';
    var attrArray = null;

    /**
     * Created by 李国彬 on 2017/9/20
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            dutyUnitInfo:"",
            departmentList: [],
            dutyPersonInfo:"",
            riskControlScheme:{},
            empList:[],
            riskSiteInfo:"",
            controlObjectInfo:"",
            riskInfo:"",
            riskSiteList:[],
            controlObjectList:[],
            riskList:[],
            hazardDesc:"",
            updatefileName:"",

            columns1: [
                {
                    type: 'index',
                    title: '序号',
                    width: 60,
                    align: 'center'
                },
//                {
//                    title: '管控措施类型',
//                    width: 120,
//                    align: 'center',
//                    key: 'measureType'
//                },
                {
                    title: '管控措施内容',
                    width: 855,

                    key: 'measureContent'
                },
                {
                    title: '操作',
                    key: 'action',
                    width: 150,
                    align: 'center',
                    render: function(h, params){
                        return h('div', [
                             h('Button', {
                                    props: {
                                        type: 'primary',
                                        size: 'small',
                                    },
                                    style: {
                                        marginRight: '5px',
                                    },
                                    on: {
                                        click: function () {
                                            vueApp.deleteControlMeasure(params.row, params.index);
                                        }
                                    }
                                },
                                '删除')])
                    }
                }
            ],
            controlMeasureList: [],
            riskControlMeasureList:[],
            isShowTime:true,
            fileName:"",
            updateuuid :"",
            updatefileName:"",








            myrisksiteID: 0,
            pagesize: 10,
            nowpage: 1,
            riskSite: "",
            detailedList: "",
            riskplanbymonth: "",//根据ID得到的riskcontrolplanebymonth对象
            planbymonthitem: new Array(),
            riskcontrolplanebymonth: "",
            riskcontrolplanebymonthitem: "",
            planType: "",
            hcount: "",
            mcount: "",
            decide: "",
            qcount: 0,
            saveData: new Array(),
            monthPlanList: "",
            categoryList: "",
            riskcontrolplane: "",
            riskcontrolplaneList: "",
            judgedataInfo: 0,

            peijianListtemp: [],
            peopleList: new Array(),
            showDelete: 0,//判断是否显示检查地点出的删除按钮
            updateContent: "",
            monthPlanFrequency: "",
            xunDu: "",
            updateFrequency: "",
            risk1: "",
            tempfullnumber: "",
            tempriskControlMeasure: [],
            tempriskControlMeasure1: [],
            tempriskControlMeasure2: [],
            riskControlMeasure: [],
            peijianList: [],
            peijianListlist: [],
            plandateIndex: -1,
            lennum: 0,
            arrDelete:new Array()

        },
        created: function () {
            var _self = this;
            _self.getRiskSiteList();
            $("#delfile").hide();
            _self.getDepartment();


        },
        mounted: function () {
            var _self = this;
            var riskControlSchemeID = $("#riskControlSchemeID").val();
            $("#showUpdate").hide();
            if(riskControlSchemeID == ""){
                _self.isShowTime = false;
                _self.getNewRiskControlScheme();
            }else{
                _self.getRiskControlSchemeByID(riskControlSchemeID);
            }
        },
        updated: function () {
            lay(".datepicker-select").each(function () {
                laydate.render({
                    elem: this
                    , trigger: 'click'
                    , type: 'date'
                    , format: 'yyyy-MM-dd'
                    , istime: false
                    , theme: '#3188f2'
                });
            });
        },
        methods: {
            //获取一个空的RiskControlScheme对象
            getNewRiskControlScheme: function () {
                var _self = this;
                $.get(projectName + "/RiskControlScheme/new", function (data) {
                    _self.riskControlScheme = data;
                })
            },
            getRiskControlSchemeByID:function(ID){
                var _self = this;
                $.get(projectName + "/RiskDetailedList/newRiskSite", function (data) {
                    data.parentID = 0;
                    $.ajax({
                        type: "POST",
                        url: projectName + "/HazardIdentificationControl/getAllRiskSite",
                        contentType: "application/json",
                        data: JSON.stringify(data),
                        dataType: "json",
                        success: function (riskSites) {
                            _self.riskSiteList = riskSites;
                            $.post(projectName + "/RiskControlScheme/getRiskcontrolSchemeByID",{ID:ID}, function (data) {
                                _self.riskControlScheme = data;
                                _self.dutyUnitInfo = _self.riskControlScheme.dutyUnitID+"||"+ _self.riskControlScheme.dutyUnitName;
                                _self.dutyPersonInfo =  _self.riskControlScheme.dutyPersonID+"||"+ _self.riskControlScheme.dutyPersonName;
                                $("#manageStartDate").val(_self.riskControlScheme.manageStartDate);
                                $("#manageEndDate").val(_self.riskControlScheme.manageEndDate);
                                _self.riskSiteInfo = _self.riskControlScheme.riskSiteID+"||"+ _self.riskControlScheme.riskSiteName;
                                var controlObjectList = [];
                                _self.riskSiteList.forEach(function(val,index){
                                    if(_self.riskControlScheme.riskSiteID == val.riskSiteID){
                                        controlObjectList = val.mchildRiskSite;
                                    }
                                });
                                _self.controlObjectList = controlObjectList;
                                _self.controlObjectInfo = _self.riskControlScheme.controlObjectID+"||"+ _self.riskControlScheme.controlObjectName;
                                var riskList = [];
                                _self.controlObjectList.forEach(function(val,index){
                                    if(_self.riskControlScheme.controlObjectID == val.riskSiteID){
                                        riskList = val.mhazards;
                                    }
                                });
                                _self.riskList = riskList;
                                _self.riskInfo = _self.riskControlScheme.riskID+"||"+ _self.riskControlScheme.riskName;
                                var hazardDesc = "";
                                var riskControlMeasureList = [];
                                riskList.forEach(function(val,index){
                                    if(_self.riskControlScheme.riskID == val.hazardID){
                                        hazardDesc = val.hazardDesc;
                                        riskControlMeasureList = val.mriskControlMeasure;
                                    }
                                });
                                _self.hazardDesc = hazardDesc;
//                                _self.riskControlMeasureList = riskControlMeasureList;
                                var controlmeasureList = [];
                                var controlMeasureIDs = _self.riskControlScheme.controlMeasureIDs;
                                var controlMeasureIDArr = controlMeasureIDs.split(",");
                                controlMeasureIDArr.forEach(function(val,index1){
                                    riskControlMeasureList.forEach(function(riskVal,index2){
                                         if(val == riskVal.measureID){
                                             riskControlMeasureList.splice(index2,1);
                                             controlmeasureList.push(riskVal);
                                         }
                                    });
                                });
                                _self.riskControlMeasureList = riskControlMeasureList;
                                _self.controlMeasureList = controlmeasureList;
                                _self.updateuuid = data.attachID;
                                _self.updatefileName = data.attachFileName;
                                //上传附件
                                if(_self.updateuuid!="" && _self.updateuuid!=0){
                                    $("#showUpdate").show();
                                    $("#delfile").show();
                                }else{
                                    $("#showUpdate").hide();
                                    $("#delfile").hide();
                                }

                                _self.isShowTime = false;
                            });


                        }
                    });
                })

            },

            //获取平台部门信息
            getDepartment: function () {
                var _self = this;
                $.get(projectName + "/PlatForm/getDepartment", function (data) {
                    _self.departmentList = data;
                });
            },
            getRiskSiteList:function(){
                var _self = this;
                $.get(projectName + "/RiskDetailedList/newRiskSite", function (data) {
                    data.parentID = 0;
                    $.ajax({
                        type: "POST",
                        url: projectName + "/HazardIdentificationControl/getAllRiskSite",
                        contentType: "application/json",
                        data: JSON.stringify(data),
                        dataType: "json",
                        success: function (data1) {
                            _self.riskSiteList = data1;
                        }
                    });
                })

            },

            //附件修改的change事件
            changeFilename:function(){
                var _self = this;

                var maxsize = 300*1024*1024;//2M
                var errMsg = "上传的附件文件不能超过300M！！！";
                var tipMsg = "您的浏览器暂不支持计算上传文件的大小，确保上传文件不要超过300M，建议使用IE、FireFox、Chrome浏览器。";
                var browserCfg = {};
                var ua = window.navigator.userAgent;
                if (ua.indexOf("MSIE")>=1){
                    browserCfg.ie = true;
                }else if(ua.indexOf("Firefox")>=1){
                    browserCfg.firefox = true;
                }else if(ua.indexOf("Chrome")>=1){
                    browserCfg.chrome = true;
                }

                var obj_file = document.getElementById("AttachmentUUID");
                if(obj_file.value==""){
                    _self.showToast("warning", "请先选择上传文件");
                    return;
                }
                var filesize = 0;
                if(browserCfg.firefox || browserCfg.chrome ){
                    filesize = obj_file.files[0].size;
                }else if(browserCfg.ie){
                    var obj_img = document.getElementById('AttachmentUUID');
                    obj_img.dynsrc=obj_file.value;
                    filesize = obj_img.fileSize;
                }else{
                    _self.showToast("warning", tipMsg);
                    return;
                }
                if(filesize==-1){
                    _self.showToast("warning", tipMsg);
                    return;
                }else if(filesize>maxsize){
                    _self.showToast("warning", errMsg);
                    _self.deleteudupdate();
                    return;
                }


                if($("#AttachmentUUID").val()!="" && $("#AttachmentUUID").val()!=null ){
                    $("#delfile").show();
                }else{
                    $("#delfile").hide();
                }
                if( _self.updateuuid!="" && _self.updateuuid!=0 ){
                    $("#delfile").show();
                }
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
            //显示选择风险管控措施弹出框
            showAddMeasureModal:function(){
                var _self = this;
                $("#modal-add").modal("show");
            },
            //选择风险管控措施
            addControlMeasure: function (controlMeasure,index) {
                var _self = this;
                _self.riskControlMeasureList.splice(index,1);
                _self.controlMeasureList.push(controlMeasure);
            },
            //删除风险管控措施
            deleteControlMeasure:function(data,index){
                var _self = this;
                _self.controlMeasureList.splice(index,1);
                _self.riskControlMeasureList.push(data);
            },
            saveRiskControlScheme:function(){
                var _self = this;
                //管控方案名称
                if(_self.riskControlScheme.riskControlSchemeName == null){
                    _self.showToast("warning", "请填写管控方案名称");
                    return ;
                }
                if(_self.riskControlScheme.dutyUnitID == null ||_self.riskControlScheme.dutyUnitName == null){
                    _self.showToast("warning", "请选择管控负责单位");
                    return ;
                }
                if(_self.riskControlScheme.dutyPersonID == null ||_self.riskControlScheme.dutyPersonName == null){
                    _self.showToast("warning", "请选择管控负责人");
                    return ;
                }
                if(_self.riskControlScheme.riskSiteID == null || _self.riskControlScheme.riskSiteName == null){
                    _self.showToast("warning", "请选择管控风险点");
                    return ;
                }
                if(_self.riskControlScheme.controlObjectID == null || _self.riskControlScheme.controlObjectName == null){
                    _self.showToast("warning", "请选择管控对象");
                    return ;
                }
                if(_self.riskControlScheme.riskID == null || _self.riskControlScheme.riskName == null){
                    _self.showToast("warning", "请选择管控风险");
                    return ;
                }
                if(_self.riskControlScheme.funds != null){
                    var funds = _self.riskControlScheme.funds;
                    if( funds.length > 30){
                        _self.showToast("warning", "经费长度请控制在30个字符以内！");
                        return ;
                    }
                }
                if(_self.riskControlScheme.material != null ){
                    var material = _self.riskControlScheme.material;
                    if(material.length > 30){
                        _self.showToast("warning", "物资长度请控制在30个字符以内！");
                        return ;
                    }
                }
                if($("#manageStartDate").val()!=null){
                    _self.riskControlScheme.manageStartDate =$("#manageStartDate").val();
                }
                if($("#manageStartDate").val()!=null){
                    _self.riskControlScheme.manageEndDate =$("#manageEndDate").val();
                }
                var controlMeasureIDs = "";
                _self.controlMeasureList.forEach(function(val,index){
                    controlMeasureIDs += val.measureID +",";
                });
                _self.riskControlScheme.controlMeasureIDs = controlMeasureIDs;


                //上传文件
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
                        _self.riskControlScheme.attachID = data;
                        _self.riskControlScheme.attachFileName = _self.fileName;
                        //保存管控方案
                        $.ajax({
                            type: "POST",
                            url: projectName + "/RiskControlScheme/add",
                            data: JSON.stringify(_self.riskControlScheme),
                            contentType: "application/json",
                            success: function (data) {
                                if (data) {
                                    window.location.href="<%=request.getContextPath()%>/menu/RiskControlSchemeManagement.do"
                                } else {
                                    _self.showToast("error", "添加失败！");
                                }
                            },
                        });

                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        console.log(XMLHttpRequest.status);
                        console.log(XMLHttpRequest.readyState);
                        console.log(textStatus);
                        _self.showToast("error", "上传出错！");
                    }
                });
            },


















            mcheckclick: function (index) {
                var _self = this;
                var lists = [];
                var list = _self._self.planbymonthitem[index].mUnits;
                var tem = [];
                for (var i = 0; i < list.length; i++) {
                    for (var j = 0; j < _self.peijianListtemp.length; j++) {
                        if (list[i] == _self.peijianListtemp[j].fOrg_Name) {
                            lists.push(_self.peijianListtemp[j]);
                        }
                    }
                }
                _self.peijianListlist[index] = lists;
            },

            confirmIndex: function (index) {
                var _self = this;
                _self.plandateIndex = index;
            },
            selectStartTime: function (date) {
                var _self = this;
                _self.planbymonthitem[_self.plandateIndex].planStartDate = date;
            },
            selectEndTime: function (date) {
                var _self = this;
                _self.planbymonthitem[_self.plandateIndex].planEndDate = date;
            },
            getUserinfoList: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/PlatForm/getUserinfoList", function (data) {
                    _self.peijianListtemp = data;

                });

            },
            //子附件下载
            downloadFile: function (trcm) {
                var _self = this;
                $("#checkid").val(trcm.measureURL);
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
            //获取管控措施
            updateRiskControlMeasure: function (risk) {
                var _self = this;
                _self.risk1 = risk;
                _self.tempfullnumber = risk.fullNumber;
                $.ajax({
                    url: projectName + "/RiskControlMeasureControl/getMRiskSiteMeasure/" + _self.tempfullnumber, //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    dataType: "json",//预期服务器返回的数据类型。
                    async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        _self.tempriskControlMeasure = [];
                        _self.tempriskControlMeasure1 = [],
                            _self.tempriskControlMeasure2 = [],
                            _self.tempriskControlMeasure = data;
                        for (var j = 0; j < _self.tempriskControlMeasure.length; j++) {
                            if (_self.tempriskControlMeasure[j].measureURL != null) {
                                _self.tempriskControlMeasure1.push(_self.tempriskControlMeasure[j]);
                            } else {
                                _self.tempriskControlMeasure2.push(_self.tempriskControlMeasure[j])
                            }
                        }
                        _self.riskControlMeasure = _self.tempriskControlMeasure2;
                        $("#modal-regular1").modal("show");
                        /*_self.getNewRiskControlMeasure();*/
                    },
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
                        _self.monthPlanList = data.计划类型;
                        _self.categoryList = data.专业类型;
                        if ($("#monthPlaneID").val() != "" && $("#monthPlaneID").val() != "null" && $("#monthPlaneID").val() != null) {
                            _self.getUpdateInfo();
                        }
                    },
                });
            },

            backPlanMonth: function () {
                var _self = this;
                window.location.href = projectName + "/menu/RiskControlPlaneByMonth.do"

            },
            showOrNot: function () {

                if ($("#monthPlanFrequency").val() == "每旬") {
                    $("#showX").show();
                    $("#showZ").hide();
                } else if ($("#monthPlanFrequency").val() == "每周") {
                    $("#showX").hide();
                    $("#showZ").show();
                } else {
                    $("#showX").hide();
                    $("#showZ").hide();
                }
            },


            hideorshow1: function () {
                var _self = this;
                if (_self.detailedList.length != 0 && _self.detailedList.length != "") {
                    for (var i = 0; i < _self.detailedList.length; i++) {
                        $("#rs" + _self.detailedList[i].riskSiteID + "").show()
                    }
                    for (var i = 0; i < _self.detailedList.length; i++) {
                        for (var j = 0; j < _self.planbymonthitem.length; j++) {
                            if (_self.planbymonthitem[j].risksiteID == _self.detailedList[i].riskSiteID) {
                                $("#rs" + _self.detailedList[i].riskSiteID + "").hide()
                            }
                        }
                    }
                }
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
            //获取一个空的RiskControlPlaneByMonth对象
            getNewRiskControlPlane: function () {
                var _self = this;
                $.get(projectName + "/RiskControlPlaneByMonthControl/newRiskControlPlaneByMonth", function (data) {
                    _self.riskcontrolplane = data;
                    _self.getRiskcontrolplanebymonthData();
                })
            },
            getRiskcontrolplanebymonthData: function () {
                var _self = this;
                _self.riskcontrolplane.monthplaneID = null
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskControlPlaneByMonthControl/getRiskcontrolplanebymonthData",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskcontrolplane),
                    dataType: "json",
                    success: function (data) {
                        _self.riskcontrolplaneList = data;
                    }
                });
            },
        },
        computed: {},
        watch: {
            'dutyUnitInfo':{
                handler: function (val, oldVal) {
                    var _self = this;
                    if(val == ''){
                        _self.dutyPersonInfo = '';
                        _self.empList = [];
                    }else{
                        var dutyUnitInfo = val.split("||");
                        _self.riskControlScheme.dutyUnitID = dutyUnitInfo[0];
                        _self.riskControlScheme.dutyUnitName = dutyUnitInfo[1];
                        $.post(projectName + "/PlatForm/getCurrOrgEmpList/" + dutyUnitInfo[0], function (data) {
                            _self.empList = data;
                        });
                    }

                },
                deep: true
            },
            'dutyPersonInfo':{
                handler:function(val, oldVal){
                    var _self = this;
                    var dutyPersonInfo = val.split("||");
                    _self.riskControlScheme.dutyPersonID = dutyPersonInfo[0];
                    _self.riskControlScheme.dutyPersonName = dutyPersonInfo[1];
                },
                deep:true
            },
            'riskSiteInfo':{
                handler:function(val, oldVal){
                    var _self = this;
                    if(!_self.isShowTime){
                        var controlObject = [];
                        var riskSiteInfo = val.split("||");
                        _self.riskControlScheme.riskSiteID = riskSiteInfo[0];
                        _self.riskControlScheme.riskSiteName = riskSiteInfo[1];
                        _self.riskSiteList.forEach(function(val,index){
                            if(riskSiteInfo[0] == val.riskSiteID){
                                controlObject = val.mchildRiskSite;
                            }
                        });
                        _self.controlObjectList = controlObject;
                    }
                },
                deep:true
            },
            'controlObjectInfo':{
                handler:function(val, oldVal){
                    var _self = this;
                    if(!_self.isShowTime){
                        var riskList = [];
                        var controlObjectInfo = val.split("||");
                        _self.riskControlScheme.controlObjectID = controlObjectInfo[0];
                        _self.riskControlScheme.controlObjectName = controlObjectInfo[1];
                        _self.controlObjectList.forEach(function(val,index){
                            if(controlObjectInfo[0] == val.riskSiteID){
                                riskList = val.mhazards;
                            }
                        });
                        _self.riskList = riskList;
                    }
                },
                deep:true
            },
            'riskInfo':{
                handler:function(val,oldVal){
                    var _self = this;
                    if(!_self.isShowTime){
                        var riskInfo = val.split("||");
                        _self.riskControlScheme.riskID = riskInfo[0];
                        _self.riskControlScheme.riskName = riskInfo[1];
                        var  hazardDesc = "";
                        var  riskControlMeasureList = [];
                        _self.riskList.forEach(function(val,index){
                            if(riskInfo[0] == val.hazardID){
                                hazardDesc = val.hazardDesc;
//                                riskControlMeasureList = val.mriskControlMeasure;
                                val.mriskControlMeasure.forEach(function(measure,measureIndex){
                                    if(measure.measureContent != null){
                                        riskControlMeasureList.push(measure);
                                    }
                                });
                            }
                        });
                        _self.hazardDesc = hazardDesc;
                        _self.riskControlMeasureList = riskControlMeasureList;
                    }
                },
                deep:true
            },

        },
        filters: {
            upCaseFilter: function (val) {
                return val.toUpperCase();
            },
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
        if ($("#monthPlaneID").val() == "" || $("#monthPlaneID").val() == "null") {
            laydate.render({
                elem: this
                , trigger: 'click'
                , type: 'year'
                , theme: '#3188f2'
            });
        }
    });


</script>
<script>

    lay('.datepicker1').each(function () {
        if ($("#monthPlaneID").val() == "" || $("#monthPlaneID").val() == "null") {
            laydate.render({
                elem: this
                , trigger: 'click'
                , type: 'month'
                , format: 'MM'
                , theme: '#3188f2'
            });
        }
    });

</script>

</body>

</html>