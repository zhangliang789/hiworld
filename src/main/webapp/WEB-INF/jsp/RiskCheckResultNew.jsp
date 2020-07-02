<%@ page import="org.platform4j.model.Emp" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/18
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>现场检查结果管理</title>
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
            width: 100%;
            margin-right: 5px;
        }

        .col-sm-hh3 {
            float: left;
            width: 88%;
            margin-left: 5px;
        }

        .input-group-addon,
        .input-group-btn {
            width: 1% !important;
            white-space: nowrap;
            vertical-align: middle;
        }

        .table {
            margin-bottom: 0;
        }

        .table-striped > tbody > tr:nth-of-type(1) {
            background-color: #f9f9f9 !important;
            font-weight: bold;
        }

        .nihao1 {
            width: 100% !important;
        }

        .nihao2 {
            margin-bottom: 10px;
        }

        .form-group1 {
            margin-top: 10px;
            background-color: #e9ecf1;
            padding: 10px 15px;
        }

        .form-group1 label {
            margin: 0 !important;
        }

        textarea {
            resize: none
        }

        .ivu-row {
            width: 75.5%;
        }

        .demo-upload-list {
            display: inline-block;
            width: 60px;
            height: 60px;
            text-align: center;
            line-height: 60px;
            border: 1px solid transparent;
            border-radius: 4px;
            overflow: hidden;
            background: #fff;
            position: relative;
            box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
            margin-right: 4px;
        }

        .demo-upload-list img {
            width: 100%;
            height: 100%;
        }

        .demo-upload-list-cover {
            display: none;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            background: rgba(0, 0, 0, .6);
        }

        .demo-upload-list:hover .demo-upload-list-cover {
            display: block;
        }

        .demo-upload-list-cover i {
            color: #fff;
            font-size: 20px;
            cursor: pointer;
            margin: 0 2px;
        }

        .ivu-upload {

        }
        .title_width{
            width:25%;
            float: left;
            margin-top: 15px;
        }
        .title_margintop{
               margin-top: 5px;
               width:26%;
           }
        .content_width{
            width:73%;
        }
    </style>
</head>

<body>
<div id="app">
    <% Emp user = (Emp) request.getSession().getAttribute("emp");
        String username = user.getFEmp_Name();
        Integer userid = user.getfEmp_ID_Auto();
        String fOrg_Name = user.getFOrg_Name();
        Integer fOrgID_Auto = user.getfOrgID_Auto();
    %>
    <div id="page-content" style="min-height: 794px;">
        <!-- Table Styles Header -->
        <div class="content-header">
            <div class="row">
                <div class="col-sm-12">
                    <div class="header-section">
                        <h1 style="float: left;">现场检查结果新增</h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- END Table Styles Header -->
        <!-- Table Styles Block -->

        <div class="block full">

            <div class="">
                <div class="">
                    <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                        <div class="row" style="background-color: #fff;padding-top: 0;">
                            <div class="col-sm-12" style="padding: 0;">
                                <div id="" class="">
                                    <form method="post" class="form-inline" onsubmit="return false;">
                                        <div class="form-group1" style="height: 55px">
                                            <label class="" for="example-if-password">检查信息</label>
                                            <button type="submit" @click="saveCheckResult"
                                                    style="float: right;margin-right: -6px"
                                                    class="btn btn-effect-ripple btn-primary">
                                                保存
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-12" style="margin: 10px 0px;">

                                    <%--<form method="post" class="form-horizontal" onsubmit="return false;">--%>

                                        <div class=" col-sm-4">
                                            <label class="col-md-3 title_margintop control-label" for="example-if-password">检查时间</label>
                                            <div class="content_width"><input type="text" id="checkTime" style="width: 63%"
                                                                         name="example-input-small"
                                                                         class="form-control input-sm datepicker"
                                                                         readonly="readonly"
                                                                         placeholder=""></div>

                                        </div>
                                        <div class=" col-sm-4">
                                            <label class="col-md-3 title_margintop control-label" for="example-if-password">检查部门</label>
                                            <div class="content_width"><select
                                                    v-model="checkDepartment"
                                                    name="example-if-password"
                                                    class="form-control " style="width: 63%" placeholder="请选择检查部门"
                                                    type="text" disabled>
                                                <option value="">请选择检查部门</option>
                                                <option v-for="(mydepart,index) in departmentList"
                                                        :value="mydepart.fOrg_Name">
                                                    {{mydepart.fOrg_Name}}
                                                </option>
                                            </select></div>

                                        </div>
                                        <div class="col-sm-4">
                                            <label class="col-md-3 title_margintop control-label" for="example-if-password">检查人</label>
                                            <div class="content_width"><select class="form-control" style="width: 63%"
                                                                          v-model="checkName" disabled>
                                                <option value="">请选择检查人...</option>
                                                <option :value="aresponsible.fEmp_Name"
                                                        v-for="aresponsible in responsibleList">
                                                    {{aresponsible.fEmp_Name}}
                                                </option>
                                            </select></div>

                                            <%--</form>--%>
                                        </div>
                            </div>
                            <div class="col-sm-12" style="padding: 0;">
                                <div id="" class="">
                                    <form method="post" class="form-inline" onsubmit="return false;">
                                        <div class="form-group1" style="height: 52px">
                                            <label class="" for="example-if-password">风险地点</label>
                                            <button type="submit" @click="addOutofItem"
                                                    class="btn btn-effect-ripple btn-primary"
                                                    style="float: right;margin-right: -6px">提交
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-12" style="margin: 10px 0px; width: 56.3%">
                                <div id="" class="">
                                    <div class="col-sm-3 nihao2" style="width: 100%;">
                                        <label class="col-md-5 control-label" for="example-if-password"
                                               style="width: 80px; margin-top: 10px">风险地点</label>
                                        <div class="col-md-7" style="width: 63%">
                                            <row>
                                                <i-select id="frist" style="width:177px"
                                                          v-model="fristRiskSite"
                                                          filterable
                                                          placeholder="请选择风险地点"
                                                >
                                                    <i-option v-for="(mmonthPlan,mindex) in mmonthPlanItems"
                                                              :value="mmonthPlan.mriskSite.riskSiteID"
                                                              :key="mindex"
                                                              v-bind:label="mmonthPlan.mriskSite.name">
                                                        {{mmonthPlan.mriskSite.name}}
                                                    </i-option>
                                                </i-select>
                                            </row>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="title_width nihao2">
                                <label class="col-md-3 title_margintop control-label" for="example-if-password">状态</label>
                                <div class="content_width" style="width: 280px">
                                    <select class="form-control" style="width: 63%" v-model="status" >
                                        <option value="1">失控</option>
                                        <option value="0">未失控</option>
                                    </select></div>

                                <%--</form>--%>
                            </div>
                            <div class="col-sm-12" style="margin: 10px 0px;">
                                <div class="col-sm-6">
                                    <table id="general-table"
                                           class="table table-striped table-bordered table-vcenter table-hover">
                                        <tbody>
                                        <tr>
                                            <th class="text-center" style="width: 80px">序号</th>
                                            <th class="text-center">名称</th>
                                            <th class="text-center" style="width: 80px">数量</th>
                                        </tr>
                                        <tr v-for="(mchildRiskSite,mchindex) in mchildRiskSiteList">

                                            <td class="text-center">{{mchildRiskSite.index}}</td>
                                            <td>
                                                <a @click="showhazard(mchildRiskSite,mchindex)">{{mchildRiskSite.name}}</a>
                                            </td>
                                            <td class="text-center"
                                                v-if="mchildRiskSite.mhazards!=null && mchildRiskSite.mhazards!=''">
                                                {{mchildRiskSite.mhazards.length}}
                                            </td>
                                            <td class="text-center" v-else>0</td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-sm-6">
                                    <div id="" class="">
                                        <form method="post" class="form-horizontal" onsubmit="return false;">
                                            <div class="form-group" style="width: 100%;margin-bottom:5px ;">
                                                <label class="col-md-3 control-label"
                                                       for="example-if-password">风险名称</label>
                                                <div class="col-md-7" style="width: 75%"><input id="name" readonly
                                                                                                name="example-if-password"
                                                                                                class="form-control nihao1"
                                                                                                placeholder=""
                                                                                                type="text">
                                                </div>
                                            </div>
                                            <div class="form-group" style="width: 100%;margin-bottom:5px">
                                                <label class="col-md-3 control-label"
                                                       for="example-if-password">灾害类型</label>
                                                <div class="col-md-7" style="width: 75%"><input id="damageType"
                                                                                                readonly <%--v-text="hazards.damageType"--%>
                                                                                                name="example-if-password"
                                                                                                class="form-control nihao1"
                                                                                                placeholder=""
                                                                                                type="text">
                                                </div>
                                            </div>
                                            <div class="form-group" style="width: 100%;margin-bottom:5px">
                                                <label class="col-md-3 control-label"
                                                       for="example-if-password">措施内容</label>
                                                <div class="col-md-7" style="width: 75%"><input id="measureContent"
                                                                                                @click="downloadFile()"
                                                                                                readonly
                                                <%--v-text="hazards.measureContent"--%>
                                                                                                name="example-if-password"
                                                                                                class="form-control nihao1"
                                                                                                type="text">
                                                </div>
                                            </div>
                                            <div class="form-group" style="width: 100%;margin-bottom:5px">
                                                <label class="col-md-3 control-label"
                                                       for="example-if-password">检查结果</label>
                                                <div class="col-md-7" style="width: 75%">
                                                <textarea style="width: 100%;" name="" rows="" cols=""
                                                          v-model="question"
                                                          class="form-control"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group" style="width: 100%;margin-bottom:5px">
                                                <label class="col-md-3 control-label" style="margin-right: 15px"
                                                       for="example-if-password">上传图片</label>
                                                <div class="demo-upload-list" v-for="(item,itemindex) in uploadList">
                                                    <template v-if="item.status === 'finished'">
                                                        <img :src="item.url">
                                                        <div class="demo-upload-list-cover">
                                                            <icon type="ios-eye-outline"
                                                                  @click.native="handleView(item)"></icon>
                                                            <icon type="ios-trash-outline"
                                                                  @click.native="handleRemove(item,itemindex)"></icon>
                                                        </div>
                                                    </template>
                                                    <template v-else>
                                                        <i-progress v-if="item.showProgress" :percent="item.percentage"
                                                                    hide-info></i-progress>
                                                    </template>
                                                </div>
                                                <upload
                                                        ref="upload"
                                                        :show-upload-list="false"
                                                        :on-success="handleSuccess"
                                                        :format="['jpg','jpeg','png']"
                                                        :max-size="4096"
                                                        :on-format-error="handleFormatError"
                                                        :on-exceeded-size="handleMaxSize"
                                                        :before-upload="handleBeforeUpload"
                                                        multiple
                                                        type="drag"
                                                        :action="fileUploadPath"
                                                        :data="otherData"
                                                        style="display: inline-block;width:58px;">
                                                    <div style="width: 58px;height:58px;line-height: 58px;">
                                                        <icon type="camera" size="20"></icon>
                                                    </div>
                                                </upload>
                                                <modal title="View Image" v-model="visible">
                                                    <img :src="imgName" v-if="visible" style="width: 100%">
                                                </modal>
                                            </div>
                                        </form>
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
                                        <form id="downFile"
                                              action="<%=request.getContextPath()%>/RiskControlMeasureControl/downFile"
                                              method="post">
                                            <input id="downloadUrl" name="downloadUrl" type="hidden"/>
                                            <input id="realFileName" name="realFileName" type="hidden"/>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12" style="padding: 0;">
                                <div id="" class="">
                                    <form method="post" class="form-inline" onsubmit="return false;">
                                        <div class="form-group1">
                                            <label class="" for="example-if-password">已检查问题</label>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-12" style="margin: 0px 0px;padding: 0;">
                                <table id="general-table"
                                       class="table table-striped table-bordered table-vcenter table-hover">
                                    <tbody>
                                    <th class="text-center" style="width:50px">序号</th>
                                    <th class="text-center" style="width: 350px">风险</th>
                                    <th class="text-center" style="width:120px">灾害类型</th>
                                    <th class="text-center" style="width:120px">状态</th>
                                    <th class="text-center" style="width: 300px">检查结果</th>
                                    <th class="text-center" style="width:120px">检查时间</th>
                                    <th class="text-center" style="width:120px">操作</th>
                                    </tr>
                                    <tr v-for="(arisksiteoutofcontrolitem,arindex) in risksiteoutofcontrolitemList">
                                        <td class="text-center">{{arindex+1}}</td>
                                        <td class="text-center">{{arisksiteoutofcontrolitem.hazard.name}}</td>
                                        <td class="text-center">{{arisksiteoutofcontrolitem.hazard.damageType}}</td>
                                        <td class="text-center"><span v-if="arisksiteoutofcontrolitem.outOfControlStatus=='1'">失控</span><span  v-if="arisksiteoutofcontrolitem.outOfControlStatus=='0'">未失控</span></td>
                                        <td class="text-center">
                                            <textarea class="form-control" style="width: 550px; height: 50px"
                                                      v-model="arisksiteoutofcontrolitem.checkQuestion"></textarea>
                                        </td>
                                        <td class="text-center" v-text="chectimefunction()"></td>
                                        <td class="text-center">
                                            <%-- <a @click="modifyItem(arisksiteoutofcontrolitem,arindex)">修改</a>--%>
                                            <a @click="deteleItem1(arisksiteoutofcontrolitem,arindex)">删除</a>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
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
<script src="../js/pages/uiTables.js"></script>
<script src="../js/pages/compTree.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>
<script src="../js/resource.js"></script>
<script src="../js/nowDate.js"></script>
<script>
    var projectName = '<%=request.getContextPath() %>';
    /**
     * Created by Administrator on 2017/11/20
     */
    var vueApp = new Vue({
        el: "#app",
        data: {
            pagesize: 5,
            nowpage: 1,
            checkName: "",
            checkDepartment: "",
            departmentList: "",
            responsibleList: [],
            mydate: "",
            riskcontrolplanebymonth: "",
            mmonthPlanItems: "",
            fristRiskSite: "",
            riskSite: "",
            mchildRiskSiteList: "",
            hazards: "",
            risksiteoutofcontrol: "",
            riskControllerMeasure: "",
            tempParams: -1,
            risksiteoutofcontrolitem: "",
            question: "",
            risksiteoutofcontrolitemList: [],
            /*status: false,*/
            hazardsList: "",
            mchindex: 0,
            monthPlanItemID: "",
            outOfControllerList: "",
            tempFristIndex: "",
            tempOutOfControllerItem: [],
            lasttempFristIndex: "",
            otherData: {"fguid":<%=userid%>},
            uploadList: [],
            imgName: "",
            visible: false,
            accthes: "",
            outofcontrolattachment: "",
            outofcontrolattachmentList: [],
            watchMeasure: "",
            empList:"",//所有职员
            status:"1",
            fileUploadPath:fileUploadPath,
        },
        created: function () {
            var _self = this;
            _self.getNewHazards();
            _self.getDepartment();
            _self.getNewCheckResult();
            _self.getNewControllerMeasure();
            _self.getUserinfoList();
        },
        mounted: function () {

        },
        updated: function () {
        },
        methods: {
            //得到企业下所有人员的集合
            getUserinfoList: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/PlatForm/getUserinfoList", function (data) {
                    _self.empList = data;

                });

            },
            //子附件下载
            downloadFile: function () {
                var _self = this;
                if (_self.watchMeasure.measureURL != null) {
                    $("#checkid").val(_self.watchMeasure.measureURL);
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
                }
            },
            handleView: function (item) {
                var _self = this;
                _self.imgName = item.url;
                _self.visible = true;
            },
            handleRemoveitem: function (item, itemindex) {
                var _self = this;
                _self.risksiteoutofcontrolitem.accthes.splice(itemindex, 1)

            },
            handleRemove: function (item, itemindex) {
                var _self = this;
                _self.uploadList.splice(itemindex, 1);
                _self.risksiteoutofcontrolitem.accthes.splice(itemindex, 1);
            },
            handleSuccess: function (res, file) {
                var _self = this;
                $("#checkid").val(res);
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
                        file.url = result.savePath;
                        file.name = result.oldFileName;
                        _self.uploadList.push(file);
                    },
                });
                if (res != 0 && res != null && res != "") {
                    $.ajax({
                        url: projectName + "/RiskCheckResult/newRisksiteoutofcontrolattachment", //发送请求的地址。
                        type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            _self.outofcontrolattachment = data;
                            _self.outofcontrolattachment.localPath = file.url;
                            _self.outofcontrolattachment.fileName = file.name;
                            _self.outofcontrolattachment.serviceUUID = res;
                            _self.risksiteoutofcontrolitem.accthes.push(_self.outofcontrolattachment);
                            _self.outofcontrolattachmentList.push(_self.outofcontrolattachment);
                            //_self.outofcontrolattachment.checkRecordID= "";
                            //_self.outofcontrolattachment.itemID= "";
                            //该两个属性在添加事件中赋值
                        },
                    });
                }
            },
            handleFormatError: function (file) {
                this.$Notice.warning({
                    title: '文件格式不正确！',
                    desc: '文件 ' + file.name + ' 格式错误, 请选择.jpg或者.png格式！.'
                });
            },
            handleBeforeUpload: function (file) {
                var check = this.uploadList.length < 5;
                if (!check) {
                    this.$Notice.warning({
                        title: '最多可以上传五张图片。'
                    });
                }
                if (file.name.indexOf("&") != -1 || file.name.indexOf("=") != -1) {
                    this.$Notice.warning({
                        title: '文件名不能含有特殊字符如&,=。'
                    });
                    return false;
                }
                return check;
            },
            handleMaxSize: function (file) {
                this.$Notice.warning({
                    title: 'Exceeding file size limit',
                    desc: '文件  ' + file.name + ' 最大大不能超过4M！'
                });
            },
            //获取一个空的outofcontrolleritemment对象
            /* getOutOfControllerItemment:function(){
                 var _self =this;
                 $.post(projectName+"/RiskCheckResult/newRisksiteoutofcontrolattachment",{},function(data){
                     _self.outofcontrolattachment=data;
                 });
             },*/
            //展开二级菜单
            showhazard: function (mchildRiskSite, mchindex) {
                var _self = this;
                if ((mchildRiskSite.index + "").indexOf(".") > 0) {
                    _self.tempHazardID = mchildRiskSite.hazardID;
                    _self.onClickHazards(mchildRiskSite, mchindex);
                } else {
                    if (!mchildRiskSite.showChild || mchildRiskSite.showChild == null) {
                        mchildRiskSite.showChild = false;
                        for (var i = 0; i < mchildRiskSite.mhazards.length; i++) {
                            var demo = {
                                name: "",
                                hazardID: "",
                                index: mchildRiskSite.index + "." + (i + 1),
                                mhazards: {
                                    length: ""
                                }
                            };
                            demo.name = mchildRiskSite.mhazards[i].name;
                            demo.hazardID = mchildRiskSite.mhazards[i].hazardID;
                            demo.mhazards.length = mchildRiskSite.mhazards[i].length;
                            _self.mchildRiskSiteList.splice(mchindex + i + 1, 0, demo);
                        }
                        mchildRiskSite.showChild = !mchildRiskSite.showChild;
                    } else {
                        for (var i = 0; i < mchildRiskSite.mhazards.length; i++) {
                            _self.mchildRiskSiteList.splice(mchindex + 1, 1);
                        }
                        mchildRiskSite.showChild = !mchildRiskSite.showChild;
                    }
                }
            },
            //删除
            deteleItem1: function (arisksiteoutofcontrolitem, arindex) {
                var _self = this;
                _self.risksiteoutofcontrolitem = "";
                _self.risksiteoutofcontrolitemList.splice(arindex, 1);
            },
            //检查时间
            chectimefunction: function () {
                var checktime = $("#checkTime").val();
                return checktime;
            },
            //点击风险时
            onClickHazards: function (hazards, mchindex) {
                var _self = this;
                $.post(projectName + "/RiskCheckResult/getHazards/" + hazards.hazardID, {}, function (data) {
                    _self.hazards = data;
                    _self.uploadList = [];
                    $("#name").val(_self.hazards.name);
                    $("#damageType").val(_self.hazards.damageType);
                    if (_self.hazards.mriskControlMeasure != null && _self.hazards.mriskControlMeasure != "") {
//                        _self.watchMeasure = _self.hazards.mriskControlMeasure[0];
                        var measureContent = "";
                        _self.hazards.mriskControlMeasure.forEach(function(val,index){
                            measureContent += val.measureContent + ";";
                        });
                        _self.hazards.mriskControlMeasure[0].measureContent = measureContent;
                        _self.watchMeasure = _self.hazards.mriskControlMeasure[0];
                    }
                    _self.tempParams = 1;
                    //首先获取一个空的item对象
                    $.get(projectName + "/RiskCheckResult/newRisksiteoutofcontrolitem", {}, function (data) {
                        _self.risksiteoutofcontrolitem = data;
                        _self.risksiteoutofcontrolitem.hazardID = _self.hazards.hazardID;
                        //上传附件成功是push到里面
                        /*    _self.risksiteoutofcontrolitem.accthes =_self.outofcontrolattachmentList;*/
                    })
                });
            },
            //提交现场检查结果事件
            addOutofItem: function () {
                var _self = this;
                if(_self.status=="1"){
                    if (_self.question == null || _self.question == "") {
                        _self.showToast("warning", "检查结果不能为空！");
                        return;
                    } else {
                        if (_self.question.replace(/\s/g, "") == null || _self.question.replace(/\s/g, "") == "") {
                            _self.showToast("warning", "检查结果不能为空！");
                            return;
                        }
                    }
                }
                //校验是否重复
                for (var i = 0; i < _self.risksiteoutofcontrolitemList.length; i++) {
                    if (_self.risksiteoutofcontrolitemList[i].hazardID == _self.hazards.hazardID) {
                        _self.showToast("warning", "不能重复添加风险信息！");
                        return;
                    }
                }
                $.post(projectName + "/RiskCheckResult/getHazards/" + _self.risksiteoutofcontrolitem.hazardID, {}, function (data) {
                    _self.risksiteoutofcontrolitem.hazard = data;
                    _self.risksiteoutofcontrolitem.riskSiteID = _self.fristRiskSite;
                    _self.risksiteoutofcontrolitem.checkQuestion = _self.question;
                    _self.risksiteoutofcontrolitemList.push(_self.risksiteoutofcontrolitem);
                    //push检查结果数组
                    _self.outOfControllerList[_self.tempFristIndex].mcontrolitem.push(_self.risksiteoutofcontrolitem);
                    _self.outOfControllerList[_self.tempFristIndex].mcontrolitem[_self.outOfControllerList[_self.tempFristIndex].mcontrolitem.length - 1] = _self.risksiteoutofcontrolitemList[_self.risksiteoutofcontrolitemList.length - 1];
                    if(_self.status=="1"){
                        _self.risksiteoutofcontrolitemList[_self.risksiteoutofcontrolitemList.length - 1].outOfControlStatus =true;
                        _self.outOfControllerList[_self.tempFristIndex].status=true;
                    }else{
                        _self.outOfControllerList[_self.tempFristIndex].status=false;
                    }

                    _self.question = "";
                });
            },
            //获取一个空的管控措施
            getNewControllerMeasure: function () {
                var _self = this;
                $.get(projectName + "/RiskControlMeasureControl/newRiskcontrolmeasure", {}, function (data) {
                    _self.riskControllerMeasure = data;
                });
            },
            //获取一个检查结果对象
            getNewCheckResult: function () {
                var _self = this;
                $.get(projectName + "/RiskCheckResult/newRisksiteoutofcontrol", {}, function (data) {
                    _self.risksiteoutofcontrol = data;
                    _self.risksiteoutofcontrol.status=true;
                });
            },
            //获取一个空的风险对象
            getNewHazards: function () {
                var _self = this;
                $.get(projectName + "/RiskCheckResult/newHazards", {}, function (data) {
                    _self.hazards = data;
                });

            },
            //保存事件
            saveCheckResult: function () {
                var _self = this;
                if ($("#checkTime").val() == null || $("#checkTime").val() == "") {
                    _self.showToast("warning", "检查时间不能为空！");
                    return;
                }
                if (_self.checkDepartment == null || _self.checkDepartment == "") {
                    _self.showToast("warning", "检查部门不能为空！");
                    return;
                }
                if (_self.checkName == null || _self.checkName == "") {
                    _self.showToast("warning", "检查人不能为空！");
                    return;
                }
                if (_self.risksiteoutofcontrolitemList.length == 0) {
                    _self.showToast("warning", "至少添加一条风险信息！");
                    return;
                }
                _self.outOfControllerList[_self.tempFristIndex].createName = "<%=username%>";
                _self.outOfControllerList[_self.tempFristIndex].createID = "<%=userid%>";
                _self.outOfControllerList[_self.tempFristIndex].checkTime = $("#checkTime").val();
                _self.outOfControllerList[_self.tempFristIndex].createUnitName = "<%=fOrg_Name%>";
                _self.outOfControllerList[_self.tempFristIndex].createUnitID = "<%=fOrgID_Auto%>";
                /*_self.outOfControllerList[_self.tempFristIndex].status = false;*/
                _self.outOfControllerList[_self.tempFristIndex].riskSiteID = _self.fristRiskSite;
                _self.outOfControllerList[_self.tempFristIndex].majorType = _self.riskcontrolplanebymonth.monthplanMajorType;
                _self.outOfControllerList[_self.tempFristIndex].monthPlaneID = _self.riskcontrolplanebymonth.monthplaneID;
                _self.outOfControllerList[_self.tempFristIndex].monthPlaneItemID = _self.mmonthPlanItems[_self.tempFristIndex].itemID;

               console.log("保存的整个List----" +  _self.outOfControllerList);
                //批量保存
                $.ajax({
                    url: projectName + "/RiskCheckResult/saveCheckResultList", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.outOfControllerList),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        if (data) {
                            _self.showToast("success", "保存成功！");

                            for(var i=0;i<_self.outOfControllerList.length;i++){
                                var checkTime=_self.outOfControllerList[i].checkTime;
                                var riskName="";

                                for(var m=0;m<_self.mmonthPlanItems.length;m++){
                                    if(_self.outOfControllerList[i].riskSiteID==_self.mmonthPlanItems[m].mriskSite.riskSiteID){
                                        riskName=_self.mmonthPlanItems[m].mriskSite.name;
                                        var dutyName =_self.mmonthPlanItems[m].itemcheckerName;
                                        var unitName=_self.mmonthPlanItems[m].unitName;
                                        var dutyID="";
                                        if(dutyName!=""&&dutyName!=null&&unitName!=""&&unitName!=null){
                                            for(var n=0;n<_self.empList.length;n++){
                                                if(dutyName==_self.empList[n].fEmp_Name&&unitName.indexOf(_self.empList[n].fOrg_Name)>-1){
                                                    dutyID= _self.empList[n].fEmp_ID;
                                                    break;
                                                }
                                            }
                                        }
                                        break;
                                    }
                                }
                                var problem="";
                                for(var j=0;j<_self.outOfControllerList[i].mcontrolitem.length;j++){
                                    problem+=(j+1)+_self.outOfControllerList[i].mcontrolitem[j].checkQuestion+";";
                                }
                                $.ajax({
                                    url:projectName + "/RiskCheckResult/systemMessage", //发送请求的地址。
                                    type:"post", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                    data:{
                                        "checkTime":checkTime,
                                        "riskName":riskName,
                                        "dutyName":dutyName,
                                        "dutyID":dutyID,
                                        "checker":_self.checkName,
                                        "problem":problem,

                                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                    dataType:"json",//预期服务器返回的数据类型。
                                    async:false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                    success: function(data){
                                        //请求成功后的回调函数
                                    },
                                });
                            }

                            for(var i=0;i<_self.risksiteoutofcontrolitemList.length;i++){
                                var problem="";
                                problem+=(i+1)+_self.risksiteoutofcontrolitemList[i].checkQuestion+";";
                            }

                            window.location.href = projectName + "/menu/RiskCheckResult.do";
                        } else {
                            _self.showToast("error", "保存失败!");
                        }
                    },
                })
            },
            //获取一级风险点根据选择的检查计划
            getRiskSiteByPlan: function () {
                var _self = this;
                $.post(projectName + "/RiskCheckResult/getRiskSiteByPlan", {}, function (data) {
                    _self.riskcontrolplanebymonth = data;
                    _self.mmonthPlanItems = data.mmonthPlanItems;
                    _self.getOneOrMoreOutOfController(_self.mmonthPlanItems.length);
                    _self.tempParams = -1;
                });
            },
            //获取一个或者多个outofcontroller对象
            getOneOrMoreOutOfController: function (num) {
                var _self = this;
                $.post(projectName + "/RiskCheckResult/moreRisksiteoutofcontrol/" + num, function (data) {
                    _self.outOfControllerList = data;
                });
            },
            //获取当前时间
            getNowTime: function () {
                var _self = this;
                var mydate = new Date().format("yyyy-MM-dd");
                _self.mydate = mydate;
                $("#checkTime").val(_self.mydate);
            },
            //获取部门信息
            getDepartment: function () {
                var _self = this;
                $.post(projectName + "/PlatForm/getDepartment", function (data) {
                    _self.departmentList = data;
                    _self.getNowTime();
                    _self.getRiskSiteByPlan();
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
        computed: {},
        watch: {
            'checkDepartment': {
                handler: function (val, oldVal) {
                    var _self = this;
                    var tempvar = "";
                    if (val == null || val == "") {
                        _self.responsibleList = [];
                    } else {
                        _self.responsibleList = [];
                        for (var i = 0; i < _self.departmentList.length; i++) {
                            if (_self.departmentList[i].fOrg_Name == _self.checkDepartment) {
                                tempvar = _self.departmentList[i].fOrgID;
                            }
                        }
                        //获取对应部门的的责任人参数是组织机构ID(fOrgID)
                        $.post(projectName + "/PlatForm/getCurrOrgEmpList/" + tempvar, function (data) {
                            _self.responsibleList = data;
                        });
                    }
                },
                deep: true
            },
            'departmentList': function () {
                var _self = this;
                this.$nextTick(function () {
                    _self.checkDepartment = "<%=fOrg_Name%>";
                })
            },
            'responsibleList': function () {
                var _self = this;
                this.$nextTick(function () {
                    _self.checkName = "<%=username%>";
                })
            },
            'fristRiskSite': {
                handler: function (val, oldVal) {
                    var _self = this;
                    //给上一个outofcontroller赋值
                    if (oldVal != "") {
                        for (var j = 0; j < _self.mmonthPlanItems.length; j++) {
                            if (_self.mmonthPlanItems[j].mriskSite.riskSiteID == oldVal) {
                                _self.lasttempFristIndex = j;
                            }
                        }
                        _self.outOfControllerList[_self.lasttempFristIndex].createName = "<%=username%>";
                        _self.outOfControllerList[_self.lasttempFristIndex].createID = "<%=userid%>";
                        _self.outOfControllerList[_self.lasttempFristIndex].checkTime = $("#checkTime").val();
                        _self.outOfControllerList[_self.lasttempFristIndex].createUnitName = "<%=fOrg_Name%>";
                        _self.outOfControllerList[_self.lasttempFristIndex].createUnitID = "<%=fOrgID_Auto%>";
                        /*_self.outOfControllerList[_self.lasttempFristIndex].status = false;*/
                        _self.outOfControllerList[_self.lasttempFristIndex].riskSiteID = oldVal;
                        _self.outOfControllerList[_self.lasttempFristIndex].majorType = _self.riskcontrolplanebymonth.monthplanMajorType;
                        _self.outOfControllerList[_self.lasttempFristIndex].monthPlaneID = _self.riskcontrolplanebymonth.monthplaneID;
                        _self.outOfControllerList[_self.lasttempFristIndex].monthPlaneItemID = _self.mmonthPlanItems[_self.lasttempFristIndex].itemID;
                        if(_self.status=="1"){
                            _self.outOfControllerList[_self.lasttempFristIndex].status = true;
                        }else{
                            _self.outOfControllerList[_self.lasttempFristIndex].status = false;
                        }

                    }
                    //这是目前的outofcontroller的序号----关联
                    for (var i = 0; i < _self.mmonthPlanItems.length; i++) {
                        if (_self.mmonthPlanItems[i].mriskSite.riskSiteID == val) {
                            _self.tempFristIndex = i;
                        }
                    }
                    $.post(projectName + "/RiskCheckResult/getOtherRiskSiteByRiskSiteID/" + _self.fristRiskSite, {}, function (data) {
                        _self.riskSite = data;
                        _self.mchildRiskSiteList = data.mchildRiskSite;
                        if (_self.mchildRiskSiteList.length > 0) {
                            for (var i = 0; i < _self.mchildRiskSiteList.length; i++) {
                                _self.mchildRiskSiteList[i].index = i + 1;
                            }
                        }
                        for (var i = 0; i < _self.mmonthPlanItems.length; i++) {
                            if (_self.mmonthPlanItems[i].mriskSite.riskSiteID == _self.fristRiskSite) {
                                _self.monthPlanItemID = _self.mmonthPlanItems[i].itemID;
                            }
                        }

                    });
                }
            },
            'tempParams': {
                handler: function (val, oldVal) {
                    var _self = this;
                }
            },
            'watchMeasure': {
                handler: function (val, oldval) {
                    var _self = this;
                    if (_self.watchMeasure.measureURL != null) {
                        $("#measureContent").val("附件下载");
                    } else {
                        $("#measureContent").val(_self.watchMeasure.measureContent);
                    }
                }
            }
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
            , showBottom: false
        });
    });

</script>

</body>

</html>