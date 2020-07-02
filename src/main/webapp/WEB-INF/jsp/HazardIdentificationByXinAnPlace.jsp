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
    <link rel="shortcut icon" href=".../img/favicon.png">
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
    <link href="../css/jquery.editable-select.min.css" rel="stylesheet">
    <link href="../css/iview.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../iview/iview.css">
    <style>
        th {
            white-space: nowrap;

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

        .btys {
            display: inline-block;
            padding: 10px 40px;
            vertical-align: sub;
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
            padding: 0;
        }

        .form-group1 {
            background-color: #e9ecf1;
            padding: 10px 15px;
        }

        .form-group1 label {
            margin: 0 !important;
        }

        textarea {
            resize: none
        }

        .switch span {
            width: 52px;
            height: 25px;
        }

        .switch input:checked + span::after {
            left: 26px;
            width: 24px;
            top: 2px;
            bottom: 2px;
        }

        .switch-success input:checked + span {
            background-color: #00a3e9;
        }

        .biaot > td {
            white-space: nowrap;
            background-color: #f8f8f9;
            font-weight: bold;

        }

        .ivu-select-dropdown {

            position: absolute !important;
        }

        input::-webkit-input-placeholder { /* WebKit browsers */
            font-size: 8px;

        }

        input:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
            font-size: 8px;
        }

        input::-moz-placeholder { /* Mozilla Firefox 19+ */
            font-size: 8px;
        }

        input:-ms-input-placeholder { /* Internet Explorer 10+ */
            font-size: 8px;
        }
    </style>
</head>

<body>
<%Integer temHazardID = (Integer) request.getSession().getAttribute("temHazardID");%>
<div id="page-content" style="min-height: 794px;">
    <input id="temHazardID" value="<%=temHazardID%>" hidden>
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section">
                    <h1 style="float: left;">重点管控对象--指定地点</h1>

                    <div class="form-group" style="float: right;position: relative;right:34px">
                        <%--<button type="submit" class="btn btn-effect-ripple btn-primary">导出</button>--%>
                        <button type="submit"
                                data-toggle="modal" data-target="#modal-addPlace"
                                class="btn btn-effect-ripple btn-primary" onclick="initTimePicker();">选择地点
                        </button>
                        <button type="submit"
                                class="btn btn-effect-ripple btn-primary" @click="addPlaceAndRang">保存
                        </button>
                        <button type="submit"
                                class="btn btn-effect-ripple btn-primary" @click="comeback">返回
                        </button>
                    </div>
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
                        <div class="col-sm-12" style="padding: 0;margin-top: 10px;">
                            <div id="" class="">
                                <form method="post" class="form-inline" onsubmit="return false;">

                                    <div class="form-group1">
                                        <label class="" for="example-if-password">风险信息</label>
                                        <div class="" style="float: right;margin-top: -8px; margin-left: 8px">

                                        </div>
                                    </div>

                                </form>

                            </div>
                        </div>
                        <div class="col-sm-12" style="margin: 10px 0 0 0;">
                            <div id="" class="">
                                <form method="post" class="form-horizontal" onsubmit="return false;">
                                    <div class="col-sm-12 nihao2">
                                        <table id="general-table"
                                               class="table table-bordered table-vcenter table-hover">
                                            <tr class="biaot">
                                                <td class="text-center" rowspan="2">管控对象
                                                </td>
                                                <td class="text-center" rowspan="2">管控对象类型
                                                </td>
                                                <td class="text-center" rowspan="2">风险
                                                </td>
                                                <td class="text-center" rowspan="2">风险描述
                                                </td>
                                                <td class="text-center" rowspan="2">专业
                                                </td>
                                                <td class="text-center" rowspan="2">灾害类型
                                                </td>
                                                <td class="text-center" rowspan="2">风险类型
                                                </td>
                                                <td class="text-center" rowspan="2">管控部门
                                                </td>
                                                <td class="text-center" rowspan="2">风险分析
                                                </td>
                                                <td class="text-center" rowspan="2">风险值(D)
                                                </td>
                                                <td class="text-center" rowspan="2">风险等级
                                                </td>
                                                <td class="text-center" rowspan="2">风险颜色
                                                </td>
                                                <td class="text-center" rowspan="2">是否评估
                                                </td>
                                                <td class="text-center" rowspan="2">易发地点
                                                </td>
                                            </tr>
                                            <tbody>
                                            <tr>
                                                <td v-text="detailedList.riskObject"></td>
                                                <td v-text="detailedList.riskObjectType"></td>
                                                <td v-text="detailedList.name"></td>
                                                <td v-text="detailedList.hazardDesc"></td>
                                                <td v-text="detailedList.majorType"></td>
                                                <td v-text="detailedList.damageType"></td>
                                                <td v-text="detailedList.riskType"></td>
                                                <td v-text="detailedList.manageUnit"></td>
                                                <td v-if="detailedList.sseverity==null&&detailedList.lossConsequence==null"></td>
                                                <td style="white-space: nowrap"
                                                    v-if="detailedList.lossConsequence!=null&&detailedList.lossConsequence!=0">
                                                    评估方法(LEC):
                                                    L={{detailedList.possibility}} , E={{detailedList.expose}} ,
                                                    C={{detailedList.lossConsequence}}
                                                </td>
                                                <td style="white-space: nowrap"
                                                    v-if="detailedList.sseverity!=0&&detailedList.sseverity!=null">
                                                    评估方法(LS): L={{detailedList.possibility}} ,
                                                    S={{detailedList.sseverity}}
                                                </td>

                                                <td v-text="detailedList.riskValue"></td>
                                                <td v-text="detailedList.riskLevel"></td>
                                                <td class="text-center">
                                                <span v-bind:style="'background-color:'+detailedList.riskColor"
                                                      class="btys">

                                                </span>

                                                </td>
                                                <td v-if="detailedList.status==true">是</td>
                                                <td v-if="detailedList.status==false||detailedList.status==null">否</td>
                                                <td v-text="detailedList.mPaleAndRange.length"></td>
                                        </table>

                                    </div>
                                </form>

                            </div>

                        </div>

                        <div class="col-sm-12" style="padding: 0;">
                            <div id="" class="">
                                <form method="post" class="form-inline" onsubmit="return false;">

                                    <div class="form-group1">
                                        <label class="" for="example-if-password">管控范围</label>


                                    </div>

                                </form>

                            </div>
                        </div>
                        <div class="col-sm-12" style="margin: 0px 0px;">
                            <div id="" class="">
                                <form action="page_forms_components.html" method="post"
                                      class="form-horizontal form-bordered" onsubmit="return false;"
                                      style="margin:10px 0;">
                                    <div style="clear: both"></div>
                                    <div class="col-sm-12 nihao2">
                                        <table id="general-table1"
                                               class="table  table-bordered table-vcenter table-hover">
                                            <tr class="biaot">
                                                <td class="text-center" rowspan="2">序号
                                                </td>
                                                <td class="text-center" rowspan="2">地点
                                                </td>
                                                <td class="text-center" rowspan="2">管控周期(始)
                                                </td>
                                                <td class="text-center" rowspan="2">管控周期(终)
                                                </td>
                                                <td class="text-center" rowspan="2">矿级部门
                                                </td>
                                                <td class="text-center" rowspan="2">矿级岗位
                                                </td>
                                                <td class="text-center" rowspan="2">矿级频次
                                                </td>

                                                <td class="text-center" rowspan="2">专业级部门
                                                </td>
                                                <td class="text-center" rowspan="2">专业级岗位
                                                </td>
                                                <td class="text-center" rowspan="2">专业级频次
                                                </td>

                                                <td class="text-center" rowspan="2">职能部室级部门
                                                </td>
                                                <td class="text-center" rowspan="2">职能部室级岗位
                                                </td>
                                                <td class="text-center" rowspan="2">职能部室级频次
                                                </td>

                                                <td class="text-center" rowspan="2">区队级部门
                                                </td>
                                                <td class="text-center" rowspan="2">区队级岗位
                                                </td>
                                                <td class="text-center" rowspan="2">区队级频次
                                                </td>

                                                <td class="text-center" rowspan="2">班组个人级部门
                                                </td>
                                                <td class="text-center" rowspan="2">班组个人级岗位
                                                </td>
                                                <td class="text-center" rowspan="2">班组个人级频次
                                                </td>
                                                <td class="text-center" rowspan="2">操作
                                                </td>
                                            </tr>
                                            <tbody v-for="(pl,index) in placeList">
                                            <tr>
                                                <td class="text-center"
                                                    v-text="index+1+detailedList.mPaleAndRange.length"></td>
                                                <td v-text="pl.fPlace_Name"></td>
                                                <td v-text="riskhazardcontrolrangeList[index*5].controlRangeStartDay">
                                                </td>
                                                <td v-text="riskhazardcontrolrangeList[index*5].controlRangeEndDay">
                                                </td>

                                                <td v-text="riskhazardcontrolrangeList[index*5].manageUnit"></td>
                                                <td v-text="riskhazardcontrolrangeList[index*5].manageDuty"></td>
                                                <td v-text="riskhazardcontrolrangeList[index*5].controlRangePinci">
                                                </td>

                                                <td v-text="riskhazardcontrolrangeList[index*5+1].manageUnit"></td>
                                                <td v-text="riskhazardcontrolrangeList[index*5+1].manageDuty"></td>
                                                <td v-text="riskhazardcontrolrangeList[index*5+1].controlRangePinci">

                                                </td>

                                                <td v-text="riskhazardcontrolrangeList[index*5+2].manageUnit"></td>
                                                <td v-text="riskhazardcontrolrangeList[index*5+2].manageDuty"></td>
                                                <td v-text="riskhazardcontrolrangeList[index*5+2].controlRangePinci">

                                                </td>


                                                <td v-text="riskhazardcontrolrangeList[index*5+3].manageUnit"></td>
                                                <td v-text="riskhazardcontrolrangeList[index*5+3].manageDuty"></td>
                                                <td v-text="riskhazardcontrolrangeList[index*5+3].controlRangePinci">
                                                </td>


                                                <td v-text="riskhazardcontrolrangeList[index*5+4].manageUnit"></td>
                                                <td v-text="riskhazardcontrolrangeList[index*5+4].manageDuty"></td>
                                                <td v-text="riskhazardcontrolrangeList[index*5+4].controlRangePinci">
                                                </td>
                                                <td style="white-space: nowrap">
                                                    <a @click="manageRangAdd(pl.fPlace_Name,index)">指定管控范围</a>
                                                    <a @click="removePlace(index)">删除</a>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding: 0;">
                            <div id="" class="">
                                <form method="post" class="form-inline" onsubmit="return false;">

                                    <div class="form-group1">
                                        <label class="" for="example-if-password">已指定地点</label>

                                    </div>
                                </form>

                            </div>
                        </div>
                        <div class="col-sm-12" style="margin: 0px 0px;">
                            <div id="" class="">
                                <form action="page_forms_components.html" method="post"
                                      class="form-horizontal form-bordered" onsubmit="return false;"
                                      style="margin:10px 0;">
                                    <div style="clear: both"></div>
                                    <div class="col-sm-12 nihao2">
                                        <table id="general-table2"
                                               class="table  table-bordered table-vcenter table-hover">
                                            <tr class="biaot">
                                                <td class="text-center" rowspan="2">序号
                                                </td>
                                                <td class="text-center" rowspan="2">地点
                                                </td>
                                                <td class="text-center" rowspan="2">管控周期(始)
                                                </td>
                                                <td class="text-center" rowspan="2">管控周期(终)
                                                </td>
                                                <td class="text-center" rowspan="2">矿级部门
                                                </td>
                                                <td class="text-center" rowspan="2">矿级岗位
                                                </td>
                                                <td class="text-center" rowspan="2">矿级频次
                                                </td>

                                                <td class="text-center" rowspan="2">专业级部门
                                                </td>
                                                <td class="text-center" rowspan="2">专业级岗位
                                                </td>
                                                <td class="text-center" rowspan="2">专业级频次
                                                </td>

                                                <td class="text-center" rowspan="2">职能部室级部门
                                                </td>
                                                <td class="text-center" rowspan="2">职能部室级岗位
                                                </td>
                                                <td class="text-center" rowspan="2">职能部室级频次
                                                </td>

                                                <td class="text-center" rowspan="2">区队级部门
                                                </td>
                                                <td class="text-center" rowspan="2">区队级岗位
                                                </td>
                                                <td class="text-center" rowspan="2">区队级频次
                                                </td>

                                                <td class="text-center" rowspan="2">班组个人级部门
                                                </td>
                                                <td class="text-center" rowspan="2">班组个人级岗位
                                                </td>
                                                <td class="text-center" rowspan="2">班组个人级频次
                                                </td>
                                                <td class="text-center" rowspan="2">操作
                                                </td>
                                            </tr>
                                            <tbody v-for="(mp,mindex) in detailedList.mPaleAndRange">
                                            <tr v-if="mp.mRange.length==0">
                                                <td class="text-center" v-text="mindex+1"></td>
                                                <td v-text="mp.placeName"></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td style="white-space: nowrap">
                                                    <a @click="manageRangUpdate(mp,mindex)">修改管控范围</a>
                                                    <a @click="deleteRangeAndHazard(mp.hazardID,0)">删除</a>
                                                </td>
                                            </tr>
                                            <tr v-if="mp.mRange.length!=0">
                                                <td class="text-center" v-text="mindex+1"></td>
                                                <td v-text="mp.placeName"></td>
                                                <td v-text="mp.mRange[0].controlRangeStartDay"></td>
                                                <td v-text="mp.mRange[0].controlRangeEndDay"></td>

                                                <td v-text="mp.mRange[0].manageUnit"></td>
                                                <td v-text="mp.mRange[0].manageDuty"></td>
                                                <td v-text="mp.mRange[0].controlRangePinci"></td>

                                                <td v-text="mp.mRange[1].manageUnit"></td>
                                                <td v-text="mp.mRange[1].manageDuty"></td>
                                                <td v-text="mp.mRange[1].controlRangePinci"></td>

                                                <td v-text="mp.mRange[2].manageUnit"></td>
                                                <td v-text="mp.mRange[2].manageDuty"></td>
                                                <td v-text="mp.mRange[2].controlRangePinci"></td>

                                                <td v-text="mp.mRange[3].manageUnit"></td>
                                                <td v-text="mp.mRange[3].manageDuty"></td>
                                                <td v-text="mp.mRange[3].controlRangePinci"></td>

                                                <td v-text="mp.mRange[4].manageUnit"></td>
                                                <td v-text="mp.mRange[4].manageDuty"></td>
                                                <td v-text="mp.mRange[4].controlRangePinci"></td>
                                                <td style="white-space: nowrap">
                                                    <a @click="manageRangUpdate(mp,mindex)">修改管控范围</a>
                                                    <a @click="deleteRangeAndHazard(mp.hazardID,mp.mRange)">删除</a>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--选择地点demo-->
    <div class="modal inmodal" id="modal-addPlace" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="height: 100%">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">添加地点</h4>
                    <small></small>
                </div>
                <div class="modal-body" style="overflow-y: auto;height: 600px">
                    <%--<template>
                        <Tree :data="placeData" multiple @on-select-change="checkPlace"></Tree>
                    </template>--%>

                    <div class="col-sm-12">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">待指定地点</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskDamageType">--%>
                                <i-select v-model="placeClick" placeholder="请指定地点" filterable multiple>
                                    <%--<option value=null>请选择灾害类型</option>--%>
                                    <i-option v-for="(myplace,index) in placeListByXinAn"
                                              :value="myplace.fPlace_Name"
                                              :label="myplace.fPlace_Name">
                                        <span v-text="myplace.fPlace_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="myplace.fPlace_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-effect-ripple btn-primary"
                            @click="comfirmAddPlace">确认
                    </button>
                </div>
            </div>
        </div>


    </div>

    <!--选择管控范围demo-->
    <div id="modal-rang" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body" style="height:851px;">
                    <div class="block-title">
                        <h4>管控范围({{locationName}})</h4></div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">管控周期</label>
                            <div class="col-sm-8">
                                <input class="form-control nihao1" onclick="initTimePicker();" style="width:95%"
                                       id="startTime"
                                       placeholder="请选择开始时间"
                                       type="text" readonly="readonly">
                                <input class="form-control nihao1" style="width: 95%" onclick="initTimePicker();"
                                       id="endTime" placeholder="请选择结束时间"
                                       type="text" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">矿级</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskControlTier"></div>--%>

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
                            <label class="col-sm-3 control-label"></label>
                            <div class="col-sm-8">
                                <i-select  style="width: 96%" placeholder="岗位" ref="kmanageDuty" label-in-value
                                          v-model="kmanageDuty"
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
                        <div class="form-group">
                            <label class="col-sm-3 control-label">专业级</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskControlTier"></div>--%>

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
                            <label class="col-sm-3 control-label"></label>
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
                        <div class="form-group">
                            <label class="col-sm-3 control-label">职能部室级</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskControlTier"></div>--%>

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

                                <i-select style="width: 45%" placeholder="频次" ref="qrangePinci" label-in-value
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
                            <label class="col-sm-3 control-label"></label>
                            <div class="col-sm-8">
                                <i-select style="width:96%" placeholder="岗位" ref="qmanageDuty" label-in-value
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
                        <div class="form-group">
                            <label class="col-sm-3 control-label">区队级</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskControlTier"></div>--%>

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
                            <label class="col-sm-3 control-label"></label>
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
                        <div class="form-group">
                            <label class="col-sm-3 control-label">班组个人级</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskControlTier"></div>--%>

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
                            <label class="col-sm-3 control-label"></label>
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
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="confirmHazardRang">确认
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--修改风险管控范围-->
    <div id="modal-rangUpdate" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body" style="height:851px;">
                    <div class="block-title">
                        <h4>管控范围({{locationName}})</h4></div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">管控周期</label>
                            <div class="col-sm-8">
                                <input class="form-control nihao1" id="startTime1" onclick="initTimePicker();"
                                       placeholder="请选择开始时间"
                                       type="text" readonly="readonly">
                                <input class="form-control nihao1" id="endTime1" onclick="initTimePicker();"
                                       placeholder="请选择结束时间"
                                       type="text" readonly="readonly">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">矿级</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskControlTier"></div>--%>

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
                            <label class="col-sm-3 control-label"></label>
                            <div class="col-sm-8">
                                <i-select style="width: 96%" placeholder="岗位" ref="ukmanageDuty" label-in-value
                                          v-model="ukmanageDuty" clearable
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
                        <div class="form-group">
                            <label class="col-sm-3 control-label">专业级</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskControlTier"></div>--%>

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
                            <label class="col-sm-3 control-label"></label>
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
                        <div class="form-group">
                            <label class="col-sm-3 control-label">职能部室级</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskControlTier"></div>--%>

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
                            <label class="col-sm-3 control-label"></label>
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
                        <div class="form-group">
                            <label class="col-sm-3 control-label">区队级</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskControlTier"></div>--%>

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
                            <label class="col-sm-3 control-label"></label>
                            <div class="col-sm-8">
                                <i-select style="width:96%" placeholder="岗位" ref="ubmanageDuty" label-in-value
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
                        <div class="form-group">
                            <label class="col-sm-3 control-label">班组个人级</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskControlTier"></div>--%>

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
                            <label class="col-sm-3 control-label"></label>
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
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="UpdateHazardRang">确认
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--删除地点-->
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
                    <p> 确认要删除已经存在的地点吗？</p>
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
<script src="../js/vendor/jquery-2.2.4.min.js"></script>
<script src="../js/vendor/bootstrap.min.js"></script>
<script src="../js/bootstrap-treeview.js"></script>
<script src="../js/treeview-demo.min.js"></script>
<script src="../js/plugins.js"></script>
<script src="../js/app.js"></script>
<script src="../js/pages/uiTables.js"></script>
<script src="../js/pages/compTree.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/vue.js"></script>
<%--<script src="../js/iview.min.js"></script>--%>
<script src="../iview/iview.js"></script>
<script src="../js/jquery.editable-select.min.js"></script>

<script>

    function initTimePicker() {
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
        laydate.render({
            elem: "#startTime1"
            , trigger: 'click'
            , type: 'date'
            , theme: '#3188f2'
        });
        laydate.render({
            elem: "#endTime1"
            , trigger: 'click'
            , type: 'date'
            , theme: '#3188f2'
        });

    }

    /**
     * Created by Administrator on 2018/5/8
     */
    var projectName = '<%=request.getContextPath() %>';
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            temHazardID: "",
            detailedList: "",
            placeList: [],
            placeData: [],
            placeClick: [],
            place: "",
            departmentList: [],//平台部门
            roleList: [],
            riskControlTierList: [],//平台管控层级
            riskFrequencyList: [],//平台管控频次
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

            rangeName: "",//管控层级
            riskhazardcontrolrange: "",
            locationName: "",
            riskhazardcontrolrangeList: [],//新增管控范围（未新建地点）
            MRangAddIndex: -1,//添加管控范围下标
            judgeShowList:[],//指定其他管控措施时
            hazardRangeUpdate: "",
            rangeNameUp: "",
            rangePinciUp: "",
            manageDutyUp: "",
            manageUnitUp: "",
            hazardIDByDel: 0,//删除已选择地点
            rangeListByDel: [],//删除已有管控范围
            assmentHazard: "",//评估危险源所用
            columns2: [
                {
                    title: '序号',
                    key: 'index',
                    width: 100,
                    fixed: 'left'
                },
                {
                    title: '地点',
                    key: 'location',
                    width: 100,
                    fixed: 'left'
                },
                {
                    title: '管控周期(始)',
                    key: 'startTime',
                    width: 100
                },
                {
                    title: '管控周期(终)',
                    key: 'endTime',
                    width: 100
                },
                {
                    title: '矿级部门',
                    key: 'kdepartment',
                    width: 200
                },
                {
                    title: '矿级岗位',
                    key: 'kroleType',
                    width: 100
                },
                {
                    title: '矿级频次',
                    key: 'kfrequency',
                    fixed: 'right',
                    width: 120,

                },

                {
                    title: '专业级部门',
                    key: 'zdepartment',
                    width: 200
                },
                {
                    title: '专业级岗位',
                    key: 'zroleType',
                    width: 100
                },
                {
                    title: '专业级频次',
                    key: 'zfrequency',
                    fixed: 'right',
                    width: 120,

                },
                {
                    title: '区队级部门',
                    key: 'qdepartment',
                    width: 200
                },
                {
                    title: '区队级岗位',
                    key: 'qroleType',
                    width: 100
                },
                {
                    title: '区队级频次',
                    key: 'qfrequency',
                    fixed: 'right',
                    width: 120,

                },
                {
                    title: '班组级部门',
                    key: 'bdepartment',
                    width: 200
                },
                {
                    title: '班组级岗位',
                    key: 'broleType',
                    width: 100
                },
                {
                    title: '班组级频次',
                    key: 'bfrequency',
                    fixed: 'right',
                    width: 120,

                },
                {
                    title: '个人级部门',
                    key: 'gdepartment',
                    width: 200
                },
                {
                    title: '个人级岗位',
                    key: 'groleType',
                    width: 100
                },
                {
                    title: '个人级频次',
                    key: 'gfrequency',
                    width: 120,
                },
                {
                    title: '操作',
                    key: 'operation',
                    fixed: 'right',
                    width: 120,
                },
            ],
            data1:[],
            placeListByXinAn:[],
        },
        created: function () {
            var _self = this;
            _self.getTemplatehazardAndPlace();
            _self.getPlaceTrees();
            _self.getDepartment();
            _self.getRoleTypes();
            _self.getNewRiskhazardcontrolrange();
            _self.getPlaceListForEnterprise();
            _self.getEnterprise_data_dictionaryListForOrg();

        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            //获取地点信息
            getPlaceListForEnterprise: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.post(projectName + "/PlatForm/getPlaceListForEnterprise", function (data) {
                    _self.placeListByXinAn = data.rows;
                    _self.getCheckedList();

                });
            }
            ,
            comeback: function () {
                var _self = this;
                location.href = projectName + "/menu/HazardIdentificationByXinAn.do";

            },

            confirmDelete: function () {
                var _self = this;
                $.ajax({
                    url: projectName + "/Templatehazard/deleteRiskhazardcontrolrangeList", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.rangeListByDel),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        $.ajax({
                            url: projectName + "/Templatehazard/deleteRiskhazardByID/" + _self.hazardIDByDel, //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                //请求成功后的回调函数
                                _self.showToast("success", "地点删除成功");
                                _self.getTemplatehazardAndPlace();
                            },

                        });
                    },

                });


            },
            deleteRangeAndHazard: function (hazardId, range) {
                var _self = this;
                _self.rangeListByDel = range;
                _self.hazardIDByDel = hazardId;
                $("#modal-delete").modal("show");

            },
            UpdateHazardRang: function () {
                var _self = this;
                for (var i = 0; i < _self.hazardRangeUpdate.length; i++) {
                    if (_self.hazardRangeUpdate[i].controlRangeName == "矿级") {
                        _self.hazardRangeUpdate[i].controlRangeStartDay = $("#startTime1").val();
                        _self.hazardRangeUpdate[i].controlRangeEndDay = $("#endTime1").val();
                        if(_self.ukmanageDuty.length!=0){
                            var ukmanageDuty="";
                            for(var k=0;k<_self.ukmanageDuty.length;k++){
                                if(k<_self.ukmanageDuty.length-1){
                                    ukmanageDuty+=_self.ukmanageDuty[k]+",";
                                }else{
                                    ukmanageDuty+=_self.ukmanageDuty[k];
                                }
                            }
                            _self.hazardRangeUpdate[i].manageDuty = ukmanageDuty;
                        }else{
                            _self.hazardRangeUpdate[i].manageDuty = null;

                        }
                        _self.hazardRangeUpdate[i].controlRangePinci = _self.ukrangePinci;
                        _self.hazardRangeUpdate[i].manageUnit = _self.ukmanageUnit;
                        /*for (var m = 0; m < _self.roleList.length; m++) {
                            if (_self.roleList[m].fRole_Name == _self.ukmanageDuty) {
                                _self.hazardRangeUpdate.manageDutyID = _self.roleList[m].fRole_GUID;
                                break;

                            }
                        }*/
                        for (var n = 0; n < _self.departmentList.length; n++) {
                            if (_self.departmentList[n].fOrg_Name == _self.ukmanageUnit) {
                                _self.hazardRangeUpdate.manageUnitID = _self.departmentList[n].fOrgID;
                                break;
                            }
                        }
                        $.ajax({
                            url: projectName + "/Templatehazard/updateRiskhazardcontrolrange", //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: JSON.stringify(_self.hazardRangeUpdate[i]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            contentType: "application/json",
                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                //请求成功后的回调函数
                            },
                        });

                    } else if (_self.hazardRangeUpdate[i].controlRangeName == "专业级") {
                        _self.hazardRangeUpdate[i].controlRangeStartDay = $("#startTime1").val();
                        _self.hazardRangeUpdate[i].controlRangeEndDay = $("#endTime1").val();
                        if(_self.uzmanageDuty.length!=0){
                            var uzmanageDuty="";
                            for(var k=0;k<_self.uzmanageDuty.length;k++){
                                if(k<_self.uzmanageDuty.length-1){
                                    uzmanageDuty+=_self.uzmanageDuty[k]+",";
                                }else{
                                    uzmanageDuty+=_self.uzmanageDuty[k];
                                }
                            }
                            _self.hazardRangeUpdate[i].manageDuty = uzmanageDuty;
                        }else{
                            _self.hazardRangeUpdate[i].manageDuty = null;

                        }
                        _self.hazardRangeUpdate[i].controlRangePinci = _self.uzrangePinci;
                        _self.hazardRangeUpdate[i].manageUnit = _self.uzmanageUnit;
                        /*for (var m = 0; m < _self.roleList.length; m++) {
                            if (_self.roleList[m].fRole_Name == _self.uzmanageDuty) {
                                _self.hazardRangeUpdate.manageDutyID = _self.roleList[m].fRole_GUID;
                                break;

                            }
                        }*/
                        for (var n = 0; n < _self.departmentList.length; n++) {
                            if (_self.departmentList[n].fOrg_Name == _self.uzmanageUnit) {
                                _self.hazardRangeUpdate.manageUnitID = _self.departmentList[n].fOrgID;
                                break;
                            }
                        }
                        $.ajax({
                            url: projectName + "/Templatehazard/updateRiskhazardcontrolrange", //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: JSON.stringify(_self.hazardRangeUpdate[i]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            contentType: "application/json",
                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                //请求成功后的回调函数
                            },
                        });

                    } else if (_self.hazardRangeUpdate[i].controlRangeName == "职能部室级") {
                        _self.hazardRangeUpdate[i].controlRangeStartDay = $("#startTime1").val();
                        _self.hazardRangeUpdate[i].controlRangeEndDay = $("#endTime1").val();
                        if(_self.uqmanageDuty.length!=0){
                            var uqmanageDuty="";
                            for(var k=0;k<_self.uqmanageDuty.length;k++){
                                if(k<_self.uqmanageDuty.length-1){
                                    uqmanageDuty+=_self.uqmanageDuty[k]+",";
                                }else{
                                    uqmanageDuty+=_self.uqmanageDuty[k];
                                }
                            }
                            _self.hazardRangeUpdate[i].manageDuty = uqmanageDuty;
                        }else{
                            _self.hazardRangeUpdate[i].manageDuty = null;

                        }
                        _self.hazardRangeUpdate[i].controlRangePinci = _self.uqrangePinci;
                        _self.hazardRangeUpdate[i].manageUnit = _self.uqmanageUnit;
                        /*for (var m = 0; m < _self.roleList.length; m++) {
                            if (_self.roleList[m].fRole_Name == _self.uqmanageDuty) {
                                _self.hazardRangeUpdate.manageDutyID = _self.roleList[m].fRole_GUID;
                                break;

                            }
                        }*/
                        for (var n = 0; n < _self.departmentList.length; n++) {
                            if (_self.departmentList[n].fOrg_Name == _self.uqmanageUnit) {
                                _self.hazardRangeUpdate.manageUnitID = _self.departmentList[n].fOrgID;
                                break;
                            }
                        }
                        $.ajax({
                            url: projectName + "/Templatehazard/updateRiskhazardcontrolrange", //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: JSON.stringify(_self.hazardRangeUpdate[i]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            contentType: "application/json",
                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                //请求成功后的回调函数
                            },
                        });

                    } else if (_self.hazardRangeUpdate[i].controlRangeName == "区队级") {
                        _self.hazardRangeUpdate[i].controlRangeStartDay = $("#startTime1").val();
                        _self.hazardRangeUpdate[i].controlRangeEndDay = $("#endTime1").val();
                        if(_self.ubmanageDuty.length!=0){
                            var ubmanageDuty="";
                            for(var k=0;k<_self.ubmanageDuty.length;k++){
                                if(k<_self.ubmanageDuty.length-1){
                                    ubmanageDuty+=_self.ubmanageDuty[k]+",";
                                }else{
                                    ubmanageDuty+=_self.ubmanageDuty[k];
                                }
                            }
                            _self.hazardRangeUpdate[i].manageDuty = ubmanageDuty;
                        }else{
                            _self.hazardRangeUpdate[i].manageDuty = null;

                        }
                        _self.hazardRangeUpdate[i].controlRangePinci = _self.ubrangePinci;
                        _self.hazardRangeUpdate[i].manageUnit = _self.ubmanageUnit;
                        /*for (var m = 0; m < _self.roleList.length; m++) {
                            if (_self.roleList[m].fRole_Name == _self.ubmanageDuty) {
                                _self.hazardRangeUpdate.manageDutyID = _self.roleList[m].fRole_GUID;
                                break;

                            }
                        }*/
                        for (var n = 0; n < _self.departmentList.length; n++) {
                            if (_self.departmentList[n].fOrg_Name == _self.ubmanageUnit) {
                                _self.hazardRangeUpdate.manageUnitID = _self.departmentList[n].fOrgID;
                                break;
                            }
                        }
                        $.ajax({
                            url: projectName + "/Templatehazard/updateRiskhazardcontrolrange", //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: JSON.stringify(_self.hazardRangeUpdate[i]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            contentType: "application/json",
                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                //请求成功后的回调函数
                            },
                        });

                    } else {
                        _self.hazardRangeUpdate[i].controlRangeStartDay = $("#startTime1").val();
                        _self.hazardRangeUpdate[i].controlRangeEndDay = $("#endTime1").val();
                        if(_self.ugmanageDuty.length!=0){
                            var ugmanageDuty="";
                            for(var k=0;k<_self.ugmanageDuty.length;k++){
                                if(k<_self.ugmanageDuty.length-1){
                                    ugmanageDuty+=_self.ugmanageDuty[k]+",";
                                }else{
                                    ugmanageDuty+=_self.ugmanageDuty[k];
                                }
                            }
                            _self.hazardRangeUpdate[i].manageDuty = ugmanageDuty;
                        }else{
                            _self.hazardRangeUpdate[i].manageDuty = null;

                        }
                        _self.hazardRangeUpdate[i].controlRangePinci = _self.ugrangePinci;
                        _self.hazardRangeUpdate[i].manageUnit = _self.ugmanageUnit;
                       /* for (var m = 0; m < _self.roleList.length; m++) {
                            if (_self.roleList[m].fRole_Name == _self.ugmanageDuty) {
                                _self.hazardRangeUpdate.manageDutyID = _self.roleList[m].fRole_GUID;
                                break;

                            }
                        }*/
                        for (var n = 0; n < _self.departmentList.length; n++) {
                            if (_self.departmentList[n].fOrg_Name == _self.ugmanageUnit) {
                                _self.hazardRangeUpdate.manageUnitID = _self.departmentList[n].fOrgID;
                                break;
                            }
                        }
                        $.ajax({
                            url: projectName + "/Templatehazard/updateRiskhazardcontrolrange", //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: JSON.stringify(_self.hazardRangeUpdate[i]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            contentType: "application/json",
                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                //请求成功后的回调函数
                            },
                        });
                    }
                    if (i == 4) {
                        _self.showToast("success", "修改成功");
                        _self.getTemplatehazardAndPlace();
                    }

                }
                $("#modal-rangUpdate").modal("hide");

            },
            removePlace: function (index) {
                var _self = this;
                _self.riskhazardcontrolrangeList.splice(index, 5);
                _self.placeList.splice(index, 1);
                _self.placeClick.splice(index,1);
                for(var i=0;i<_self.judgeShowList.length;i++){
                    if(_self.judgeShowList[i]==index){
                        _self.judgeShowList.splice(index,1);
                        break;
                    }

                }

            },
            confirmHazardRang: function () {
                var _self = this;
                var min = _self.MRangAddIndex * 5;
                var hazardRange = _self.riskhazardcontrolrangeList[min];
                hazardRange.controlRangeStartDay = $("#startTime").val();
                hazardRange.controlRangeEndDay = $("#endTime").val();
                hazardRange.controlRangeName = "矿级";
                hazardRange.controlRangePinci = _self.krangePinci;
                if(_self.kmanageDuty.length!=0){
                    var kmanageDuty="";
                    for(var k=0;k<_self.kmanageDuty.length;k++){
                        if(k<_self.kmanageDuty.length-1){
                            kmanageDuty+=_self.kmanageDuty[k]+",";
                        }else{
                            kmanageDuty+=_self.kmanageDuty[k];
                        }
                    }
                    hazardRange.manageDuty =kmanageDuty;
                }else{
                    hazardRange.manageDuty =null;
                }
                hazardRange.manageUnit = _self.kmanageUnit;
                /*for (var i = 0; i < _self.roleList.length; i++) {
                    if (_self.roleList[i].fRole_Name == _self.manageDuty) {
                        hazardRange.manageDutyID = _self.roleList[i].fRole_GUID;
                        break;

                    }
                }*/
                for (var i = 0; i < _self.departmentList.length; i++) {
                    if (_self.departmentList[i].fOrg_Name == _self.kmanageUnit) {
                        hazardRange.manageUnitID = _self.departmentList[i].fOrgID;
                        break;
                    }
                }
                var zhazardRange = _self.riskhazardcontrolrangeList[min + 1];
                zhazardRange.controlRangeStartDay = $("#startTime").val();
                zhazardRange.controlRangeEndDay = $("#endTime").val();
                zhazardRange.controlRangeName = "专业级";
                zhazardRange.controlRangePinci = _self.zrangePinci;
                if(_self.zmanageDuty.length!=0){
                    var zmanageDuty="";
                    for(var k=0;k<_self.zmanageDuty.length;k++){
                        if(k<_self.zmanageDuty.length-1){
                            zmanageDuty+=_self.zmanageDuty[k]+",";
                        }else{
                            zmanageDuty+=_self.zmanageDuty[k];
                        }
                    }
                    zhazardRange.manageDuty =zmanageDuty;
                }else{
                    zhazardRange.manageDuty =null;

                }
                zhazardRange.manageUnit = _self.zmanageUnit;
                /*for (var i = 0; i < _self.roleList.length; i++) {
                    if (_self.roleList[i].fRole_Name == _self.zmanageDuty) {
                        zhazardRange.manageDutyID = _self.roleList[i].fRole_GUID;
                        break;

                    }
                }*/
                for (var i = 0; i < _self.departmentList.length; i++) {
                    if (_self.departmentList[i].fOrg_Name == _self.zmanageUnit) {
                        zhazardRange.manageUnitID = _self.departmentList[i].fOrgID;
                        break;
                    }
                }
                var qhazardRange = _self.riskhazardcontrolrangeList[min + 2];
                qhazardRange.controlRangeStartDay = $("#startTime").val();
                qhazardRange.controlRangeEndDay = $("#endTime").val();
                qhazardRange.controlRangeName = "职能部室级";
                qhazardRange.controlRangePinci = _self.qrangePinci;
                if(_self.qmanageDuty.length!=0){
                    var qmanageDuty="";
                    for(var k=0;k<_self.qmanageDuty.length;k++){
                        if(k<_self.qmanageDuty.length-1){
                            qmanageDuty+=_self.qmanageDuty[k]+",";
                        }else{
                            qmanageDuty+=_self.qmanageDuty[k];
                        }
                    }
                    qhazardRange.manageDuty =qmanageDuty;
                }else{
                    qhazardRange.manageDuty =null;
                }
                qhazardRange.manageUnit = _self.qmanageUnit;
                /*for (var i = 0; i < _self.roleList.length; i++) {
                    if (_self.roleList[i].fRole_Name == _self.qmanageDuty) {
                        qhazardRange.manageDutyID = _self.roleList[i].fRole_GUID;
                        break;

                    }
                }*/
                for (var i = 0; i < _self.departmentList.length; i++) {
                    if (_self.departmentList[i].fOrg_Name == _self.qmanageUnit) {
                        qhazardRange.manageUnitID = _self.departmentList[i].fOrgID;
                        break;
                    }
                }
                var bhazardRange = _self.riskhazardcontrolrangeList[min + 3];
                bhazardRange.controlRangeStartDay = $("#startTime").val();
                bhazardRange.controlRangeEndDay = $("#endTime").val();
                bhazardRange.controlRangeName = "区队级";
                bhazardRange.controlRangePinci = _self.brangePinci;
                if(_self.bmanageDuty.length!=0){
                    var bmanageDuty="";
                    for(var k=0;k<_self.bmanageDuty.length;k++){
                        if(k<_self.bmanageDuty.length-1){
                            bmanageDuty+=_self.bmanageDuty[k]+",";
                        }else{
                            bmanageDuty+=_self.bmanageDuty[k];
                        }
                    }
                    bhazardRange.manageDuty =bmanageDuty;
                }else{
                    bhazardRange.manageDuty =null;
                }
                bhazardRange.manageUnit = _self.bmanageUnit;
                /*for (var i = 0; i < _self.roleList.length; i++) {
                    if (_self.roleList[i].fRole_Name == _self.bmanageDuty) {
                        bhazardRange.manageDutyID = _self.roleList[i].fRole_GUID;
                        break;

                    }
                }*/
                for (var i = 0; i < _self.departmentList.length; i++) {
                    if (_self.departmentList[i].fOrg_Name == _self.bmanageUnit) {
                        bhazardRange.manageUnitID = _self.departmentList[i].fOrgID;
                        break;
                    }
                }
                var ghazardRange = _self.riskhazardcontrolrangeList[min + 4];
                ghazardRange.controlRangeStartDay = $("#startTime").val();
                ghazardRange.controlRangeEndDay = $("#endTime").val();
                ghazardRange.controlRangeName = "班组个人级";
                ghazardRange.controlRangePinci = _self.grangePinci;
                if(_self.gmanageDuty.length!=0){
                    var gmanageDuty="";
                    for(var k=0;k<_self.gmanageDuty.length;k++){
                        if(k<_self.gmanageDuty.length-1){
                            gmanageDuty+=_self.gmanageDuty[k]+",";
                        }else{
                            gmanageDuty+=_self.gmanageDuty[k];
                        }
                    }
                    ghazardRange.manageDuty =gmanageDuty;
                }else{
                    ghazardRange.manageDuty =null;
                }
                ghazardRange.manageUnit = _self.gmanageUnit;
                /*for (var i = 0; i < _self.roleList.length; i++) {
                    if (_self.roleList[i].fRole_Name == _self.gmanageDuty) {
                        ghazardRange.manageDutyID = _self.roleList[i].fRole_GUID;
                        break;

                    }
                }*/
                for (var i = 0; i < _self.departmentList.length; i++) {
                    if (_self.departmentList[i].fOrg_Name == _self.gmanageUnit) {
                        ghazardRange.manageUnitID = _self.departmentList[i].fOrgID;
                        break;
                    }
                }
               /* _self.kmanageDuty = "";
                _self.krangePinci = "";
                _self.kmanageUnit = "";

                _self.zmanageDuty = "";
                _self.zrangePinci = "";
                _self.zmanageUnit = "";

                _self.qmanageDuty = "";
                _self.qrangePinci = "";
                _self.qmanageUnit = "";
*/
                _self.bmanageDuty = []
                _self.brangePinci = "";
                _self.bmanageUnit = "";

                _self.gmanageDuty = [];
                _self.grangePinci = "";
                _self.gmanageUnit = "";
              /*  $("#startTime").val("");
                $("#endTime").val("");*/
              var judge=true;
              for(var i=0;i<_self.judgeShowList.length;i++){
                    if(_self.judgeShowList[i]==_self.MRangAddIndex){
                        judge=false;
                        break;
                    }

              };
              if(judge){
                  _self.judgeShowList.push(_self.MRangAddIndex);
              }
                $("#modal-rang").modal("hide");
            },
            getNewRiskhazardcontrolrange: function () {
                var _self = this;
                $.get(projectName + "/Templatehazard/getNewRiskhazardcontrolrange", {}, function (data) {
                    _self.riskhazardcontrolrange = data;
                });

            },
            manageRangAdd: function (locationName, index) {
                var _self = this;
                _self.locationName = locationName;
                if(_self.judgeShowList.indexOf(index)>-1){
                _self.MRangAddIndex = index;
                var min = _self.MRangAddIndex * 5;
                $("#startTime").val(_self.riskhazardcontrolrangeList[min].controlRangeStartDay);
                $("#endTime").val(_self.riskhazardcontrolrangeList[min].controlRangeEndDay);
                _self.krangePinci = _self.riskhazardcontrolrangeList[min].controlRangePinci;
                if(_self.riskhazardcontrolrangeList[min].manageDuty!=""&&_self.riskhazardcontrolrangeList[min].manageDuty!=null){
                    _self.kmanageDuty = _self.riskhazardcontrolrangeList[min].manageDuty.split(",");
                }else{
                    _self.kmanageDuty =[];
                }
                _self.kmanageUnit = _self.riskhazardcontrolrangeList[min].manageUnit;

                _self.zrangePinci = _self.riskhazardcontrolrangeList[min + 1].controlRangePinci;
                if(_self.riskhazardcontrolrangeList[min + 1].manageDuty!=""&&_self.riskhazardcontrolrangeList[min + 1].manageDuty!=null){
                    _self.zmanageDuty = _self.riskhazardcontrolrangeList[min + 1].manageDuty.split(",");
                }else{
                    _self.zmanageDuty =[];
                }
                _self.zmanageUnit = _self.riskhazardcontrolrangeList[min + 1].manageUnit;

                _self.qrangePinci = _self.riskhazardcontrolrangeList[min + 2].controlRangePinci;
                if(_self.riskhazardcontrolrangeList[min + 2].manageDuty!=""&&_self.riskhazardcontrolrangeList[min + 2].manageDuty!=null){
                    _self.qmanageDuty = _self.riskhazardcontrolrangeList[min + 2].manageDuty.split(",");
                }else{
                    _self.qmanageDuty =[];
                }
                _self.qmanageUnit = _self.riskhazardcontrolrangeList[min + 2].manageUnit;

                _self.brangePinci = _self.riskhazardcontrolrangeList[min + 3].controlRangePinci;
                if(_self.riskhazardcontrolrangeList[min + 3].manageDuty!=""&&_self.riskhazardcontrolrangeList[min + 3].manageDuty!=null){
                    _self.bmanageDuty = _self.riskhazardcontrolrangeList[min + 3].manageDuty.split(",");
                }else{
                    _self.bmanageDuty =[];
                }
                _self.bmanageUnit = _self.riskhazardcontrolrangeList[min + 3].manageUnit;

                _self.grangePinci = _self.riskhazardcontrolrangeList[min + 4].controlRangePinci;
                if(_self.riskhazardcontrolrangeList[min + 4].manageDuty!=""&&_self.riskhazardcontrolrangeList[min + 4].manageDuty!=null){
                    _self.gmanageDuty = _self.riskhazardcontrolrangeList[min + 4].manageDuty.split(",");
                }else{
                    _self.gmanageDuty =[];
                }
                _self.gmanageUnit = _self.riskhazardcontrolrangeList[min + 4].manageUnit;
                }else{
                    _self.MRangAddIndex = index;
                }
                $("#modal-rang").modal("show");
            },

            manageRangUpdate: function (mp, index) {
                var _self = this;
                _self.locationName = mp.placeName;
                _self.hazardRangeUpdate = mp.mRange;
                $("#startTime1").val(_self.hazardRangeUpdate[0].controlRangeStartDay);
                $("#endTime1").val(_self.hazardRangeUpdate[0].controlRangeEndDay);
                for (var i = 0; i < _self.hazardRangeUpdate.length; i++) {
                    if (_self.hazardRangeUpdate[i].controlRangeName == "矿级") {

                        if(_self.hazardRangeUpdate[i].manageDuty!=""&&_self.hazardRangeUpdate[i].manageDuty!=null){
                            _self.ukmanageDuty = _self.hazardRangeUpdate[i].manageDuty.split(",");
                        }else{
                            _self.ukmanageDuty =[];
                        }
                        _self.ukrangePinci = _self.hazardRangeUpdate[i].controlRangePinci;////controlRangePinci
                        _self.ukmanageUnit = _self.hazardRangeUpdate[i].manageUnit;

                    } else if (_self.hazardRangeUpdate[i].controlRangeName == "专业级") {
                        _self.uzrangePinci = _self.hazardRangeUpdate[i].controlRangePinci;
                        if(_self.hazardRangeUpdate[i].manageDuty!=""&&_self.hazardRangeUpdate[i].manageDuty!=null){
                            _self.uzmanageDuty = _self.hazardRangeUpdate[i].manageDuty.split(",");
                        }else{
                            _self.uzmanageDuty =[];
                        }
                        _self.uzmanageUnit = _self.hazardRangeUpdate[i].manageUnit;

                    } else if (_self.hazardRangeUpdate[i].controlRangeName == "职能部室级") {
                        _self.uqrangePinci = _self.hazardRangeUpdate[i].controlRangePinci;
                        if(_self.hazardRangeUpdate[i].manageDuty!=""&&_self.hazardRangeUpdate[i].manageDuty!=null){
                            _self.uqmanageDuty = _self.hazardRangeUpdate[i].manageDuty.split(",");
                        }else{
                            _self.uqmanageDuty =[];
                        }
                        _self.uqmanageUnit = _self.hazardRangeUpdate[i].manageUnit;

                    } else if (_self.hazardRangeUpdate[i].controlRangeName == "区队级") {
                        _self.ubrangePinci = _self.hazardRangeUpdate[i].controlRangePinci;
                        if(_self.hazardRangeUpdate[i].manageDuty!=""&&_self.hazardRangeUpdate[i].manageDuty!=null){
                            _self.ubmanageDuty = _self.hazardRangeUpdate[i].manageDuty.split(",");
                        }else{
                            _self.ubmanageDuty =[];
                        }
                        _self.ubmanageUnit = _self.hazardRangeUpdate[i].manageUnit;

                    } else {
                        _self.ugrangePinci = _self.hazardRangeUpdate[i].controlRangePinci;
                        if(_self.hazardRangeUpdate[i].manageDuty!=""&&_self.hazardRangeUpdate[i].manageDuty!=null){
                            _self.ugmanageDuty = _self.hazardRangeUpdate[i].manageDuty.split(",");
                        }else{
                            _self.ugmanageDuty =[];
                        }
                        _self.ugmanageUnit = _self.hazardRangeUpdate[i].manageUnit;
                    }

                }
                $("#modal-rangUpdate").modal("show");
            },
            addPlaceAndRang: function () {
                var _self = this;
                /*
                                var judge = false;
                */
                if (_self.placeList.length != 0) {
                    /* for (var m = 0; m < _self.riskhazardcontrolrangeList.length; m++) {
                         if (_self.riskhazardcontrolrangeList[m].controlRangeEndDay == null
                             || _self.riskhazardcontrolrangeList[m].controlRangeStartDay == null
                             || _self.riskhazardcontrolrangeList[m].controlRangeName == null) {
                             judge = true;
                             break;
                         }
                     }
                     if (judge) {
                         _self.showToast("warning", "请选择管控范围");
                         return;
                     }*/
                    layer.load();
                    $.ajax({
                        url: projectName + "/Templatehazard/addRiskToPlaceList/" + _self.temHazardID, //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: JSON.stringify(_self.placeList),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        contentType: "application/json",
                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
//                            _self.showToast("success", "保存成功");
                            $.ajax({
                                url: projectName + "/Templatehazard/getTemplatehazardAndPlace/" + _self.temHazardID, //发送请求的地址。
                                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                dataType: "json",//预期服务器返回的数据类型。
                                async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                success: function (mdata) {
                                    //请求成功后的回调函数
                                    var rangList = mdata.mPaleAndRange;
                                    for (var i = 0; i < rangList.length; i++) {
                                        for (var j = 0; j < _self.placeList.length; j++) {
                                            if (rangList[i].placeName == _self.placeList[j].fPlace_Name) {
                                                var min = j * 5;
                                                _self.riskhazardcontrolrangeList[min].hazardID = rangList[i].hazardID;
                                                _self.riskhazardcontrolrangeList[min].hazardUUID = rangList[i].hazardUUID;
                                                _self.riskhazardcontrolrangeList[min].riskSiteFullNumber = rangList[i].riskSiteFullNumber;
                                                _self.riskhazardcontrolrangeList[min].riskSiteID = rangList[i].riskSiteID;

                                                _self.riskhazardcontrolrangeList[min + 1].hazardID = rangList[i].hazardID;
                                                _self.riskhazardcontrolrangeList[min + 1].hazardUUID = rangList[i].hazardUUID;
                                                _self.riskhazardcontrolrangeList[min + 1].riskSiteFullNumber = rangList[i].riskSiteFullNumber;
                                                _self.riskhazardcontrolrangeList[min + 1].riskSiteID = rangList[i].riskSiteID;

                                                _self.riskhazardcontrolrangeList[min + 2].hazardID = rangList[i].hazardID;
                                                _self.riskhazardcontrolrangeList[min + 2].hazardUUID = rangList[i].hazardUUID;
                                                _self.riskhazardcontrolrangeList[min + 2].riskSiteFullNumber = rangList[i].riskSiteFullNumber;
                                                _self.riskhazardcontrolrangeList[min + 2].riskSiteID = rangList[i].riskSiteID;

                                                _self.riskhazardcontrolrangeList[min + 3].hazardID = rangList[i].hazardID;
                                                _self.riskhazardcontrolrangeList[min + 3].hazardUUID = rangList[i].hazardUUID;
                                                _self.riskhazardcontrolrangeList[min + 3].riskSiteFullNumber = rangList[i].riskSiteFullNumber;
                                                _self.riskhazardcontrolrangeList[min + 3].riskSiteID = rangList[i].riskSiteID;

                                                _self.riskhazardcontrolrangeList[min + 4].hazardID = rangList[i].hazardID;
                                                _self.riskhazardcontrolrangeList[min + 4].hazardUUID = rangList[i].hazardUUID;
                                                _self.riskhazardcontrolrangeList[min + 4].riskSiteFullNumber = rangList[i].riskSiteFullNumber;
                                                _self.riskhazardcontrolrangeList[min + 4].riskSiteID = rangList[i].riskSiteID;
                                                continue;
                                            }

                                        }
                                    }
                                        $.ajax({
                                            url: projectName + "/Templatehazard/addRiskhazardcontrolrange", //发送请求的地址。
                                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                            data: JSON.stringify(_self.riskhazardcontrolrangeList),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                            dataType: "json",//预期服务器返回的数据类型。
                                            contentType: "application/json",
                                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                            success: function (data) {
                                                //请求成功后的回调函数
                                                _self.showToast("success", "保存成功");
                                                _self.getAssessmentHazard();
                                                /*$.get(projectName + "/RiskAssessment/getRiskhazard/" + hazardID, function (data) {
                                                    _self.updateRiskHazard = data;
                                                _self.getTemplatehazardAndPlace();*/
                                            },
                                        });
                                },
                            });

                        },
                    });
                }else{
                    _self.showToast("warning","请先指定地点");
                    return;

                }

               this.getCheckedList();
            },
            getAssessmentHazard: function () {
                var _self = this;
                $.ajax({
                    url: projectName + "/Templatehazard/getTemplatehazardAndPlace/" + _self.temHazardID, //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        var hazardList = data.mPaleAndRange;
                        if (hazardList.length != 0) {
                            for (var i = 0; i < hazardList.length; i++) {
                                for (var j = 0; j < _self.placeList.length; j++) {
                                    if (hazardList[i].placeName == _self.placeList[j].fPlace_Name) {
                                        var hazardID = hazardList[i].hazardID;
                                        $.ajax({
                                            url: projectName + "/RiskAssessment/getRiskhazard/" + hazardID, //发送请求的地址。
                                            type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                            data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                            dataType: "json",//预期服务器返回的数据类型。
                                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                            success: function (mdata) {
                                                //请求成功后的回调函数
                                                _self.assmentHazard = mdata;
                                                _self.assmentHazard.Sseverity = _self.detailedList.sseverity;
                                                _self.assmentHazard.Lpossibility = _self.detailedList.possibility;
                                                _self.assmentHazard.Eexpose = _self.detailedList.expose;
                                                _self.assmentHazard.clossConsequence = _self.detailedList.lossConsequence;
                                                $.ajax({
                                                    type: "PUT",
                                                    url: projectName + "/RiskAssessment/assessmentHazardLevel",
                                                    dataType: "json",
                                                    contentType: "application/json",
                                                    data: JSON.stringify(_self.assmentHazard),
                                                    async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                                    success: function (data) {
                                                        //console.log(data);
//                                                        _self.riskdegreeitem = data;
//                                                        _self.showToast("success", "评估成功");
                                                        _self.getTemplatehazardAndPlace();
                                                        layer.closeAll('loading');

                                                    },
                                                });
                                            },
                                        });
                                    }

                                }
                            }
                        }
                        _self.judgeShowList=[];
                        _self.riskhazardcontrolrangeList=[];
                        _self.placeList = [];
                        _self.placeClick=[];
                        layer.closeAll('loading');

                    },

                });
            },
            comfirmAddPlace: function () {
                var _self = this;
                var info = "";
                for (var i = 0; i < _self.placeClick.length; i++) {
                    for (var j = 0; j < _self.detailedList.mPaleAndRange.length; j++) {
                        if (_self.placeClick[i] == _self.detailedList.mPaleAndRange[j].placeName) {
                            info += _self.placeClick[i] + ","
                        }
                    }

                }
                if (info != "") {
                    _self.showToast("warning", "已指定地点中存在" + info + "请取消该地点的选择!");
                    return;
                }
                _self.placeList = [];
                if (_self.placeClick.length != 0) {
                    for (var i = 0; i < _self.placeClick.length; i++) {
                        var place = _self.placeClick[i];
                        var placeID="";
                        for(var n=0;n<_self.placeListByXinAn.length;n++){
                            if(place==_self.placeListByXinAn[n].fPlace_Name){
                                placeID=_self.placeListByXinAn[n].fPlace_GUID;
                                break;
                            }
                        }

                        $.ajax({
                            url: projectName + "/Templatehazard/newPlace", //发送请求的地址。
                            type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                //请求成功后的回调函数
                                data.fPlace_Name = place;
                                data.fPlace_GUID = placeID;
                                _self.placeList.push(data);
                                for (var j = 0; j < 5; j++) {
                                    $.ajax({
                                        url: projectName + "/Templatehazard/getNewRiskhazardcontrolrange", //发送请求的地址。
                                        type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                        data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                        dataType: "json",//预期服务器返回的数据类型。
                                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                        success: function (data) {
                                            //请求成功后的回调函数
                                            if (j == 0) {
                                                data.controlRangeName = "矿级";
                                            } else if (j == 1) {
                                                data.controlRangeName = "专业级";

                                            } else if (j == 2) {
                                                data.controlRangeName = "职能部室级";

                                            } else if (j == 3) {
                                                data.controlRangeName = "区队级";

                                            } else if (j == 4) {
                                                data.controlRangeName = "班组个人级";
                                            }
                                            _self.riskhazardcontrolrangeList.push(data);

                                        },
                                    });
                                }
                            },
                        });
                    }
                }
                $("#modal-addPlace").modal("hide");
                _self.getCheckedList();
            },
            /*comfirmAddPlace: function () {
                var _self = this;
                var info = "";
                for (var i = 0; i < _self.placeClick.length; i++) {
                    for (var j = 0; j < _self.detailedList.mPaleAndRange.length; j++) {
                        if (_self.placeClick[i].title == _self.detailedList.mPaleAndRange[j].placeName) {
                            info += _self.placeClick[i].title + ","
                        }
                    }

                }
                if (info != "") {
                    _self.showToast("warning", "已指定地点中存在" + info + "请取消该地点的选择!");
                    return;
                }
                _self.placeList = [];
                if (_self.placeClick.length != 0) {
                    for (var i = 0; i < _self.placeClick.length; i++) {
                        var place = _self.placeClick[i];
                        $.ajax({
                            url: projectName + "/Templatehazard/newPlace", //发送请求的地址。
                            type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                //请求成功后的回调函数
                                data.fPlace_Name = place.title;
                                data.fPlace_GUID = place.value;
                                _self.placeList.push(data);
                                for (var j = 0; j < 5; j++) {
                                    $.ajax({
                                        url: projectName + "/Templatehazard/getNewRiskhazardcontrolrange", //发送请求的地址。
                                        type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                        data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                        dataType: "json",//预期服务器返回的数据类型。
                                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                        success: function (data) {
                                            //请求成功后的回调函数
                                            if (j == 0) {
                                                data.controlRangeName = "矿级";
                                            } else if (j == 1) {
                                                data.controlRangeName = "专业级";

                                            } else if (j == 2) {
                                                data.controlRangeName = "区队级";

                                            } else if (j == 3) {
                                                data.controlRangeName = "班组级";

                                            } else if (j == 4) {
                                                data.controlRangeName = "个人级";
                                            }
                                            _self.riskhazardcontrolrangeList.push(data);

                                        },
                                    });
                                }
                            },
                        });
                    }
                }
                $("#modal-addPlace").modal("hide");
            },*/
            checkPlace: function (arr) {
                var _self = this;
                if (arr.length != 0 && arr[0].checked == true) {
                    _self.placeClick = arr;
                    var info = "";
                    for (var i = 0; i < _self.placeClick.length; i++) {
                        for (var j = 0; j < _self.detailedList.mPaleAndRange.length; j++) {
                            if (_self.placeClick[i].title == _self.detailedList.mPaleAndRange[j].placeName) {
                                info += _self.placeClick[i].title + ","
                            }
                        }

                    }
                    if (info != "") {
                        _self.showToast("warning", "已指定地点中存在" + info + "请取消该地点的选择!");
                        return;
                    }
                }
            },
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
                        /*for(var i=0;i<data.length;i++){

                            data[i].expand=true;
                            delete data[i].checked;
                            getchildrenList(data[i]);
                            function getchildrenList(arr){
                                if(arr.children!=null){
                                    if(arr.children.length!=0){
                                        for(var j=0;j<arr.children.length;j++){
                                            delete data[i].checked;
                                            arr.children[j].expand=true;
                                        }
                                    }
                                }
                            }
                        }*/
                        _self.placeData = data;
                    },
                });

            },
            //获取辅助资料
            getEnterprise_data_dictionaryListForOrg: function () {
                var _self = this;
                $.ajax({
                    url: projectName + "/PlatForm/getEnterprise_data_dictionaryListForOrg",
                    type: "POST",
                    data: {
                        "orgID": null,
                        "data_TypeOrName": null,
                    },
                    dataType: "json",
                    async: "false",
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.riskControlTierList = data.管控层级;
                        _self.riskFrequencyList = data.管控频次;


                    },
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
            getTemplatehazardAndPlace: function () {
                var _self = this;
                _self.temHazardID = $("#temHazardID").val();
                if (_self.temHazardID != "") {
                    //url:发送请求地址。
                    //data:待发送 Key/value 参数。
                    //callback:发送成功时回调函数。
                    //type:返回内容格式，xml, html, script, json, text, _default。
                    $.post(projectName + "/Templatehazard/getTemplatehazardAndPlace/" + _self.temHazardID, function (data) {
                        _self.detailedList = data;
                        /*for(var i=0;i<_self.detailedList;i++){
                            var detailed={};
                            if()

                        }*/

                    });

                } else {
                    _self.detailedList = "";
                }


            },

            getCheckedList:function(){
                       //从待指定地点地点下拉框中去除这些地点
                        var _self = this;
                        var checkedList = _self.placeListByXinAn;
                        var orperList = checkedList;
                        var place = _self.detailedList.mPaleAndRange;
                        place.forEach(function(val,index){
                            if(checkedList != null && checkedList.length>0){
                                for(var i=checkedList.length-1;i>=0;i--){
                                    if(checkedList[i].fPlace_Name == val.placeName){
                                        orperList.splice(i,1);
                                    }
                                }
                            }

                        });
                        _self.placeListByXinAn = orperList;
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
            /*"kmanageDuty": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.kmanageDuty.clearSingleSelect();

                    }
                },
                deep: true
            },*/
            "kmanageUnit": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.kmanageUnit.clearSingleSelect();

                    }
                },
                deep: true
            },
            "krangePinci": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.krangePinci.clearSingleSelect();

                    }
                },
                deep: true
            },
            /*"zmanageDuty": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.zmanageDuty.clearSingleSelect();

                    }
                },
                deep: true
            },*/
            "zmanageUnit": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.zmanageUnit.clearSingleSelect();

                    }
                },
                deep: true
            },
            "zrangePinci": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.zrangePinci.clearSingleSelect();

                    }
                },
                deep: true
            },
            /*"qmanageDuty": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.qmanageDuty.clearSingleSelect();

                    }
                },
                deep: true
            },*/
            "qmanageUnit": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.qmanageUnit.clearSingleSelect();

                    }
                },
                deep: true
            },
            "qrangePinci": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.qrangePinci.clearSingleSelect();

                    }
                },
                deep: true
            },
            /*"bmanageDuty": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.bmanageDuty.clearSingleSelect();

                    }
                },
                deep: true
            },*/
            "bmanageUnit": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.bmanageUnit.clearSingleSelect();

                    }
                },
                deep: true
            },
            "brangePinci": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.brangePinci.clearSingleSelect();

                    }
                },
                deep: true
            },
            /*"gmanageDuty": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.gmanageDuty.clearSingleSelect();

                    }
                },
                deep: true
            },*/
            "gmanageUnit": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.gmanageUnit.clearSingleSelect();
                    }
                },
                deep: true
            },
            "grangePinci": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.grangePinci.clearSingleSelect();

                    }
                },
                deep: true
            },
            /*"ukmanageDuty": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.ukmanageDuty.clearSingleSelect();

                    }
                },
                deep: true
            },*/
            "ukmanageUnit": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.ukmanageUnit.clearSingleSelect();

                    }
                },
                deep: true
            },
            "ukrangePinci": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.ukrangePinci.clearSingleSelect();

                    }
                },
                deep: true
            },
            /*"uzmanageDuty": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.uzmanageDuty.clearSingleSelect();

                    }
                },
                deep: true
            },*/
            "uzmanageUnit": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.uzmanageUnit.clearSingleSelect();

                    }
                },
                deep: true
            },
            "uzrangePinci": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.uzrangePinci.clearSingleSelect();

                    }
                },
                deep: true
            },
            /*"uqmanageDuty": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.uqmanageDuty.clearSingleSelect();

                    }
                },
                deep: true
            },*/
            "uqmanageUnit": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.uqmanageUnit.clearSingleSelect();

                    }
                },
                deep: true
            },
            "uqrangePinci": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.uqrangePinci.clearSingleSelect();

                    }
                },
                deep: true
            },
            /*"ubmanageDuty": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.ubmanageDuty.clearSingleSelect();

                    }
                },
                deep: true
            },*/
            "ubmanageUnit": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.ubmanageUnit.clearSingleSelect();

                    }
                },
                deep: true
            },
            "ubrangePinci": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.ubrangePinci.clearSingleSelect();

                    }
                },
                deep: true
            },
            /*"ugmanageDuty": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.ugmanageDuty.clearSingleSelect();

                    }
                },
                deep: true
            },*/
            "ugmanageUnit": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.ugmanageUnit.clearSingleSelect();

                    }
                },
                deep: true
            },
            "ugrangePinci": {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == "" || val == null) {
                        this.$refs.ugrangePinci.clearSingleSelect();

                    }
                },
                deep: true
            },
        },
    });


</script>
<%--<script>
    $(function () {
        CompTree.init();
    });
</script>
<script>
    $(function () {
        UiTables.init();

    });
</script>--%>
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
    /* $(function () {
         $('#modal-rang').on('hide.bs.modal', function () {
             alert('嘿，我听说您喜欢模态框...');}
         )
         $('#modal-rang').on('show.bs.modal', function () {
             // 执行一些动作...
             alert("111111");
         });
     });*/

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
    laydate.render({
        elem: "#startTime1"
        , trigger: 'click'
        , type: 'date'
        , theme: '#3188f2'
    });
    laydate.render({
        elem: "#endTime1"
        , trigger: 'click'
        , type: 'date'
        , theme: '#3188f2'
    });

</script>


</body>

</html>