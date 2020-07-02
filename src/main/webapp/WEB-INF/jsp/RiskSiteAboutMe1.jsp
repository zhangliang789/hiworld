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
    <title>风险评估-风险</title>
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
            background-color: #f1f1f1;
            font-weight: bold;

        }

        .table > tbody + tbody {
            border-top: 0;
        }

        td a {
            color: #5ccdde
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

        #test li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 256px 75px;
            box-sizing: border-box;
        }
        #test1 li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 256px 75px;
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

        .wxdj-wz{
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
            overflow-y:scroll ;

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

    </style>
</head>

<body>
<div id="page-content" style="min-height: 794px;" onkeydown="search()">
    <%--<% User userObj = (User) session.getAttribute("user");--%>
        <%--String username = userObj.getFUserName();--%>
        <%--Integer userid = userObj.getFUserID();--%>
    <%--%>--%>
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-6">
                <div class="header-section">
                    <h1>风险信息</h1></div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full" style="padding: 0;">
        <div class="">
            <div class="">
                <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                    <div class="row" style="background-color: #fff;border: 0; padding-top: 0;">
                        <div class="col-sm-12" style="text-align: right;padding:0">
                            <%--&lt;%&ndash; <select class="form-control" name="">--%>
                                 <%--<option vaule="0">参考同类管控措施</option>--%>
                                 <%--<option value="11" v-for="sisk1 in detailedList" v-text="sisk1.name">{{sisk1}}</option>--%>
                             <%--</select>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;  <div class="searchCon"><i class="hi hi-search"></i>&lt;%&ndash;<input name="search" id="keywords"--%>
                                                                                        <%--placeholder="输入风险点名称 回车查询"--%>
                                                                                        <%--class="searchWrap"--%>
                                                                                        <%--type="text">&ndash;%&gt;--%>
                              <%--</div>&ndash;%&gt;--%>
                            <%--<button type="button" class="btn btn-effect-ripple btn-primary" data-toggle="modal"--%>
                                    <%--data-target="#modal-add">筛选--%>
                            <%--</button>--%>
                        </div>
                    </div>
                </div>
                <div>
                    <ol class="breadcrumb">
                        <li><a href="<%=request.getContextPath()%>/menu/RiskSiteAboutMe.do"><%=request.getSession().getAttribute("position")%></a></li>
                        <li><a href="<%=request.getContextPath()%>/menu/RiskSiteAboutMeShowMRiskSite.action">{{riskSite.name}}</a></li>
                        <li> <a href="<%=request.getContextPath()%>/menu/RiskSiteAboutMeShowMRiskSite.action" class="btn btn-effect-ripple btn-primary">返回</a></li>
                    </ol>
                </div>
                <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                    <tr class="biaot biaot1">

                        <td style="position: relative" class="text-center tcrk" rowspan="2">
                            <span class="dj">序号
											<i id="itcys" class="fa fa-chevron-down fa-fw"></i></span>
                            <ul class="tcys" id="tcys" >
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
                        <td class="text-center" rowspan="2" v-show="showOrNot('Name')">{{'Name'|titleFilter('风险')}}</td>
                        <td class="text-center" rowspan="2" v-show="showOrNot('hazardDesc')">{{'hazardDesc'|titleFilter('风险描述')}}</td>
                        <td class="text-center" rowspan="2" v-show="showOrNot('damageType')">
                            {{'damageType'|titleFilter('灾害类型')}}
                        </td>
                        <%--<td class="text-center" rowspan="2" v-show="showOrNot('clossConsequence')">{{'clossConsequence'|titleFilter('可能导致事故原因')}}</td>--%>
                        <%--<td class="text-center" colspan="4">管控措施</td>--%>
                        <td class="text-center" rowspan="4">
                            风险分析
                        </td>                        <%--<td class="text-center" rowspan="2">暴露率(E)</td>--%>
                        <%--<td class="text-center" rowspan="2">后果(C)</td>--%>
                        <%--<td class="text-center" rowspan="2" v-show="showOrNot('Sseverity')">{{'Sseverity'|titleFilter('严重性(S)')}}</td>--%>
                        <td class="text-center" rowspan="2" v-show="showOrNot('riskValue')">{{'riskValue'|titleFilter('风险值(D)')}}</td>
                        <td class="text-center" rowspan="2" v-show="showOrNot('riskLevel')">{{'riskLevel'|titleFilter('风险等级')}}</td>
                        <td class="text-center" rowspan="2" v-show="showOrNot('riskColor')">{{'riskColor'|titleFilter('风险颜色')}}</td>

                        <td class="text-center" rowspan="2" v-show="showOrNot('manageUnit')">
                            {{'manageUnit'|titleFilter('管控部门')}}
                        </td>
                        <td class="text-center" rowspan="2" v-show="showOrNot('accountabilityUnit')">
                            {{'accountabilityUnit'|titleFilter('责任单位')}}
                        </td>
                        <td class="text-center" rowspan="2" v-show="showOrNot('status')">{{'supervisionUnit'|titleFilter('状态')}}</td>


                        <%--<td class="text-center" rowspan="2">管控层次</td>--%>
                        <%--<td class="text-center" rowspan="2" v-show="showOrNot('manageUnit')">{{'manageUnit'|titleFilter('责任部门')}}</td>--%>
                        <%--<td class="text-center" rowspan="2" v-show="showOrNot('supervisionUnit')">{{'supervisionUnit'|titleFilter('监管部门')}}</td>--%>
                    <%--<tr class="biaot">--%>
                        <%--<td class="text-center">管理措施</td>--%>
                        <%--<td class="text-center">培训教育</td>--%>
                        <%--<td class="text-center">个体防护</td>--%>
                        <%--<td class="text-center">应急处置</td>--%>
                    </tr>
                    <tbody v-for="(riskHazard,riskIndex) in riskHazards">
                    <tr class="biaot1 biaot2">
                        <td class="text-center" v-text="riskIndex+1"></td>
                        <td v-text="riskHazard.name" v-show="showOrNot('Name')"></td>
                        <td v-text="riskHazard.hazardDesc" v-show="showOrNot('hazardDesc')"></td>
                        <td v-text="riskHazard.damageType"  v-show="showOrNot('damageType')"></td>
                        <%--<td v-text="riskHazard.riskDamageType" v-show="showOrNot('riskDamageType')"></td>--%>
                        <%--<td v-text="riskHazard.clossConsequence" v-show="showOrNot('clossConsequence')"></td>--%>
                        <%--<td></td>--%>
                        <%--<td></td>--%>
                        <%--<td></td>--%>
                        <%--<td></td>--%>
                        <%--<td v-if="riskHazard.Sseverity==null"></td>--%>
                        <%--<td v-if="riskHazard.Sseverity==0">评估方法(LEC): L={{riskHazard.Lpossibility}} , E={{riskHazard.Eexpose}} , C={{riskHazard.clossConsequence}}</td>--%>
                        <%--<td v-if="riskHazard.Sseverity!=0&&riskHazard.Sseverity!=null">评估方法(LS): L={{riskHazard.Lpossibility}} , S={{riskHazard.Sseverity}}</td>--%>

                        <td v-if="riskHazard.Sseverity==null&&riskHazard.clossConsequence==null"></td>
                        <td v-if="riskHazard.clossConsequence!=null&&riskHazard.clossConsequence!=0">评估方法(LEC): L={{riskHazard.Lpossibility}} , E={{riskHazard.Eexpose}} , C={{riskHazard.clossConsequence}}</td>
                        <td v-if="riskHazard.Sseverity!=0&&riskHazard.Sseverity!=null">评估方法(LS): L={{riskHazard.Lpossibility}} , S={{riskHazard.Sseverity}}</td>


                    <%--<td v-text="riskHazard.Eexpose"></td>--%>
                        <%--<td v-text="riskHazard.consequence"></td>--%>
                        <%--<td v-text="riskHazard.Sseverity" v-show="showOrNot('Sseverity')"></td>--%>
                        <td v-text="riskHazard.driskValue" v-show="showOrNot('riskValue')"></td>
                        <td v-text="riskHazard.riskLevel" v-show="showOrNot('riskLevel')"></td>
                        <%--<td class="text-center" v-show="showOrNot('riskColor')"><span v-show="showOrNot('riskColor')"--%>
                                                       <%--v-bind:style="'background-color:'+riskHazard.riskColor"--%>
                                                       <%--class="btys"></span></td>--%>

                        <td class="text-center" v-show="showOrNot('riskColor')" v-if="riskHazard.riskColor!=null"><span v-show="showOrNot('riskColor')"
                                                                                                                        v-bind:style="'background-color:'+riskHazard.riskColor"
                                                                                                                        class="btys"></span></td>
                        <td class="text-center" v-show="showOrNot('riskColor')" v-if="riskHazard.riskColor==null"></td>
                        <td v-text="riskHazard.manageUnit" v-show="showOrNot('manageUnit')"></td>
                        <td v-text="riskHazard.accountabilityUnit" v-show="showOrNot('accountabilityUnit')"></td>
                        <td v-if="riskHazard.status==0" v-show="showOrNot('status')">未评估</td>
                        <td v-if="riskHazard.status==1" v-show="showOrNot('status')">已评估</td>


                        <%--<td></td>--%>
                        <%--<td v-text="riskHazard.manageUnit" v-show="showOrNot('manageUnit')"></td>--%>
                        <%--<td v-text="riskHazard.supervisionUnit" v-show="showOrNot('supervisionUnit')"></td>--%>

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
    var pageVarmee = "listmee";//页面唯一变量标识，每个页面不能重复
    var attrArray = null;
    /**
     * Created by txianwei on 2017/9/14
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            riskSite: "",
            riskHazards: "",
            updateRiskHazard: '',
            attributes: "",
            propertys: new Array()
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
                    if (localStorage.getItem((pageVarmee + _self.attributes[i].classpropertyName).toUpperCase()) == null || localStorage.getItem((pageVarmee + _self.attributes[i].classpropertyName).toUpperCase()) == "true") {
                    } else {
                        for(var j=0;j<_self.propertys.length;j++){
                            if(_self.attributes[i].classpropertyName.toUpperCase()==_self.propertys[j]){
                                _self.propertys.splice(j,1);
                                break;
                            }

                        }
                    }
                }

            },
            //从localStorage取值决定是否显示某一列
            showOrNot: function (column) {
                var _self = this;
                if (localStorage.getItem((pageVarmee + column).toUpperCase()) == null || localStorage.getItem((pageVarmee + column).toUpperCase()) == "true") {
                    return true;
                } else {
                    return false;
                }
            },
            //设置是否显示某一列,将结果写入localStorage
            confirmShowOrNot: function () {
                var _self = this;
                for (var i = 0; i < _self.attributes.length; i++) {
                    localStorage.setItem((pageVarmee + _self.attributes[i].classpropertyName).toUpperCase(), false);
                }
                for (var i = 0; i < _self.propertys.length; i++) {
                    localStorage.setItem((pageVarmee + _self.propertys[i]).toUpperCase(), true);
                }

                _self.getHazardByID();
            },




            //获取风险信息
            getHazardByID: function () {
                var _self = this;
                $.post(projectName + "/RiskControlMeasureControl/getHazard", function (data) {
                    _self.riskSite = data;
                    _self.riskHazards = data.mhazards;
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
        filters: {
            upCaseFilter: function (val) {
                return val.toUpperCase();
            },
            titleFilter: function (val,defaultName) {
                var _self = this;
                //console.log(val);
                //console.log(defaultName);
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

</body>

</html>