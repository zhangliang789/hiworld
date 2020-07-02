<%@ page import="org.platform4j.model.Emp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html class="no-js lt-ie10" lang="en">
<html class="js " lang="en">
<head>
    <meta charset="utf-8">
    <title>安全风险辨识</title>
    <meta name="description"
          content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
    <meta name="author" content="pixelcave">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="../img/favicon.png">
    <link rel="apple-touch-icon" href="../img/icon57.png" sizes="57x57">
    <link rel="apple-touch-icon" href="../img/icon72.png" sizes="72x72">
    <link rel="apple-touch-icon" href="../img/icon76.png" sizes="76x76">
    <link rel="apple-touch-icon" href="../img/icon114.png" sizes="114x114">
    <link rel="apple-touch-icon" href="../img/icon120.png" sizes="120x120">
    <link rel="apple-touch-icon" href="../img/icon144.png" sizes="144x144">
    <link rel="apple-touch-icon" href="../img/icon152.png" sizes="152x152">
    <link rel="apple-touch-icon" href="../img/icon180.png" sizes="180x180">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/plugins.css">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/themes.css">
    <link rel="stylesheet" href="../css/sweetalert/sweetalert.css">
    <link rel="stylesheet" href="../css/layui.css"/>
    <script src="../js/vendor/modernizr-3.3.1.min.js"></script>
    <link href="../css/bootstrap-treeview.css" rel="stylesheet">
    <link href="../css/jquery.treegrid.css" rel="stylesheet">
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../iview/iview.css">
    <style type="text/css">
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
            font-size: 14px;

            text-align: center;
            vertical-align;
            width: 100%;
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
            background-color: #f8f8f9;
            font-weight: bold;
        }
        .qiehxg {
            color: #333;
        }
        .newriskpointinfo {
            float: right;
        }
        .dropdown-menu {
            position: absolute;
            height: auto;
        }
        .table-responsive {
            overflow-x: none;
        }
        @media screen and (min-width: 768px) {
            #page-content1 {
                padding: 20px 20px 1px;
                min-height: 794px;
                overflow: hidden;
                background-color: #fff;
            }
        }
        .modal-footer {
            background-color: #fff;
        }
        .content .select {
            background: #FFFFFF;
            margin: 0px auto;
            position: relative;
            cursor: pointer;
        }
        .content .select ul {
            width: 100%;
            display: block;
            padding-left: 0;
            background: #FFFFFF;
            position: absolute;
            top: 40px;
            left: 0px;
            max-height: 0px;
            overflow: hidden;
            transition: max-height .3s ease-in;
            z-index: 99;
        }
        .content .select ul li {
            width: 100%;
            height: 30px;
            line-height: 30px;
            padding: 0px 15px;
            list-style: none;
            color: #666666;
        }
        .content .select ul li.Selected {
            background-color: #0B8DE5 !important;
            color: #FFFFFF;
        }
        .content .select ul li:hover {
            background: #D0D0D0;
        }
        .content .select.open ul {
            max-height: 250px;
        }
        .form-group1:after { /*最简方式*/
            content: '';
            display: block;
            clear: both;
        }
        .form-group1:after {
            content: '';
            display: block;
            clear: both;
            height: 0;
            visibility: hidden;
        }
        .form-group1 { /*兼容 IE*/
            zoom: 1;
        }
        .ivu-select-dropdown {
            position: absolute !important;
        }
    </style>
</head>

<body id="htmlBody1">
<div id="app">
    <% Emp userObj = (Emp) request.getSession().getAttribute("emp");
        Integer userid = userObj.getfEmp_ID_Auto();
    %>
    <!--危险源删除-->
    <div id="page-content1">
        <div class="modal inmodal" id="modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content animated flipInY" style="height: 100% !important;">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span
                                aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <i class="fa  modal-icon"></i>
                        <h4 style="display:inline-block;font-weight: 600" class="modal-title">删除<span
                                id="delDivTitle"></span></h4>
                        <small></small>
                    </div>
                    <div class="modal-body">
                        <p> 确认要删除吗？</p>
                        <span id="isRSUsedInfo"></span>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal"
                                id="delSureBtn" onclick="suredelHz">确认
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="content-header">
            <div class="row">
                <div class="col-sm-6">
                    <div class="header-section">
                        <h1>安全风险辨识</h1></div>
                </div>
            </div>
        </div>

        <div class="full">
            <div class="col-sm-4" style="padding-left: 0;">
                <div id="">
                    <a href="javascript:void(0)" class="btn btn-block btn-default visible-xs" data-toggle="collapse"
                       data-target="#media-options">Media Box</a>
                    <div id="media-options" class="collapse navbar-collapse remove-padding">
                        <!-- Filter -->
                        <div class="block-section">
                            <div style="text-align: right;">
                                <span style="font-size:18px ;font-weight: bold;float: left ;">风险点</span>
                                <button type="button" id="newriskpoint" onclick="openNewRiskSiteDiv(0,0)"
                                        class="btn btn-effect-ripple btn-primary">
                                    新增地点
                                </button>
                            </div>
                            <!--风险点查询-->
                            <div class="searchCon"><i class="hi hi-search"></i><input id="searchRiskSite"
                                                                                      onkeyup="searchRiskSitekeyup(this)"
                                                                                      name="search"
                                                                                      placeholder="输入地点"
                                                                                      class="searchWrap" type="text" debounce="2000">

                            </div>
                            <!--风险点显示-->
                            <ul class="nav-pills nav-stacked nav-icons media-filter" style="margin-top: 5px;">
                                <div id="treetable">
                                    <table class="thtou table table-striped table-bordered table-hover">
                                        <thead>
                                        <tr class="biaot">
                                            <td style="width: 50%;">名称</td>
                                            <td colspan="2" style="width: 50%;">类型</td>
                                        </tr>
                                        </thead>
                                        <tbody id="treeBasic" class="tree"></tbody>
                                    </table>
                                </div>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class=" col-sm-8">
                <div class="">
                    <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                        <div class="row" style="background-color: #fff;border: 0; padding-top: 0;">
                            <div class="col-sm-12" style="padding: 0;">
                                <div id="" class="">
                                    <form method="post" class="form-inline" onsubmit="return false;">
                                        <div class="form-group">
                                            <label class="" for="example-if-password" style="font-size:18px ;"><span
                                                    id="riskSiteTitle"></span></label>
                                            <div class="form-control" style="border: 0;"></div>
                                        </div>
                                        <div class="form-group" style="float: right;">
                                            <%--添加已辨识风险--%>
                                            <div id="btn-group" class="btn-group" style="display: none;">
                                                <a href="javascript:void(0)" data-toggle="dropdown"
                                                   class="btn btn-default dropdown-toggle" aria-expanded="true">添加已辨识风险
                                                    <span class="caret"></span></a>
                                                <ul id="identifyedRiskSite" class="dropdown-menu text-left"></ul>
                                            </div>
                                            <button id="goNewRiskhazardBtn" type="submit"
                                                    class="btn btn-effect-ripple btn-primary" data-toggle="modal"
                                                    data-target="#addRiskhazard" style="display: none;">新增风险
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!--风险描述-->
                        <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover"
                               style="margin: 0;">
                            <thead>
                            <tr class="biaot">
                                <td class="text-center" style="width:30px;">序号</td>
                                <td class="text-center">
                                    <template v-for="(item,index) in hazardTitles">
                                        <span v-if="item.classpropertyName == 'Name'">{{item.classpropertyTitle}}</span>
                                    </template>
                                </td>
                                <td class="text-center">
                                    <span>专业类型</span>
                                </td>
                                <td class="text-center">
                                    <template v-for="(item,index) in hazardTitles">
                                        <span v-if="item.classpropertyName == 'DamageType'">{{item.classpropertyTitle}}</span>
                                    </template>
                                </td>
                                <td class="text-center">
                                    <template v-for="(item,index) in hazardTitles">
                                        <span v-if="item.classpropertyName == 'RiskType'">{{item.classpropertyTitle}}</span>
                                    </template>
                                </td>
                                <td class="text-center">
                                    <template v-for="(item,index) in hazardTitles">
                                        <span v-if="item.classpropertyName == 'hazardDesc'">{{item.classpropertyTitle}}</span>
                                    </template>
                                </td>
                                <td class="text-center" style="width:80px;">操作</td>
                            </tr>
                            </thead>
                            <tbody id="showRiskhazard"></tbody>
                        </table>
                        <div class="row">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 新增地点 -->
    <div id="addriskpoint" class="modal newriskpointinfo" tabindex="-1" role="dialog" aria-hidden="true"
         style="display: none;">
        <div class="modal-dialog" style="min-height:100%">
            <div class="modal-content" style="min-height:100%">
                <div class="modal-body">
                    <button type="button" class="close close1" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div class="block-title">
                        <h4>新增</h4>
                    </div>
                    <input id="newRiskStieParentID" type="hidden">
                    <input id="riskSiteType" name="example-input-small" type="hidden" class="form-control input-sm">
                    <!--企业名称-->
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">企业名称</label>
                        <div class="col-sm-8">
                            <input id="coalMineName" name="example-input-small" class="form-control input-sm"
                                   placeholder="" readonly="readonly">
                        </div>
                    </div>
                    <!--管控对象-->
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in riskTitles">
                                <span v-if="item.classpropertyName == 'Name'">{{item.classpropertyTitle}}</span>
                            </template>
                            <span style="color: red;right: 0;position: absolute;top:7px;font-size: 16px">*</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="content">
                                <input type="hidden" id="locationId">
                                <div class="select">
                                    <input name="example-input-small" class="form-control input-sm" placeholder=""
                                           type="text" id="riskName">
                                    <ul id="riskNameSelect"
                                        style="border:1px solid #57a3f3;overflow-y:scroll;overflow-x:hidden;">
                                        <li v-for="(thisPlace,index) in placeList.rows" :id="thisPlace.fPlace_GUID"
                                            :name="thisPlace.fPlace_Name" :value="thisPlace.fPlace_Name"
                                            v-on:click="liClick(this,thisPlace.fPlace_Name)">{{thisPlace.fPlace_Name}}
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <input id="parentID" name="example-input-small" class="form-control input-sm" placeholder=""
                               type="hidden">
                    </div>
                    <!--风险点类型-->
                    <div class="form-group form-group1" id="riskSiteTypeContentDiv">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in riskTitles">
                                <span v-if="item.classpropertyName == 'RiskSiteTypeContent'">{{item.classpropertyTitle}}  </span>
                            </template>
                            <span style="color: red;right: 0;position: absolute;top:7px;font-size: 16px">*</span>
                        </label>
                        <div class="col-sm-8">
                            <select id="riskSiteTypeContent" name="example-input-small" class="form-control"
                                    placeholder="">
                                <option value="">请选择地点类型</option>
                                <option v-for="(myplace,index) in placeInfoData" :value="myplace.fPlace_Classify_Name">
                                    {{myplace.fPlace_Classify_Name}}
                                </option>
                            </select>
                        </div>
                    </div>
                    <!--管控对象描述-->
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in riskTitles">
                                <span v-if="item.classpropertyName == 'RiskDescription'">{{item.classpropertyTitle}}</span>
                            </template>
                        </label>
                        <div class="col-sm-8">
						<textarea id="riskDescription" name="example-input-small" class="form-control input-sm"
                                  placeholder="" style="resize: none;height: 100px;"
                                  maxlength="1000" onchange="this.value=this.value.substring(0, 1000)"
                                  onkeydown="this.value=this.value.substring(0, 1000)"
                                  onkeyup="this.value=this.value.substring(0, 1000)"></textarea>
                        </div>
                    </div>
                </div>
                <!--新增地点的提交-->
                <div class="modal-footer">
                    <button type="button" id="saveRiskSiteBtnN" onclick="saveRiskSiteBtnN()"
                            class="btn btn-effect-ripple btn-primary">提交
                    </button>
                    <button type="button" class="btn btn-effect-ripple btn-danger close1"
                            @click="closemodalByadd" data-dismiss="modal">关闭
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- 添加风险点结束 -->

    <!-- 修改风险点开始（风险点名称右键） -->
    <div id="updateriskpoint" class="modal newriskpointinfo" tabindex="-1" role="dialog" aria-hidden="true"
         style="display: none;">
        <div class="modal-dialog" style="min-height:100%">
            <div class="modal-content" style="min-height:100%">
                <div class="modal-body">
                    <button type="button" class="close close1" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div class="block-title">
                        <h4>修改风险点</h4>
                    </div>
                    <!--企业名称-->
                    <input id="riskSiteType1" name="example-input-small" type="hidden" class="form-control input-sm">
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">企业名称</label>
                        <div class="col-sm-8">
                            <input id="coalMineName1" name="example-input-small" class="form-control input-sm"
                                   placeholder="" readonly="readonly">
                        </div>
                    </div>
                    <!--管控措施（一级）-->
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in riskTitles">
                                <span v-if="item.classpropertyName == 'Name'">{{item.classpropertyTitle}}</span>
                            </template>
                            <span style="color: red;right: 0;position: absolute;top:7px;font-size: 16px">*</span>
                        </label>
                        <div class="col-sm-8">
                            <div class="content">
                                <input type="hidden" id="upLocationId">
                                <div class="select">
                                    <input name="example-input-small" class="form-control input-sm" placeholder=""
                                           type="text" id="riskName1">
                                    <ul id="upRiskNameSelect"
                                        style="border:1px solid #1ab394;overflow-y:scroll;overflow-x:hidden;">
                                        <li v-for="(thisPlace,index) in placeList.rows" :id="thisPlace.fPlace_GUID"
                                            :name="thisPlace.fPlace_Name" :value="thisPlace.fPlace_Name"
                                            v-on:click="liClick(this,thisPlace.fPlace_Name)">{{thisPlace.fPlace_Name}}
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <input id="parentID1" name="example-input-small" class="form-control input-sm" placeholder=""
                               type="hidden">
                        <input id="riskSiteID1" name="example-input-small" class="form-control input-sm" placeholder=""
                               type="hidden">
                    </div>
                    <!--风险点类型（一级）-->
                    <div class="form-group form-group1" id="riskSiteTypeContent1Div">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in riskTitles">
                                <span v-if="item.classpropertyName == 'RiskSiteTypeContent'">{{item.classpropertyTitle}}</span>
                            </template>
                            <span style="color: red;right: 0;position: absolute;top:7px;font-size: 16px">*</span>
                        </label>
                        <div class="col-sm-8">
                            <select id="riskSiteTypeContent1" name="example-input-small" class="form-control"
                                    placeholder="">
                                <option value="">请选择类型内容</option>
                                <option v-for="(myplace,index) in placeInfoData" :value="myplace.fPlace_Classify_Name">
                                    {{myplace.fPlace_Classify_Name}}
                                </option>
                            </select>

                        </div>
                    </div>
                    <!--管控对象描述（一级）-->
                    <div class="form-group form-group1" id="ptionone">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in riskTitles">
                                <span v-if="item.classpropertyName == 'RiskDescription'">{{item.classpropertyTitle}}</span>
                            </template>
                        </label>
                        <div class="col-sm-8">
						<textarea id="riskDescription11" name="example-input-small" class="form-control input-sm"
                                  placeholder="" style="resize: none;height: 100px;"
                                  maxlength="1000" onchange="this.value=this.value.substring(0, 1000)"
                                  onkeydown="this.value=this.value.substring(0, 1000)"
                                  onkeyup="this.value=this.value.substring(0, 1000)"></textarea>
                        </div>
                    </div>
                    <!--管控对象描述（二级）-->
                    <div class="form-group form-group1" id="ptiontwo">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in riskTitles">
                                <span v-if="item.classpropertyName == 'RiskDescription'">管控对象描述</span>
                            </template>
                        </label>
                        <div class="col-sm-8">
						<textarea id="riskDescription12" name="example-input-small" class="form-control input-sm"
                                  placeholder="" style="resize: none;height: 100px;"
                                  maxlength="1000" onchange="this.value=this.value.substring(0, 1000)"
                                  onkeydown="this.value=this.value.substring(0, 1000)"
                                  onkeyup="this.value=this.value.substring(0, 1000)"></textarea>
                        </div>
                    </div>
                    <!--管控周期（二级）-->
                    <div v-show="showRangeControl">
                        <div class="form-group form-group1">
                            <label class="col-sm-4 control-label">管控周期</label>
                            <div class="col-sm-8">
                                <input class="form-control nihao1 datepicker1" style="width:95%"
                                       id="startTime2"
                                       placeholder="请选择开始时间"
                                       type="text" readonly="readonly">
                                <input class="form-control nihao1 datepicker1" style="width: 95%"
                                       id="endTime2" placeholder="请选择结束时间"
                                       type="text" readonly="readonly">
                            </div>
                        </div>
                        <!--矿级（二级）-->
                        <div class="form-group form-group1">
                            <label class="col-sm-4 control-label">矿级</label>
                            <div class="col-sm-8">
                                <i-select style="width: 50%" placeholder="部门" ref="kmanageUnit" label-in-value
                                          v-model="kmanageUnit" clearable
                                          filterable>
                                    <i-option v-for="(dp,index) in departmentList"
                                              :value="dp.fOrg_Name"
                                              :label="dp.fOrg_Name"
                                              :key="index">
                                        <span v-text="dp.fOrg_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="dp.fOrg_Name_Shorthand"></span>

                                    </i-option>
                                </i-select>
                                <i-select style="width: 25%" placeholder="岗位" ref="kmanageDuty" label-in-value
                                          v-model="kmanageDuty" clearable
                                          filterable multipe>
                                    <i-option v-for="(role,index) in roleList"
                                              :value="role.fRole_Name"
                                              :label="role.fRole_Name"
                                              :key="index">
                                        <span v-text="role.fRole_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="role.fRole_Name_Shorthand"></span>
                                    </i-option>

                                </i-select>
                                <i-select style="width: 20%" placeholder="频次" ref="krangePinci" label-in-value
                                          v-model="krangePinci" clearable
                                          filterable>
                                    <i-option v-for="(rf,index) in riskFrequencyList"
                                              :value="rf.fData_Name"
                                              :label="rf.fData_Name"
                                              :key="index">
                                        <span v-text="rf.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="rf.fData_Name_Shorthand"></span>

                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <!--专业级（二级）-->
                        <div class="form-group form-group1">
                            <label class="col-sm-4 control-label">专业级</label>
                            <div class="col-sm-8">
                                <i-select style="width: 50%" placeholder="部门" ref="zmanageUnit" label-in-value
                                          v-model="zmanageUnit" clearable
                                          filterable>
                                    <i-option v-for="(dp,index) in departmentList"
                                              :value="dp.fOrg_Name"
                                              :label="dp.fOrg_Name"
                                              :key="index">
                                        <span v-text="dp.fOrg_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="dp.fOrg_Name_Shorthand"></span>

                                    </i-option>
                                </i-select>
                                <i-select style="width: 25%" placeholder="岗位" ref="zmanageDuty" label-in-value
                                          v-model="zmanageDuty" clearable
                                          filterable multipe>
                                    <i-option v-for="(role,index) in roleList"
                                              :value="role.fRole_Name"
                                              :label="role.fRole_Name"
                                              :key="index">
                                        <span v-text="role.fRole_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="role.fRole_Name_Shorthand"></span>
                                    </i-option>

                                </i-select>
                                <i-select style="width: 20%" placeholder="频次" ref="zrangePinci" label-in-value
                                          v-model="zrangePinci" clearable
                                          filterable>
                                    <i-option v-for="(rf,index) in riskFrequencyList"
                                              :value="rf.fData_Name"
                                              :label="rf.fData_Name"
                                              :key="index">
                                        <span v-text="rf.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="rf.fData_Name_Shorthand"></span>

                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <!--职能部室级（二级）-->
                        <div class="form-group form-group1">
                            <label class="col-sm-4 control-label">职能部室级</label>
                            <div class="col-sm-8">
                                <i-select style="width: 50%" placeholder="部门" ref="qmanageUnit" label-in-value
                                          v-model="qmanageUnit" clearable
                                          filterable>
                                    <i-option v-for="(dp,index) in departmentList"
                                              :value="dp.fOrg_Name"
                                              :label="dp.fOrg_Name"
                                              :key="index">
                                        <span v-text="dp.fOrg_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="dp.fOrg_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                                <i-select style="width: 25%" placeholder="岗位" ref="qmanageDuty" label-in-value
                                          v-model="qmanageDuty" clearable
                                          filterable multipe>
                                    <i-option v-for="(role,index) in roleList"
                                              :value="role.fRole_Name"
                                              :label="role.fRole_Name"
                                              :key="index">
                                        <span v-text="role.fRole_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="role.fRole_Name_Shorthand"></span>
                                    </i-option>

                                </i-select>
                                <i-select style="width: 20%" placeholder="频次" ref="qrangePinci" label-in-value
                                          v-model="qrangePinci" clearable
                                          filterable>
                                    <i-option v-for="(rf,index) in riskFrequencyList"
                                              :value="rf.fData_Name"
                                              :label="rf.fData_Name"
                                              :key="index">
                                        <span v-text="rf.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="rf.fData_Name_Shorthand"></span>

                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <!--区队级（二级）-->
                        <div class="form-group form-group1">
                            <label class="col-sm-4 control-label">区队级</label>
                            <div class="col-sm-8">
                                <i-select style="width: 50%" placeholder="部门" ref="bmanageUnit" label-in-value
                                          v-model="bmanageUnit" clearable
                                          filterable>
                                    <i-option v-for="(dp,index) in departmentList"
                                              :value="dp.fOrg_Name"
                                              :label="dp.fOrg_Name"
                                              :key="index">
                                        <span v-text="dp.fOrg_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="dp.fOrg_Name_Shorthand"></span>

                                    </i-option>
                                </i-select>
                                <i-select style="width: 25%" placeholder="岗位" ref="bmanageDuty" label-in-value
                                          v-model="bmanageDuty" clearable
                                          filterable multipe>
                                    <i-option v-for="(role,index) in roleList"
                                              :value="role.fRole_Name"
                                              :label="role.fRole_Name"
                                              :key="index">
                                        <span v-text="role.fRole_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="role.fRole_Name_Shorthand"></span>
                                    </i-option>

                                </i-select>
                                <i-select style="width: 20%" placeholder="频次" ref="brangePinci" label-in-value
                                          v-model="brangePinci" clearable
                                          filterable>
                                    <i-option v-for="(rf,index) in riskFrequencyList"
                                              :value="rf.fData_Name"
                                              :label="rf.fData_Name"
                                              :key="index">
                                        <span v-text="rf.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="rf.fData_Name_Shorthand"></span>

                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <!--班组个人级（二级）-->
                        <div class="form-group form-group1">
                            <label class="col-sm-4 control-label">班组个人级</label>
                            <div class="col-sm-8">
                                <i-select style="width: 50%" placeholder="部门" ref="gmanageUnit" label-in-value
                                          v-model="gmanageUnit" clearable
                                          filterable>
                                    <i-option v-for="(dp,index) in departmentList"
                                              :value="dp.fOrg_Name"
                                              :label="dp.fOrg_Name"
                                              :key="index">
                                        <span v-text="dp.fOrg_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="dp.fOrg_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                                <i-select style="width: 25%" placeholder="岗位" ref="gmanageDuty" label-in-value
                                          v-model="gmanageDuty" clearable
                                          filterable multipe>
                                    <i-option v-for="(role,index) in roleList"
                                              :value="role.fRole_Name"
                                              :label="role.fRole_Name"
                                              :key="index">
                                        <span v-text="role.fRole_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="role.fRole_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                                <i-select style="width: 20%" placeholder="频次" ref="grangePinci" label-in-value
                                          v-model="grangePinci" clearable
                                          filterable>
                                    <i-option v-for="(rf,index) in riskFrequencyList"
                                              :value="rf.fData_Name"
                                              :label="rf.fData_Name"
                                              :key="index">
                                        <span v-text="rf.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="rf.fData_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" id="saveRiskSiteBtn1" onclick="saveRiskSiteBtn1()"
                            class="btn btn-effect-ripple btn-primary">提交
                        <!--修改风险源后的提交-->
                    </button>
                    <button type="button" class="btn btn-effect-ripple btn-danger close1" @click="closemodal" data-dismiss="modal">关闭
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- 修改风险点结束 -->

    <!-- 新建危险源开始 -->
    <div id="addRiskhazard" class="modal newriskpointinfo" tabindex="-1" role="dialog" aria-hidden="true"
         style="display: none;">
        <div class="modal-dialog" style="min-height:100%">
            <div class="modal-content" style="min-height:100%">
                <div class="modal-body">
                    <button type="button" class="close close1" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div class="block-title">
                        <h4>新增风险</h4>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in hazardTitles">
                                <span v-if="item.classpropertyName == 'Name'">{{item.classpropertyTitle}}</span>
                            </template>
                            <span style="color: red;right: 0;position: absolute;top:7px;font-size: 16px">*</span>
                        </label>
                        <div class="col-sm-8">
                            <input id="RiskhazardName" name="example-input-small" class="form-control input-sm"
                                   placeholder="" type="text">
                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in hazardTitles">
                                <span v-if="item.classpropertyName == 'MajorType'">{{item.classpropertyTitle}}</span>
                            </template>
                            <span style="color: red;right: 0;position: absolute;top:7px;font-size: 16px">*</span>
                        </label>
                        <div class="col-sm-8">
                            <select id="majorType" name="example-input-small" class="form-control" placeholder="">
                                <option value="">请选择专业类型</option>
                                <option v-for="(mymajor,index) in majorList" :value="mymajor.fData_Name">
                                    {{mymajor.fData_Name}}
                                </option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in hazardTitles">
                                <span v-if="item.classpropertyName == 'RiskType'">{{item.classpropertyTitle}}</span>
                            </template>
                            <span style="color: red;right: 0;position: absolute;top:7px;font-size: 16px">*</span>
                        </label>
                        <div class="col-sm-8">
                            <select id="riskType" name="example-input-small" class="form-control" placeholder="">
                                <option value="">请选择类型</option>
                                <option v-for="(mydamage,index) in leiBieList" :value="mydamage.fData_Name">
                                    {{mydamage.fData_Name}}
                                </option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in hazardTitles">
                                <span v-if="item.classpropertyName == 'hazardDesc'">{{item.classpropertyTitle}}</span>
                            </template>
                        </label>
                        <div class="col-sm-8">
                            <textarea id="hazardDesc" name="example-input-small" class="form-control input-sm"
                                      placeholder="" style="resize: none;height: 100px;"
                                      maxlength="1000" onchange="this.value=this.value.substring(0, 1000)"
                                      onkeydown="this.value=this.value.substring(0, 1000)"
                                      onkeyup="this.value=this.value.substring(0, 1000)"></textarea>
                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in hazardTitles">
                                <span v-if="item.classpropertyName == 'AccidentType'">{{item.classpropertyTitle}}</span>
                            </template>
                        </label>
                        <div class="col-sm-8">
                            <i-select  v-model="accidentType" placeholder="请选择事故类型"
                                       type="text" filterable clearable multiple>
                                <%--<option value="">请选择事故类型</option>--%>
                                <i-option v-for="(accident,index) in accidentList" :value="accident.fData_Name">
                                    {{accident.fData_Name}}
                                </i-option>
                            </i-select>
                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in hazardTitles">
                                <span v-if="item.classpropertyName == 'DamageType'">{{item.classpropertyTitle}}</span>
                            </template>
                        </label>
                        <div class="col-sm-8">
                            <i-select multiple v-model="riskDamageTypes" id="damageType">
                                <div v-for="(mydamage,index) in damageList">
                                    <i-option :value="mydamage.fData_Name">
                                        {{mydamage.fData_Name}}
                                    </i-option>
                                </div>
                            </i-select>
                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label">日期</label>
                        <div class="col-sm-8">
                            <input class="form-control nihao1 datepicker1" style="width:95%"
                                   id="startTime"
                                   placeholder="请选择认定日期"
                                   type="text" readonly="readonly">
                            <input class="form-control nihao1 datepicker1" style="width: 95%"
                                   id="endTime" placeholder="请选择解除日期"
                                   type="text" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label">矿级</label>
                        <div class="col-sm-8">
                            <i-select style="width: 50%" placeholder="部门" ref="kmanageUnit" label-in-value
                                      v-model="kmanageUnit" clearable
                                      filterable>
                                <i-option v-for="(dp,index) in departmentList"
                                          :value="dp.fOrg_Name"
                                          :label="dp.fOrg_Name"
                                          :key="index">
                                    <span v-text="dp.fOrg_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="dp.fOrg_Name_Shorthand"></span>

                                </i-option>
                            </i-select>
                            <i-select style="width: 45%" placeholder="频次" ref="krangePinci" label-in-value
                                      v-model="krangePinci" clearable
                                      filterable>
                                <i-option v-for="(rf,index) in riskFrequencyList"
                                          :value="rf.fData_Name"
                                          :label="rf.fData_Name"
                                          :key="index">
                                    <span v-text="rf.fData_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="rf.fData_Name_Shorthand"></span>

                                </i-option>
                            </i-select>
                        </div>
                        <label class="col-sm-4 control-label"></label>
                        <div class="col-sm-8">
                            <i-select style="width: 96%" placeholder="岗位" ref="kmanageDuty" label-in-value
                                      v-model="kmanageDuty" clearable
                                      filterable multiple>
                                <i-option v-for="(role,index) in roleList"
                                          :value="role.fRole_Name"
                                          :label="role.fRole_Name"
                                          :key="index">
                                    <span v-text="role.fRole_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="role.fRole_Name_Shorthand"></span>
                                </i-option>

                            </i-select>

                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label">专业级</label>
                        <div class="col-sm-8">
                            <i-select style="width: 50%" placeholder="部门" ref="zmanageUnit" label-in-value
                                      v-model="zmanageUnit" clearable
                                      filterable>
                                <i-option v-for="(dp,index) in departmentList"
                                          :value="dp.fOrg_Name"
                                          :label="dp.fOrg_Name"
                                          :key="index">
                                    <span v-text="dp.fOrg_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="dp.fOrg_Name_Shorthand"></span>

                                </i-option>
                            </i-select>
                            <i-select style="width: 45%" placeholder="频次" ref="zrangePinci" label-in-value
                                      v-model="zrangePinci" clearable
                                      filterable>
                                <i-option v-for="(rf,index) in riskFrequencyList"
                                          :value="rf.fData_Name"
                                          :label="rf.fData_Name"
                                          :key="index">
                                    <span v-text="rf.fData_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="rf.fData_Name_Shorthand"></span>

                                </i-option>
                            </i-select>
                        </div>
                        <label class="col-sm-4 control-label"></label>
                        <div class="col-sm-8">
                            <i-select style="width: 96%" placeholder="岗位" ref="zmanageDuty" label-in-value
                                      v-model="zmanageDuty" clearable
                                      filterable multiple>
                                <i-option v-for="(role,index) in roleList"
                                          :value="role.fRole_Name"
                                          :label="role.fRole_Name"
                                          :key="index">
                                    <span v-text="role.fRole_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="role.fRole_Name_Shorthand"></span>
                                </i-option>

                            </i-select>
                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label">职能部室级</label>
                        <div class="col-sm-8">
                            <i-select style="width: 50%" placeholder="部门" ref="qmanageUnit" label-in-value
                                      v-model="qmanageUnit" clearable
                                      filterable>
                                <i-option v-for="(dp,index) in departmentList"
                                          :value="dp.fOrg_Name"
                                          :label="dp.fOrg_Name"
                                          :key="index">
                                    <span v-text="dp.fOrg_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="dp.fOrg_Name_Shorthand"></span>
                                </i-option>
                            </i-select>

                            <i-select style="width:45%" placeholder="频次" ref="qrangePinci" label-in-value
                                      v-model="qrangePinci" clearable
                                      filterable>
                                <i-option v-for="(rf,index) in riskFrequencyList"
                                          :value="rf.fData_Name"
                                          :label="rf.fData_Name"
                                          :key="index">
                                    <span v-text="rf.fData_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="rf.fData_Name_Shorthand"></span>

                                </i-option>
                            </i-select>
                        </div>
                        <label class="col-sm-4 control-label"></label>
                        <div class="col-sm-8">
                            <i-select style="width: 96%" placeholder="岗位" ref="qmanageDuty" label-in-value
                                      v-model="qmanageDuty" clearable
                                      filterable multiple>
                                <i-option v-for="(role,index) in roleList"
                                          :value="role.fRole_Name"
                                          :label="role.fRole_Name"
                                          :key="index">
                                    <span v-text="role.fRole_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="role.fRole_Name_Shorthand"></span>
                                </i-option>

                            </i-select>

                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label">区队级</label>
                        <div class="col-sm-8">
                            <i-select style="width: 50%" placeholder="部门" ref="bmanageUnit" label-in-value
                                      v-model="bmanageUnit" clearable
                                      filterable>
                                <i-option v-for="(dp,index) in departmentList"
                                          :value="dp.fOrg_Name"
                                          :label="dp.fOrg_Name"
                                          :key="index">
                                    <span v-text="dp.fOrg_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="dp.fOrg_Name_Shorthand"></span>

                                </i-option>
                            </i-select>

                            <i-select style="width: 45%" placeholder="频次" ref="brangePinci" label-in-value
                                      v-model="brangePinci" clearable
                                      filterable>
                                <i-option v-for="(rf,index) in riskFrequencyList"
                                          :value="rf.fData_Name"
                                          :label="rf.fData_Name"
                                          :key="index">
                                    <span v-text="rf.fData_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="rf.fData_Name_Shorthand"></span>

                                </i-option>
                            </i-select>
                        </div>
                        <label class="col-sm-4 control-label"></label>
                        <div class="col-sm-8">
                            <i-select style="width: 96%" placeholder="岗位" ref="bmanageDuty" label-in-value
                                      v-model="bmanageDuty" clearable
                                      filterable multiple>
                                <i-option v-for="(role,index) in roleList"
                                          :value="role.fRole_Name"
                                          :label="role.fRole_Name"
                                          :key="index">
                                    <span v-text="role.fRole_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="role.fRole_Name_Shorthand"></span>
                                </i-option>

                            </i-select>

                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label">班组个人级</label>
                        <div class="col-sm-8">
                            <i-select style="width: 50%" placeholder="部门" ref="gmanageUnit" label-in-value
                                      v-model="gmanageUnit" clearable
                                      filterable>
                                <i-option v-for="(dp,index) in departmentList"
                                          :value="dp.fOrg_Name"
                                          :label="dp.fOrg_Name"
                                          :key="index">
                                    <span v-text="dp.fOrg_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="dp.fOrg_Name_Shorthand"></span>
                                </i-option>
                            </i-select>

                            <i-select style="width: 45%" placeholder="频次" ref="grangePinci" label-in-value
                                      v-model="grangePinci" clearable
                                      filterable>
                                <i-option v-for="(rf,index) in riskFrequencyList"
                                          :value="rf.fData_Name"
                                          :label="rf.fData_Name"
                                          :key="index">
                                    <span v-text="rf.fData_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="rf.fData_Name_Shorthand"></span>
                                </i-option>
                            </i-select>
                        </div>
                        <label class="col-sm-4 control-label"></label>
                        <div class="col-sm-8">
                            <i-select style="width: 96%" placeholder="岗位" ref="gmanageDuty" label-in-value
                                      v-model="gmanageDuty" clearable
                                      filterable multiple>
                                <i-option v-for="(role,index) in roleList"
                                          :value="role.fRole_Name"
                                          :label="role.fRole_Name"
                                          :key="index">
                                    <span v-text="role.fRole_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="role.fRole_Name_Shorthand"></span>
                                </i-option>
                            </i-select>

                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <span>辨识方法</span>
                        </label>
                        <div class="col-sm-8">
                            <input id="BianShiFangFa" name="example-input-small" class="form-control input-sm" placeholder="" type="text">
                        </div>
                    </div>

                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <span>风险类型</span>
                        </label>
                        <div class="col-sm-8">
                            <input id="riskByTypes" name="example-input-small" class="form-control input-sm" placeholder="" type="text">
                        </div>
                    </div>

                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <span>危害因素</span>
                        </label>
                        <div class="col-sm-8">
                            <input id="riskFactors" name="example-input-small" class="form-control input-sm" placeholder="" type="text">
                        </div>
                    </div>

                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            技术指导部门
                        </label>
                        <div class="col-sm-8">
                            <select id="technologyDepartment" name="example-input-small" class="form-control" placeholder="">
                                <option value="">请选择技术指导部门</option>
                                <option v-for="(mymajor,index) in departmentList" :value="mymajor.fOrg_Name">
                                    {{mymajor.fOrg_Name}}
                                </option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            监管部门
                        </label>
                        <div class="col-sm-8">
                            <select id="supervisionDepartment" name="example-input-small" class="form-control" placeholder="">
                                <option value="">请选择监管部门</option>
                                <option v-for="(mymajor,index) in departmentList" :value="mymajor.fOrg_Name">
                                    {{mymajor.fOrg_Name}}
                                </option>
                            </select>
                        </div>
                    </div>


                </div>
                <div class="modal-footer">
                    <button type="button" id="saveRiskhazardBtn" onclick="saveRiskhazardBtn()"
                            class="btn btn-effect-ripple btn-primary">提交
                    </button>
                    <button type="button" class="btn btn-effect-ripple btn-danger close1" data-dismiss="modal">关闭
                    </button>
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" id="hiddenRiskSiteID">
    <!-- 新建危险源结束 -->

    <!-- 修改危险源开始 -->
    <div id="updateRiskhazard" class="modal newriskpointinfo" tabindex="-1" role="dialog" aria-hidden="true"
         style="display: none;">
        <div class="modal-dialog" style="min-height:100%">
            <div class="modal-content" style="min-height:100%">
                <div class="modal-body">
                    <button type="button" class="close close1" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div class="block-title">
                        <h4>修改风险</h4>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in hazardTitles">
                                <span v-if="item.classpropertyName == 'Name'">{{item.classpropertyTitle}}</span>
                            </template>
                            <span style="color: red;right: 0;position: absolute;top:7px;font-size: 16px">*</span>
                        </label>
                        <div class="col-sm-8">
                            <input id="upRiskhazardName" name="example-input-small" class="form-control input-sm"
                                   placeholder="" type="text">
                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in hazardTitles">
                                <span v-if="item.classpropertyName == 'MajorType'">{{item.classpropertyTitle}}</span>
                            </template>
                            <span style="color: red;right: 0;position: absolute;top:7px;font-size: 16px">*</span>
                        </label>
                        <div class="col-sm-8">
                            <select id="upMajorType" name="example-input-small" class="form-control" placeholder="">
                                <option value="">请选择专业类型</option>
                                <option v-for="(mymajor,index) in majorList" :value="mymajor.fData_Name">
                                    {{mymajor.fData_Name}}
                                </option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in hazardTitles">
                                <span v-if="item.classpropertyName == 'RiskType'">{{item.classpropertyTitle}}</span>
                            </template>
                            <span style="color: red;right: 0;position: absolute;top:7px;font-size: 16px">*</span>
                        </label>
                        <div class="col-sm-8">
                            <select id="upRiskType" name="example-input-small" class="form-control" placeholder="">
                                <option value="">请选择类型</option>
                                <option v-for="(mydamage,index) in leiBieList" :value="mydamage.fData_Name">
                                    {{mydamage.fData_Name}}
                                </option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in hazardTitles">
                                <span v-if="item.classpropertyName == 'hazardDesc'">{{item.classpropertyTitle}}</span>
                            </template>
                        </label>
                        <div class="col-sm-8">
                            <textarea id="upHazardDesc" name="example-input-small" class="form-control input-sm"
                                      placeholder="" style="resize: none;height: 100px;"
                                      maxlength="1000" onchange="this.value=this.value.substring(0, 1000)"
                                      onkeydown="this.value=this.value.substring(0, 1000)"
                                      onkeyup="this.value=this.value.substring(0, 1000)"></textarea>
                        </div>
                    </div>

                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in hazardTitles">
                                <span v-if="item.classpropertyName == 'AccidentType'">{{item.classpropertyTitle}}</span>
                            </template>
                        </label>
                        <div class="col-sm-8">
                            <i-select  v-model="upaccidentType"
                                       placeholder="请选择事故类型"
                                       multiple filterable clearable>
                                <i-option v-for="(accident,index) in accidentList" :value="accident.fData_Name" v-text="accident.fData_Name">
                                </i-option>
                            </i-select>
                        </div>
                    </div>

                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <template v-for="(item,index) in hazardTitles">
                                <span v-if="item.classpropertyName == 'DamageType'">{{item.classpropertyTitle}}</span>
                            </template>
                        </label>
                        <div class="col-sm-8">
                            <i-select multiple v-model="riskDamageTypes" id="upDamageType">
                                <div v-for="(mydamage,index) in damageList">
                                    <i-option :value="mydamage.fData_Name">
                                        {{mydamage.fData_Name}}
                                    </i-option>
                                </div>
                            </i-select>
                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label">日期</label>
                        <div class="col-sm-8">
                            <input class="form-control nihao1 datepicker1" id="startTime1"
                                   placeholder="请选择认定日期"
                                   type="text" readonly="readonly">
                            <input class="form-control nihao1 datepicker1" id="endTime1"
                                   placeholder="请选择解除日期"
                                   type="text" readonly="readonly">
                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label">矿级</label>
                        <div class="col-sm-8">
                            <i-select style="width: 50%" placeholder="部门" ref="ukmanageUnit" label-in-value
                                      v-model="ukmanageUnit" clearable
                                      filterable>
                                <i-option v-for="(dp,index) in departmentList"
                                          :value="dp.fOrg_Name"
                                          :label="dp.fOrg_Name"
                                          :key="index">
                                    <span v-text="dp.fOrg_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="dp.fOrg_Name_Shorthand"></span>

                                </i-option>
                            </i-select>

                            <i-select style="width: 45%" placeholder="频次" ref="ukrangePinci" label-in-value
                                      v-model="ukrangePinci" clearable
                                      filterable>
                                <i-option v-for="(rf,index) in riskFrequencyList"
                                          :value="rf.fData_Name"
                                          :label="rf.fData_Name"
                                          :key="index">
                                    <span v-text="rf.fData_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="rf.fData_Name_Shorthand"></span>

                                </i-option>
                            </i-select>
                        </div>
                        <label class="col-sm-4 control-label"></label>
                        <div class="col-sm-8">
                            <i-select style="width: 96%" placeholder="岗位" ref="ukmanageDuty" label-in-value
                                      v-model="ukmanageDuty"
                                      filterable multiple>
                                <i-option v-for="(role,index) in roleList"
                                          :value="role.fRole_Name"
                                          :label="role.fRole_Name"
                                          :key="index">
                                    <span v-text="role.fRole_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="role.fRole_Name_Shorthand"></span>
                                </i-option>

                            </i-select>

                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label">专业级</label>
                        <div class="col-sm-8">
                            <i-select style="width: 50%" placeholder="部门" ref="uzmanageUnit" label-in-value
                                      v-model="uzmanageUnit" clearable
                                      filterable>
                                <i-option v-for="(dp,index) in departmentList"
                                          :value="dp.fOrg_Name"
                                          :label="dp.fOrg_Name"
                                          :key="index">
                                    <span v-text="dp.fOrg_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="dp.fOrg_Name_Shorthand"></span>

                                </i-option>
                            </i-select>

                            <i-select style="width: 45%" placeholder="频次" ref="uzrangePinci" label-in-value
                                      v-model="uzrangePinci" clearable
                                      filterable>
                                <i-option v-for="(rf,index) in riskFrequencyList"
                                          :value="rf.fData_Name"
                                          :label="rf.fData_Name"
                                          :key="index">
                                    <span v-text="rf.fData_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="rf.fData_Name_Shorthand"></span>

                                </i-option>
                            </i-select>
                        </div>
                        <label class="col-sm-4 control-label"></label>
                        <div class="col-sm-8">
                            <i-select style="width: 96%" placeholder="岗位" ref="uzmanageDuty" label-in-value
                                      v-model="uzmanageDuty" clearable
                                      filterable multiple>
                                <i-option v-for="(role,index) in roleList"
                                          :value="role.fRole_Name"
                                          :label="role.fRole_Name"
                                          :key="index">
                                    <span v-text="role.fRole_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="role.fRole_Name_Shorthand"></span>
                                </i-option>

                            </i-select>

                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label">职能部室级</label>
                        <div class="col-sm-8">
                            <i-select style="width: 50%" placeholder="部门" ref="uqmanageUnit" label-in-value
                                      v-model="uqmanageUnit" clearable
                                      filterable>
                                <i-option v-for="(dp,index) in departmentList"
                                          :value="dp.fOrg_Name"
                                          :label="dp.fOrg_Name"
                                          :key="index">
                                    <span v-text="dp.fOrg_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="dp.fOrg_Name_Shorthand"></span>

                                </i-option>
                            </i-select>

                            <i-select style="width: 45%" placeholder="频次" ref="uqrangePinci" label-in-value
                                      v-model="uqrangePinci" clearable
                                      filterable>
                                <i-option v-for="(rf,index) in riskFrequencyList"
                                          :value="rf.fData_Name"
                                          :label="rf.fData_Name"
                                          :key="index">
                                    <span v-text="rf.fData_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="rf.fData_Name_Shorthand"></span>

                                </i-option>
                            </i-select>
                        </div>
                        <label class="col-sm-4 control-label"></label>
                        <div class="col-sm-8">
                            <i-select style="width: 96%" placeholder="岗位" ref="uqmanageDuty" label-in-value
                                      v-model="uqmanageDuty" clearable
                                      filterable multiple>
                                <i-option v-for="(role,index) in roleList"
                                          :value="role.fRole_Name"
                                          :label="role.fRole_Name"
                                          :key="index">
                                    <span v-text="role.fRole_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="role.fRole_Name_Shorthand"></span>
                                </i-option>

                            </i-select>

                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label">区队级</label>
                        <div class="col-sm-8">
                            <i-select style="width: 50%" placeholder="部门" ref="ubmanageUnit" label-in-value
                                      v-model="ubmanageUnit" clearable
                                      filterable>
                                <i-option v-for="(dp,index) in departmentList"
                                          :value="dp.fOrg_Name"
                                          :label="dp.fOrg_Name"
                                          :key="index">
                                    <span v-text="dp.fOrg_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="dp.fOrg_Name_Shorthand"></span>

                                </i-option>
                            </i-select>

                            <i-select style="width: 45%" placeholder="频次" ref="ubrangePinci" label-in-value
                                      v-model="ubrangePinci" clearable
                                      filterable>
                                <i-option v-for="(rf,index) in riskFrequencyList"
                                          :value="rf.fData_Name"
                                          :label="rf.fData_Name"
                                          :key="index">
                                    <span v-text="rf.fData_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="rf.fData_Name_Shorthand"></span>

                                </i-option>
                            </i-select>
                        </div>
                        <label class="col-sm-4 control-label"></label>
                        <div class="col-sm-8">
                            <i-select style="width: 96%" placeholder="岗位" ref="ubmanageDuty" label-in-value
                                      v-model="ubmanageDuty" clearable
                                      filterable multiple>
                                <i-option v-for="(role,index) in roleList"
                                          :value="role.fRole_Name"
                                          :label="role.fRole_Name"
                                          :key="index">
                                    <span v-text="role.fRole_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="role.fRole_Name_Shorthand"></span>
                                </i-option>

                            </i-select>

                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label">班组个人级</label>
                        <div class="col-sm-8">
                            <i-select style="width: 50%" placeholder="部门" ref="ugmanageUnit" label-in-value
                                      v-model="ugmanageUnit" clearable
                                      filterable>
                                <i-option v-for="(dp,index) in departmentList"
                                          :value="dp.fOrg_Name"
                                          :label="dp.fOrg_Name"
                                          :key="index">
                                    <span v-text="dp.fOrg_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="dp.fOrg_Name_Shorthand"></span>

                                </i-option>
                            </i-select>

                            <i-select style="width: 45%" placeholder="频次" ref="ugrangePinci" label-in-value
                                      v-model="ugrangePinci" clearable
                                      filterable>
                                <i-option v-for="(rf,index) in riskFrequencyList"
                                          :value="rf.fData_Name"
                                          :label="rf.fData_Name"
                                          :key="index">
                                    <span v-text="rf.fData_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="rf.fData_Name_Shorthand"></span>

                                </i-option>
                            </i-select>
                        </div>
                        <label class="col-sm-4 control-label"></label>
                        <div class="col-sm-8">
                            <i-select style="width: 96%" placeholder="岗位" ref="ugmanageDuty" label-in-value
                                      v-model="ugmanageDuty" clearable
                                      filterable multiple>
                                <i-option v-for="(role,index) in roleList"
                                          :value="role.fRole_Name"
                                          :label="role.fRole_Name"
                                          :key="index">
                                    <span v-text="role.fRole_Name"></span>
                                    <span style="float:right;color:#ccc"
                                          v-text="role.fRole_Name_Shorthand"></span>
                                </i-option>

                            </i-select>

                        </div>
                    </div>
                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" >
                            <span >辨识方法</span>
                        </label>
                        <div class="col-sm-8">
                            <input id="upBianShiFangFa" class="form-control input-sm" placeholder="" type="text">
                        </div>
                    </div>

                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <span>风险类型</span>
                        </label>
                        <div class="col-sm-8">
                            <input id="riskByTypesup" name="example-input-small" class="form-control input-sm" placeholder="" type="text">
                        </div>
                    </div>

                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            <span>危害因素</span>
                        </label>
                        <div class="col-sm-8">
                            <input id="riskFactorsup" name="example-input-small" class="form-control input-sm" placeholder="" type="text">
                        </div>
                    </div>

                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            技术指导部门
                        </label>
                        <div class="col-sm-8">
                            <select id="technologyDepartmentup" name="example-input-small" class="form-control" placeholder="">
                                <option value="">请选择技术指导部门</option>
                                <option v-for="(mymajor,index) in departmentList" :value="mymajor.fOrg_Name">
                                    {{mymajor.fOrg_Name}}
                                </option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group form-group1">
                        <label class="col-sm-4 control-label" for="example-input-small">
                            监管部门
                        </label>
                        <div class="col-sm-8">
                            <select id="supervisionDepartmentup" name="example-input-small" class="form-control" placeholder="">
                                <option value="">请选择监管部门</option>
                                <option v-for="(mymajor,index) in departmentList" :value="mymajor.fOrg_Name">
                                    {{mymajor.fOrg_Name}}
                                </option>
                            </select>
                        </div>
                    </div>


                </div>

                <div class="modal-footer">
                    <button type="button" id="updateRiskhazardBtn" onclick="updateRiskhazardBtn()"
                            class="btn btn-effect-ripple btn-primary">提交
                    </button>
                    <button type="button" class="btn btn-effect-ripple btn-danger close1" data-dismiss="modal">关闭
                    </button>
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" id="uphiddenRiskSiteID">
    <input type="hidden" id="uphiddenRiskhazardID">
    <!-- 修改危险源结束 -->

    <div id="modal-large" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg" style="min-heigt:100%;">
            <div class="modal-content" style="min-height:100%">
                <div class="modal-header">

                    <h3 class="modal-title"><strong>选中风险点</strong></h3>
                </div>
                <div class="modal-body">
                    <table class="table table-striped table-bordered table-vcenter table-hover">
                        <thead>
                        <tr class="biaot">
                            <td class="text-center" rowspan="2">管控对象</td>
                            <td class="text-center" rowspan="2">管控对象描述</td>
                            <td class="text-center" rowspan="2">灾害类型</td>
                        </tr>
                        </thead>
                        <tbody id="selectRStbody"></tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" id="selectRSSaveBtn" onclick="selectRSSaveBtn()"
                            class="btn btn-effect-ripple btn-primary">保存
                    </button>
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>

    <input type="hidden" id="hiddenRisksiteParam">
    <%--<textarea style="display: none;" id="hiddenRisksiteParam2"></textarea>--%>

    <%--父级风险点右键菜单开始--%>
    <div id="context-menu">
        <ul class="dropdown-menu" role="menu">
            <li><a id="goupdateLevel0" tabindex="-1" href="javascript:void(0)">修改</a></li>
            <li><a id="godelLevel0" tabindex="-1" href="javascript:void(0)">删除</a></li>
            <li><a id="addLevelCh1" tabindex="-1" href="javascript:void(0)" data-toggle="modal"
                   data-target="#addriskpoint">添加设施</a></li>
            <li><a id="addLevelCh2" tabindex="-1" href="javascript:void(0)" data-toggle="modal"
                   data-target="#addriskpoint">添加作业活动</a></li>
        </ul>
    </div>
    <%--父级风险点右键菜单结束--%>

    <%--二级风险点右键菜单开始--%>
    <div id="context-menu2">
        <ul class="dropdown-menu" role="menu">
            <li><a id="goupdateLevel1" tabindex="-1" href="javascript:void(0)">修改</a></li>

            <li><a id="godelLevel1" tabindex="-1" href="javascript:void(0)">删除</a></li>
        </ul>
    </div>
    <%--二级风险点右键菜单结束--%>

</div>
<input type="hidden" id="hiddenStr">
<script src="../js/vendor/jquery-2.2.4.min.js"></script>
<script src="../js/vendor/bootstrap.min.js"></script>
<script src="../js/bootstrap-treeview.js"></script>
<script src="../js/bootstrap-contextmenu.js"></script>
<script src="../js/treeview-demo.min.js"></script>
<script src="../js/vue.js"></script>
<script src="../js/plugins.js"></script>
<script src="../js/app.js"></script>
<script src="../js/pages/uiTables.js"></script>
<script src="../js/pages/compTree.js"></script>
<script src="../js/jquery.treegrid.js"></script>
<script src="../js/jquery.treegrid.bootstrap3.js"></script>
<script src="../js/jquery.treegrid.extension.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/sweetalert/sweetalert.min.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../iview/iview.js"></script>
<script>
    $(function () {
        UiTables.init();
        CompTree.init();
        $("#coalMineName").val("${sessionScope.framework.frameWorkName}");
        $("#coalMineName1").val("${sessionScope.framework.frameWorkName}");
        $(".select ul").hide();
        $(".select input").click(function (e) {
            if ($(".select ul").is(":hidden") && $("#hiddenStr").val() == "0") {
                $(".select ul").show();
                $(".select").toggleClass("open");
            }
            e.stopPropagation();
        });
        $(document).on('click', function () {
            $(".select").removeClass("open");
            $(".select ul").hide();
        });

        lay('.datepicker1').each(function () {
            laydate.render({
                elem: this
                , trigger: 'click'
                , type: 'date'
                , format: 'yyyy-MM-dd'
                , theme: '#3188f2'
            });
        });
        $("#treetable .qiehxg").click(function () {
            var b = $(this).parent().siblings("ul").css("display");
            $(this).parent().siblings("ul").toggle(300);

            if (b == 'none') {
                $(this).siblings("i").addClass("fa fa-caret-down").removeClass("a fa-caret-right");
            } else {
                $(this).siblings("i").addClass("a fa-caret-right").removeClass("a fa-caret-down");
            }
        });
    });
</script>
<script>
    var projectName = '<%=request.getContextPath() %>';
    var countClick1 = new Array();
    var searchRiskSiteObj = new Array();//空查询数组
    var delRiskSiteObj = {};//删除用rs对象
    var delRiskHazardObj = {};//删除用rh对象
    var updateRiskSiteObj = {};
    var goUpdateRiskSite1 = "";

    $("#goNewRiskhazardBtn").hide();
    showPrentRiskSite();
    $("#parentID").val("0");
    $("#goNewRiskhazardBtn").click(function () {
        vuemyApp.riskDamageTypes = new Array();
        vuemyApp.riskhazardDepts = new Array();
    });

    var manageUnitAllParam = "";
    var riskControlRanges;
    //修改风险点
    function goUpdateRiskhazard(riskhazardObj) {
        vuemyApp.riskDamageTypes = new Array();
        vuemyApp.riskhazardDepts = new Array();
        vuemyApp.riskhazardDepts2 = new Array();
        $("#btn-group").hide();
        var riskhazard = riskhazardObj;

        var managerUnitName = riskhazardObj.manageUnit;
        if (managerUnitName != null) {
            vuemyApp.riskhazardDepts = new Array();
            var deptArray = managerUnitName.split(",")

            if (deptArray.length > 0) {
                for (var i = deptArray.length - 1; i >= 0; i--) {
                    for (var j = deptArray.length - 1; j >= 0; j--) {
                        if (j != i && deptArray[i] == deptArray[j]) {
                            deptArray.splice(i, 1);
                        }
                    }
                }
                ;
            }
            ;
            for (var i = 0; i < deptArray.length; i++) {
                for (var j = 0; j < vuemyApp.departmentList.length; j++) {
                    if (vuemyApp.departmentList[j].fOrg_Name == deptArray[i]) {
                        vuemyApp.riskhazardDepts.push(vuemyApp.departmentList[j].fOrgID);
                    }
                }
                ;
            }
            ;
        } else {
            vuemyApp.riskhazardDepts = new Array();
        }
        ;
        var riskSupervisor = riskhazardObj.riskSupervisor;
        if (riskSupervisor != null) {
            var deptArray2 = riskSupervisor.split(",")

            if (deptArray2.length > 0) {
                for (var i = deptArray2.length - 1; i >= 0; i--) {
                    for (var j = deptArray2.length - 1; j >= 0; j--) {
                        if (j != i && deptArray2[i] == deptArray2[j]) {
                            deptArray2.splice(i, 1);
                        }
                    }
                };
            };
            for (var i = 0; i < deptArray2.length; i++) {
                for (var j = 0; j < vuemyApp.departmentList.length; j++) {
                    if (vuemyApp.departmentList[j].fOrg_Name == deptArray2[i]) {
                        vuemyApp.riskhazardDepts2.push(vuemyApp.departmentList[j].fOrgID);
                    }
                };
            };
        } else {
            vuemyApp.riskhazardDepts2 = new Array();
        };
        $("#upRiskType").val(riskhazard.riskType);
        $("#upRiskhazardName").val(riskhazard.name);
        $("#upBianShiFangFa").val(riskhazard.identifyMethod);
        $("#upConsequence").val(riskhazard.consequence);
        if (riskhazard.damageType != null) {
            vuemyApp.riskSiteDepts = new Array();
            var riskDamageTypeArr = riskhazard.damageType.split(",")
            for (var i = 0; i < riskDamageTypeArr.length; i++) {
                for (var j = 0; j < vuemyApp.damageList.length; j++) {
                    if (vuemyApp.damageList[j].fData_Name == riskDamageTypeArr[i]) {
                        vuemyApp.riskDamageTypes.push(vuemyApp.damageList[j].fData_Name);
                    }
                };
            };
        } else {
            vuemyApp.riskDamageTypes = new Array();
        };
        $("#upMajorType").val(riskhazard.majorType);
        $("#upoperatingPost").val(riskhazard.operatingPost);
        $("#updutyRole").val(riskhazard.dutyRole);
        if(riskhazard.accidentType!=null&&riskhazard.accidentType!=""){
            vuemyApp.upaccidentType=riskhazard.accidentType.split(",");
        }else{
            vuemyApp.upaccidentType=[];
        }
        $("#upExposeDegree").val(riskhazard.exposeDegree);
        $("#upClossConsequence").val(riskhazard.clossConsequence);
        $("#upHazardDesc").val(riskhazard.hazardDesc);
        $("#upRiskDegree").val(riskhazard.riskDegree);

        $("#riskByTypesup").val(riskhazard.riskByTypes);
        $("#riskFactorsup").val(riskhazard.riskFactors);
        $("#technologyDepartmentup").val(riskhazard.technologyDepartment);
        $("#supervisionDepartmentup").val(riskhazard.supervisionDepartment);

        var accountabilityUnit = riskhazardObj.accountabilityUnit;
        if (accountabilityUnit != null) {
            vuemyApp.riskhazardDepts2 = new Array();
            var deptArray2 = accountabilityUnit.split(",")
            if (deptArray2.length > 0) {
                for (var i = deptArray2.length - 1; i >= 0; i--) {
                    for (var j = deptArray2.length - 1; j >= 0; j--) {
                        if (j != i && deptArray2[i] == deptArray2[j]) {
                            deptArray2.splice(i, 1);
                        }
                    }
                };
            };
            for (var i = 0; i < deptArray2.length; i++) {
                for (var j = 0; j < vuemyApp.departmentList.length; j++) {
                    if (vuemyApp.departmentList[j].fOrg_Name == deptArray2[i]) {
                        vuemyApp.riskhazardDepts2.push(vuemyApp.departmentList[j].fOrgID);
                    }
                };
            };
        } else {
            vuemyApp.riskhazardDepts2 = new Array();
        };
        $.get(projectName + "/HazardIdentificationControl/getRiskhazardcontrolrangeFiveLevelsByHazardId", {hazardId: riskhazard.hazardID}, function (data) {
            riskControlRanges = data;
            if (riskControlRanges.length > 0) {
                $("#startTime1").val(riskControlRanges[0].controlRangeStartDay);
                $("#endTime1").val(riskControlRanges[0].controlRangeEndDay);
            }
            for (var j = 0; j < riskControlRanges.length; j++) {
                if (riskControlRanges[j].controlRangeName == "矿级") {
                    if(riskControlRanges[j].manageDuty!=null&&riskControlRanges[j].manageDuty!=""){
                        vuemyApp.ukmanageDuty=riskControlRanges[j].manageDuty.split(",");
                    }else{
                        vuemyApp.ukmanageDuty =[];
                    }
                    vuemyApp.ukmanageUnit = riskControlRanges[j].manageUnit;//部门
                    vuemyApp.ukrangePinci = riskControlRanges[j].controlRangePinci;//频次
                }
                if (riskControlRanges[j].controlRangeName == "专业级") {
                    if(riskControlRanges[j].manageDuty!=null&&riskControlRanges[j].manageDuty!=""){
                        vuemyApp.uzmanageDuty=riskControlRanges[j].manageDuty.split(",");
                    }else{
                        vuemyApp.uzmanageDuty =[];
                    }
                    vuemyApp.uzmanageUnit = riskControlRanges[j].manageUnit;
                    vuemyApp.uzrangePinci = riskControlRanges[j].controlRangePinci;
                }
                if (riskControlRanges[j].controlRangeName == "职能部室级") {
                    if(riskControlRanges[j].manageDuty!=null&&riskControlRanges[j].manageDuty!=""){
                        vuemyApp.uqmanageDuty=riskControlRanges[j].manageDuty.split(",");
                    }else{
                        vuemyApp.uqmanageDuty =[];
                    }
                    vuemyApp.uqmanageUnit = riskControlRanges[j].manageUnit;
                    vuemyApp.uqrangePinci = riskControlRanges[j].controlRangePinci;
                }
                if (riskControlRanges[j].controlRangeName == "区队级") {
                    if(riskControlRanges[j].manageDuty!=null&&riskControlRanges[j].manageDuty!=""){
                        vuemyApp.ubmanageDuty=riskControlRanges[j].manageDuty.split(",");
                    }else{
                        vuemyApp.ubmanageDuty =[];
                    };
                    vuemyApp.ubmanageUnit = riskControlRanges[j].manageUnit;
                    vuemyApp.ubrangePinci = riskControlRanges[j].controlRangePinci;
                }
                if (riskControlRanges[j].controlRangeName == "班组个人级") {
                    if(riskControlRanges[j].manageDuty!=null&&riskControlRanges[j].manageDuty!=""){
                        vuemyApp.ugmanageDuty=riskControlRanges[j].manageDuty.split(",");

                    }else{
                        vuemyApp.ugmanageDuty =[];
                    }
                    vuemyApp.ugmanageUnit = riskControlRanges[j].manageUnit;
                    vuemyApp.ugrangePinci = riskControlRanges[j].controlRangePinci;
                }
            }
        });
        $("#uphiddenRiskSiteID").val(riskhazard.risksiteID);
        $("#uphiddenRiskhazardID").val(riskhazard.hazardID);

        $('#updateRiskhazard').modal('show');
    }

    //新增地点
    function openNewRiskSiteDiv(riskSiteType, parentID) {
        vuemyApp.riskDamageTypes = new Array();
        vuemyApp.riskhazardDepts = new Array();
        $("#newRiskStieParentID").val(parentID);
        $("#riskSiteType").val(riskSiteType);

        if (parentID == "0") {
            $("#riskSiteTypeContentDiv").show();
//            $("#goNewRiskhazardBtn").hide();
            $("#hiddenStr").val("0");
        } else {
            $("#riskSiteTypeContentDiv").hide();
            $("#hiddenStr").val("1");

            for(var i=0;i<vuemyApp.riskTitles.length;i++){
                if(vuemyApp.riskTitles[i].classpropertyName =='Name'){
                    vuemyApp.riskTitles[i].classpropertyTitle = "管控对象";
                }
                if(vuemyApp.riskTitles[i].classpropertyName =='RiskDescription'){
                    vuemyApp.riskTitles[i].classpropertyTitle = "管控对象描述";
                }
            }
        };
        $("#riskSiteTypeContent").val("");
//        $("#addriskpoint").show();
        $('#addriskpoint').modal('show');
    };
    $(".close1").click(function () {
        $('#addriskpoint').modal('hide');
        $('#addRiskhazard').modal('hide');
        $('#updateRiskhazard').modal('hide');
        $('#updateriskpoint').modal('hide');
    });

    //风险描述修改后的保存
    function updateRiskhazardBtn() {
        $("#btn-group").hide();
//        $("#goNewRiskhazardBtn").hide();

        var managerUnitName = "";
        var managerUnitID = "";

        for (var j = 0; j < vuemyApp.riskhazardDepts.length; j++) {
            for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                if (vuemyApp.riskhazardDepts[j] == vuemyApp.departmentList[i].fOrgID) {
                    managerUnitName = managerUnitName + vuemyApp.departmentList[i].fOrg_Name + ",";
                    managerUnitID = managerUnitID + vuemyApp.departmentList[i].fOrgID_Auto + ",";
                }
            }
        };
        if (managerUnitID == "") {
            managerUnitName = null;
        };
        managerUnitID = null;
        var manageUnit = managerUnitName;
        var riskType = $("#upRiskType").val();
        var name = $("#upRiskhazardName").val();
        var bianShiFangFa=$("#upBianShiFangFa").val();
//        var consequence = $("#upConsequence").val();
        var majorType = $("#upMajorType").val();
        var operatingPost = $("#upoperatingPost").val();
        var dutyRole = $("#updutyRole").val();
        var accidentType='';
        if(vuemyApp.upaccidentType.length!=0){
            for(var i=0;i<vuemyApp.upaccidentType.length;i++){
                if(i<vuemyApp.upaccidentType.length-1){
                    accidentType+=vuemyApp.upaccidentType[i]+",";
                }else{
                    accidentType+=vuemyApp.upaccidentType[i];
                }
            }
        }else{
            accidentType=''
        }
        /*var damageType = $("#upDamageType").val();*/
        var damageType = '';
        for (var i = 0; i < vuemyApp.riskDamageTypes.length; i++) {
            if (i < 1) {
                damageType = vuemyApp.riskDamageTypes[i];
            } else {
                damageType = damageType + "," + vuemyApp.riskDamageTypes[i];
            }
        }
        var status = false/*$("#upStatus").val()*/;
        var riskSiteId = $("#uphiddenRiskSiteID").val();
        var hazardID = $("#uphiddenRiskhazardID").val();
        var hazardDesc = $("#upHazardDesc").val();
        var managerUnitName2 = "";
        var managerUnitID2 = "";
        for (var j = 0; j < vuemyApp.riskhazardDepts2.length; j++) {
            for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                if (vuemyApp.riskhazardDepts2[j] == vuemyApp.departmentList[i].fOrgID) {
                    managerUnitName2 = managerUnitName2 + vuemyApp.departmentList[i].fOrg_Name + ",";
                    managerUnitID2 = managerUnitID2 + vuemyApp.departmentList[i].fOrgID_Auto + ",";
                }
            }
        };
        if (managerUnitID2 == "") {
            managerUnitName2 = null;
        };
        managerUnitID2 = null;
        var manageUnit2 = managerUnitName2;
        var accountabilityUnit = manageUnit2;
        var riskhazard = newRiskhazard();
        var url = projectName + "/HazardIdentificationControl/updateRiskhazard";
        riskhazard.risksiteID = riskSiteId;
        riskhazard.status = status;
        riskhazard.manageUnit = manageUnit;
        riskhazard.riskType = riskType;
        riskhazard.name = name;
        riskhazard.damageType = damageType;
        riskhazard.risksiteID = riskSiteId;
        riskhazard.hazardID = hazardID;
        riskhazard.operatingPost = operatingPost;
        riskhazard.dutyRole = dutyRole;
        riskhazard.accidentType = accidentType;
        riskhazard.majorType = majorType;
        riskhazard.hazardDesc = hazardDesc;
        riskhazard.accountabilityUnit = accountabilityUnit;
        riskhazard.identifyMethod=bianShiFangFa;
        riskhazard.riskByTypes=$("#riskByTypesup").val();
        riskhazard.riskFactors=$("#riskFactorsup").val();
        riskhazard.technologyDepartment=$("#technologyDepartmentup").val();
        riskhazard.supervisionDepartment=$("#supervisionDepartmentup").val();

        for (var j = 0; j < riskControlRanges.length; j++) {
            if (riskControlRanges[j].controlRangeName == "矿级") {
                if(vuemyApp.ukmanageDuty.length!=0){
                    var ukmanageDuty="";
                    for(var k=0;k<vuemyApp.ukmanageDuty.length;k++){
                        if(k<vuemyApp.ukmanageDuty.length-1){
                            ukmanageDuty+=vuemyApp.ukmanageDuty[k]+",";
                        }else{
                            ukmanageDuty+=vuemyApp.ukmanageDuty[k];
                        }
                    }
                    riskControlRanges[j].manageDuty = ukmanageDuty;
                }else{
                    riskControlRanges[j].manageDuty = null;
                }
//                riskControlRanges[j].manageDuty = vuemyApp.ukmanageDuty;//矿级岗位
                riskControlRanges[j].manageUnit = vuemyApp.ukmanageUnit;//部门
                riskControlRanges[j].controlRangePinci = vuemyApp.ukrangePinci;//频次
                for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                    if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.ukmanageUnit) {
                        riskControlRanges[j].manageUnitID = vuemyApp.departmentList[i].fOrgID;
                        break;
                    }
                }
            }
            if (riskControlRanges[j].controlRangeName == "专业级") {
                if(vuemyApp.uzmanageDuty.length!=0){
                    var uzmanageDuty="";
                    for(var k=0;k<vuemyApp.uzmanageDuty.length;k++){
                        if(k<vuemyApp.uzmanageDuty.length-1){
                            uzmanageDuty+=vuemyApp.uzmanageDuty[k]+",";
                        }else{
                            uzmanageDuty+=vuemyApp.uzmanageDuty[k];
                        }
                    }
                    riskControlRanges[j].manageDuty = uzmanageDuty;
                }else{
                    riskControlRanges[j].manageDuty = null;
                }
//                riskControlRanges[j].manageDuty = vuemyApp.uzmanageDuty;
                riskControlRanges[j].manageUnit = vuemyApp.uzmanageUnit;
                riskControlRanges[j].controlRangePinci = vuemyApp.uzrangePinci;
                for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                    if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.uzmanageUnit) {
                        riskControlRanges[j].manageUnitID = vuemyApp.departmentList[i].fOrgID;
                        break;
                    }
                }
            }
            if (riskControlRanges[j].controlRangeName == "职能部室级") {
                if(vuemyApp.uqmanageDuty.length!=0){
                    var uqmanageDuty="";
                    for(var k=0;k<vuemyApp.uqmanageDuty.length;k++){
                        if(k<vuemyApp.uqmanageDuty.length-1){
                            uqmanageDuty+=vuemyApp.uqmanageDuty[k]+",";
                        }else{
                            uqmanageDuty+=vuemyApp.uqmanageDuty[k];
                        }
                    }
                    riskControlRanges[j].manageDuty = uqmanageDuty;
                }else{
                    riskControlRanges[j].manageDuty = null;

                }
//                riskControlRanges[j].manageDuty = vuemyApp.uqmanageDuty;
                riskControlRanges[j].manageUnit = vuemyApp.uqmanageUnit;
                riskControlRanges[j].controlRangePinci = vuemyApp.uqrangePinci;
                for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                    if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.uqmanageUnit) {
                        riskControlRanges[j].manageUnitID = vuemyApp.departmentList[i].fOrgID;
                        break;
                    }
                }
            }
            if (riskControlRanges[j].controlRangeName == "区队级") {
                if(vuemyApp.ubmanageDuty.length!=0){
                    var ubmanageDuty="";
                    for(var k=0;k<vuemyApp.ubmanageDuty.length;k++){
                        if(k<vuemyApp.ubmanageDuty.length-1){
                            ubmanageDuty+=vuemyApp.ubmanageDuty[k]+",";
                        }else{
                            ubmanageDuty+=vuemyApp.ubmanageDuty[k];
                        }
                    }
                    riskControlRanges[j].manageDuty = ubmanageDuty;
                }else{
                    riskControlRanges[j].manageDuty = null;
                }
//                riskControlRanges[j].manageDuty = vuemyApp.ubmanageDuty;
                riskControlRanges[j].manageUnit = vuemyApp.ubmanageUnit;
                riskControlRanges[j].controlRangePinci = vuemyApp.ubrangePinci;
                for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                    if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.ubmanageUnit) {
                        riskControlRanges[j].manageUnitID = vuemyApp.departmentList[i].fOrgID;
                        break;
                    }
                }
            }
            if (riskControlRanges[j].controlRangeName == "班组个人级") {
                if(vuemyApp.ugmanageDuty.length!=0){
                    var ugmanageDuty="";
                    for(var k=0;k<vuemyApp.ugmanageDuty.length;k++){
                        if(k<vuemyApp.ugmanageDuty.length-1){
                            ugmanageDuty+=vuemyApp.ugmanageDuty[k]+",";
                        }else{
                            ugmanageDuty+=vuemyApp.ugmanageDuty[k];
                        }
                    }
                    riskControlRanges[j].manageDuty = ugmanageDuty;
                }else{
                    riskControlRanges[j].manageDuty = null;
                }
//                riskControlRanges[j].manageDuty = vuemyApp.ugmanageDuty;
                riskControlRanges[j].manageUnit = vuemyApp.ugmanageUnit;
                riskControlRanges[j].controlRangePinci = vuemyApp.ugrangePinci;
                for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                    if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.ugmanageUnit) {
                        riskControlRanges[j].manageUnitID = vuemyApp.departmentList[i].fOrgID;
                        break;
                    }
                }
            }
            riskControlRanges[j].controlRangeStartDay = $("#startTime1").val();
            riskControlRanges[j].controlRangeEndDay = $("#endTime1").val();
        }
        $.ajax({
            url: projectName + "/HazardIdentificationControl/updateRiskhazardcontrolrangeFiveLevels", //发送请求的地址。
            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
            data: JSON.stringify(riskControlRanges),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
            dataType: "json",//预期服务器返回的数据类型。
            contentType: "application/json",
            success: function (data) {
                //请求成功后的回调函数
                if (data) {

                } else {
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
            }
        });
        $.ajax({
            type: "POST",
            url: url,
            cache: false,
            data: JSON.stringify(riskhazard),
            dataType: "Json",
            contentType: "application/json",
            success: function (data) {

                //修改后成功从这返回
                $("#goNewRiskhazardBtn").show()
                if (data == true) {
                    showToast("success", "修改成功！");
//                    showPrentRiskSite();
//                    getRiskhazardArr('',riskSiteId);
                    vuemyApp.riskhazardDepts = new Array();
                    vuemyApp.riskhazardDepts2 = new Array();
//                    $("#updateRiskhazard").hide();
                    $('#updateRiskhazard').modal('hide');

//                    $("#upManageUnit").val("");
                    $("#upRiskType").val("");
                    $("#upRiskhazardName").val("");
                    $("#upBianShiFangFa").val("");
                    vuemyApp.riskSiteDepts = new Array();
//                    $("#upStatus").val("");
                    $("#uphiddenRiskSiteID").val("");
                    $("#uphiddenRiskhazardID").val("");

                    $.ajax({
                        type: "POST",
                        url: projectName + "/HazardIdentificationControl/getmHazardsByRisksiteId",
                        cache: false,
                        async: false,
                        data: {
                            'risksiteId': riskSiteId
                        },
                        dataType: "Json",
                        success: function (data2) {
                            var mHazards = data2;
                            var tbodyHtml = "";
                            $("#showRiskhazard").html("");
                            if (mHazards != null) {
                                for (i = 0; i < mHazards.length; i++) {
                                    var bolstatus = "是";
                                    var consequence = "";

                                    if (!mHazards[i].status) {
                                        bolstatus = "否";
                                    };

                                    if (mHazards[i].consequence != null) {
                                        consequence = mHazards[i].consequence;
                                    };
                                    var HD;
                                    (mHazards[i].hazardDesc != null) ? HD = mHazards[i].hazardDesc : HD = "";
                                    (mHazards[i].accidentType != null) ? accident = mHazards[i].accidentType : accident = "";
                                    var major
                                    (mHazards[i].majorType != null) ? major = mHazards[i].majorType : major = "";
                                    var damage
                                    (mHazards[i].damageType != null) ? damage = mHazards[i].damageType : damage = "";
                                    var riskType
                                    (mHazards[i].riskType != null) ? riskType = mHazards[i].riskType : riskType = "";

                                    tbodyHtml = tbodyHtml + "<tr>" +
                                        "<td class=\"text-center\">" + (parseInt(i) + 1) + "</td>" +
                                        "<td class=\"text-center\" style=\"text-align: left;\">" + mHazards[i].name + "</td>" +
                                        "<td class=\"text-center\">" + major + "</td>" +
                                        "<td class=\"text-center\">" + damage + "</td>" +
                                        "<td class=\"text-center\">" + riskType + "</td>" +
                                        "<td class=\"text-center\">" + HD + "</td>" +
                                        "<td class=\"text-center\">" +
                                        "<a href=\"javascript:void(0)\" data-toggle=\"tooltip\" class=\"btn btn-effect-ripple btn-sm\" onclick=\"goUpdateRiskhazard(" + JSON.stringify(mHazards[i]).replace(/"/g, '&quot;') + ")\" title=\"修改\">" +
                                        "修改</a>" +
                                        "<a href=\"javascript:void(0)\" data-toggle=\"tooltip\" class=\"btn btn-effect-ripple btn-sm\" onclick=\"delRiskhazard('" + mHazards[i].hazardID + "','" + riskSiteId + "')\" title=\"删除\">" +
                                        "删除</a></td>" +
                                        "</tr>"
                                }
                            }
                            $("#showRiskhazard").append(tbodyHtml);
                        },
                        error: function () {
                            showToast("error", "展示风险参数有误！");
                        }
                    });
                    //重新回到搜索操作左侧菜单展示
                    searchRiskSite(mHazards[i].name);
                    // showPrentRiskSite();
                } else {
                    showToast("warning", "修改失败！");
                }
            },
            error: function () {
                $("#goNewRiskhazardBtn").show();
                showToast("error", "维护风险参数有误！");
//                alert("新增风险点参数有误！");
            }
        });
        vuemyApp.riskDamageTypes = new Array();
        vuemyApp.riskhazardDepts = new Array();
        vuemyApp.riskhazardDepts2 = new Array();
    };
    function provNewRiskHazard() {//验证新建riskSite输入是否正确的方法
        if ($("#riskType").val() == null || $("#riskType").val() == '') {
            showToast("error", "类型不得为空！");
            return false;
        }
        ;
        if ($("#RiskhazardName").val() == null || $("#RiskhazardName").val() == '') {
            showToast("error", "危险描述不得为空！");
            return false;
        }
        ;
        return true;
    };
    function provNewRiskSite(code, parentID) {//验证新建riskSite输入是否正确的方法
        if ((code == '0' && ($("#riskName").val() == null || $("#riskName").val() == '')) ||
            (code == '1' && ($("#riskName1").val() == null || $("#riskName1").val() == ''))) {
            showToast("error", "名称不得为空！");
            return false;
        }
        ;
        if ((parentID == '0' && code == '0' && ($("#riskSiteTypeContent").val() == null || $("#riskSiteTypeContent").val() == '')) ||
            (parentID == '0' && code == '1' && ($("#riskSiteTypeContent1").val() == null || $("#riskSiteTypeContent1").val() == ''))) {
            showToast("error", "类型不得为空！");
            return false;
        }
        ;

        return true;
    };

    //右上角新增风险
    function saveRiskhazardBtn() {
        var managerUnitName = "";
        var managerUnitID = "";

        for (var j = 0; j < vuemyApp.riskhazardDepts.length; j++) {
            for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                if (vuemyApp.riskhazardDepts[j] == vuemyApp.departmentList[i].fOrgID) {
                    managerUnitName = managerUnitName + vuemyApp.departmentList[i].fOrg_Name + ",";
                    managerUnitID = managerUnitID + vuemyApp.departmentList[i].fOrgID_Auto + ",";
                }
            }
        };
        if (managerUnitID == "") {
            managerUnitName = null;
        };
        managerUnitID = null;
        var manageUnit = managerUnitName;
        manageUnitAllParam = manageUnit;
        var riskType = $("#riskType").val();
        var name = $("#RiskhazardName").val();
        var bianShiFangFa=$("#BianShiFangFa").val();
        var consequence = $("#consequence").val();
        var majorType = $("#majorType").val();
        var operatingPost = $("#operatingPost").val();
        var dutyRole = $("#dutyRole").val();
        var accidenttype ="";
        if(vuemyApp.accidentType.length!=0){
            for(var i=0;i<vuemyApp.accidentType.length;i++){
                if(i<vuemyApp.accidentType.length-1){
                    accidenttype+=vuemyApp.accidentType[i]+",";
                }else{
                    accidenttype+=vuemyApp.accidentType[i];
                }
            }
        }
        var damageType = '';
        for (var i = 0; i < vuemyApp.riskDamageTypes.length; i++) {
            if (i < 1) {
                damageType = vuemyApp.riskDamageTypes[i];
            } else {
                damageType = damageType + "," + vuemyApp.riskDamageTypes[i];
            }
        }
        var status = false/*$("#status").val()*/;
        var riskSiteId = $("#hiddenRiskSiteID").val();
        var hazardDesc = $("#hazardDesc").val();
        var managerUnitName2 = "";
        var managerUnitID2 = "";
        for (var j = 0; j < vuemyApp.riskhazardDepts2.length; j++) {
            for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                if (vuemyApp.riskhazardDepts2[j] == vuemyApp.departmentList[i].fOrgID) {
                    managerUnitName2 = managerUnitName2 + vuemyApp.departmentList[i].fOrg_Name + ",";
                    managerUnitID2 = managerUnitID2 + vuemyApp.departmentList[i].fOrgID_Auto + ",";
                }
            }
        };
        if (managerUnitID2 == "") {
            managerUnitName2 = null;
        };
        managerUnitID2 = null;
        var manageUnit2 = managerUnitName2;
        var accountabilityUnit = manageUnit2;
        var riskhazard = newRiskhazard();
        var url = projectName + "/HazardIdentificationControl/addOneHazardInRiskSiteAndReturn";

        riskhazard.risksiteID = riskSiteId;
        riskhazard.status = status;
        riskhazard.manageUnit = manageUnit;
        riskhazard.riskType = riskType;
        riskhazard.name = name;
        riskhazard.consequence = consequence;
        riskhazard.majorType = majorType;
        riskhazard.operatingPost = operatingPost;
        riskhazard.dutyRole = dutyRole;
        riskhazard.damageType = damageType;
        riskhazard.accidentType = accidenttype;
        riskhazard.hazardDesc = hazardDesc;
        riskhazard.accountabilityUnit = accountabilityUnit;
        riskhazard.identifyMethod=bianShiFangFa;
        riskhazard.riskByTypes=$("#riskByTypes").val();
        riskhazard.riskFactors=$("#riskFactors").val();
        riskhazard.technologyDepartment=$("#technologyDepartment").val();
        riskhazard.supervisionDepartment=$("#supervisionDepartment").val();

        if (provNewRiskHazard()) {
            $.ajax({
                type: "POST",
                url: url,
                cache: false,
                async: false,
                data: JSON.stringify(riskhazard),
                dataType: "Json",
                contentType: "application/json",
                success: function (data1) {

                    if (data1 != null) {
                        var map = vuemyApp.riskhazardcontrolrangeFiveLevels;
                        var riskhazardcontrolrangeList = new Array();
                        for (var key in map) {
                            var riskhazardcontrolrange = map[key];
                            riskhazardcontrolrange.hazardID = data1.hazardID;
                            riskhazardcontrolrange.hazardUUID = data1.hazardUUID;
                            riskhazardcontrolrange.riskSiteID = data1.risksiteID;
                            riskhazardcontrolrange.riskSiteFullNumber = data1.risksiteFullNumber;
                            riskhazardcontrolrange.controlRangeStartDay = $("#startTime").val();
                            riskhazardcontrolrange.controlRangeEndDay = $("#endTime").val();
                            if (key == "kj") {
                                riskhazardcontrolrange.controlRangeName = "矿级";
                                riskhazardcontrolrange.controlRangePinci = vuemyApp.krangePinci;
                                riskhazardcontrolrange.manageUnit = vuemyApp.kmanageUnit;
                                if(vuemyApp.kmanageDuty.length!=0){
                                    var kmanageDuty="";
                                    for(var k=0;k<vuemyApp.kmanageDuty.length;k++){
                                        if(k<vuemyApp.kmanageDuty.length-1){
                                            kmanageDuty+=vuemyApp.kmanageDuty[k]+",";
                                        }else{
                                            kmanageDuty+=vuemyApp.kmanageDuty[k];
                                        }
                                    }
                                    riskhazardcontrolrange.manageDuty = kmanageDuty;
                                }else{
                                    riskhazardcontrolrange.manageDuty = null;

                                }
                                for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                                    if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.kmanageUnit) {
                                        riskhazardcontrolrange.manageUnitID = vuemyApp.departmentList[i].fOrgID;
                                        break;
                                    }
                                }
                            }
                            if (key == "zyj") {
                                riskhazardcontrolrange.controlRangeName = "专业级";
                                riskhazardcontrolrange.controlRangePinci = vuemyApp.zrangePinci;
                                riskhazardcontrolrange.manageUnit = vuemyApp.zmanageUnit;
//                                riskhazardcontrolrange.manageDuty = vuemyApp.zmanageDuty;
                                if(vuemyApp.zmanageDuty.length!=0){
                                    var zmanageDuty="";
                                    for(var k=0;k<vuemyApp.zmanageDuty.length;k++){
                                        if(k<vuemyApp.zmanageDuty.length-1){
                                            zmanageDuty+=vuemyApp.zmanageDuty[k]+",";
                                        }else{
                                            zmanageDuty+=vuemyApp.zmanageDuty[k];
                                        }
                                    }
                                    riskhazardcontrolrange.manageDuty = zmanageDuty;
                                }else{
                                    riskhazardcontrolrange.manageDuty = null;

                                }

                                for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                                    if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.zmanageUnit) {
                                        riskhazardcontrolrange.manageUnitID = vuemyApp.departmentList[i].fOrgID;
                                        break;
                                    }
                                }
                            }
                            if (key == "znbsj") {
                                riskhazardcontrolrange.controlRangeName = "职能部室级";
                                riskhazardcontrolrange.controlRangePinci = vuemyApp.qrangePinci;
                                riskhazardcontrolrange.manageUnit = vuemyApp.qmanageUnit;
                                if(vuemyApp.qmanageDuty.length!=0){
                                    var qmanageDuty="";
                                    for(var k=0;k<vuemyApp.qmanageDuty.length;k++){
                                        if(k<vuemyApp.qmanageDuty.length-1){
                                            qmanageDuty+=vuemyApp.qmanageDuty[k]+",";
                                        }else{
                                            qmanageDuty+=vuemyApp.qmanageDuty[k];
                                        }
                                    }
                                    riskhazardcontrolrange.manageDuty = qmanageDuty;
                                }else{
                                    riskhazardcontrolrange.manageDuty = null;

                                }
                                for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                                    if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.qmanageUnit) {
                                        riskhazardcontrolrange.manageUnitID = vuemyApp.departmentList[i].fOrgID;
                                        break;
                                    }
                                }
                            }
                            if (key == "qdj") {
                                riskhazardcontrolrange.controlRangeName = "区队级";
                                riskhazardcontrolrange.controlRangePinci = vuemyApp.brangePinci;
                                riskhazardcontrolrange.manageUnit = vuemyApp.bmanageUnit;
//                                riskhazardcontrolrange.manageDuty = vuemyApp.bmanageDuty;
                                if(vuemyApp.bmanageDuty.length!=0){
                                    var bmanageDuty="";
                                    for(var k=0;k<vuemyApp.bmanageDuty.length;k++){
                                        if(k<vuemyApp.bmanageDuty.length-1){
                                            bmanageDuty+=vuemyApp.bmanageDuty[k]+",";
                                        }else{
                                            bmanageDuty+=vuemyApp.bmanageDuty[k];
                                        }
                                    }
                                    riskhazardcontrolrange.manageDuty = bmanageDuty;
                                }else{
                                    riskhazardcontrolrange.manageDuty = null;

                                }
                                for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                                    if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.bmanageUnit) {
                                        riskhazardcontrolrange.manageUnitID = vuemyApp.departmentList[i].fOrgID;
                                        break;
                                    }
                                }
                            }
                            if (key == "bzgrj") {
                                riskhazardcontrolrange.controlRangeName = "班组个人级";
                                riskhazardcontrolrange.controlRangePinci = vuemyApp.grangePinci;
                                riskhazardcontrolrange.manageUnit = vuemyApp.gmanageUnit;
//                                riskhazardcontrolrange.manageDuty = vuemyApp.gmanageDuty;
                                if(vuemyApp.gmanageDuty.length!=0){
                                    var gmanageDuty="";
                                    for(var k=0;k<vuemyApp.gmanageDuty.length;k++){
                                        if(k<vuemyApp.gmanageDuty.length-1){
                                            gmanageDuty+=vuemyApp.gmanageDuty[k]+",";
                                        }else{
                                            gmanageDuty+=vuemyApp.gmanageDuty[k];
                                        }
                                    }
                                    riskhazardcontrolrange.manageDuty = gmanageDuty;
                                }else{
                                    riskhazardcontrolrange.manageDuty = null;

                                }
                                for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                                    if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.gmanageUnit) {
                                        riskhazardcontrolrange.manageUnitID = vuemyApp.departmentList[i].fOrgID;
                                        break;
                                    }
                                }
                            }
                            riskhazardcontrolrangeList.push(riskhazardcontrolrange);
                        };
                        $.ajax({
                            url: projectName + "/HazardIdentificationControl/addRiskhazardcontrolranges", //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: JSON.stringify(riskhazardcontrolrangeList),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            contentType: "application/json",
                            success: function (data) {
                                //请求成功后的回调函数
                                if (data) {
                                    //重新回到操作左侧菜单展示
                                    showPrentRiskSite();
                                    $('#addRiskhazard').modal('hide');
                                    vuemyApp.riskhazardDepts = new Array();
                                    vuemyApp.riskhazardDepts2 = new Array();
                                    $("#riskType").val("");
                                    $("#RiskhazardName").val("");
                                    $("#BianShiFangFa").val("");
                                    $("#consequence").val("");
                                    $("#majorType").val("");
                                    $("#operatingPost").val("");
                                    $("#dutyRole").val("");
                                    $("#accidenttype").val("");
                                    vuemyApp.riskDamageTypes = new Array();
                                    vuemyApp.riskhazardDepts = new Array();

                                    $.ajax({
                                        type: "POST",
                                        url: projectName + "/HazardIdentificationControl/getmHazardsByRisksiteId",
                                        cache: false,
                                        async: false,
                                        data: {
                                            'risksiteId': riskSiteId
                                        },
                                        dataType: "Json",
                                        success: function (data2) {
                                            var mHazards = data2;
                                            /***/
                                            var tbodyHtml = "";
                                            $("#showRiskhazard").html("");
                                            if (mHazards != null) {
                                                for (i = 0; i < mHazards.length; i++) {
                                                    var bolstatus = "是";
                                                    var consequence = "";

                                                    if (!mHazards[i].status) {
                                                        bolstatus = "否";
                                                    };

                                                    if (mHazards[i].consequence != null) {
                                                        consequence = mHazards[i].consequence;
                                                    };
                                                    var HD;
                                                    (mHazards[i].hazardDesc != null) ? HD = mHazards[i].hazardDesc : HD = "";
                                                    var accident
                                                    (mHazards[i].accidentType != null) ? accident = mHazards[i].accidentType : accident = "";
                                                    var major
                                                    (mHazards[i].majorType != null) ? major = mHazards[i].majorType : major = "";
                                                    var damage
                                                    (mHazards[i].damageType != null) ? damage = mHazards[i].damageType : damage = "";
                                                    var riskType
                                                    (mHazards[i].riskType != null) ? riskType = mHazards[i].riskType : riskType = "";

                                                    tbodyHtml = tbodyHtml + "<tr>" +
                                                        "<td class=\"text-center\">" + (parseInt(i) + 1) + "</td>" +
                                                        "<td class=\"text-center\" style=\"text-align: left;\">" + mHazards[i].name + "</td>" +
                                                        "<td class=\"text-center\">" + major + "</td>" +
                                                        "<td class=\"text-center\">" + damage + "</td>" +
                                                        "<td class=\"text-center\">" + riskType + "</td>" +
                                                        "<td class=\"text-center\">" + HD + "</td>" +
                                                        "<td class=\"text-center\">" +
                                                        "<a href=\"javascript:void(0)\" data-toggle=\"tooltip\" class=\"btn btn-effect-ripple btn-sm\" onclick=\"goUpdateRiskhazard(" + JSON.stringify(mHazards[i]).replace(/"/g, '&quot;') + ")\" title=\"修改1\">" +
                                                        "修改</a>" +
                                                        "<a href=\"javascript:void(0)\" data-toggle=\"tooltip\" class=\"btn btn-effect-ripple btn-sm\" onclick=\"delRiskhazard('" + mHazards[i].hazardID + "','" + riskSiteId + "')\" title=\"删除\">" +
                                                        "删除</a></td>" +
                                                        "</tr>"
                                                }
                                            }
                                            $("#showRiskhazard").append(tbodyHtml);
                                        },
                                        error: function () {
                                            showToast("error", "展示风险参数有误！");
                                        }
                                    });

                                } else {
                                    showToast("error", "五级管控保存失败！");
                                }
                            },
                            error: function (XMLHttpRequest, textStatus, errorThrown) {
                                showToast("error", "五级管控保存失败！");
                            }
                        });
                        showToast("success", "保存成功！");

                    } else {
                        showToast("warning", "保存失败！");
                    }
                    $("#goNewRiskhazardBtn").show();
                },
                error: function () {
                    showToast("error", "新增风险参数有误！");
//                alert("新增风险点参数有误！");
                }
            });

            $("#identifyedRiskSite").empty();
        };
        vuemyApp.riskDamageTypes = new Array();
        vuemyApp.riskhazardDepts = new Array();
        vuemyApp.riskhazardDepts2 = new Array();
    };

    function testRsNameIsEx(parentID, RsName) {//判断RiskSite名称已存在，存在返回true
        var paramRisksite = newRiskSite();
        paramRisksite.name = RsName;
        paramRisksite.parentID = parentID;

        var blreturn = false;

        $.ajax({
            type: "POST",
            url: projectName + "/HazardIdentificationControl/getRiskSiteOnly",
            cache: false,
            async: false,
            data: JSON.stringify(paramRisksite),
            dataType: "Json",
            contentType: "application/json",
            success: function (data) {
                if (data != null && data.length > 0) {
                    blreturn = true;
                }
                ;
            },
            error: function () {
                alert("╮(╯▽╰)╭");
            }
        });

        return blreturn;
    };

    //保存右键新增事件
    function saveRiskSiteBtn() {
        var paramRisksite = newRiskSite();
        var riskName = "";
        var riskSiteDepts = vuemyApp.riskSiteDepts;

        if ($("#hiddenStr").val() == "0") {
            var thisPlaceList = new Array();
            $.ajax({
                url: projectName + "/PlatForm/getPlaceListForEnterprise",
                type: "POST",
                dataType: "json",
                async: false,
                success: function (data1) {
                    thisPlaceList = data1.rows;
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log(XMLHttpRequest.status);
                    console.log(XMLHttpRequest.readyState);
                    console.log(textStatus);
                }
            });

            var locationId = $("#locationId").val();
            var isNameIn = false;

            for (var j = 0; j < thisPlaceList.length; j++) {
                if (locationId == thisPlaceList[j].fPlace_GUID) {
                    isNameIn = true;
                    riskName = thisPlaceList[j].fPlace_Name;
                    break;
                }
            }
            ;

            if (!isNameIn) {
                riskName = $.trim($("#riskName").val());
                isNameIn = false;
                for (var j = 0; j < thisPlaceList.length; j++) {
                    if (riskName == thisPlaceList[j].fPlace_Name) {
                        isNameIn = true;
                        locationId = thisPlaceList[j].fPlace_GUID;
                        break;
                    }
                };

                if (!isNameIn) {
                    $.ajax({
                        url: projectName + "/PlatForm/savePlaceOfBussiness/" + riskName,
                        type: "POST",
                        dataType: "json",
                        async: false,
                        contentType: "application/json",
                        success: function (data2) {
                            locationId = data2;
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            console.log(XMLHttpRequest.status);
                            console.log(XMLHttpRequest.readyState);
                            console.log(textStatus);
                        }
                    });
                };
            };
            paramRisksite.locationId = locationId;
        } else {
            riskName = $("#riskName").val();
        };
        var parentID = $("#newRiskStieParentID").val();
        if (provNewRiskSite('0', parentID)) {
            if (!testRsNameIsEx(parentID, riskName)) {
                var riskSiteType = $("#riskSiteType").val();
                var riskSiteTypeContent = $("#riskSiteTypeContent").val();
                var managerName = $("#managerName").val();
                var managerUnitName = "";
                var managerUnitID = "";

                for (var j = 0; j < riskSiteDepts.length; j++) {
                    for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                        if (riskSiteDepts[j] == vuemyApp.departmentList[i].fOrgID) {
                            managerUnitName = managerUnitName + vuemyApp.departmentList[i].fOrg_Name + ",";
                            managerUnitID = managerUnitID + vuemyApp.departmentList[i].fOrgID_Auto + ",";
                        }
                    }
                };

                if (managerUnitID == "") {
                    managerUnitName = null;
                };
                managerUnitID = null;
                var riskAccident = $("#riskAccident").val();
                var riskColor = $("#riskColor").val();
                var isbol = $("#riskControlCyclea").is(':checked');
                if (isbol) {
                    paramRisksite.riskControlCycle = $("#riskControlCycle").val();
                };
                if ($("#riskControlCycleb").is(':checked')) {
                    paramRisksite.riskControlCycle = "长期";
                };
                var riskControlTier = $("#riskControlTier").val();
                var riskDamageType = $("#riskDamageType").val();
                var riskDescription = $("#riskDescription").val();
                var riskFrequency = $("#riskFrequency").val();
                var riskDamageType = '';
                for (var i = 0; i < vuemyApp.riskDamageTypes.length; i++) {
                    if (i < 1) {
                        riskDamageType = vuemyApp.riskDamageTypes[i];
                    } else {
                        riskDamageType = riskDamageType + "," + vuemyApp.riskDamageTypes[i];
                    }
                }
                var riskMajorType = $("#riskMajorType").val();
                var url = projectName + "/HazardIdentificationControl/saveRiskSite";

                paramRisksite.name = riskName;
                paramRisksite.riskSiteType = riskSiteType;
                paramRisksite.parentID = parentID;
                paramRisksite.status = false;
                paramRisksite.riskSiteTypeContent = riskSiteTypeContent;
                paramRisksite.managerName = managerName;
                paramRisksite.managerUnitName = managerUnitName;
                paramRisksite.managerUnitID = managerUnitID;
                paramRisksite.riskAccident = riskAccident;
                paramRisksite.riskControlTier = riskControlTier;
                paramRisksite.riskDamageType = riskDamageType;
                paramRisksite.riskDescription = riskDescription;
                paramRisksite.riskFrequency = riskFrequency;
                paramRisksite.riskMajorType = riskMajorType;
                paramRisksite.showChild = true;
                paramRisksite.details = true;

                $.ajax({
                    type: "POST",
                    url: url,
                    cache: false,
                    data: JSON.stringify(paramRisksite),
                    dataType: "Json",
                    contentType: "application/json",
                    async: false,
                    success: function (data) {
                        if (data.riskSiteType == "EQUIPMENT") {
                            data.riskSiteType = "设施";
                        } else if (data.riskSiteType == "TASK") {
                            data.riskSiteType = "作业活动";
                        }
                        ;

                        if (data.riskSiteID > 0) {
                            showToast("success", "保存成功！");
                            console.log(data.riskSiteTypeContent);
                            //重新回到操作左侧菜单展示
                            var rname = data.name + "/";
                            getRiskhazardArr(rname, data);
                            showChdrRistSites(data.parentID, rname, 1, data.riskSiteTypeContent);
                            $('#addriskpoint').modal('hide');
                            $(".modal").hide();
                            $("#riskName").val("");
                            $("#riskSiteType").val("");

                            $("#hiddenRisksiteParam").val(JSON.stringify(data));
                            riskSiteOptions();
                            $("#btn-group").show();
                            $("#goNewRiskhazardBtn").hide();

                            vuemyApp.riskSiteDepts = new Array();
                            vuemyApp.riskSiteDepts2 = new Array();
                            vuemyApp.closemodalByadd();

                            //location.reload();
                        } else {
                            showToast("error", "保存失败！");
                            vuemyApp.closemodalByadd();
                        }

                    },
                    error: function () {
                        showToast("error", "新增风险点参数有误！");
                        vuemyApp.closemodalByadd();
                    }
                });
                $("#identifyedRiskSite").empty();
            } else {
                showToast("error", "该名称已存在！");
                vuemyApp.closemodalByadd();
                $("#riskName").focus();
            };
        };
        vuemyApp.riskDamageTypes = new Array();
        vuemyApp.riskSiteDepts = new Array();
        vuemyApp.riskSiteDepts2 = new Array();
        vuemyApp.getPlaceListForEnterprise();
    };

    //新增地点的保存
    function saveRiskSiteBtnN() {
        var paramRisksite = newRiskSite();
        var riskName = "";
        var riskSiteDepts = vuemyApp.riskSiteDepts;

        if ($("#hiddenStr").val() == "0") {
            var thisPlaceList = new Array();
            $.ajax({
                url: projectName + "/PlatForm/getPlaceListForEnterprise",
                type: "POST",
                dataType: "json",
                async: false,
                success: function (data1) {
                    thisPlaceList = data1.rows;
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log(XMLHttpRequest.status);
                    console.log(XMLHttpRequest.readyState);
                    console.log(textStatus);
                }
            });

            var locationId = $("#locationId").val();
            var isNameIn = false;

            for (var j = 0; j < thisPlaceList.length; j++) {
                if (locationId == thisPlaceList[j].fPlace_GUID) {
                    isNameIn = true;
                    riskName = thisPlaceList[j].fPlace_Name;
                    break;
                }
            };
            if (!isNameIn) {
                riskName = $.trim($("#riskName").val());
                isNameIn = false;
                for (var j = 0; j < thisPlaceList.length; j++) {
                    if (riskName == thisPlaceList[j].fPlace_Name) {
                        isNameIn = true;
                        locationId = thisPlaceList[j].fPlace_GUID;
                        break;
                    }
                };
                if (!isNameIn) {
                    $.ajax({
                        url: projectName + "/PlatForm/savePlaceOfBussiness/" + riskName,
                        type: "POST",
                        dataType: "json",
                        async: false,
                        contentType: "application/json",
                        success: function (data2) {
                            locationId = data2;
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            console.log(XMLHttpRequest.status);
                            console.log(XMLHttpRequest.readyState);
                            console.log(textStatus);
                        }
                    });
                };
            };
            paramRisksite.locationId = locationId;
        } else {
            riskName = $("#riskName").val();
        };
        var parentID = $("#newRiskStieParentID").val();
        if (provNewRiskSite('0', parentID)) {
            if (!testRsNameIsEx(parentID, riskName)) {
                var riskSiteType = $("#riskSiteType").val();
                var riskSiteTypeContent = $("#riskSiteTypeContent").val();
                var managerName = $("#managerName").val();
                var managerUnitName = "";
                var managerUnitID = "";

                for (var j = 0; j < riskSiteDepts.length; j++) {
                    for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                        if (riskSiteDepts[j] == vuemyApp.departmentList[i].fOrgID) {
                            managerUnitName = managerUnitName + vuemyApp.departmentList[i].fOrg_Name + ",";
                            managerUnitID = managerUnitID + vuemyApp.departmentList[i].fOrgID_Auto + ",";
                        }
                    }
                };

                if (managerUnitID == "") {
                    managerUnitName = null;
                };
                managerUnitID = null;
                var riskAccident = $("#riskAccident").val();
                var riskColor = $("#riskColor").val();
                var isbol = $("#riskControlCyclea").is(':checked');
                if (isbol) {
                    paramRisksite.riskControlCycle = $("#riskControlCycle").val();
                };
                if ($("#riskControlCycleb").is(':checked')) {
                    paramRisksite.riskControlCycle = "长期";
                };
                var riskControlTier = $("#riskControlTier").val();
                var riskDamageType = $("#riskDamageType").val();
                var riskDescription = $("#riskDescription").val();
                var riskFrequency = $("#riskFrequency").val();
                var riskDamageType = '';
                for (var i = 0; i < vuemyApp.riskDamageTypes.length; i++) {
                    if (i < 1) {
                        riskDamageType = vuemyApp.riskDamageTypes[i];
                    } else {
                        riskDamageType = riskDamageType + "," + vuemyApp.riskDamageTypes[i];
                    }
                }
                var riskMajorType = $("#riskMajorType").val();
                var url = projectName + "/HazardIdentificationControl/saveRiskSite";

                paramRisksite.name = riskName;
                paramRisksite.riskSiteType = riskSiteType;
                paramRisksite.parentID = parentID;
                paramRisksite.status = false;
                paramRisksite.riskSiteTypeContent = riskSiteTypeContent;
                paramRisksite.managerName = managerName;
                paramRisksite.managerUnitName = managerUnitName;
                paramRisksite.managerUnitID = managerUnitID;
                paramRisksite.riskAccident = riskAccident;
                paramRisksite.riskControlTier = riskControlTier;
                paramRisksite.riskDamageType = riskDamageType;
                paramRisksite.riskDescription = riskDescription;
                paramRisksite.riskFrequency = riskFrequency;
                paramRisksite.riskMajorType = riskMajorType;
                paramRisksite.showChild = true;
                paramRisksite.details = true;

                $.ajax({
                    type: "POST",
                    url: url,
                    cache: false,
                    data: JSON.stringify(paramRisksite),
                    dataType: "Json",
                    contentType: "application/json",
                    async: false,
                    success: function (data) {
                        if (data.riskSiteType == "EQUIPMENT") {
                            data.riskSiteType = "设施";
                        } else if (data.riskSiteType == "TASK") {
                            data.riskSiteType = "作业活动";
                        }
                        ;

                        if (data.riskSiteID > 0) {
                            showToast("success", "保存成功！");
                            //重新回到操作左侧菜单展示
                            showPrentRiskSite();
                            $('#addriskpoint').modal('hide');
                            $(".modal").hide();
                            $("#riskName").val("");
                            $("#riskSiteType").val("");

                            $("#hiddenRisksiteParam").val(JSON.stringify(data));
                            riskSiteOptions();
                            $("#btn-group").show();
                            $("#goNewRiskhazardBtn").hide();

                            vuemyApp.riskSiteDepts = new Array();
                            vuemyApp.riskSiteDepts2 = new Array();
                            vuemyApp.closemodalByadd();

                            //location.reload();
                        } else {
                            showToast("error", "保存失败！");
                            vuemyApp.closemodalByadd();
                        }

                    },
                    error: function () {
                        showToast("error", "新增风险点参数有误！");
                        vuemyApp.closemodalByadd();
                    }
                });
                $("#identifyedRiskSite").empty();
            } else {
                showToast("error", "该名称已存在！");
                vuemyApp.closemodalByadd();
                $("#riskName").focus();
            };
        };
        vuemyApp.riskDamageTypes = new Array();
        vuemyApp.riskSiteDepts = new Array();
        vuemyApp.riskSiteDepts2 = new Array();
        vuemyApp.getPlaceListForEnterprise();
    };

    function showToast(level, message) {
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

    function newRiskSite() {
        var respRisksite = {};

        $.ajax({
            type: "GET",
            url: projectName + "/HazardIdentificationControl/createNewRiskSite",
            cache: false,
            async: false,
            data: {},
            dataType: "Json",
            success: function (data) {
                respRisksite = data;
            },
            error: function () {
                alert("对象参数有误！");
            }
        });

        return respRisksite;
    }

    function newRiskhazard() {//获取空的危险源
        var respRiskhazard = {};

        $.ajax({
            type: "GET",
            url: projectName + "/HazardIdentificationControl/createRiskhazard",
            cache: false,
            async: false,
            data: {},
            dataType: "Json",
            success: function (data) {
                respRiskhazard = data;
            },
            error: function () {
                alert("对象参数有误！");
            }
        });

        return respRiskhazard;
    };

    //搜索框输入后激活
    function searchRiskSitekeyup(elm) {
        searchRiskSite(elm.value);
    };
    function searchRiskSite(inRiskSiteName) {//左侧菜单筛选
        countClick1 = new Array();
        var treeHtml = "";
        $("#treeBasic").html("");
        if (inRiskSiteName != null && $.trim(inRiskSiteName) != '') {
            var intIn = 0;
            for (i = 0; i < searchRiskSiteObj.length; i++) {
                if (searchRiskSiteObj[i].name.indexOf($.trim(inRiskSiteName)) > -1) {

                    var riskSiteTypeY = "地点";
                    if (searchRiskSiteObj[i] != null) {
                        if (searchRiskSiteObj[i].riskSiteType == "EQUIPMENT") {
                            riskSiteTypeY = "设施";
                        } else if (searchRiskSiteObj[i].riskSiteType == "TASK") {
                            riskSiteTypeY = "作业活动";
                        }
                        ;
                    } else {
                        riskSiteTypeY = "";
                    }
                    ;

                    var riskSiteTitle1 = searchRiskSiteObj[i].name + "/";
                    treeHtml = treeHtml + "<tr class=\"\" id=\"rsTr" + searchRiskSiteObj[i].riskSiteID + "\">" +
                        "<td style=\"width: 50%;text-align: left;\">" + "<div id=\"context\" data-toggle=\"context\" data-target=\"#context-menu\">" +
                        "<a class=\"qiehxg\" id=\"prnt0" + searchRiskSiteObj[i].riskSiteID + "\" onmousedown=\"righthit1(" + JSON.stringify(searchRiskSiteObj[i]).replace(/"/g, '&quot;') + ")\" onclick=\"getRiskhazardArr('" + riskSiteTitle1 + "'," + JSON.stringify(searchRiskSiteObj[i]).replace(/"/g, '&quot;') + ");showChdrRistSites('" + searchRiskSiteObj[i].riskSiteID + "','" + riskSiteTitle1 + "','" + intIn + "','" + searchRiskSiteObj[i].riskSiteTypeContent + "')\">" +
                        "<i class=\"fa fa-caret-right fa-fw\"></i>" + searchRiskSiteObj[i].name + "</a></div></td>" +
                        "<td colspan='2' style=\"width: 50%;\">" + riskSiteTypeY + "</td>" +
                        //                            "<td style=\"width: 30%;\"><a href=\"javascript:void(0)\" onclick=\"openNewRiskSiteDiv('"+"1"+"','"+data[i].riskSiteID+"')\">添加设施</a><br><a href=\"javascript:void(0)\" onclick=\"openNewRiskSiteDiv('"+"2"+"','"+data[i].riskSiteID+"')\">添加作业活动</a></td>" +
                        "</tr>";
                    intIn = intIn + 1;
                    countClick1.push(0);
                }
            }
        } else {
            for (i = 0; i < searchRiskSiteObj.length; i++) {
                var riskSiteTypeY = "地点";
                if (searchRiskSiteObj[i].riskSiteType == "EQUIPMENT") {
                    riskSiteTypeY = "设施";
                } else if (searchRiskSiteObj[i].riskSiteType == "TASK") {
                    riskSiteTypeY = "作业活动";
                }
                ;

                var riskSiteTitle1 = searchRiskSiteObj[i].name + "/";
                treeHtml = treeHtml + "<tr class=\"\" id=\"rsTr" + searchRiskSiteObj[i].riskSiteID + "\">" +
                    "<td style=\"width: 50%;text-align: left;\">" + "<div id=\"context\" data-toggle=\"context\" data-target=\"#context-menu\">" +
                    "<a class=\"qiehxg\" id=\"prnt0" + searchRiskSiteObj[i].riskSiteID + "\" onmousedown=\"righthit1(" + JSON.stringify(searchRiskSiteObj[i]).replace(/"/g, '&quot;') + ")\" onclick=\"getRiskhazardArr('" + riskSiteTitle1 + "'," + JSON.stringify(searchRiskSiteObj[i]).replace(/"/g, '&quot;') + ");showChdrRistSites('" + searchRiskSiteObj[i].riskSiteID + "','" + riskSiteTitle1 + "','" + i + "','" + searchRiskSiteObj[i].riskSiteTypeContent + "')\">" +
                    "<i class=\"fa fa-caret-right fa-fw\"></i>" + searchRiskSiteObj[i].name + "</a></div></td>" +
                    "<td colspan='2' style=\"width: 50%;\">" + riskSiteTypeY + "</td>" +
                    //                            "<td style=\"width: 30%;\"><a href=\"javascript:void(0)\" onclick=\"openNewRiskSiteDiv('"+"1"+"','"+data[i].riskSiteID+"')\">添加设施</a><br><a href=\"javascript:void(0)\" onclick=\"openNewRiskSiteDiv('"+"2"+"','"+data[i].riskSiteID+"')\">添加作业活动</a></td>" +
                    "</tr>";

                countClick1.push(0);
            }
        }

        $("#treeBasic").append(treeHtml);
    };
    //展示左侧父级菜单（修改后返回页面走这个）
    function showPrentRiskSite() {
        layer.load();
//        $("#goNewRiskhazardBtn").hide();
        $("#btn-group").hide();
        countClick1 = new Array();
        var paramRisksite = newRiskSite();
        paramRisksite.parentID = '0';

        $.ajax({
            type: "POST",
            url: projectName + "/HazardIdentificationControl/getRiskSiteOnly",
            cache: false,
            async: false,
            data: JSON.stringify(paramRisksite),
            dataType: "Json",
            contentType: "application/json",
            success: function (data) {
                var treeHtml = "";
                /*var treeNum = 0;
                 var treeNum0 = 0;*/
                $("#treeBasic").html("");
                for (i = 0; i < data.length; i++) {
                    if (data[i].parentID == '0') {

                        var riskSiteTypeY = "地点";
                        if (data[i].riskSiteType == "EQUIPMENT") {
                            riskSiteTypeY = "设施";
                        } else if (data[i].riskSiteType == "TASK") {
                            riskSiteTypeY = "作业活动";
                        }
                        ;

                        var riskSiteTitle1 = data[i].name + "/";
                        treeHtml = treeHtml + "<tr class=\"\" id=\"rsTr" + data[i].riskSiteID + "\">" +
                            "<td style=\"width: 50%;text-align: left;\">" + "<div id=\"context\" data-toggle=\"context\" data-target=\"#context-menu\">" +
                            "<a class=\"qiehxg\" id=\"prnt0" + data[i].riskSiteID +
                            "\" onmousedown=\"righthit1(" + JSON.stringify(data[i]).replace(/"/g, '&quot;') + ")" +
                            "\" onclick=\"getRiskhazardArr('" + riskSiteTitle1 + "'," +
                            JSON.stringify(data[i]).replace(/"/g, '&quot;') + ");showChdrRistSites('" + data[i].riskSiteID +
                            "','" + riskSiteTitle1 + "','" + i + "','" + data[i].riskSiteTypeContent + "')\">" +
                            "<i class=\"fa fa-caret-right fa-fw\"></i>" + data[i].name + "</a></div></td>" +
                            "<td colspan='2' style=\"width: 50%;\">" + riskSiteTypeY + "</td>" +
                            //"<td style=\"width: 30%;\"><a href=\"javascript:void(0)\" onclick=\"openNewRiskSiteDiv('"+"1"+"','"+data[i].riskSiteID+"')\">添加设施</a><br><a href=\"javascript:void(0)\" onclick=\"openNewRiskSiteDiv('"+"2"+"','"+data[i].riskSiteID+"')\">添加作业活动</a></td>" +
                            "</tr>";
                        //console.log(treeHtml);

                        countClick1.push(0);
                    }
                }
                searchRiskSiteObj = data;
                $("#treeBasic").append(treeHtml);
                layer.closeAll('loading');
            },
            error: function () {
                layer.closeAll('loading');
                alert("展示参数有误！");
            }
        });
    };

    //展示左侧父级菜单（当修改或删除后返回）
    function showPrentRiskSite1() {
        layer.load();
//        $("#goNewRiskhazardBtn").hide();
        $("#btn-group").hide();
        countClick1 = new Array();
        var paramRisksite = newRiskSite();
        paramRisksite.parentID = '0';

        $.ajax({
            type: "POST",
            url: projectName + "/HazardIdentificationControl/getRiskSiteOnly",
            cache: false,
            async: false,
            data: JSON.stringify(paramRisksite),
            dataType: "Json",
            contentType: "application/json",
            success: function (data) {
                var treeHtml = "";
                /*var treeNum = 0;
                 var treeNum0 = 0;*/
                $("#treeBasic").html("");
                for (i = 0; i < data.length; i++) {
                    if (data[i].parentID == '0') {

                        var riskSiteTypeY = "地点";
                        if (data[i].riskSiteType == "EQUIPMENT") {
                            riskSiteTypeY = "设施";
                        } else if (data[i].riskSiteType == "TASK") {
                            riskSiteTypeY = "作业活动";
                        }
                        ;

                        var riskSiteTitle1 = data[i].name + "/";
                        treeHtml = treeHtml + "<tr class=\"\" id=\"rsTr" + data[i].riskSiteID + "\">" +
                            "<td style=\"width: 50%;text-align: left;\">" +
                            "<div id=\"context\" data-toggle=\"context\" data-target=\"#context-menu\">" +
                            "<a class=\"qiehxg\" id=\"prnt0" + data[i].riskSiteID +
                            "\" onmousedown=\"righthit1(" + JSON.stringify(data[i]).replace(/"/g, '&quot;') + ")\" " +
                            "onclick=\"getRiskhazardArr('" + riskSiteTitle1 + "'," + JSON.stringify(data[i]).replace(/"/g, '&quot;') + ");" +
                            "showChdrRistSites('" + data[i].riskSiteID + "','" + riskSiteTitle1 + "','" + i + "','" + data[i].riskSiteTypeContent + "')\">" +
                            "<i class=\"fa fa-caret-right fa-fw\"></i>" + data[i].name + "</a></div></td>" +
                            "<td colspan='2' style=\"width: 50%;\">" + riskSiteTypeY + "</td>" +
                            //                            "<td style=\"width: 30%;\"><a href=\"javascript:void(0)\" onclick=\"openNewRiskSiteDiv('"+"1"+"','"+data[i].riskSiteID+"')\">添加设施</a><br><a href=\"javascript:void(0)\" onclick=\"openNewRiskSiteDiv('"+"2"+"','"+data[i].riskSiteID+"')\">添加作业活动</a></td>" +
                            "</tr>";

                        countClick1.push(0);
                    }
                }
                searchRiskSiteObj = data;
                $("#treeBasic").append(treeHtml);
                layer.closeAll('loading');
            },
            error: function () {
                layer.closeAll('loading');
                alert("展示参数有误！");
            }
        });
    };

    var righthitObj = {};
    var event1 = {};

    //父级菜单右键弹出
    function righthit1(riskSiteObj) {
        righthitObj = riskSiteObj;
        event1 = window.event || arguments.callee.caller.arguments[0];
        rhfun1();
    };
    //子集风险点右键弹出
    function righthit2(riskSiteObj) {
        righthitObj = riskSiteObj;
        event1 = window.event || arguments.callee.caller.arguments[0];
        rhfun2();
    };

    function rhfun1() {
        /*var e=window.event||arguments.callee.caller.arguments[0];//获取事件对象*/
        var value = event1.button;
        $("#context-menu2").hide();
        $("#btn-group").hide();
        if (value == 2 || value == 3) {
            $("#goupdateLevel0").removeAttr("onclick");
            $("#godelLevel0").removeAttr("onclick");
            $("#addLevelCh1").removeAttr("onclick");
            $("#addLevelCh2").removeAttr("onclick");

            $("#goupdateLevel0").attr('onclick', "goUpdateRiskSite(" + JSON.stringify(righthitObj) + ");");
            $("#godelLevel0").attr('onclick', "delRiskSite(" + JSON.stringify(righthitObj) + ");");
            $("#addLevelCh1").attr('onclick', "openNewRiskSiteDiv('" + "1" + "','" + righthitObj.riskSiteID + "');");
            $("#addLevelCh2").attr('onclick', "openNewRiskSiteDiv('" + "2" + "','" + righthitObj.riskSiteID + "');");
        }
    };

    function rhfun2() {
        /*var e=window.event||arguments.callee.caller.arguments[0];//获取事件对象*/
        var value = event1.button;
        $("#context-menu").hide();
        $("#btn-group").hide();
        if (value == 2 || value == 3) {
            $("#goupdateLevel1").removeAttr("onclick");
            $("#godelLevel1").removeAttr("onclick");

            $("#goupdateLevel1").attr('onclick', "goUpdateRiskSite(" + JSON.stringify(righthitObj) + ");");
            //左侧子集风险点击删除
            $("#godelLevel1").attr('onclick', "delRiskSite(" + JSON.stringify(righthitObj) + ");");
        }
    };

    //展开、关闭左侧风险点
    function showChdrRistSites(parentID, riskSiteTitle0, index, riskSiteTypeContent) {
        layer.load();
        $(".rschtr").remove();
        $("#goNewRiskhazardBtn").hide();
        $("#btn-group").hide();
        var paramRisksite = newRiskSite();
        paramRisksite.parentID = parentID;
        var countthis = countClick1[index];
        for (i = 0; i < countClick1.length; i++) {
            countClick1[i] = 0;
        };
        if (parseInt(countthis) % 2 == 0) {
            $.ajax({
                type: "POST",
                url: projectName + "/HazardIdentificationControl/getAllRiskSiteChdr",
                cache: false,
                async: false,
                data: JSON.stringify(paramRisksite),
                dataType: "Json",
                contentType: "application/json",
                success: function (data) {
                    console.log("___________" + data);
                    if (data.length == 0) {
                        riskSiteOptions(parentID, riskSiteTypeContent);
                        $("#btn-group").show();
                    }
                    ;
                    var riskSiteTypeY = "地点";
                    var treeHtml = "<tr class=\"rschtr biaot\" style=\"\"><td style=\"width: 50%;\">名称</td><td style=\"width: 30%;\">类型</td><td style=\"width: 20%;\">风险数</td> </tr>";
                    for (i = 0; i < data.length; i++) {

                        if (data[i] != null) {
                            if (data[i].riskSiteType == "EQUIPMENT") {
                                riskSiteTypeY = "设施";
                            } else if (data[i].riskSiteType == "TASK") {
                                riskSiteTypeY = "作业活动";
                            }
                            ;
                        } else {
                            riskSiteTypeY = "";
                        }
                        ;

                        var riskSiteTitle = riskSiteTitle0 + data[i].name;

                        treeHtml = treeHtml +
                            "<tr class=\"rschtr\">" +
                            "<td style=\"width: 50%;text-align: left;\"><div style=\"padding-left: 20px;\">" + "<div id=\"context\" data-toggle=\"context\" data-target=\"#context-menu2\">" +
                            "<a class=\"qiehxg\" onmousedown=\"righthit2(" + JSON.stringify(data[i]).replace(/"/g, '&quot;') + ")\" onclick=\"getRiskhazardArr('" + riskSiteTitle + "'," + JSON.stringify(data[i]).replace(/"/g, '&quot;') + ")\">" +
                            "<i class=\"fa fa-caret-right fa-fw\"></i>" + data[i].name + "</a></div></div></td>" +
                            "<td style=\"width: 30%;\">" + riskSiteTypeY + "</td>" +
                            "<td style=\"width: 20%;\">" + data[i].mhazards.length + "</td>" +
                            "</tr>"
                    }
                    ;
                    $("#rsTr" + parentID).after(treeHtml);
                    layer.closeAll('loading');
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log(XMLHttpRequest.status);
                    console.log(XMLHttpRequest.readyState);
                    console.log(textStatus);
                    layer.closeAll('loading');
                }
            });
        } else {
            $(".rschtr").remove();
            layer.closeAll('loading');
        }
        ;
        countClick1[index] = countthis + 1;
    };

    function delRiskSite(risksiteObj) {//去删除ristSite
        $("#delSureBtn").removeAttr("onclick");
        $("#delSureBtn").attr('onclick', "sureDelRS()");

        var fullNumber = risksiteObj.fullNumber;
        $("#delDivTitle").html("'" + risksiteObj.name + "'？");
        $.ajax({
            type: "POST",
            url: projectName + "/HazardIdentificationControl/checkRiskIsUsed/" + risksiteObj.riskSiteID + "/" + risksiteObj.fullNumber + "/",
            cache: false,
            async: false,
            dataType: "Json",
            contentType: "application/json",
            success: function (data) {
                delRiskSiteObj = risksiteObj;
                if (data.length > 0) {
                    var altStr = "";
                    for (i = 0; i < data.length; i++) {
                        if (i < (data.length - 1)) {
                            altStr = altStr + data[i] + "</br>";
                        } else {
                            altStr = altStr + data[i];
                        }
                        ;
                    }
                    ;
                    $("#isRSUsedInfo").html("该风险点已被如下模块调用:</br>" + altStr);
                    $('#modal-delete').modal('show');
                    $("#htmlBody1").removeClass("stop-scrolling");
                } else {
                    //查询风险点下的管控对象下的风险是否存在(若风险存在给与提示)
                    var paramRisksite = newRiskSite();
                    /*var num = fullNumber.substring(1,2);
                    if(num == 0){
                        paramRisksite.parentID = fullNumber.substring(2);
                    }else{
                        paramRisksite.parentID = fullNumber.substring(1);
                    }*/
                    //var num=fullNumber.split(".")[0];
                    //paramRisksite.parentID=num;
                    paramRisksite.riskSiteID=risksiteObj.riskSiteID;
                    $.ajax({
                        type: "POST",
                        url: projectName + "/HazardIdentificationControl/getRiskHazardList",
                        cache: false,
                        async: false,
                        data: JSON.stringify(paramRisksite),
                        dataType: "Json",
                        contentType: "application/json",
                        success: function (data) {
                            if(data.length >0){
                                var num = 0;
//                                for(var i=0;i<data.length;i++){
//                                    if(data[i].mhazards.length >0){
//                                        num++;
//                                    }
//                                }
                                if(num ==0){
                                    $("#isRSUsedInfo").html("");
                                    $('#modal-delete').modal('show');
                                    $("#htmlBody1").removeClass("stop-scrolling");
                                }else{

                                    $("#isRSUsedInfo").html("");
                                    $("#htmlBody1").removeClass("stop-scrolling");
                                    //弹出提示
                                    showToast("warning", "如要删除该风险点，请先把该风险点管控对象下的风险全部删除，才能执行删除！");
                                }
                            }else{
                                $("#isRSUsedInfo").html("");
                                $('#modal-delete').modal('show');
                                $("#htmlBody1").removeClass("stop-scrolling");
                            }

                        },
                    });

                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                console.log(XMLHttpRequest.status);
                console.log(XMLHttpRequest.readyState);
                console.log(textStatus);
                showToast("warning", "请求失败！");
                $('.sweet-alert').remove();
                $('.sweet-overlay').remove();
                layer.closeAll('loading');
            }
        });
    };
    //删除风险信息
    function sureDelRS() {
        //加载层
        layer.load();
        var risksiteObj = delRiskSiteObj;
        if (risksiteObj.fullNumber != null) {
            var fullnumber1 = ((risksiteObj.fullNumber).replace(/\./g, "%2E"));
            $.ajax({
                type: "POST",
                url: projectName + "/HazardIdentificationControl/deleteRiskByFullNumber/" + risksiteObj.riskSiteID + "/" + fullnumber1 + "/",
                cache: false,
                async: false,
                dataType: "Json",
                contentType: "application/json",
                success: function (data1) {
                    if (data1 == true) {

                        //searchRiskSite(risksiteObj.name);
                        showToast("success", "删除成功！");
                        //重新回到操作左侧菜单展示
                        showPrentRiskSite();
                        $('.sweet-alert').remove();
                        $('.sweet-overlay').remove();
//                        setTimeout('location.reload()', 2000);
                    } else {
                        showToast("error", "删除失败！");
                        $('.sweet-alert').remove();
                        $('.sweet-overlay').remove();
                    }

                    layer.closeAll('loading');
                    delRiskSiteObj = {};
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log(XMLHttpRequest.status);
                    console.log(XMLHttpRequest.readyState);
                    console.log(textStatus);
                    showToast("warning", "参数有误！");
                    $('.sweet-alert').remove();
                    $('.sweet-overlay').remove();
                    layer.closeAll('loading');
                    delRiskSiteObj = {};
                }
            });
        } else {
            showToast("warning", "参数有误，删除失败！");
            layer.closeAll('loading');
        }
        ;
    };

    function goUpdateRiskSite(risksiteObj) {
        if(risksiteObj.parentID=="0"){
            vuemyApp.showRangeControl=false;
        }else{
            vuemyApp.showRangeControl=true;
        }

        updateRiskSiteObj = {};
        goUpdateRiskSite1 = risksiteObj.locationId;
        $("#riskSiteID1").val(risksiteObj.riskSiteID);
        $("#riskName1").val(risksiteObj.name);
        var managerUnitName = risksiteObj.managerUnitName;
        if (managerUnitName != null) {
            vuemyApp.riskSiteDepts = new Array();
            var deptArray = managerUnitName.split(",");

            if (deptArray.length > 0) {
                for (var i = deptArray.length - 1; i >= 0; i--) {
                    for (var j = deptArray.length - 1; j >= 0; j--) {
                        if (j != i && deptArray[i] == deptArray[j]) {
                            deptArray.splice(i, 1);
                        }
                    }
                }
                ;
            }
            ;

            for (var i = 0; i < deptArray.length; i++) {
                for (var j = 0; j < vuemyApp.departmentList.length; j++) {
                    if (vuemyApp.departmentList[j].fOrg_Name == deptArray[i]) {
                        vuemyApp.riskSiteDepts.push(vuemyApp.departmentList[j].fOrgID);
                    }
                }
                ;
            }
            ;
        } else {
            vuemyApp.riskSiteDepts = new Array();
        }
        ;
        var riskSupervisor = risksiteObj.riskSupervisor;
        if (riskSupervisor != null) {
            vuemyApp.riskSiteDepts2 = new Array();
            var deptArray2 = riskSupervisor.split(",")

            if (deptArray2.length > 0) {
                for (var i = deptArray2.length - 1; i >= 0; i--) {
                    for (var j = deptArray2.length - 1; j >= 0; j--) {
                        if (j != i && deptArray2[i] == deptArray2[j]) {
                            deptArray2.splice(i, 1);
                        }
                    }
                }
                ;
            }
            ;

            for (var i = 0; i < deptArray2.length; i++) {
                for (var j = 0; j < vuemyApp.departmentList.length; j++) {
                    if (vuemyApp.departmentList[j].fOrg_Name == deptArray2[i]) {
                        vuemyApp.riskSiteDepts2.push(vuemyApp.departmentList[j].fOrgID);
                    }
                }
                ;
            }
            ;
        } else {
            vuemyApp.riskSiteDepts2 = new Array();
        }
        ;

        vuemyApp.empList1 = "";
        $.post(projectName + "/PlatForm/getCurrOrgEmpList/" + managerUnitName, function (data) {
            vuemyApp.empList1 = data;
            vuemyApp.mymanagerName = risksiteObj.managerName

        });
        $("#riskAccident1").val(risksiteObj.riskAccident);

        if (risksiteObj.riskDamageType != null) {
            vuemyApp.riskDamageTypes = new Array();
            var riskDamageTypeArr = risksiteObj.riskDamageType.split(",")
            for (var i = 0; i < riskDamageTypeArr.length; i++) {
                for (var j = 0; j < vuemyApp.damageList.length; j++) {
                    if (vuemyApp.damageList[j].fData_Name == riskDamageTypeArr[i]) {
                        vuemyApp.riskDamageTypes.push(vuemyApp.damageList[j].fData_Name);
                    }
                }
                ;
            }
            ;
        } else {
            vuemyApp.riskDamageTypes = new Array();
        }
        ;
        /*$("#upRiskDamageType").val(risksiteObj.riskDamageType);*/

        $("#riskColor1").val(risksiteObj.riskColor);
        if (risksiteObj.riskControlCycle == "长期") {
            $("#riskControlCycle1").val("");
            $("#riskControlCycle1").prop("disabled", true);
            $("#riskControlCycle1b").prop("checked", true);
        } else if (risksiteObj.riskControlCycle != null && risksiteObj.riskControlCycle != "" && risksiteObj.riskControlCycle != "长期") {
            $("#riskControlCycle1").val(risksiteObj.riskControlCycle);
            $("#riskControlCycle1a").prop("checked", true);
        } else {
            $("#riskControlCycle1").val("");
            $("#riskControlCycle1a").prop("checked", false);
            $("#riskControlCycle1b").prop("checked", false);
        }

        $("#riskControlTier1").val(risksiteObj.riskControlTier);
        if (risksiteObj.riskDamageType != null) {
            vuemyApp.riskDamageTypes = new Array();
            var riskDamageTypeArr = risksiteObj.riskDamageType.split(",")
            for (var i = 0; i < riskDamageTypeArr.length; i++) {
                for (var j = 0; j < vuemyApp.damageList.length; j++) {
                    if (vuemyApp.damageList[j].fData_Name == riskDamageTypeArr[i]) {
                        vuemyApp.riskDamageTypes.push(vuemyApp.damageList[j].fData_Name);
                    }
                }
                ;
            }
            ;
        } else {
            vuemyApp.riskDamageTypes = new Array();
        }
        ;
        /*$("#upRiskDamageType").val(risksiteObj.riskDamageType);*/
        $("#riskFrequency1").val(risksiteObj.riskFrequency);
        $("#riskLevel1").val(risksiteObj.riskLevel);
        $("#riskValue1").val(risksiteObj.riskValue);
        $("#riskMajorType1").val(risksiteObj.riskMajorType);

        if (risksiteObj.parentID == '0') {
            $("#riskSiteType1").val("0");
            $("#hiddenStr").val("0");
        } else {

            $("#hiddenStr").val("1");
            if (risksiteObj.riskSiteType == 'EQUIPMENT') {
                $("#riskSiteType1").val("1");
            } else {
                $("#riskSiteType1").val("2");
            }
        }
        ;

        $("#parentID1").val(risksiteObj.parentID);
//        $("#newRiskStieParentID").val(risksiteObj.);
        $("#riskSiteTypeContent1").val(risksiteObj.riskSiteTypeContent);

        if (risksiteObj.riskSiteType == "ADDRESS") {
            $("#riskDescription11").val(risksiteObj.riskDescription);
            $("#riskSiteTypeContent1Div").show();
            $("#ptionone").show();
            $("#ptiontwo").hide();

            for(var i=0;i<vuemyApp.riskTitles.length;i++){
                if(vuemyApp.riskTitles[i].classpropertyName =='Name'){
                    vuemyApp.riskTitles[i].classpropertyTitle = "风险点";
                }
                if(vuemyApp.riskTitles[i].classpropertyName =='RiskDescription'){
                    vuemyApp.riskTitles[i].classpropertyTitle = "风险点描述";
                }
            }

        } else {
            $("#riskDescription12").val(risksiteObj.riskDescription);
            $("#riskSiteTypeContent1Div").hide();
            $("#ptionone").hide();
            $("#ptiontwo").show();
            for(var i=0;i<vuemyApp.riskTitles.length;i++){
                if(vuemyApp.riskTitles[i].classpropertyName =='Name'){
                    vuemyApp.riskTitles[i].classpropertyTitle = "管控对象";
                }
            }
        }
        ;
        $('#updateriskpoint').modal('show');
        /*vuemyApp.getCurrOrgEmpList1();*/
        /*$("#managerName1").val(risksiteObj.managerName);*/

        for (var i = 0; i < vuemyApp.empList1.length; i++) {
            vuemyApp.empList1[i].selectValue = risksiteObj.managerName;
        }
        ;
        updateRiskSiteObj = risksiteObj;
    };

    function provUpRiskSite() {//验证修改riskSite输入是否正确的方法
        if ($("#riskSiteTypeContent1").val() == null || $("#riskSiteTypeContent1").val() == '') {
            showToast("error", "风险类型不得为空！");
            return false;
        }
        ;
        if ($("#riskName1").val() == null || $("#riskName1").val() == '') {
            showToast("error", "风险名称不得为空！");
            return false;
        }
        ;

        return true;
    };

    function radioIsDisabled(param, elmId) {//radio框激活相应input
        if (param == '0') {
            $("#" + elmId).attr("disabled", "disabled");
        }
        ;
        if (param == '1') {
            $("#" + elmId).removeAttr("disabled");
        }
        ;
    }
    //修改风险源后提交
    function saveRiskSiteBtn1() {
        var paramRisksite = newRiskSite();
        var riskName1 = $.trim($("#riskName1").val());
        var riskSiteDepts = vuemyApp.riskSiteDepts;

        layer.load();
        if ($("#hiddenStr").val() == "0") {
            var thisPlaceList = new Array();
            $.ajax({
                url: projectName + "/PlatForm/getPlaceListForEnterprise",
                type: "POST",
                dataType: "json",
                async: false,
                success: function (data1) {
                    thisPlaceList = data1.rows;
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log(XMLHttpRequest.status);
                    console.log(XMLHttpRequest.readyState);
                    console.log(textStatus);
                }
            });

            var locationId = goUpdateRiskSite1;
            var isNameIn = false;

            for (j = 0; j < thisPlaceList.length; j++) {
                if (riskName1 == thisPlaceList[j].fPlace_Name) {
                    isNameIn = true;
                    locationId == thisPlaceList[j].fPlace_GUID;
                    break;
                }
            }

            if (!isNameIn) {
                $.ajax({
                    url: projectName + "/HazardIdentificationControl/updatePlace",
                    type: "POST",
                    async: false,
                    data: {
                        "placeName": riskName1,
                        "placeId": locationId
                    },
                    success: function (data2) {
                        var updatePlace = data2;
                        //if (!updatePlace) {
                        //  alert("修改平台地点失败！");
                        //}
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        console.log(XMLHttpRequest.status);
                        console.log(XMLHttpRequest.readyState);
                        console.log(textStatus);
                    }
                });
            };
            paramRisksite.locationId = locationId;
        } else {
            riskName1 = $.trim($("#riskName1").val());
        }
        ;

        if (provNewRiskSite('1', $("#parentID1").val())) {
            if (updateRiskSiteObj.name == riskName1 || !testRsNameIsEx($("#parentID1").val(), riskName1)) {
                //加载层
                layer.load();

                paramRisksite.riskSiteID = $("#riskSiteID1").val();
                paramRisksite.name = $("#riskName1").val();
                paramRisksite.riskSiteType = $("#riskSiteType1").val();
                paramRisksite.riskSiteTypeContent = $("#riskSiteTypeContent1").val();
                paramRisksite.parentID = $("#parentID1").val();
                paramRisksite.managerName = $("#managerName1").val();//managerName1

                var managerUnitName = "";
                var managerUnitID = "";

                for (var j = 0; j < riskSiteDepts.length; j++) {
                    for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                        if (riskSiteDepts[j] == vuemyApp.departmentList[i].fOrgID) {
                            managerUnitName = managerUnitName + vuemyApp.departmentList[i].fOrg_Name + ",";
                            managerUnitID = managerUnitID + vuemyApp.departmentList[i].fOrgID_Auto + ",";
                        }

                    }
                };

                if (managerUnitID == "") {
                    managerUnitName = null;
//                    managerUnitID=null;
                };
                managerUnitID = null;
                paramRisksite.managerUnitName = managerUnitName;
                paramRisksite.managerUnitID = managerUnitID;

                var riskSupervisor = "";
                var riskSupervisorID = "";

                for (var j = 0; j < vuemyApp.riskSiteDepts2.length; j++) {
                    for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                        if (vuemyApp.riskSiteDepts2[j] == vuemyApp.departmentList[i].fOrgID) {
                            riskSupervisor = riskSupervisor + vuemyApp.departmentList[i].fOrg_Name + ",";
                            riskSupervisorID = riskSupervisorID + vuemyApp.departmentList[i].fOrgID_Auto + ",";
                        }

                    }
                };

                if (riskSupervisorID == "") {
                    riskSupervisor = null;
//                    managerUnitID=null;
                };

                managerUnitID = null;
                paramRisksite.riskSupervisor = riskSupervisor;
                paramRisksite.riskAccident = $("#riskAccident1").val();
                var riskDamageTypesLocal = '';
                for (var i = 0; i < vuemyApp.riskDamageTypes.length; i++) {
                    if (i < 1) {
                        riskDamageTypesLocal = vuemyApp.riskDamageTypes[i];
                    } else {
                        riskDamageTypesLocal = riskDamageTypesLocal + "," + vuemyApp.riskDamageTypes[i];
                    }
                }
                paramRisksite.riskDamageType = riskDamageTypesLocal;

                paramRisksite.riskColor = $("#riskColor1").val();
                if ($("#riskControlCycle1a").is(':checked')) {
                    paramRisksite.riskControlCycle = $("#riskControlCycle1").val();
                }
                ;
                if ($("#riskControlCycle1b").is(':checked')) {
                    paramRisksite.riskControlCycle = "长期";
                }
                ;
                paramRisksite.riskControlTier = $("#riskControlTier1").val();
                /*paramRisksite.riskDamageType = $("#upRiskDamageType").val();*/
                if(paramRisksite.parentID =="0"){
                    paramRisksite.riskDescription = $("#riskDescription11").val();
                }else{
                    paramRisksite.riskDescription = $("#riskDescription12").val();
                }
                paramRisksite.riskFrequency = $("#riskFrequency1").val();
                paramRisksite.riskLevel = $("#riskLevel1").val();
                paramRisksite.riskValue = $("#riskValue1").val();
                paramRisksite.riskMajorType = $("#riskMajorType1").val();

                vuemyApp.getRiskhazardcontrolrangeFiveLevels();
                var map = vuemyApp.riskhazardcontrolrangeFiveLevels;
                var riskhazardcontrolrangeList = new Array();
                for (var key in map) {
                    var riskhazardcontrolrange = map[key];
                    riskhazardcontrolrange.riskSiteID = paramRisksite.riskSiteID;
                    riskhazardcontrolrange.controlRangeStartDay = $("#startTime2").val();
                    riskhazardcontrolrange.controlRangeEndDay = $("#endTime2").val();
                    if (key == "kj") {
                        riskhazardcontrolrange.controlRangeName = "矿级";
                        riskhazardcontrolrange.controlRangePinci = vuemyApp.krangePinci;
                        riskhazardcontrolrange.manageUnit = vuemyApp.kmanageUnit;
//                        riskhazardcontrolrange.manageDuty = vuemyApp.kmanageDuty;
                        if(vuemyApp.kmanageDuty.length!=0){
                            var kmanageDuty="";
                            for(var k=0;k<vuemyApp.kmanageDuty.length;k++){
                                if(k<vuemyApp.kmanageDuty.length-1){
                                    kmanageDuty+=vuemyApp.kmanageDuty[k]+",";
                                }else{
                                    kmanageDuty+=vuemyApp.kmanageDuty[k];
                                }
                            }
                            riskhazardcontrolrange.manageDuty = kmanageDuty;
                        }else{
                            riskhazardcontrolrange.manageDuty = null;

                        }

                        /*for (var i = 0; i < vuemyApp.roleList.length; i++) {
                            if (vuemyApp.roleList[i].fRole_Name == vuemyApp.kmanageDuty) {
                                riskhazardcontrolrange.manageDutyID = vuemyApp.roleList[i].fRole_GUID;
                                break;
                            }
                        }*/
                        for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                            if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.kmanageUnit) {
                                riskhazardcontrolrange.manageUnitID = vuemyApp.departmentList[i].fOrgID;
                                break;
                            }
                        }
                    }
                    if (key == "zyj") {
                        riskhazardcontrolrange.controlRangeName = "专业级";
                        riskhazardcontrolrange.controlRangePinci = vuemyApp.zrangePinci;
                        riskhazardcontrolrange.manageUnit = vuemyApp.zmanageUnit;
//                        riskhazardcontrolrange.manageDuty = vuemyApp.zmanageDuty;
                        if(vuemyApp.zmanageDuty.length!=0){
                            var zmanageDuty="";
                            for(var k=0;k<vuemyApp.zmanageDuty.length;k++){
                                if(k<vuemyApp.zmanageDuty.length-1){
                                    zmanageDuty+=vuemyApp.zmanageDuty[k]+",";
                                }else{
                                    zmanageDuty+=vuemyApp.zmanageDuty[k];
                                }
                            }
                            riskhazardcontrolrange.manageDuty = zmanageDuty;
                        }else{
                            riskhazardcontrolrange.manageDuty = null;

                        }

                        /*for (var i = 0; i < vuemyApp.roleList.length; i++) {
                            if (vuemyApp.roleList[i].fRole_Name == vuemyApp.zmanageDuty) {
                                riskhazardcontrolrange.manageDutyID = vuemyApp.roleList[i].fRole_GUID;
                                break;
                            }
                        }*/
                        for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                            if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.zmanageUnit) {
                                riskhazardcontrolrange.manageUnitID = vuemyApp.departmentList[i].fOrgID;
                                break;
                            }
                        }
                    }
                    if (key == "znbsj") {
                        riskhazardcontrolrange.controlRangeName = "职能部室级";
                        riskhazardcontrolrange.controlRangePinci = vuemyApp.qrangePinci;
                        riskhazardcontrolrange.manageUnit = vuemyApp.qmanageUnit;
//                        riskhazardcontrolrange.manageDuty = vuemyApp.qmanageDuty;
                        if(vuemyApp.qmanageDuty.length!=0){
                            var qmanageDuty="";
                            for(var k=0;k<vuemyApp.qmanageDuty.length;k++){
                                if(k<vuemyApp.qmanageDuty.length-1){
                                    qmanageDuty+=vuemyApp.qmanageDuty[k]+",";
                                }else{
                                    qmanageDuty+=vuemyApp.qmanageDuty[k];
                                }
                            }
                            riskhazardcontrolrange.manageDuty = qmanageDuty;
                        }else{
                            riskhazardcontrolrange.manageDuty = null;

                        }
                        /*for (var i = 0; i < vuemyApp.roleList.length; i++) {
                            if (vuemyApp.roleList[i].fRole_Name == vuemyApp.qmanageDuty) {
                                riskhazardcontrolrange.manageDutyID = vuemyApp.roleList[i].fRole_GUID;
                                break;
                            }
                        }*/
                        for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                            if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.qmanageUnit) {
                                riskhazardcontrolrange.manageUnitID = vuemyApp.departmentList[i].fOrgID;
                                break;
                            }
                        }
                    }
                    if (key == "qdj") {
                        riskhazardcontrolrange.controlRangeName = "区队级";
                        riskhazardcontrolrange.controlRangePinci = vuemyApp.brangePinci;
                        riskhazardcontrolrange.manageUnit = vuemyApp.bmanageUnit;
//                        riskhazardcontrolrange.manageDuty = vuemyApp.bmanageDuty;
                        if(vuemyApp.bmanageDuty.length!=0){
                            var bmanageDuty="";
                            for(var k=0;k<vuemyApp.bmanageDuty.length;k++){
                                if(k<vuemyApp.bmanageDuty.length-1){
                                    bmanageDuty+=vuemyApp.bmanageDuty[k]+",";
                                }else{
                                    bmanageDuty+=vuemyApp.bmanageDuty[k];
                                }
                            }
                            riskhazardcontrolrange.manageDuty = bmanageDuty;
                        }else{
                            riskhazardcontrolrange.manageDuty = null;

                        }
                        /*for (var i = 0; i < vuemyApp.roleList.length; i++) {
                            if (vuemyApp.roleList[i].fRole_Name == vuemyApp.bmanageDuty) {
                                riskhazardcontrolrange.manageDutyID = vuemyApp.roleList[i].fRole_GUID;
                                break;
                            }
                        }*/
                        for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                            if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.bmanageUnit) {
                                riskhazardcontrolrange.manageUnitID = vuemyApp.departmentList[i].fOrgID;
                                break;
                            }
                        }
                    }
                    if (key == "bzgrj") {
                        riskhazardcontrolrange.controlRangeName = "班组个人级";
                        riskhazardcontrolrange.controlRangePinci = vuemyApp.grangePinci;
                        riskhazardcontrolrange.manageUnit = vuemyApp.gmanageUnit;
//                        riskhazardcontrolrange.manageDuty = vuemyApp.gmanageDuty;
                        if(vuemyApp.gmanageDuty.length!=0){
                            var gmanageDuty="";
                            for(var k=0;k<vuemyApp.gmanageDuty.length;k++){
                                if(k<vuemyApp.gmanageDuty.length-1){
                                    gmanageDuty+=vuemyApp.gmanageDuty[k]+",";
                                }else{
                                    gmanageDuty+=vuemyApp.gmanageDuty[k];
                                }
                            }
                            riskhazardcontrolrange.manageDuty = gmanageDuty;
                        }else{
                            riskhazardcontrolrange.manageDuty = null;

                        }
                        /*for (var i = 0; i < vuemyApp.roleList.length; i++) {
                            if (vuemyApp.roleList[i].fRole_Name == vuemyApp.gmanageDuty) {
                                riskhazardcontrolrange.manageDutyID = vuemyApp.roleList[i].fRole_GUID;
                                break;
                            }
                        }*/
                        for (var i = 0; i < vuemyApp.departmentList.length; i++) {
                            if (vuemyApp.departmentList[i].fOrg_Name == vuemyApp.gmanageUnit) {
                                riskhazardcontrolrange.manageUnitID = vuemyApp.departmentList[i].fOrgID;
                                break;
                            }
                        }
                    }
                    riskhazardcontrolrangeList.push(riskhazardcontrolrange);
                }
                ;
                if(vuemyApp.showRangeControl){
                    $.ajax({
                        url: projectName + "/HazardIdentificationControl/updateRiskhazardcontrolrangeFiveLevelsByRiskId",
                        type: "POST",
                        data: JSON.stringify(riskhazardcontrolrangeList),
                        dataType: "Json",
                        contentType: "application/json",
                        success: function (data) {
                            //请求成功后的回调函数
                            if (data) {

                            } else {
                            }
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            console.log(XMLHttpRequest.status);
                            console.log(XMLHttpRequest.readyState);
                            console.log(textStatus);
                        }
                    });
                }else{
                    //一级风险点不更新危险源的五级管控范围
                }

                //修改子菜单后的返回
                $.ajax({
                    url: projectName + "/HazardIdentificationControl/modifyRiskSite",
                    type: "PUT",
                    data: JSON.stringify(paramRisksite),
                    dataType: "Json",
                    contentType: "application/json",
                    success: function (data) {
                        if (data == true) {
                            showPrentRiskSite1();
                            showToast("success", "修改成功！");
                            vuemyApp.riskSiteDepts = new Array();
                            vuemyApp.riskSiteDepts2 = new Array();
                            $("#riskSiteTitle").html("");
                            $('#updateriskpoint').modal('hide');
                            vuemyApp.closemodal();
                        } else {
                            showToast("error", "修改失败！");
                            vuemyApp.closemodal();
                        };
                        layer.closeAll('loading');
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        console.log(XMLHttpRequest.status);
                        console.log(XMLHttpRequest.readyState);
                        console.log(textStatus);
                        showToast("warning", "参数有误！");
                        layer.closeAll('loading');
                    }
                });

            } else {
                showToast("error", "该名称已存在！");
                $("#riskName1").focus();
                vuemyApp.closemodal();
            }
        };
        vuemyApp.riskDamageTypes = new Array();
        vuemyApp.getPlaceListForEnterprise();
    };

    //左侧展示ristsite下的危险源
    function getRiskhazardArr(riskSiteTitle, riskSite) {
        vuemyApp.riskDamageTypes = new Array();
        var managerUnitName = riskSite.managerUnitName;
        if (managerUnitName != null) {
            vuemyApp.riskhazardDepts = new Array();
            var deptArray = managerUnitName.split(",")

            if (deptArray.length > 0) {
                for (var i = deptArray.length - 1; i >= 0; i--) {
                    for (var j = deptArray.length - 1; j >= 0; j--) {
                        if (j != i && deptArray[i] == deptArray[j]) {
                            deptArray.splice(i, 1);
                        }
                    }
                };
            };

            for (var i = 0; i < deptArray.length; i++) {
                for (var j = 0; j < vuemyApp.departmentList.length; j++) {
                    if (vuemyApp.departmentList[j].fOrg_Name == deptArray[i]) {
                        vuemyApp.riskhazardDepts.push(vuemyApp.departmentList[j].fOrgID);
                    }
                };
            };
        } else {
            vuemyApp.riskhazardDepts = new Array();
        };
        /*$("#manageUnit").val(riskSite.managerUnitName);*/
        /*$("#damageType").val(riskSite.riskAccident);*/
        if (riskSite.riskDamageType != null) {
            vuemyApp.riskDamageTypes = new Array();
            var riskDamageTypeArr = riskSite.riskDamageType.split(",")
            for (var i = 0; i < riskDamageTypeArr.length; i++) {
                for (var j = 0; j < vuemyApp.damageList.length; j++) {
                    if (vuemyApp.damageList[j].fData_Name == riskDamageTypeArr[i]) {
                        vuemyApp.riskDamageTypes.push(vuemyApp.damageList[j].fData_Name);
                    }
                };
            };
        } else {
            vuemyApp.riskDamageTypes = new Array();
        };
        $("#btn-group").hide();
        $("#goNewRiskhazardBtn").show();
//        if (riskSite.parentID == '0' && riskSite.mchildRiskSite.length == 0){
//            riskSiteOptions(riskSite.riskSiteId);
//            $("#btn-group").show();
//		};
        $("#hiddenRisksiteParam").val(JSON.stringify(riskSite));
        $("#hiddenRiskSiteID").val(riskSite.riskSiteID);
//		$("#hiddenRiskSiteID").val(riskSite.parentID);
        $("#riskSiteTitle").html(riskSiteTitle);
//        $("#parentID").val(riskSite.parentID);//暂时注掉的，留着
        var mHazards = riskSite.mhazards;
        var tbodyHtml = "";
        $("#showRiskhazard").html("");
        if (mHazards != null) {
            for (i = 0; i < mHazards.length; i++) {
                var bolstatus = "是";
                var consequence = "";

                if (!mHazards[i].status) {
                    bolstatus = "否";
                };
                if (mHazards[i].consequence != null) {
                    consequence = mHazards[i].consequence;
                };
                var HD;
                (mHazards[i].hazardDesc != null) ? HD = mHazards[i].hazardDesc : HD = "";
                var accident
                (mHazards[i].accidentType != null) ? accident = mHazards[i].accidentType : accident = "";
                var major
                (mHazards[i].majorType != null) ? major = mHazards[i].majorType : major = "";
                var damage
                (mHazards[i].damageType != null) ? damage = mHazards[i].damageType : damage = "";
                var riskType
                (mHazards[i].riskType != null) ? riskType = mHazards[i].riskType : riskType = "";

                tbodyHtml = tbodyHtml + "<tr>" +
                    "<td class=\"text-center\">" + (parseInt(i) + 1) + "</td>" +
                    "<td class=\"text-center\" style=\"text-align: left;\">" + mHazards[i].name + "</td>" +
                    "<td class=\"text-center\">" + major + "</td>" +
                    "<td class=\"text-center\">" + damage + "</td>" +
                    "<td class=\"text-center\">" + riskType + "</td>" +
                    "<td class=\"text-center\">" + HD + "</td>" +
                    "<td class=\"text-center\">" +
                    "<a href=\"javascript:void(0)\" data-toggle=\"tooltip\" class=\"btn btn-effect-ripple btn-sm\" onclick=\"goUpdateRiskhazard(" + JSON.stringify(mHazards[i]).replace(/"/g, '&quot;') + ")\" title=\"修改1\">" +
                    "修改</a>" +
                    "<a href=\"javascript:void(0)\" data-toggle=\"tooltip\" class=\"btn btn-effect-ripple btn-sm\" onclick=\"delRiskhazard('" + mHazards[i].hazardID + "','" + riskSite.riskSiteID + "')\" title=\"删除\">" +
                    "删除</a></td>" +
                    "</tr>"

            }
        }

        $("#showRiskhazard").append(tbodyHtml);

        if (riskSite.parentID == '0') {
//            addNewRiskSiteToTable(riskSite.riskSiteId);
        };
    };

    function riskSiteOptions(riskSiteId, riskSiteTypeContent) {//获取选择框的方法
        //加载层
        layer.load();
        $("#identifyedRiskSite").empty();
        var url = projectName + "/HazardIdentificationControl/getSimilarPlace/1/" + riskSiteTypeContent + "/";
        $.ajax({
            type: "GET",
            url: url,
            success: function (data) {

                for (i = 0; i < data.length; i++) {
                    var liStr = "";
                    data[i].riskSiteId = riskSiteId
                    if (data[i].mchildRiskSite.length > 0) {
                        liStr = "<li>" +
                            "<a href=\"#modal-large\" onclick=\"showSelectRS(" + JSON.stringify(data[i]).replace(/"/g, '&quot;') + "," + JSON.stringify(data[i]).replace(/"/g, '&quot;') + ")\" data-toggle=\"modal\">" +
                            "<i class=\"fa fa-pencil pull-right\"></i>" + data[i].name + "</a>" +
                            "</li>";
                        $("#identifyedRiskSite").append(liStr);
                    };
                }

                layer.closeAll('loading');
            },
            error: function () {
                layer.closeAll('loading');
//                alert("对象参数有误！");
            }
        });
    };

    var countClick = new Array();

    function showSelectRS(riskSiteObj, riskSiteObj2) {
        //加载层
        layer.load();
        selectParam1 = riskSiteObj2;

        countClick = new Array();
        var childRiskSites = riskSiteObj.mchildRiskSite;
        var tbodyStr = "";
        $("#selectRStbody").empty();

        for (i = 0; i < childRiskSites.length; i++) {
            var smlength = 0;
            var smname = "";
            var smriskDescription = "";
            var smriskDamageType = "";

            if (childRiskSites[i].mhazards != null && childRiskSites[i].mhazards.length > 0) {
                smlength = childRiskSites[i].mhazards.length;
            };
            if (childRiskSites[i].name != null) {
                smname = childRiskSites[i].name;
            };
            if (childRiskSites[i].riskDescription != null) {
                smriskDescription = childRiskSites[i].riskDescription;
            };
            if (childRiskSites[i].riskDamageType != null) {
                smriskDamageType = childRiskSites[i].riskDamageType;
            };

            tbodyStr = tbodyStr +
                "<tr id=\"selChdRistSite" + childRiskSites[i].riskSiteID + "\">" +
                "<td><i class=\"fa fa-caret-right fa-fw\"></i>" +
                "<a onclick=\"showSelectRHzd(" + JSON.stringify(childRiskSites[i].mhazards).replace(/"/g, '&quot;') + "," + i + ",'selChdRistSite" + childRiskSites[i].riskSiteID + "')\">" + smname + "(" + smlength + ")</a></td>" +
                "<td>" + smriskDescription + "</td>" +
                "<td>" + smriskDamageType + "</td>" +
                "</tr>";
            countClick.push(0);
        };

        $("#selectRStbody").append(tbodyStr);
        layer.closeAll('loading');
    };

    function selectRSSaveBtn() {
        var elm = selectParam1;
        addRiskhazards(elm)
        $("#btn-group").hide();
        $("#goNewRiskhazardBtn").hide();
    };

    function showSelectRHzd(riskhazardsObj, index, elmId) {

        if (countClick[index] % 2 == 0) {
            var trHtml = "<tr class=\"biaot newRhd\">" +
                "<td class=\"text-center\">序号</td>" +
                "<td class=\"text-center\">风险</td>" +
                "<td class=\"text-center\">灾害类型</td>" +
                "</tr>";
            if (riskhazardsObj != null) {
                for (i = 0; i < riskhazardsObj.length; i++) {
                    trHtml = trHtml + "<tr class=\"newRhd\">" +
                        "<td>" + (parseInt(i) + 1) + "</td>"
                    if (riskhazardsObj[i].name != null) {
                        trHtml = trHtml + "<td>" + riskhazardsObj[i].name + "</td>";
                    } else {
                        trHtml = trHtml + "<td></td>";
                    }
                    ;

                    if (riskhazardsObj[i].damageType != null) {
                        trHtml = trHtml + "<td>" + riskhazardsObj[i].damageType + "</td>";
                    } else {
                        trHtml = trHtml + "<td></td>";
                    }
                    ;

                    trHtml = trHtml + "</tr>"
                }
                ;
                $("#" + elmId).after(trHtml);
            }
        } else {
            $(".newRhd").remove();
        }
        countClick[index] = countClick[index] + 1;
    };

    function addRiskhazards(riskSiteObj) {//复制其他risksite的子风险点及危险源至当前风险点的0级风险点
        //加载层
        layer.load();
        var riskSite = riskSiteObj;
        var jsonstr = $("#hiddenRisksiteParam").val();

        if (jsonstr != null && jsonstr != '') {
            var toAddRiskSite = JSON.parse(jsonstr);
            var url = projectName + "/HazardIdentificationControl/copyRiskSiteBySimilarPlace/" + riskSiteObj.riskSiteID;
            $.ajax({
                url: url, //发送请求的地址。
                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                data: JSON.stringify(toAddRiskSite),
                dataType: "Json",
                contentType: "application/json",
                async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                success: function (data) {

                    if (data) {
                        showPrentRiskSite();
                        getRiskhazardArr(toAddRiskSite.name + "/", toAddRiskSite);
                        showToast("success", "批量新增风险成功！");
                    } else {
                        showToast("error", "批量新增风险失败！");
                    }

                    $('#modal-large').modal('hide');
                    layer.closeAll('loading');
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    console.log(XMLHttpRequest.status);
                    console.log(XMLHttpRequest.readyState);
                    console.log(textStatus);
                    showToast("error", "新增风险参数有误！");
                    layer.closeAll('loading');
                }
            });
        } else {
            layer.closeAll('loading');
            showToast("warning", "请先选择风险点再复制风险！");
        }
    };

    function delRiskhazard(hazardID, riskSiteId) {//去删除危险原
        $("#delSureBtn").removeAttr("onclick");
        $("#delSureBtn").attr('onclick', "suredelHz()");
        $("#delDivTitle").html("该风险？");
        $("#goNewRiskhazardBtn").show();
        delRiskHazardObj.hazardID = hazardID;
        delRiskHazardObj.riskSiteId = riskSiteId;

        $("#isRSUsedInfo").html("");
        $('#modal-delete').modal('show');
        $("#htmlBody1").removeClass("stop-scrolling");
    };
    //确认删除危险源
    function suredelHz() {
        var riskhazard = newRiskhazard();
        riskhazard.hazardID = delRiskHazardObj.hazardID;
        var riskSiteId = delRiskHazardObj.riskSiteId;
        var url = projectName + "/HazardIdentificationControl/delRiskhazardByID";
        $.ajax({
            url: url, //发送请求的地址。
            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
            data: JSON.stringify(riskhazard),
            dataType: "Json",
            contentType: "application/json",
            success: function (data) {
                if (data == true) {
                    showPrentRiskSite();
                    //重新回到操作左侧菜单展示
                    //searchRiskSite(riskhazard.name);
                    showToast("success", "删除完成！");

                    $.ajax({
                        type: "POST",
                        url: projectName + "/HazardIdentificationControl/getmHazardsByRisksiteId",
                        cache: false,
                        async: false,
                        data: {
                            'risksiteId': riskSiteId
                        },
                        dataType: "Json",
                        success: function (data2) {
                            var mHazards = data2;
                            var tbodyHtml = "";
                            $("#showRiskhazard").html("");
                            if (mHazards != null) {
                                for (i = 0; i < mHazards.length; i++) {
                                    var bolstatus = "是";
                                    var consequence = "";

                                    if (!mHazards[i].status) {
                                        bolstatus = "否";
                                    };
                                    if (mHazards[i].consequence != null) {
                                        consequence = mHazards[i].consequence;
                                    };
                                    var HD;
                                    (mHazards[i].hazardDesc != null) ? HD = mHazards[i].hazardDesc : HD = "";
                                    var accident
                                    (mHazards[i].accidentType != null) ? accident = mHazards[i].accidentType : accident = "";
                                    var major
                                    (mHazards[i].majorType != null) ? major = mHazards[i].majorType : major = "";
                                    var damage
                                    (mHazards[i].damageType != null) ? damage = mHazards[i].damageType : damage = "";
                                    var riskType
                                    (mHazards[i].riskType != null) ? riskType = mHazards[i].riskType : riskType = "";
                                    //右侧表格展示
                                    tbodyHtml = tbodyHtml + "<tr>" +
                                        "<td class=\"text-center\">" + (parseInt(i) + 1) + "</td>" +
                                        "<td class=\"text-center\" style=\"text-align: left;\">" + mHazards[i].name + "</td>" +
                                        "<td class=\"text-center\">" + HD + "</td>" +
                                        "<td class=\"text-center\">" + major + "</td>" +
                                        "<td class=\"text-center\">" + damage + "</td>" +
                                        "<td class=\"text-center\">" + riskType + "</td>" +
                                        "<td class=\"text-center\">" +
                                        "<a href=\"javascript:void(0)\" data-toggle=\"tooltip\" class=\"btn btn-effect-ripple btn-sm\" onclick=\"goUpdateRiskhazard(" + JSON.stringify(mHazards[i]).replace(/"/g, '&quot;') + ")\" title=\"修改\">" +
                                        "修改</a>" +
                                        "<a href=\"javascript:void(0)\" data-toggle=\"tooltip\" class=\"btn btn-effect-ripple btn-sm\" onclick=\"delRiskhazard('" + mHazards[i].hazardID + "','" + riskSiteId + "')\" title=\"删除\">" +
                                        "删除</a></td>" +
                                        "</tr>"
                                }
                            }
                            $("#showRiskhazard").append(tbodyHtml);
                        },
                        error: function () {
                            showToast("error", "展示风险参数有误！");
                        }
                    });
                }
                $("#goNewRiskhazardBtn").show();
                delRiskHazardObj = {};
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                $("#goNewRiskhazardBtn").show();
                showToast("error", "该风险点已进行管控效果分析，如需删除，请先删除分析数据！");
            }
        });
    };

    function getChrdPoint(risksiteList) {//获得子级风险点
        var treetableHtml = "";
        var treetableChd = new Array();//有父级风险点
        for (i = 0; i < risksiteList.length; i++) {
            $(".treul0").each(function () {
                var risksiteElm = $(this);
                var partId = $(this).attr("id").split("treul")[1];//父级的id

                if (bolhaschrds(risksiteElm, risksiteList)) {//有子级风险点
//                for (i = 0 ; i < risksiteList.length ; i++){
                    if (risksiteList[i].parentID != '0' && partId == risksiteList[i].parentID && bolHasChrdPoint(risksiteElm, risksiteList[i].riskSiteID)) {

                        treetableHtml = "<ul class=\"tgh\" id=\"treul" + risksiteList[i].riskSiteID + "\">" +
                            "<li style=\"width: 50%;\"><a class=\"qiehxg\"><i class=\"fa fa-caret-right fa-fw\"></i>" + risksiteList[i].name + "</a></li>" +
                            "<li style=\"width: 30%;\">" + risksiteList[i].riskSiteType + "</li>" +
                            "<li style=\"width: 20%;\">" + risksiteList[i].mhazards.length + "</li></ul>"

                        $("#treul" + risksiteList[i].parentID).append(treetableHtml);
                    } else {
                        treetableChd.push(risksiteList[i]);
                    }
//                }
                }
                ;
            });
        }
        ;

        if (treetableChd.length > 0) {
            getChrdPoint(treetableChd);
        }
        ;
    };

    function bolHasChrdPoint(risksiteElm, riskSiteID) {//本子结点是否已经添加过，没有返回true
        var childreArr = risksiteElm.children("ul.tgh");
        var blo = true;
        for (i = 0; i < childreArr.length; i++) {
            var nextId = childreArr[i].attr("id").split("treul")[1];

            if (nextId == riskSiteID) {
                blo = false;
            }
        }
        return blo;
    }

    function bolhaschrds(risksiteElm, risksiteList) {//本结点是否有子节点，有返回true
        var bol = false;
        for (i = 0; i < risksiteList.length; i++) {
            if (risksiteList[i].parentID == risksiteElm.riskSiteID) {
                bol = true;
            }
        }
        return bol;
    };

    var placeListIn = new Array();
    var attrArray = null;
    /**
     * Created by Administrator on 2017/10/25
     */
        //用来获取平台中的数据
    var vuemyApp = new Vue({
            el: "#app",
            data: {
                riskList: null,
                placeInfoData: "", //平台获取地点类型
                majorList: new Array(),//平台专业类型
                monthPlanList: new Array(),//计划类型
                damageList: new Array(),//平台灾害类型
                accidentList: new Array(),//平台事故类型
                riskControlTierList: new Array(),//平台管控层级
                riskFrequencyList: new Array(),//平台管控层次
                empList: new Array(),  //平台获取人员信息
                departmentList: "",//平台获取部门信息
                empList1: new Array(),
                leiBieList: new Array(),
                roleTypesList: new Array(),
                mymanagerName: new Array(),
                placeList: new Array(),
                riskTitles: new Array(),
                hazardTitles: new Array(),
                riskSiteDepts: new Array(),
                riskSiteDepts2: new Array(),
                riskhazardDepts: new Array(),
                riskhazardDepts2: new Array(),
                riskDamageTypes: new Array(),
                kmanageDuty: [],//矿级岗位
                kmanageUnit: "",//部门
                krangePinci: "",//频次
                zmanageDuty: [],
                zmanageUnit: "",
                zrangePinci: "",
                qmanageDuty: [],
                qmanageUnit: "",
                qrangePinci: "",
                bmanageDuty: [],
                bmanageUnit: "",
                brangePinci: "",
                gmanageDuty: [],
                gmanageUnit: "",
                grangePinci: "",

                ukmanageDuty: [],//矿级岗位
                ukmanageUnit: "",//部门
                ukrangePinci: "",//频次
                uzmanageDuty: [],
                uzmanageUnit: "",
                uzrangePinci: "",
                uqmanageDuty: [],
                uqmanageUnit: "",
                uqrangePinci: "",
                ubmanageDuty: [],
                ubmanageUnit: "",
                ubrangePinci: "",
                ugmanageDuty: [],
                ugmanageUnit: "",
                ugrangePinci: "",
                roleList: [],
                riskhazardcontrolrangeFiveLevels: "",
                showRangeControl:true,
                accidentType:[],
                upaccidentType:[],

            },
            created: function () {
                var _self = this;
                _self.copyRiskSiteBySimilarPlace();
                _self.getPlaceClassifyList();
                _self.getCurrOrgEmpList();
                _self.getDepartment();
                _self.getRoleTypes();
                _self.getEnterprise_data_dictionaryListForOrg();
                _self.getPlaceListForEnterprise();
                _self.getRiskTitles();
                _self.getHazardTitles();
                _self.getRiskhazardcontrolrangeFiveLevels();
            },
            mounted: function () {
            },
            updated: function () {
            },
            methods: {
                getRiskhazardcontrolrangeFiveLevels: function () {
                    var _self = this;
                    $.get(projectName + "/HazardIdentificationControl/getRiskhazardcontrolrangeFiveLevels", function (data) {
                        _self.riskhazardcontrolrangeFiveLevels = data;
                        return data;
                    });
                },
                getRiskTitles: function () {
                    var _self = this;
                    if (attrArray == null) {
                        $.ajax({
                            url: projectName + "/SystemAttributeDevelop/classAttributes", //发送请求的地址。
                            type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: {name: 'Risksite'},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                _self.riskTitles = data;
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
                },
                getHazardTitles: function () {
                    var _self = this;
                    if (attrArray == null) {
                        $.ajax({
                            url: projectName + "/SystemAttributeDevelop/classAttributes", //发送请求的地址。
                            type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: {name: 'Riskhazard'},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                _self.hazardTitles = data;
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
                },
                //获取地点信息
                getPlaceListForEnterprise: function () {
                    var _self = this;
                    //url:待载入页面的URL地址
                    //data:待发送 Key/value 参数。
                    //callback:载入成功时回调函数。
                    //type:返回内容格式，xml, html, script, json, text, _default。
                    $.post(projectName + "/PlatForm/getPlaceListForEnterprise", function (data) {
                        _self.placeList = data;
                        placeListIn = data;
                    });
                },
                liClick: function (elm, param) {
                    $(".select>input").val(param);
                    $(".content>input").val(elm.id);
                    $("#" + elm.id).addClass("Selected").siblings().removeClass("Selected");
                    $(".select").removeClass("open");
                    $(".select ul").hide();
                },
                //筛选地点
                searchPlaceListForEnterprise: function (inputPlace, placeListIn) {
                    var _self = this;
                    //url:待载入页面的URL地址
                    //data:待发送 Key/value 参数。
                    //callback:载入成功时回调函数。
                    //type:返回内容格式，xml, html, script, json, text, _default。
                    var searchPl = new Array();
                    var rows = {};
                    for (var u = 0; u < placeListIn.rows.length; u++) {
                        if (placeListIn.rows[u].fPlace_Name.indexOf($.trim(inputPlace)) > -1) {
                            searchPl.push(placeListIn.rows[u])
                        }
                    }
                    ;
                    rows.rows = searchPl;
                    _self.placeList = rows;
                },
                //获取平台角色
                getRoleTypes: function () {
                    var _self = this;
                    $.ajax({
                        url: projectName + "/PlatForm/getRoleTypes", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: {
                            "orgID": "<%=userid%>",
                            "typeName": null,
                        },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            _self.roleTypesList = data;
                        }
                    });
                },
                //获取人员信息
                getCurrOrgEmpList1: function () {
                    var _self = this;
                    _self.empList1 = new Array();
                    var orgID = $("#managerUnitName1").val();
                    $("#managerName1").empty();
                    $("#managerName1").append("<option value=''>请选择人员</option>");
                    if (orgID != null && orgID != "-1") {
                        for (var i = 0; i < _self.riskSiteDepts.length; i++) {
                            $.ajax({
                                url: projectName + "/PlatForm/getCurrOrgEmpList/" + _self.riskSiteDepts[i] + "/",
                                type: "POST",
                                data: {},
                                dataType: "json",
                                async: false,
                                success: function (data) {
                                    for (var j = 0; j < data.length; j++) {
                                        $("#managerName1").append("<option value='" + data[j].fEmp_Name + "'>" + data[j].fEmp_Name + "</option>");
                                    }
                                    ;
                                },
                                error: function (XMLHttpRequest, textStatus, errorThrown) {
                                    console.log(XMLHttpRequest.status);
                                    console.log(XMLHttpRequest.readyState);
                                    console.log(textStatus);
                                }
                            });
                        }
                        ;
                    }
                }
                ,
                //获取人员信息
                getCurrOrgEmpList: function () {
                    var _self = this;
                    _self.empList = new Array();
                    var orgID = $("#managerUnitName").val();
                    $("#managerName").empty();
                    $("#managerName").append("<option value=''>请选择人员</option>");
                    if (orgID != null && orgID != "-1") {
                        for (var i = 0; i < _self.riskSiteDepts.length; i++) {
                            $.ajax({
                                url: projectName + "/PlatForm/getCurrOrgEmpList/" + _self.riskSiteDepts[i] + "/",
                                type: "POST",
                                data: {},
                                dataType: "json",
                                async: false,
                                success: function (data) {
                                    for (var j = 0; j < data.length; j++) {
                                        $("#managerName").append("<option value='" + data[j].fEmp_Name + "'>" + data[j].fEmp_Name + "</option>");
                                    }
                                    ;
                                },
                                error: function (XMLHttpRequest, textStatus, errorThrown) {
                                    console.log(XMLHttpRequest.status);
                                    console.log(XMLHttpRequest.readyState);
                                    console.log(textStatus);
                                }
                            });
                        }
                        ;
                    }
                }
                ,
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
                //获取辅助资料
                getEnterprise_data_dictionaryListForOrg: function () {
                    var _self = this;
                    $.ajax({
                        url: projectName + "/PlatForm/getEnterprise_data_dictionaryListForOrg",
                        type: "POST",
                        data: {
                            "orgID": "<%=userid%>",
                            "data_TypeOrName": null,
                        },
                        dataType: "json",
                        async: "false",
                        success: function (data) {
                            //请求成功后的回调函数
                            _self.majorList = data.专业类型
                            _self.monthPlanList = data.计划类型;
                            _self.damageList = data.灾害类型
                            _self.accidentList = data.事故类型
                            _self.riskControlTierList = data.管控层级
                            _self.riskFrequencyList = data.管控频次
                            _self.leiBieList = data.风险类型
                        },
                    });
                },
                //平台获取地点类型
                getPlaceClassifyList: function () {
                    var _self = this;
                    $.ajax({
                        url: projectName + "/PlatForm/getPlaceClassifyList", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: {
                            "orgID": "<%=userid%>",
                            "typeName": null,

                        },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
                            _self.placeInfoData = data;
                        }
                    });

                },
                copyRiskSiteBySimilarPlace: function () {
                    var _self = this;
                    $.get(projectName + "/HazardIdentificationControl/1", function (data) {
                        //   console.log(data);
                        _self.riskList = data;
                    });
                },
                //获取平台岗位信息
                getRoleTypes: function () {
                    var _self = this;
                    //url:待载入页面的URL地址
                    //data:待发送 Keyalue 参数。
                    //callback:载入成功时回调函数。
                    $.post(projectName + "/PlatForm/getRoleTypes", {"orgID": null, "typeName": null}, function (data) {
                        _self.roleList = data;
                    });
                },
                //风险点修改关闭模态框事件
                closemodal:function(){
                    var _self = this;
                    for(var i=0;i<_self.riskTitles.length;i++){
                        if(_self.riskTitles[i].classpropertyName =='Name'){
                            _self.riskTitles[i].classpropertyTitle = "风险点";
                        }
                    }
                },
                //添加风险点关闭模态框事件
                closemodalByadd:function(){
                    var _self = this;
                    for(var i=0;i<_self.riskTitles.length;i++){
                        if(_self.riskTitles[i].classpropertyName =='Name'){
                            _self.riskTitles[i].classpropertyTitle = "风险点";
                        }
                        if(_self.riskTitles[i].classpropertyName =='RiskDescription'){
                            _self.riskTitles[i].classpropertyTitle = "管控对象描述";
                        }
                    }
                },
            },
            watch: {
                "riskSiteDepts": {
                    handler: function (val, oldVal) {
                        var _self = this;
                        _self.getCurrOrgEmpList1();
                        _self.getCurrOrgEmpList();
                    },
                    deep: true
                },
                "riskDamageTypes": {
                    handler: function (val, oldVal) {
                        var _self = this;

                        for (var i = _self.riskDamageTypes.length - 1; i >= 0; i--) {
                            for (var j = _self.riskDamageTypes.length - 1; j >= 0; j--) {
                                if (j != i && _self.riskDamageTypes[i] == _self.riskDamageTypes[j]) {
                                    _self.riskDamageTypes.splice(i, 1);
                                }
                            }
                        }
                    },
                    deep: true
                },
            },
            computed: {}
        });

    $("#riskName").keyup(function () {//填入筛选条件后激活
        vuemyApp.searchPlaceListForEnterprise($(this).val(), placeListIn);
    });
    $("#riskName1").keyup(function () {//填入筛选条件后激活
        vuemyApp.searchPlaceListForEnterprise($(this).val(), placeListIn);
    });
</script>

</body>

</html>