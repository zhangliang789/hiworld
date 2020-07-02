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
    <title>年度辨识上报</title>
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

        .input-group-addon, .input-group-btn {
            width: 1% !important;
            white-space: nowrap;
            vertical-align: middle;
        }

        .table {
            margin-bottom: 0;
        }
        .ivu-select-dropdown {

            position: absolute !important;
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
                    <h1 style="float: left;">年度辨识上报 <span
                            style="font-size: 14px;color: #0B8DE5;"><!--上报至2018年5月--></span></h1>
                    <div class="form-group" style="float: right;">

                        <button type="submit" data-toggle="modal" data-target="#modal-add"
                                class="btn btn-effect-ripple btn-primary">筛选
                        </button>
                        <button type="submit" data-toggle="modal" data-target="#modal-delete"
                                class="btn btn-effect-ripple btn-primary">上报
                        </button>


                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->

    <div class="block full" style="padding-top: 0;">


        <div class="">
            <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">


                <table id="general-table" class="table table-striped table-bordered table-vcenter">
                    <thead>
                    <tr>
                        <%--<th style="width: 80px;" class="text-center"><label class="csscheckbox csscheckbox-primary"><input type="checkbox"><span></span></label></th>--%>
                        <th class="text-center">序号</th>
                        <th class="text-center">辨识时间</th>
                        <th class="text-center">风险点</th>
                        <th class="text-center">管控对象</th>
                        <th class="text-center">风险</th>
                        <%--<th class="text-center">责任岗位</th>--%>
                        <%--<th class="text-center">LEC风险值</th>--%>
                        <%--<th class="text-center">LS风险值</th>--%>
                            <th class="text-center">风险描述</th>
                            <th class="text-center">风险等级</th>
                        <th class="text-center">是否是重大</th>
                        <th class="text-center">管控措施</th>
                        <th class="text-center">操作</th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="(mySynByYear,index) in SynByYearHistoryList">
                        <%--<td class="text-center"><label class="csscheckbox csscheckbox-primary"><input type="checkbox"><span></span></label></td>--%>
                        <td class="text-center" v-text="(nowpage-1)*pagesize+index+1"></td>
                        <td v-text="mySynByYear.yeRecognizeTime"></td><%--辨识时间 --%>
                        <td v-text="mySynByYear.activity"></td><%--风险点 --%>
                        <td v-text="mySynByYear.controlMangerName"></td><%--管控对象 --%>
                        <td v-text="mySynByYear.harzardName"></td><%--风险 --%>
                        <%--<td v-text="mySynByYear.dutyPost"></td>&lt;%&ndash;责任岗位 &ndash;%&gt;--%>
                        <%--<td v-text="mySynByYear.lECRiskValue"></td>&lt;%&ndash;LEC风险值 &ndash;%&gt;--%>
                        <%--<td v-text="mySynByYear.riskValue"></td>&lt;%&ndash;LS风险值 &ndash;%&gt;--%>
                        <td v-text="mySynByYear.yePossiblyHazard"></td><%--风险描述 --%>
                        <td v-text="mySynByYear.yeRiskGrade"></td>
                        <td class="text-center" v-if="mySynByYear.isMajor==0">否</td>
                        <td class="text-center" v-if="mySynByYear.isMajor==1">是</td>
                        <td class="text-center" v-if="mySynByYear.isMajor!=1&&mySynByYear.isMajor!=0">是</td>
                        <td v-text="mySynByYear.manageMeasure"></td>
                        <td class="text-center">
                            <a @click="deleteSynByYearHistory((nowpage-1)*pagesize+index,index)">不上报</a>
                        </td>

                    </tbody>
                </table>
                <div class="row">
                    <div class="col-sm-7 col-xs-12 clearfix">
                        <div class="dataTables_paginate paging_bootstrap" id="example-datatable_paginate">
                            <template>
                                <Page :total="SynByYearHistoryListAll.length" @on-change="showRiskInfo"
                                      :page-size="pagesize"></Page>
                            </template>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--筛选-->
    <div id="modal-add" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body" style="height:851px;">
                    <div class="block-title">
                        <h4>查询信息</h4></div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">辨识年份</label>
                            <div class="col-sm-8">
                                <input class="form-control nihao1" placeholder="点击选择辨识年份" type="text" readonly id="year">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">辨识月份</label>
                            <div class="col-sm-8">
                                <input class="form-control nihao1" placeholder="点击选择辨识月份" type="text"  readonly id="month">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskControlTier"></div>--%>
                                    <input class="form-control nihao1" placeholder="请填写风险" type="text"   id="Name">
                            </div>
                        </div>
                        <%--<div class="form-group">
                            <label class="col-sm-3 control-label">风险等级</label>
                            <div class="col-sm-8">
                                &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                &lt;%&ndash;v-model="riskSite.riskLevel">&ndash;%&gt;
                                &lt;%&ndash;&ndash;%&gt;
                                <select class="form-control nihao1" placeholder="" type="text"
                                        v-model="riskSite.riskLevelSettingID">
                                    <option value=null>请选择风险等级</option>
                                    <option v-for="(risklever,index) in riskleversettingList" :value="risklever.riskLevelSettingID">{{risklever.riskLevel}}</option>
                                </select>
                            </div>
                        </div>--%>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="getWaittingForSynByYearHistory"
                                data-dismiss="modal">确认
                        </button>
                        <button type="button" class="btn btn-effect-ripple btn-danger" @click="clearData">关闭</button>
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
    <div class="modal inmodal" id="modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content animated flipInY" style="height: 100% !important;">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span
                                aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <i class="fa  modal-icon"></i>
                        <h4 class="modal-title">上报</h4>
                        <small></small>
                    </div>
                    <div class="modal-body">
                        <p>确认要上报年度辨识数据吗？</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal"
                                @click="submitSynByYearHistoryList">确认
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



<script src="../js/vendor/jquery-2.2.4.min.js"></script>
<script src="../js/vendor/bootstrap.min.js"></script>
<script src="../js/bootstrap-treeview.js"></script>
<script src="../js/treeview-demo.min.js"></script>
<script src="../js/plugins.js"></script>
<script src="../js/app.js"></script>
<script src="../js/pages/uiTables.js"></script>
<script src="../js/pages/compTree.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>
<script>
    $(function () {
        CompTree.init();
    });
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
            nowpage: 1,
            pagesize: 10,
            SynByYearHistoryList: [],
            SynByYearHistoryListAll: "",
            Name: "",
            roleList:"",
            Name:"",
            passwordLC:"",
            INPWD:"",
            syncyearhistory:"",
            syncyearhistoryList:"",

        },
        created: function () {
            var _self = this;
            _self.getPWD();
//            _self.getWaittingForSynByYearHistory();
//            _self.getNewSyncyearhistory();//上报历史
            _self.getRoleTypes();
        },
        mounted: function () {
        },
        updated: function () {

        },
        methods: {
            getNewSyncyearhistory:function(){
              var _self=this;
              //url:待载入页面的URL地址
              //data:待发送 Key/value 参数。
              //callback:载入成功时回调函数。
              //type:返回内容格式，xml, html, script, json, text, _default。
              $.get(projectName+"/Syn/newSyncyearhistory",{},function(data){
                _self.syncyearhistory=data;
                  _self.getSyncyearhistoryList();

              });
            },
            getSyncyearhistoryList:function(){
              var _self=this;
              $.ajax({
                  url:projectName+"/Syn/getSyncyearhistoryList", //发送请求的地址。
                  type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                  data:JSON.stringify(_self.syncyearhistory),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                  dataType:"json",//预期服务器返回的数据类型。
                  contentType:"application/json",
                  async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                  success: function(data){
                    //请求成功后的回调函数
                      _self.syncyearhistoryList=data;
                  },

              });

            },
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
                        _self.getWaittingForSynByYearHistory();

                    }
                });
            },
            confirmPWD:function(){
                var _self=this;
                if(_self.passwordLC==_self.INPWD){
                    _self.loading=false;
                    _self.getWaittingForSynByYearHistory();
                    $("#input_pwd").modal("hide");
                }else{
                    _self.showToast("warning","你输入的密码有误");
                    _self.loading=true;
                }
            },
            //获取平台岗位信息
            getRoleTypes: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Keyalue 参数。
                //callback:载入成功时回调函数。
                $.post(projectName + "/PlatForm/getRoleTypes", function (data) {
                    _self.roleList = data;


                });
            },

            clearData:function(){
              var _self=this;
              $("#year").val("");
              $("#month").val("");
              _self.Name="";
              $("#modal-add").modal("hide");
            },
            //上报年度辨识信息
            submitSynByYearHistoryList: function () {
                var _self = this;
                if(_self.SynByYearHistoryList.length==0){
                    _self.showToast("warning","上报信息不能为空");
                    return;
                }
                layer.load();
                //url:发送请求地址。
                //data:待发送 Key/value 参数。
                //callback:发送成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.ajax({
                    url: projectName + "/Syn/SynYearData", //发送请求的地址。
                    type: "post", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.SynByYearHistoryList),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        if (data) {
                            _self.showToast("success", "上报成功");
                            _self.SynByYearHistoryList=[];
                            _self.getWaittingForSynByYearHistory();
                        } else {
                            _self.showToast("error", "上报失败");
                        }
                        layer.closeAll('loading');

                    },
                    error:function(XMLHttpRequest, textStatus, errorThrown){
                        _self.showToast("error","上报失败");
                        layer.closeAll('loading');
                    }

                });
            },
            //分页展示
            showRiskInfo: function (val) {
                console.log("xxxxxxxxxxx");
                console.log(val);
                var _self = this;
                _self.SynByYearHistoryList = [];

                for (var i = (val - 1) * _self.pagesize; i < _self.SynByYearHistoryListAll.length; i++) {
                    if (i < val * _self.pagesize) {
                        _self.SynByYearHistoryList.push(_self.SynByYearHistoryListAll[i]);
                    }

                }

                _self.nowpage = val;
            },
            //删除上传年度辨识里的风险信息
            deleteSynByYearHistory: function (index, count) {  //(nowpage-1)*pagesize+index index
                var _self = this;
                _self.SynByYearHistoryList = [];
                _self.SynByYearHistoryListAll.splice(index, 1);
                var val = (index - count) / _self.pagesize + 1;
                for (var i = (val - 1) * _self.pagesize; i < _self.SynByYearHistoryListAll.length; i++) {
                    if (i < val * _self.pagesize) {
                        _self.SynByYearHistoryList.push(_self.SynByYearHistoryListAll[i]);
                    }

                }

                _self.nowpage = val;
            },
            //获取待上传年度辨识里的风险信息
            getWaittingForSynByYearHistory: function () {
                var _self = this;
                //url:发送请求地址。
                //data:待发送 Key/value 参数。
                //callback:发送成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                var year=$("#year").val();
                var month=$("#month").val();
                _self.SynByYearHistoryList=[];
                var Name=$("#Name").val();
                $.ajax({
                    url:projectName + "/Syn/getWaittingForSynByYearHistory", //发送请求的地址。
                    type:"post", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data:{"year":year,"month":month,"Name":Name},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType:"json",//预期服务器返回的数据类型。
                    async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data){
                      //请求成功后的回调函数
                        _self.SynByYearHistoryListAll = data;
                        _self.showRiskInfo(1);
                        console.log(_self.SynByYearHistoryListAll);
//                        for (var i = 0; i < _self.SynByYearHistoryListAll.length; i++) {
//                            if (i < _self.pagesize) {
//                                _self.SynByYearHistoryList.push(_self.SynByYearHistoryListAll[i]);
//                            }
//                        }
                    },
                });
               /* $.post(projectName + "/Syn/getWaittingForSynByYearHistory", function (data) {
                    _self.SynByYearHistoryListAll = data;
                    for (var i = 0; i < _self.SynByYearHistoryListAll.length; i++) {
                        if (i < _self.pagesize) {
                            _self.SynByYearHistoryList.push(_self.SynByYearHistoryListAll[i]);
                        }
                    }
                    console.log(data)


                });*/


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
    })
</script>
<script>

    laydate.render({
        elem: "#year"
        , trigger: 'click'
        , type: 'year'
        , theme: '#3188f2'
    });
    laydate.render({
        elem: "#month"
        , trigger: 'click'
        ,type:'month'
        ,format:'MM'
        , theme: '#3188f2'
    });

</script>

</body>

</html>