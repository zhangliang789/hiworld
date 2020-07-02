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
    <title>风险点台账</title>
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

        td a {
            color: #454e59;
        }

        .modal-footer {
            position: absolute;
            bottom: 50px;
            width: 100%;
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
            font-weight: bold;
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

        .ivu-select-dropdown {

            position: absolute !important;
        }
        td a {
            color: #3bb7ff;
        }
        a {
            cursor:pointer;
        }
    </style>
</head>

<body>
<div id="page-content" style="min-height: 794px;" onkeydown="search()">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section" style="overflow: hidden;">
                    <h1 style="float: left;padding:0">风险点台账</h1>

                    <div style="float: right;padding:0">

                        <div class="searchCon"><i class="hi hi-search"></i><input name="search" id="keywords"
                                                                                  v-model="topName"
                                                                                  placeholder="输入风险点名称 回车查询"
                                                                                  class="searchWrap"
                                                                                  type="text"></div>
                        <button type="button" onclick="querysearch()" class="btn btn-effect-ripple btn-primary">查询
                        </button>
                        <%--<button type="button" class="btn btn-effect-ripple btn-primary" data-toggle="modal"
                                data-target="#modal-add">设置筛选条件
                        </button>--%>
                        <button type="button" @click="getExcell" class="btn btn-effect-ripple btn-primary">导出</button>
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
                        <td style="position: relative" class="text-center tcrk" rowspan="2">序号
                        </td>
                        <td class="text-center" rowspan="2">风险点
                        </td>
                        <td class="text-center" rowspan="2">风险类型
                        </td>
                        <td class="text-center" rowspan="2">风险等级
                        </td>
                        <%--<td class="text-center" rowspan="2">风险描述--%>
                        </td>
                        <td class="text-center" rowspan="2">管理部门
                        </td>
                        <td class="text-center" rowspan="2">责任人
                        </td>
                        <td class="text-center" rowspan="2">确定日期
                        </td>
                        <td class="text-center" rowspan="2">消除日期
                        </td>
                        <td class="text-center" rowspan="2">操作
                        </td>
                    </tr>
                    <tbody>
                    <tr v-for="(risk,riskIndex) in detailedList">
                        <td class="text-center" v-text="pagesize*(nowpage-1)+riskIndex+1">
                        </td>
                        <td v-text="risk.name">
                        </td>
                        <td v-text="risk.riskDamageType">
                        </td>
                        <td v-text="risk.riskLevel">
                        </td>
                        <%--<td class="text-center" v-text="risk.hazardDesc">--%>
                        <%--</td>--%>
                        <td v-text="risk.managerUnitName">
                        </td>
                        <td v-text="risk.managerName">
                        </td>
                        <td v-text="risk.confirmDate">
                        </td>
                        <td v-text="risk.clearDate">
                        </td>
                        <td class="text-center">
                            <a @click="updateRiskInfo(risk)">修改</a>
                        </td>
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
    <div class="modal inmodal" id="update_Risk" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="min-height: 100%;overflow-y: auto">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">修改</h4>
                    <small></small>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">管理部门</label>
                        <div class="col-sm-8">
                            <i-select placeholder="请选择管理部门" type="text"
                                      v-model="riskmangerunit" ref="riskmangerunit" clearable filterable>
                                <i-option v-for="(mydepart,index) in departmentList"
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
                    <div class="form-group" style="padding-top: 5%">
                        <label class="col-sm-3 control-label">责任人</label>
                        <div class="col-sm-8">
                            <i-select placeholder="请选择责任人" ref="riskmanger" type="text"
                                      v-model="riskmanger" clearable filterable>
                                <i-Option v-for="(item,index) in userInfoList" :value="item.fEmp_Name"
                                          :label="item.fEmp_Name" :key="index">

                                    <span v-text="item.fEmp_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="item.fEmp_Name_Shorthand"></span>

                                </i-Option>
                            </i-select>
                        </div>
                    </div>
                    <div class="form-group" style="padding-top: 5%">

                        <label class="col-sm-3 control-label">确定日期</label>
                        <div class="col-sm-8">
                            <input placeholder="请选择确定日期" readonly class="form-control input-sm"
                                   type="text"
                                   id="startTime"/>
                        </div>

                    </div>
                    <div class="form-group" style="padding-top: 5%">
                        <label class="col-sm-3 control-label">消除日期</label>
                        <div class="col-sm-8">
                            <input placeholder="请选择消除日期" readonly class="form-control input-sm"
                                   type="text"
                                   id="endTime"/>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal"
                            @click="confirmUpdate">确认
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!--筛选-->
    <%-- <div id="modal-add" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-body" style="height:750px;">
                     <div class="block-title">
                         <h4>查询风险点信息</h4></div>
                     <form method="post" class="form-horizontal" onsubmit="return false;">
                         <div class="form-group">
                             <label class="col-sm-3 control-label">风险点名称</label>
                             <div class="col-sm-8">
                                 <input class="form-control nihao1" placeholder="请输入风险点名称" type="text" v-model="topName">
                             </div>
                         </div>
                         &lt;%&ndash;<div class="form-group">
                             <label class="col-sm-3 control-label">管控层级</label>
                             <div class="col-sm-8">
                                 &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                 &lt;%&ndash;v-model="riskSite.riskControlTier"></div>&ndash;%&gt;

                                 <i-select v-model="riskSite.riskControlTier" placeholder="请选择管控层级"
                                           clearable filterable>
                                     &lt;%&ndash;<i-option value=null>请选择管控层级</i-option>&ndash;%&gt;
                                     <i-option v-for="(myguankong,index) in guankongList"
                                               :value="myguankong.fData_Name"
                                               :label="myguankong.fData_Name">
                                         <span v-text="myguankong.fData_Name"></span>
                                         <span style="float:right;color:#ccc"
                                               v-text="myguankong.fData_Name_Shorthand"></span>
                                     </i-option>
                                 </i-select>
                             </div>
                         </div>&ndash;%&gt;
                         <div class="form-group">
                             <label class="col-sm-3 control-label">灾害类型</label>
                             <div class="col-sm-8">
                                 &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                 &lt;%&ndash;v-model="riskSite.riskDamageType">&ndash;%&gt;
                                 <i-select v-model="damageType" placeholder="请选择灾害类型"
                                           type="text" clearable filterable>
                                     &lt;%&ndash;<option value=null>请选择灾害类型</option>&ndash;%&gt;
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
                                 &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                 &lt;%&ndash;v-model="riskSite.riskDamageType">&ndash;%&gt;
                                 <i-select v-model="accidentType" placeholder="请选择事故类型"
                                           clearable filterable>
                                     &lt;%&ndash;<option value=null>请选择灾害类型</option>&ndash;%&gt;
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
                                 &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                 &lt;%&ndash;v-model="riskSite.riskLevel">&ndash;%&gt;
                                 &lt;%&ndash;&ndash;%&gt;
                                 <i-select placeholder="请选择风险等级" type="text"
                                           v-model="riskLevelSettingID" clearable filterable>
                                     &lt;%&ndash;<i-option value=null>请选择风险等级</i-option>&ndash;%&gt;
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
                                 &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                 &lt;%&ndash;v-model="riskSite.riskMajorType"></div>&ndash;%&gt;
                                 <i-select v-model="majorType" placeholder="请选择专业类型"
                                           type="text" clearable filterable>
                                     &lt;%&ndash;<i-option value=null>请选择专业类型</i-option>&ndash;%&gt;
                                     <i-option v-for="(mycategory,index) in categoryList"
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
                             <label class="col-sm-3 control-label">管控时间</label>
                             <div class="col-sm-4">
                                 <input placeholder="请选择管控周期（始）" readonly class="form-control input-sm"
                                        type="text"
                                        id="startTime"/>
                             </div>
                             <div class="col-sm-4">
                                 <input placeholder="请选择管控周期（终）" readonly class="form-control input-sm"
                                        type="text"
                                        id="endTime"/>
                             </div>

                         </div>
                     </form>
                     <div class="modal-footer">
                         <button type="button" class="btn btn-effect-ripple btn-primary"
                                 @click="getRiskDetailByXinAnCount"
                                 data-dismiss="modal">确认
                         </button>
                         <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                     </div>
                 </div>
             </div>
         </div>

     </div>--%>
    <form id="getExcell" action="<%=request.getContextPath()%>/RiskDetailedList/getExcellByInfo" method="post">
        <input id="ExcellID" name="ExcellID" type="hidden"/>
        <input id="ExcellName" name="ExcellName" type="hidden"/>
        <input id="riskName" name="riskName" type="hidden"/>
    </form>
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
<script type="text/javascript">
    function search() {
        if (event.keyCode == 13) {
//            var keywords = $("#keywords").val();
            vueApp.riskSite.name = vueApp.topName;
            vueApp.getPageCount();
        }
    }

    function querysearch() {
//        var keywords = $("#keywords").val();
        vueApp.riskSite.name = vueApp.topName;
        vueApp.getPageCount();
    }

    var projectName = '<%=request.getContextPath() %>';

    var pageVar = "list";//页面唯一变量标识，每个页面不能重复
    var attrArray = null;
    /**
     * Created by txianwei on 2017/9/14
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            pagesize: 15,
            nowpage: 1,
            riskSite: "",
            detailedList: [],
            riskleversetting: "",
            riskleversettingList: [],
            topName: "",
            guankongList: [],
            damageList: [],
            accidentList: [],
            categoryList: [],
            updateRisk: "",
            departmentList: [],
            riskmangerunit: "",
            riskmanger: "",
            empList: [],
            userInfoList: [],
        },
        beforeCreate: function () {
            var _self = this;
        },
        created: function () {
            var _self = this;
            _self.getNewRiskSite();
            _self.getDepartment();
            _self.getUserinfoList();
            _self.getEnterprise_data_dictionaryListForOrg();
            _self.getNewRiskleversetting();


        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            confirmUpdate: function () {
                var _self = this;
                _self.updateRisk.managerUnitName=_self.riskmangerunit;
                for (var i = 0; i < _self.departmentList.length; i++) {
                    if (_self.departmentList[i].fOrg_Name == _self.riskmangerunit) {
                        _self.updateRisk.managerUnitID = _self.departmentList[i].fOrgID_Auto;
                        break;
                    }

                }
                _self.updateRisk.managerName=_self.riskmanger;
                for (var i = 0; i < _self.userInfoList.length; i++) {
                    if (_self.userInfoList[i].fEmp_Name == _self.riskmanger) {
                        _self.updateRisk.managerID = _self.userInfoList[i].fEmp_ID_Auto;
                        break;
                    }

                }
                _self.updateRisk.confirmDate=$("#startTime").val();
                _self.updateRisk.clearDate=$("#endTime").val();
                $.ajax({
                    url:projectName+"/RiskDetailedList/updateRisksite", //发送请求的地址。
                    type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data:JSON.stringify(_self.updateRisk),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType:"json",//预期服务器返回的数据类型。
                    contentType:"application/json",
                    async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data){
                      //请求成功后的回调函数
                        _self.showToast("success","修改成功");
                        _self.getPageCount();
                    },
                });


            },
            //得到企业下所有人员的集合
            getUserinfoList: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/PlatForm/getUserinfoList", function (data) {
                    _self.userInfoList = data;

                });

            },
            getCurrOrgEmpList: function () {
                var _self = this;
                _self.empList = [];
                _self.riskmanger = "";
                var orgID = "-1";
                for (var i = 0; i < _self.departmentList.length; i++) {
                    if (_self.departmentList[i].fOrg_Name == _self.fcheckedDeptName) {
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
                        if (_self.empList.length != 0) {

                            _self.fregister = _self.empList[0].fEmp_Name;
                        }


                    });

                }
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
            updateRiskInfo: function (riskInfo) {
                var _self = this;
                _self.updateRisk = riskInfo;
                _self.riskmanger=_self.updateRisk.managerName;
                _self.riskmangerunit=_self.updateRisk.managerUnitName;
                $("#startTime").val(_self.updateRisk.confirmDate);
                $("#endTime").val(_self.updateRisk.clearDate);
                $("#update_Risk").modal("show");

            },
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
            getExcell: function () {
                var _self = this;
                $("#ExcellID").val("1");
                $("#ExcellName").val("风险点台账.xls");
                $("#riskName").val(_self.topName);
                $("#getExcell").submit();
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
                        _self.guankongList = data.管控层级;
                        _self.damageList = data.灾害类型;
                        _self.accidentList = data.事故类型;
                        _self.categoryList = data.专业类型;
                    },
                });
            },
            getNewRiskSite: function () {
                var _self = this;
                $.get(projectName + "/RiskDetailedList/newRiskSite", function (data) {
                    _self.riskSite = data;
                    _self.getPageCount();
                });
            },
            getPageCount: function () {
                var _self = this;
                _self.riskSite.pagesize = _self.pagesize;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskDetailedList/getTopRisksiteByCount",
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
            getDataByPage: function (page) {
                var _self = this;
                //加载层
                layer.load();
                _self.riskSite.page = page;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskDetailedList/getTopRisksiteByPage",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskSite),
                    success: function (data) {
                        //console.log(data);
                        _self.detailedList = data;

                        layer.closeAll('loading');
                    }
                });
            },
            explortExcel: function () {
                var _self = this;
                $.get(projectName + "/RiskDetailedList/ExplortExcel", function (data) {

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

            "riskmangerunit": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if(val==""||val==null){
                        this.$refs.riskmangerunit.clearSingleSelect();
                    }
                },
                deep: true
            },
            "riskmanger": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if(val==""||val==null){
                        this.$refs.riskmanger.clearSingleSelect();
                    }
                },
                deep: true
            },
        },
    })
</script>
<script>

    laydate.render({
        elem: "#startTime"
        , trigger: 'click'
        , type: 'date'
        , theme: '#3188f2'
    });
    laydate.render({
        elem: "#endTime"
        , trigger: 'click'
        , type: 'date'
        , theme: '#3188f2'
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