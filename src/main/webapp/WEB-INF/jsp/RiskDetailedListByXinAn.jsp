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
    <title>风险分级查看</title>
    <meta name="description"
          content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
    <meta name="author" content="pixelcave">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

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
    <script src="../js/vendor/modernizr-3.3.1.min.js"></script>
    <link href="../css/bootstrap-treeview.css" rel="stylesheet">
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="../css/iview.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../iview/iview.css">
    <style>
        th {
            white-space: nowrap;
        }
        html,
        body {
            width: 100%;
            height: 100%;
        }

        .txl {
            width: 100%;
            height: 100%;
        }

        .toggle-menu > li > a {
            position: relative;
            left: 30px;
            text-align: left;
        }

        .txl-left {
            width: 275px;
            height: 100%;
            overflow: hidden;
            float: left;
            background-color: #fff;
            position: relative;
            box-sizing: border-box;
            border-right: 1px solid #e1e7ea;
            z-index: 9999;
        }

        .toggle-menu ul a {
            text-align: left;
            margin-left: 0;
        }

        .txl-right {
            background-color: #f6f8f9;
            height: 100%;
            padding-left: 275px;
            box-sizing: border-box;
        }

        .searchCon {
            width: 266px;
            height: 25px;
            text-align: center;
            position: relative;
            margin: 20px auto;
        }

        .searchCon .searchWrap {
            width: 230px;
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

        .nav-tabs li {
            width: 50%;
            text-align: center;
        }

        .block {
            -webkit-box-shadow: 0 0px 0 rgba(218, 224, 232, .5);
            box-shadow: 0 0px 0 rgba(218, 224, 232, .5);
        }

        .block-title {
            border-bottom: 2px solid #3cbaff;
        }

        .block-title .nav-tabs > li.active > a,
        .block-title .nav-tabs > li.active > a:hover,
        .block-title .nav-tabs > li.active > a:focus {
            border: none;
            background-color: #3cbaff;
            color: #fff;
        }

        .accordion {
            width: 100%;
            max-width: 360px;
            background: #FFF;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
        }

        .accordion .link {
            cursor: pointer;
            display: block;
            padding: 15px 12px 15px 65px;
            color: rgb(61, 70, 74);
            font-size: 12px;
            /*		border-bottom: 1px solid #CCC;*/
            position: relative;
        }

        .accordion li:last-child .link {
            border-bottom: 0;
        }

        .toggle-menu a {
            font-size: 12px;
            font-weight: 300 !important;
            display: inline-block;
            padding: 15px 12px 15px 15px;
            color: #454e59;
            border-radius: 3px;
            width: 100%;
        }

        .submenu {
            display: none;
            font-size: 14px;
        }

        .submenu a {
            display: block;
            text-decoration: none;
            color: #454e59;
            padding: 12px;
            padding-left: 75px;
            -webkit-transition: all 0.25s ease;
            -o-transition: all 0.25s ease;
            transition: all 0.25s ease;
        }

        .submenu a:hover {
            color: #3cbaff;
        }

        .block.full {
            padding: 20px 0 0 0;
        }

        .block-title {
            margin-left: 0px;
            margin-right: 0px;
        }

        .text-right {
            float: right;
            color: #999;
            opacity: 0;
            font-size: 12px;
        }

        .accordion:hover .text-right {
            opacity: 1;
            transition: opacity 0.5s linear;
        }

        .gsmc {
            color: rgb(61, 70, 74);
            font-size: 12px;
            height: 30px;
            width: 100%;
            line-height: 30px;
            position: relative;
            left: 30px;
            text-align: left;
        }

        .yfry {
            height: 65px;
            line-height: 46px;
            color: #3d464a;
            font-size: 12px;
            padding-left: 21px;
            padding-top: 13px;
            position: relative;
            z-index: 2;
            background-color: #fff;
        }

        .listContainer {
            height: calc(100% - 65px);
            position: relative;
            overflow: scroll;
        }

        b {
            display: block;
            float: left;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            overflow: hidden;
            background-color: #000000;
            color: #fff;
            font-size: 18px;
            font-weight: 600px;
            text-align: center;
            line-height: 50px;
        }

        .session-item-main {
            float: left;
            margin-left: 10px;
            margin-top: 2px;
        }

        .zhuyao {
            margin: 20px 15px;
            overflow: hidden;
        }

        .nav-pills > li > a {
            color: #454e59;
            border-radius: 0px;
        }

        .nav-pills > li.active > a,
        .dropdown-menu > .active > a,
        .dropdown-menu > .active > a:hover,
        .dropdown-menu > .active > a:focus,
        .nav .open > a,
        .nav .open > a:hover,
        .nav .open > a:focus {
            color: #3d464a !important;
            background-color: rgb(241, 243, 247) !important;
        }

        .session-item-name {
            color: #3d464a;
            font-size: 12px;
            height: 21px;
            line-height: 26px;
        }

        .session-item-lastmsg,
        .im-session-draft {
            color: #9fa4a6;
            font-size: 12px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            display: inline-block;
        }

        .session-item-lastmsg {
            width: 150px;
            height: 20px;
            line-height: 20px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .searchCon i {
            position: absolute;
            top: 10px;
            left: 30px;
            z-index: 1;
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

        .table-striped > tbody > tr:nth-of-type(odd) {
            background-color: #fff !important;
        }

        table > thead > tr:nth-of-type(2) {
            background: #f9f9f9;
        }
        .btys {
            display: inline-block;
            padding: 10px 40px;
            vertical-align: sub;
        }

        .fa-caret-right {
            transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            -moz-transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            -o-transform: rotate(45deg);
        }

        .tcys {
            display: none;
            position: absolute;
            top: 35px;
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
    </style>
</head>

<body id="nrgd">

<div id="mypage-content" class="inner-sidebar-left" style="min-height: 794px;height: 100%;padding:0px;">
    <div>
        <!-- Table Styles Header -->
        <div class="content-header" style="overflow: hidden">
            <div class="col-sm-12" style="padding-top: 30px">
                <div class="header-section">
                    <h1 style="float: left;">风险分级查看</h1>
                    <div class="form-group" style="float: right; position: relative;right: 19px">

                        <button type="submit" class="btn btn-effect-ripple btn-primary" data-toggle="modal"
                                data-target="#modal-add">筛选
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="txl">
        <div class="txl-left">
            <tabs value="name1" @on-click="changeList">
                <tab-pane label="按地点" name="name1">
                    <div id="listContainer"
                         style="position: relative;right:-20px;height:616px;width:255px;overflow-y:scroll;">
                        <div style="height: 616px; overflow:scroll;">
                        <template style="height: 200px; overflow: scroll;">
                            <Tree :data="placeData" @on-select-change="checkPlace"></Tree>
                        </template>
                        </div>
                    </div>
                </tab-pane>

                <tab-pane label="按岗位" name="name2">
                    <div class="searchCon"><input name="search" v-model="role" value=""
                                                  placeholder="快速查找岗位"
                                                  class="searchWrap" type="text">
                        <i class="hi hi-search"></i>
                    </div>
                    <div class="block full">

                        <div class="tab-content" id="xx" style="overflow: hidden;height: 616px;">

                            <div class="tab-pane active" id="block-tabs-home" style="height:616px; overflow:scroll;">
                                <div class="gsmc" style="font-weight:bold;">{{treeJingCheng.fOrg_Name}}</div>
                                <ul class="toggle-menu" v-if="showMajorInfo==true" style="position: relative;top:15px">
                                    <li class="open">
                                        <a @click="changeShow(-2)">{{treeJingCheng.fOrg_Name}} <i v-if="changeIndex!=-2"
                                                                                                  class="fa fa-angle-right"></i><i
                                                v-if="changeIndex==-2" class="fa fa-angle-down"></i></a>
                                        <ul style=" position: relative;
                                            left: 40px;" v-if="changeIndex==-2"
                                            v-for="(mytreeAll,eindex) in treeJingCheng.enterprise_roles">
                                            <li>
                                                <a @click="getInfo(treeJingCheng,mytreeAll.fRole_Name)">{{mytreeAll.fRole_Name}}</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                                <ul class="toggle-menu" style="position: relative;top:10px"
                                    v-for="(mytree,index) in roleList">

                                    <li class="open">
                                        <a @click="changeShow(index)" <%--:class="{submenu:}"--%>>{{mytree.fOrg_Name}}
                                            <i v-if="index!=changeIndex" class="fa fa-angle-right"></i><i
                                                    v-if="index==changeIndex" class="fa fa-angle-down"></i></a>
                                        <ul v-if="index==changeIndex" style=" position: relative;
                                            left: 40px;">
                                            <li v-for="(myrole,rindex) in mytree.enterprise_roles">
                                                <a @click="getInfo(mytree,myrole.fRole_Name)">{{myrole.fRole_Name}}</a>
                                                <!--由于没有根据岗位跟责任部门相关的风险点，所以此处通过责任部门进行查询岗位-->
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-pane" id="block-tabs-profile">
                                <div class="gsmc">好友列表</div>
                                <ul class="toggle-menu">

                                    <li class="open">
                                        <a href="javascript:void(0)" class="submenu"><i class="fa fa-angle-right"></i>
                                            UI
                                            Elements</a>
                                        <ul>
                                            <li>
                                                <a href="javascript:void(0)">Modals</a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">Tooltips</a>
                                            </li>
                                            <li class="">
                                                <a href="javascript:void(0)" class="submenu"><i
                                                        class="fa fa-angle-right"></i>
                                                    Navigation</a>
                                                <ul>
                                                    <li>
                                                        <a href="javascript:void(0)">Tabs</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0)">Pagination</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">Blocks</a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">Buttons</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="open">
                                        <a href="javascript:void(0)" class="submenu"><i class="fa fa-angle-right"></i>
                                            Components</a>
                                        <ul>
                                            <li>
                                                <a href="javascript:void(0)">Maps</a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">Charts</a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">Gallery</a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">Animations</a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">Calendar</a>
                                            </li>
                                        </ul>
                                    </li>

                                </ul>
                            </div>

                        </div>
                        <!-- END Tabs Content -->
                    </div>
                </tab-pane>
            </tabs>

        </div>

        <div class="txl-right">
            <div class="block full" style="padding-top: 0;">
                <div id="showRiskInfo">
                    <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                        <table id="general-table"
                               class="table table-striped table-bordered table-vcenter table-hover">
                            <thead>
                            <tr>

                                <th class="text-center">序号</th>
                                <th class="text-center" style="min-width: 100px">风险点
                                </th>
                                <th class="text-center" style="min-width: 75px">
                                    等级
                                </th>
                                <th class="text-center">
                                    预警程度
                                </th>
                                <th class="text-center" style="min-width: 75px;">管控对象名称</th>
                                <%--<th class="text-center">危险源描述</th>--%>
                                <th class="text-center" style="min-width: 250px">风险</th>
                                <th class="text-center" style="min-width: 350px;">风险描述</th>
                                <th class="text-center" style="min-width: 100px">专业</th>
                                <th class="text-center">灾害类型</th>

                                <th class="text-center">管控周期（始）</th>
                                <th class="text-center">管控周期（终）</th>
                                <th class="text-center">矿级管控</th>
                                <th class="text-center">专业级管控</th>
                                <th class="text-center">职能部室级管控</th>
                                <th class="text-center">区队级管控</th>
                                <th class="text-center">班组个人级管控</th>
                            </tr>
                            </thead>
                            <tbody v-for="(risk,riskIndex) in detailedList">
                            <tr>
                                <td v-text="pagesize*(nowpage-1)+riskIndex+1">1</td>
                                <td v-text="risk.TopName"></td>
                                <td v-text="risk.RiskLevel">
                                <td class="text-center">
                                <span v-bind:style="'background-color:'+risk.RiskColor"
                                        class="btys"></span><span
                                        v-if="risk.RiskColor =='' || risk.RiskColor ==null"
                                        class="btys"></span></td>
                                <td v-text="risk.ChildName"></td>
                                <td v-text="risk.HazardName"></td>
                                <td v-text="risk.HazardDesc"></td>
                                <td v-text="risk.HazardMajorType"></td>
                                <td v-text="risk.HazardDamageType"></td>
                                <td v-text="risk.ControlRangeStartDay"></td>
                                <td v-text="risk.ControlRangeEndDay"></td>
                                <td v-text="risk.KJControlRang"></td>
                                <td v-text="risk.ZYControlRang"></td>
                                <td v-text="risk.QDControlRang"></td>
                                <td v-text="risk.BZControlRang"></td>
                                <td v-text="risk.GRControlRang"></td>

                            </tr>
                            </tbody>
                        </table>
                        <div class="row">
                            <div class="col-sm-7 col-xs-12 clearfix">
                                <template>
                                    <Page :total="detailedListAll.length" :current.sync="nowpage"
                                          @on-change="showRiskInfo" :page-size="pagesize"></Page>
                                </template>
                            </div>
                        </div>

                    </div>
                </div>
                <!--展示岗位职责信息-->
                <div id="showRoleInfo" hidden>
                    <h6>岗位职责信息功能有待完善...</h6>

                </div>
            </div>
            <div id="modal-add" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content" style="min-height: 100%">
                        <div class="modal-body">
                            <div class="block-title">
                                <h4>筛选信息</h4></div>
                            <form method="post" class="form-horizontal" onsubmit="return false;">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">管控对象名称</label>
                                    <div class="col-sm-8">
                                        <i-input placeholder="请输入管控对象名称" type="text"
                                                 v-model="riskObj"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">风险名称</label>
                                    <div class="col-sm-8">
                                        <i-input placeholder="请输入风险名称" type="text"
                                                 v-model="hazardName"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">灾害类型</label>
                                    <div class="col-sm-8">

                                        <i-select v-model="riskDamageType" placeholder="请选择灾害类型" filterable clearable>

                                            <i-option v-for="(mydamage,index) in damageList"
                                                      v-bind:value="mydamage.fData_Name"
                                                      v-bind:label="mydamage.fData_Name"

                                                      :key="index">
                                                <span v-text="mydamage.fData_Name"></span>
                                                <span style="float:right;color:#ccc"
                                                      v-text="mydamage.fData_Name_Shorthand"></span>
                                            </i-option>
                                        </i-select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">专业类型</label>
                                    <div class="col-sm-8">

                                        <i-select v-model="category" placeholder="请选择专业类型" filterable clearable>

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
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-effect-ripple btn-primary" @click="changeSelect"
                                    data-dismiss="modal">确认
                            </button>
                            <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <form id="getExcell" action="<%=request.getContextPath()%>/RiskSiteAboutMe/getExcell" method="post">
                <input id="ExcellID" name="ExcellID" type="hidden"/>
                <input id="ExcellName" name="ExcellName" type="hidden"/>
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
                &lt;%&ndash; <input id="subButton" value="提交" type="button" @click="downloadFile">&ndash;%&gt;
            </form>
            <form id="downFile" action="<%=request.getContextPath()%>/RiskControlMeasureControl/downFile"
                  method="post">
                <input id="downloadUrl" name="downloadUrl" type="hidden"/>
                <input id="realFileName" name="realFileName" type="hidden"/>
            </form>
            <div id="modal-regular1" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content" style="min-height: 100%; height: auto">
                        <div class="modal-body" style="height: 100%;overflow-y: auto">

                            <div class="block-title">
                                <h4 style="width: 100%;">
                                    名称:{{risk1.name

                                    }}<span></span>
                                    <div style="float: right;font-size:12px">等级：<span
                                            style="font-size:16px;color: #FF0000; ">{{risk1.riskLevel}}</span>
                                    </div>
                                </h4>
                            </div>
                            <form method="post" class="form-horizontal" onsubmit="return false;">

                                <div class="form-group">
                                    <label class="col-md-12 text-left" for="example-textarea-input">风险描述</label>
                                    <div class="col-md-12">
                                <textarea id="example-textarea-input" v-text="risk1.hazardDesc"
                                          name="example-textarea-input" rows="7"
                                          class="form-control" readonly="readonly"></textarea></div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6" style="padding: 0;"><label class="col-md-12 text-left"
                                                                                     for="example-textarea-input"
                                    >管控部门</label>
                                        <div class="col-md-12">
                                            <span type="text" class="form-control" v-text="risk1.manageUnit"
                                                  id="depart" readonly="readonly"> </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="block full" style="    padding-top: 25px;">
                                    <!-- Block Tabs Title -->
                                    <div class="block-title">

                                        <ul class="nav nav-tabs" data-toggle="tabs">
                                            <li class="active">
                                                <a href="#zjcs1">措施</a>
                                            </li>
                                            <li>
                                                <a href="#scbdwj1">文件</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- END Block Tabs Title -->

                                    <!-- Tabs Content -->
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="zjcs1">
                                            <form method="post" class="form-horizontal" onsubmit="return false;">
                                                <div>
                                                    <table id="general-table"
                                                           class="table table-striped table-bordered table-vcenter">
                                                        <thead>
                                                        <tr>
                                                            <th class="text-center" style="width: 50px">
                                                                序号
                                                            </th>
                                                            <th class="text-center">
                                                                类别
                                                            </th>
                                                            <th class="text-center">
                                                                内容
                                                            </th>
                                                            <th class="text-center" style="width:95px;">
                                                                时间
                                                            </th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr v-for="(rcm,index) in riskControlMeasure">
                                                            <td class="text-center" v-text="index+1">
                                                            </td>
                                                            <td class="text-center" v-text="rcm.measureType"></td>
                                                            <td class="text-center">
                                                         <textarea v-text="rcm.measureContent"
                                                                   name="example-textarea-input"
                                                                   class="form-control" readonly="readonly"></textarea>
                                                            </td>
                                                            <td>
                                                                {{rcm.measureCreateTime}}
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>

                                            </form>
                                        </div>
                                        <div class="tab-pane" id="scbdwj1">
                                            <label class="control-label bjc"
                                                   for="example-textarea-input">已上传的文件</label>
                                            <div>
                                                <table id="general-table"
                                                       class="table table-striped table-bordered table-vcenter">
                                                    <thead>
                                                    <tr>
                                                        <th class="text-center" style="width: 70px">
                                                            序号
                                                        </th>
                                                        <th class="text-center">附件名</th>
                                                        <th class="text-center" style="width:140px;">上传时间</th>

                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr v-for="(trcm1,index) in tempriskControlMeasure1">
                                                        <td class="text-center" v-text="index+1">
                                                        </td>
                                                        <td class="text-center"><a v-text="trcm1.measureName"
                                                                                   @click="downloadFile(trcm1)"
                                                        ></a></td>
                                                        <td class="text-center">
                                                            {{trcm1.measureCreateTime}}
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="glzxfa1">2</div>
                                    </div>
                                    <!-- END Tabs Content -->
                                </div>

                            </form>
                        </div>
                        <div class="modal-footer">
                            <%--<button type="button" class="btn btn-effect-ripple btn-primary" >保存</button>--%>
                            <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div id="modal-regular2" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content" style="min-height: 100%; height: auto">
                        <div class="modal-body" style="height: 100%;overflow-y: auto">

                            <div class="block-title">
                                <h4 style="width: 100%;">
                                    名称:{{risk1.name}}
                                    <div style="float: right;font-size:12px">等级：<span
                                            style="font-size:16px;color: #FF0000; ">{{risk1.riskLevel}}</span>
                                    </div>
                                </h4>
                            </div>
                            <form method="post" class="form-horizontal" onsubmit="return false;">

                                <div class="form-group">
                                    <label class="col-md-12 text-left" for="example-textarea-input">描述</label>
                                    <div class="col-md-12">
                                    <textarea id="" v-text="risk1.riskDescription"
                                              name="example-textarea-input" rows="7"
                                              class="form-control" readonly="readonly"></textarea></div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6" style="padding: 0;"><label class="col-md-12 text-left"
                                                                                     for="example-textarea-input"
                                    >责任部门</label>
                                        <div class="col-md-12">
                                            <span type="text" class="form-control" v-text="risk1.managerUnitName"
                                                  id="depart" readonly="readonly"> </span>
                                        </div>
                                    </div>
                                    <div class="col-sm-6" style="padding: 0;"><label class="col-md-12 text-left"
                                                                                     for="example-textarea-input">责任人</label>
                                        <div class="col-md-12">
                                            <span type="text" class="form-control"
                                                  v-text="risk1.managerName"
                                                  id="departname" readonly="readonly"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="block full" style="    padding-top: 25px;">
                                    <!-- Block Tabs Title -->
                                    <div class="block-title">

                                        <ul class="nav nav-tabs" data-toggle="tabs">
                                            <li class="active">
                                                <a href="#zjcs2">措施</a>
                                            </li>
                                            <li>
                                                <a href="#scbdwj2">文件</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- END Block Tabs Title -->

                                    <!-- Tabs Content -->
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="zjcs2">
                                            <form method="post" class="form-horizontal" onsubmit="return false;">
                                                <div>
                                                    <table id=""
                                                           class="table table-striped table-bordered table-vcenter table-hover">
                                                        <thead>
                                                        <tr>
                                                            <th class="text-center" style="width: 50px">
                                                                序号
                                                            </th>
                                                            <th class="text-center">
                                                                类别
                                                            </th>
                                                            <th class="text-center">
                                                                内容
                                                            </th>
                                                            <th class="text-center" style="width:95px;">
                                                                时间
                                                            </th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr v-for="(rcm,index) in riskControlMeasure">
                                                            <td class="text-center" v-text="index+1">
                                                            </td>
                                                            <td class="text-center" v-text="rcm.measureType"></td>
                                                            <td class="text-center">
                                                             <textarea v-text="rcm.measureContent"
                                                                       name="example-textarea-input"
                                                                       class="form-control"
                                                                       readonly="readonly"></textarea>
                                                            </td>
                                                            <td>
                                                                {{rcm.measureCreateTime}}
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>

                                            </form>
                                        </div>
                                        <div class="tab-pane" id="scbdwj2">
                                            <label class="control-label bjc"
                                                   for="example-textarea-input">已上传的文件</label>
                                            <div>
                                                <table id=""
                                                       class="table table-striped table-bordered table-vcenter table-hover">
                                                    <thead>
                                                    <tr>
                                                        <th class="text-center" style="width: 90px">
                                                            序号

                                                        </th>
                                                        <th class="text-center">附件名</th>
                                                        <th class="text-center" style="width:140px;">上传时间</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr v-for="(trcm1,index) in tempriskControlMeasure1">
                                                        <td class="text-center" v-text="index+1">

                                                        </td>
                                                        <td class="text-center"><a v-text="trcm1.measureName"
                                                                                   @click="downloadFile(trcm1)"
                                                        ></a></td>
                                                        <td class="text-center" v-text="trcm1.measureCreateTime">
                                                        </td>

                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="">2</div>
                                    </div>
                                    <!-- END Tabs Content -->
                                </div>

                            </form>
                        </div>
                        <div class="modal-footer">
                            <%--<button type="button" class="btn btn-effect-ripple btn-primary" @click="conmitAll1">保存</button>--%>
                            <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal"
                            >关闭
                            </button>
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
<script src="../js/vue.js"></script>
<script src="../js/iview.min.js"></script>
<%--<script src="../iview/iview.js"></script>--%>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/resource.js"></script>
<script src="../js/risktype-enum.js"></script>
<script>
    function showHazards(HazardID) {
        vueApp.getRiskHazardMethod(HazardID);

    }
</script>
<script type="text/javascript">
    var projectName = '<%=request.getContextPath()%>';
    var pageVarme = "ywxglist";//页面唯一变量标识，每个页面不能重复
    var attrArray = null;

    Vue.filter('typeFilter', function (type) {
        if (type == riskSiteTypeEnum.ADDRESS.text) {
            return riskSiteTypeEnum.ADDRESS.description;
        } else if (type == riskSiteTypeEnum.EQUIPMENT.text) {
            return riskSiteTypeEnum.EQUIPMENT.description;
        } else if (type == riskSiteTypeEnum.TASK.text) {
            return riskSiteTypeEnum.TASK.description;
        }
    });
    var vueApp = new Vue({
        el: "#mypage-content",
        data: {
            pagesize: 15,
            nowpage: 1,
            RiskaboutMe: "",
            detailedList: [],
            attributes: "",
            propertys: new Array(),
            guankongList: "",
            damageList: "",
            categoryList: "",
            riskleversetting: "",
            riskleversettingList: "",
            treeJingCheng: "",
            changeIndex: -1,
            risk1: "",
            tempriskControlMeasure: [],
            tempriskControlMeasure1: [],
            tempriskControlMeasure: [],
            riskControlMeasure: "",
            role: "",
            roleList: [],
            showMajorInfo: true,
            placeData: [],
            detailedListAll: [],
            category: "",
            getRiskName: "",
            riskDamageType: "",
            hazardName: "",
            riskObj: "",
            change: 0,
            treeObj: "",
            roleName: "",
        },
        created: function () {
            var _self = this;
            _self.getNewRiskSite();
            _self.getRiskAttributes();
            _self.getEnterprise_data_dictionaryListForOrg();
            _self.getNewRiskleversetting();
            _self.getOrgsAndRoles();
            _self.getPlaceTrees();
            _self.checkPlace(1);
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            changeList: function (judge) {
                var _self = this;
                if (judge == "name1") {
                    _self.checkPlace(1);
                    _self.change = 0;
                } else {
                    _self.getInfo(1, null);
                    _self.change = 1;

                }

            },
            changeSelect: function () {
                var _self = this;
                if (_self.change == 0) {
                    _self.checkPlace(2);
                } else {
                    _self.getInfo(2, _self.roleName);
                }

            },
            showRiskInfo: function (val) {
                var _self = this;
                _self.detailedList = [];
                _self.nowpage = 1;
                for (var i = (val - 1) * _self.pagesize; i < _self.detailedListAll.length; i++) {
                    if (i < val * _self.pagesize) {
                        _self.detailedList.push(_self.detailedListAll[i]);
                    }

                }

                _self.nowpage = val;
            },
            //按地点查询
            checkPlace: function (arr) {
                var _self = this;
                if (arr == 1) {
                    var riskName = null;
                    _self.getRiskName = null;
                } else if (arr == 2) {
                } else {
                    var riskName = arr[0].title;
                    _self.getRiskName = riskName;
                }
                _self.nowpage = 1;
                _self.detailedList = [];
                _self.detailedListAll = [];
                var startTime = $("#startTime").val();
                var endTime = $("#endTime").val();
                $.ajax({
                    url: projectName + "/Templatehazard/getRiskByPlace", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {
                        "RiskName": _self.getRiskName,
                        "departmentName": null,
                        "RoleName": null,
                        "Category": _self.category,
                        "DamageType": _self.riskDamageType,
                        "hazardName": _self.hazardName,
                        "riskObj": _self.riskObj,
                        "startTime": startTime,
                        "endTime": endTime

                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.detailedListAll = data;
                        for (var i = 0; i < _self.detailedListAll.length; i++) {
                            if (i < _self.pagesize) {
                                _self.detailedList.push(_self.detailedListAll[i]);
                            }
                        }
                    },
                });
            },
            //按岗位查询
            getInfo: function (tree, myrole) {
                var _self = this;
                _self.detailedList = [];
                _self.detailedListAll = [];
                _self.nowpage = 1;
                if (tree != 1) {
                    var departmentName = tree.fOrg_Name;
                    _self.treeObj = tree.fOrg_Name;
                }
                _self.roleName = myrole;
                if (tree == 1) {
                    _self.roleName = "";
                    _self.treeObj = "";
                }
                var startTime = $("#startTime").val();
                var endTime = $("#endTime").val();
//                _self.RiskaboutMe.managerUnitName = tree.fOrg_Name;
                $.ajax({
                    url: projectName + "/Templatehazard/getRiskByDepartmentAndRole", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {
                        "departmentName": _self.treeObj,
                        "RoleName": _self.roleName,
                        "Category": _self.category,
                        "DamageType": _self.riskDamageType,
                        "hazardName": _self.hazardName,
                        "riskObj": _self.riskObj,
                        "startTime": startTime,
                        "endTime": endTime

                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.detailedListAll = data;
                        for (var i = 0; i < _self.detailedListAll.length; i++) {
                            if (i < _self.pagesize) {
                                _self.detailedList.push(_self.detailedListAll[i]);
                            }

                        }
                    },
                });
//                _self.getPageCount();

            }
            ,
            getPlaceTrees: function () {
                var _self = this;
                //url:发送请求地址。
                //data:待发送 Key/value 参数。
                //callback:发送成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.ajax({
                    url: projectName + "/PlatForm/getPlaceTrees", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {
                        "orgID": null,
                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.placeData = data;
                    },
                });

            },
            showTable: function () {
                var _self = this;
                $("#showRiskInfo").show();
                $("#showRoleInfo").hide();

            },
            hideTable: function () {
                var _self = this;
                $("#showRiskInfo").hide();
                $("#showRoleInfo").show();
            }
            ,
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
//                        if (_self.risk1.mhazards != 0) {
//                            _self.templength = _self.risk1.mhazards.length;
//                        } else {
//                            _self.templength = _self.risk1.mchildRiskSite.length;
//                        }
                        _self.riskControlMeasure = _self.tempriskControlMeasure2;
                        $("#modal-regular2").modal("show");
                        /*_self.getNewRiskControlMeasure();*/
                    },
                });


            }
            ,
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
            }
            ,
            getRiskHazardMethod: function (hazardID) {
                var _self = this;
                $.get(projectName + "/RiskAssessment/getRiskhazard/" + hazardID, function (data) {

                    _self.risk1 = data;
//                    _self.tempfullnumber = _self.risk1.risksiteFullNumber;
                    _self.tempriskControlMeasure = [];
                    _self.tempriskControlMeasure1 = [],
                        _self.tempriskControlMeasure2 = [],
                        _self.tempriskControlMeasure = data.mriskControlMeasure;
                    for (var j = 0; j < _self.tempriskControlMeasure.length; j++) {
                        if (_self.tempriskControlMeasure[j].measureURL != null) {
                            _self.tempriskControlMeasure1.push(_self.tempriskControlMeasure[j]);
                        } else {
                            _self.tempriskControlMeasure2.push(_self.tempriskControlMeasure[j])
                        }
                    }
                    _self.riskControlMeasure = _self.tempriskControlMeasure2;
                    $("#modal-regular1").modal("show");
                });

            }
            ,
            showChild: function (risk) {
                var _self = this;
                risk.showChild = !risk.showChild;
                var childs = risk.mchildRiskSite;
                for (var i = 0; i < childs.length; i++) {
                    if ($("#riskHazard" + childs[i].riskSiteID).length > 0) {
                        $("#riskHazard" + childs[i].riskSiteID).remove();
                    }
                }
            }
            ,
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
                            '<th class="text-center" rowspan="2">序号</th>' +
                            '<th class="text-center" rowspan="2">风险</th>' +
                            '<th class="text-center" rowspan="2">风险描述</th>' +
                            '<th class="text-center" rowspan="2">灾害类型</th>' +
                            '<th class="text-center" rowspan="2">风险分析</th>' +
                            '<th class="text-center" rowspan="2">措施数量</th>' +
                            '<th class="text-center" rowspan="2">风险值(D)</th>' +
                            '<th class="text-center" rowspan="2">风险等级</th>' +
                            '<th class="text-center" rowspan="2">预警程度</th>' +
                            '<th class="text-center" rowspan="2">管控层次</th>' +
                            '</thead>';

                        for (var i = 0; i < risk.mhazards.length; i++) {
                            var riskHazard = risk.mhazards[i];
                            //console.log(riskHazard.clossConsequence);
                            var tid = "hazrd_" + riskHazard.hazardID;
                            //var hazrdid=riskHazard.hazardID;
                            riskHazard.name = riskHazard.name == null ? "" : riskHazard.name;
                            riskHazard.hazardDesc = riskHazard.hazardDesc == null ? "" : riskHazard.hazardDesc;
                            riskHazard.damageType = riskHazard.damageType == null ? "" : riskHazard.damageType;
                            riskHazard.clossConsequence = riskHazard.clossConsequence == null ? "" : riskHazard.clossConsequence;
                            riskHazard.Lpossibility = riskHazard.Lpossibility == null ? "" : riskHazard.Lpossibility;
                            riskHazard.Eexpose = riskHazard.Eexpose == null ? "" : riskHazard.Eexpose;
                            riskHazard.consequence = riskHazard.consequence == null ? "" : riskHazard.consequence;
                            riskHazard.Sseverity = riskHazard.Sseverity == null ? "" : riskHazard.Sseverity;
                            riskHazard.driskValue = riskHazard.driskValue == null ? "" : riskHazard.driskValue;
                            riskHazard.riskLevel = riskHazard.riskLevel == null ? "" : riskHazard.riskLevel;
                            riskHazard.riskColor = riskHazard.riskColor == null ? "" : riskHazard.riskColor;
                            riskHazard.manageUnit = riskHazard.manageUnit == null ? "" : riskHazard.manageUnit;
                            riskHazard.supervisionUnit = riskHazard.supervisionUnit == null ? "" : riskHazard.supervisionUnit;
                            var lec = ""
                            if (riskHazard.clossConsequence != "" && riskHazard.clossConsequence != 0) {

                                lec = "评估方法(LEC): L=" + riskHazard.Lpossibility + ", E=" + riskHazard.Eexpose + ", C=" + riskHazard.clossConsequence
                            } else if (riskHazard.Sseverity != "" && riskHazard.Sseverity != 0) {
                                lec = "评估方法(LS): L=" + riskHazard.Lpossibility + ", S=" + riskHazard.Sseverity

                            }
                            html += '<tr class="biaot1 biaot2">' +
                                '<td>' + (i + 1) + '</td>' +
                                '<td >' + riskHazard.name + '</td>' +
                                '<td >' + riskHazard.hazardDesc + '</td>' +
                                '<td>' + riskHazard.damageType + '</td>' +
                                '<td>' + lec + '</td>' +
                                '<td >' + '<a href="javascript:showHazards(' + riskHazard.hazardID + ')" >' + riskHazard.mriskControlMeasure.length + '</a>' + '</td>' +
                                '<td >' + riskHazard.driskValue + '</td>' +
                                '<td>' + riskHazard.riskLevel + '</td>' +
                                '<td class="text-center">' + '<span class="btys" style="background-color:' + riskHazard.riskColor +
                                '"></span>' +
                                '<td>' + '' + '</td>' +
                                '</tr>';
                        }
                        html += '</table> </td> </tr>';
                        $("#" + id).after(html);
                    }
                }

            },
            //点击改变显示（按地点、按岗位）
            changeShow: function (index) {
                var _self = this;
                if (_self.changeIndex == index) {
                    _self.changeIndex = -1;

                } else {
                    _self.changeIndex = index;
                }


            },
            //获取岗位树
            getOrgsAndRoles: function () {
                var _self = this;
                $.post(projectName + "/PlatForm/getOrgsAndRoles", function (data) {
                    _self.treeJingCheng = data;
                    _self.roleList = data.base_orgs;
                    //console.log(_self.treeJingCheng);
                });
            }
            ,

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

            }
            ,

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
            }
            ,
            getExcell: function () {
                var _self = this;
                $("#ExcellName").val("与我管控的风险信息表.xls");
                $("#getExcell").submit();
            }
            ,

            //筛选矿关闭时还原原本数据
            clearData: function () {
                var _self = this;
                _self.RiskaboutMe.name = null;
                _self.RiskaboutMe.riskControlTier = null;
                _self.RiskaboutMe.riskDamageType = null;
                _self.RiskaboutMe.riskMajorType = null;
                _self.RiskaboutMe.riskLevel = null
                _self.RiskaboutMe.riskControlTier = null;
                $("#modal-add").modal("hide");

            }
            ,
            //判断查询
            judgeQuery: function () {
                var _self = this;
                if (_self.RiskaboutMe.riskControlTier == "null") {
                    _self.RiskaboutMe.riskControlTier = null
                }
                if (_self.RiskaboutMe.riskDamageType == "null") {
                    _self.RiskaboutMe.riskDamageType = null
                }
                if (_self.RiskaboutMe.riskLevel == "null") {
                    _self.RiskaboutMe.riskLevel = null
                }
                if (_self.RiskaboutMe.riskMajorType == "null") {
                    _self.RiskaboutMe.riskMajorType = null
                }
                if (_self.RiskaboutMe.riskControlTier == "null") {
                    _self.RiskaboutMe.riskControlTier = null
                }
                _self.getPageCount();

            }
            ,

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
                        _self.categoryList = data.专业类型;
                    },
                });
            }
            ,
            getRiskAttributes: function () {
                var _self = this;
                $.get(projectName + "/SystemAttributeDevelop/classAttributes", {name: 'Risksite'}, function (data) {
                    if (data != null && data != "") {
                        _self.attributes = data;
                        _self.propertys = data.map(function (item) {
                            return item.classpropertyName.toUpperCase();
                        });
                        _self.getShowState();
                    }
                });
            }
            ,
            //从localStorage获取某列的状态反显到checkbox
            getShowState: function () {
                var _self = this;
                for (var i = 0; i < _self.attributes.length; i++) {
                    if (localStorage.getItem((pageVarme + _self.attributes[i].classpropertyName).toUpperCase()) == null || localStorage.getItem((pageVarme + _self.attributes[i].classpropertyName).toUpperCase()) == "true") {
                    } else {
                        for (var j = 0; j < _self.propertys.length; j++) {
                            if (_self.attributes[i].classpropertyName.toUpperCase() == _self.propertys[j]) {
                                _self.propertys.splice(j, 1);
                                break;
                            }

                        }
                    }
                }

            }
            ,
            //从localStorage取值决定是否显示某一列
            showOrNot: function (column) {
                var _self = this;
                if (localStorage.getItem((pageVarme + column).toUpperCase()) == null || localStorage.getItem((pageVarme + column).toUpperCase()) == "true") {
                    return true;
                } else {
                    return false;
                }
            }
            ,
            //设置是否显示某一列,将结果写入localStorage
            confirmShowOrNot: function () {
                var _self = this;
                for (var i = 0; i < _self.attributes.length; i++) {
                    localStorage.setItem((pageVarme + _self.attributes[i].classpropertyName).toUpperCase(), false);
                }
                for (var i = 0; i < _self.propertys.length; i++) {
                    localStorage.setItem((pageVarme + _self.propertys[i]).toUpperCase(), true);
                }

                _self.getDataByPage(_self.nowpage);
            }
            ,
            forwardthree: function (risk, riskc) {
                var _self = this;
                var riskSiteID = riskc.riskSiteID;
                var firstName = risk.name;
                var second = riskc.name;
                var position = firstName;
                $.post(projectName + "/RiskControlMeasureControl/gotothree/" + riskSiteID + "/" + position, function (data) {
                    if (data) {
                        window.location.href = "<%=request.getContextPath()%>/menu/RiskSiteAboutMe1.action";
                    }
                });
            }
            ,
            forwardMRiskSite: function (risk) {
                var _self = this;
                var riskSiteID = risk.riskSiteID;
                var firstName = risk.name;
                var position = firstName;
                $.post(projectName + "/RiskControlMeasureControl/gotoMRiskSite/" + riskSiteID + "/" + position, function (data) {
                    if (data) {
                        window.location.href = "<%=request.getContextPath()%>/menu/RiskSiteAboutMeShowMRiskSite.action";
                    }
                });
            }
            ,

            getNewRiskSite: function () {
                var _self = this;
                //加载层
                // layer.load();
                $.get(projectName + "/RiskSiteAboutMe/newRiskSite", function (data) {
                    _self.RiskaboutMe = data;
                });
            }
            ,

            //分页展示查询出总条数
            getPageCount: function () {
                var _self = this;
                _self.RiskaboutMe.pagesize = _self.pagesize;
                if (_self.RiskaboutMe.managerUnitName == null || _self.RiskaboutMe.managerUnitName == '') {
                    _self.detailedList = [];
                    return
                }
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskSiteAboutMe/PageCount",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.RiskaboutMe),
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
                            _self.showToast("info", "没有查询到我管控的风险数据");
                            _self.detailedList = [];
                        }
                    }
                });
            }
            ,
            //分页展示查询出内容
            getDataByPage: function (page) {
                var _self = this;
                _self.RiskaboutMe.page = page;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskSiteAboutMe/Page",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.RiskaboutMe),
                    success: function (data) {
                        console.log(data);
                        _self.detailedList = data;
                        $("#showRiskInfo").show();
                        $("#showRoleInfo").hide();
                        //layer.closeAll('loading');
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
            'role':
                {
                    handler: function (val, oldVal) {
                        var _self = this;
                        _self.roleList = [];
                        for (var i = 0; i < _self.treeJingCheng.base_orgs.length; i++) {
                            for (var j = 0; j < _self.treeJingCheng.base_orgs[i].enterprise_roles.length; j++) {
                                if (_self.treeJingCheng.base_orgs[i].enterprise_roles[j].fRole_Name.indexOf(_self.role) != -1) {
                                    _self.roleList.push(_self.treeJingCheng.base_orgs[i]);
                                    break;
                                }
                            }
                        }
                        for (var j = 0; j < _self.treeJingCheng.enterprise_roles.length; j++) {
                            if (_self.treeJingCheng.enterprise_roles[j].fRole_Name.indexOf(_self.role) != -1) {
                                _self.showMajorInfo = true;
                            } else {
                                _self.showMajorInfo = false;
                            }
                        }
                    }
                    ,
                    deep: true
                },

            'detailedList':
                function () {
                    this.$nextTick(function () {
                        var _self = this;
                        var riskSiteFullNumber = "";
                        for (var i = 0; i < _self.detailedList.size; i++) {
                            riskSiteFullNumber = _self.detailedList[i].fullNumber;
                            $.ajax({
                                url: projectName + "/RiskControlMeasureControl/getMRiskSiteMeasure/" + riskSiteFullNumber + "/", //发送请求的地址。
                                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                contentType: "application/json",
                                dataType: "json",//预期服务器返回的数据类型。
                                async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                success: function (data) {
                                    if (data != null && data != "") {
                                        $("#measure" + i).text(data.length);
                                    } else {
                                        $("#measure" + i).text(0);
                                    }
                                },
                            });
                            for (var j = 0; j < _self.detailedList[i].mchildRiskSite.length; j++) {
                                riskSiteFullNumber = _self.detailedList[i].mchildRiskSite[j].fullNumber;
                                $.ajax({
                                    url: projectName + "/RiskControlMeasureControl/getMRiskSiteMeasure/" + riskSiteFullNumber + "/", //发送请求的地址。
                                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                    data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                    contentType: "application/json",
                                    dataType: "json",//预期服务器返回的数据类型。
                                    async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                    success: function (data) {
                                        if (data != null && data != "") {
                                            $("#mymeasure" + j).text(data.length);
                                        } else {
                                            $("#mymeasure" + j).text(0);
                                        }
                                    },
                                })

                            }
                        }
                    })
                }
        }
        ,
        filters: {
            upCaseFilter: function (val) {
                return val.toUpperCase();
            }
            ,
            titleFilter: function (val, defaultName) {
                var _self = this;
                console.log(val);
                console.log(defaultName);
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

<script type="text/javascript" src="../js/jquery.nicescroll.js"></script>
<script type="text/javascript">
    $('#xx').niceScroll({
        cursorcolor: "#ccc", //#CC0071 光标颜色
        cursoropacitymax: 0, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0
        touchbehavior: false, //使光标拖动滚动像在台式电脑触摸设备
        cursorwidth: "5px", //像素光标的宽度
        cursorborder: "0", // 	游标边框css定义
        cursorborderradius: "5px", //以像素为光标边界半径
        autohidemode: true //是否隐藏滚动条
    });
    $('#listContainer').niceScroll({
        cursorcolor: "#ccc", //#CC0071 光标颜色
        cursoropacitymax: 0, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0
        touchbehavior: false, //使光标拖动滚动像在台式电脑触摸设备
        cursorwidth: "5px", //像素光标的宽度
        cursorborder: "0", // 	游标边框css定义
        cursorborderradius: "5px", //以像素为光标边界半径
        autohidemode: true //是否隐藏滚动条
    });
</script>

</body>

</html>