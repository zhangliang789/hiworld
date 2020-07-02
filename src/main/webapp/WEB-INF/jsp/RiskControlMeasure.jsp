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
    <title>管控措施制定</title>
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
    <%--<link href="../css/iview.css" rel="stylesheet">--%>
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

        /* td a {
             color: #495060;
         }*/

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
            margin-bottom: 20px;
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

        .table {
            margin-bottom: 0;
        }

        label input[type="radio"] {
            vertical-align: text-top;
        }

        textarea.form-control {
            height: 70px;
            resize: none;

        }

        td textarea {
            background-color: #fff !important;
            border: none !important;
        }

        .form-group {
            margin-bottom: 5px;
        }

        .modal-footer {

            bottom: 0;

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
        a {
            cursor:pointer;
        }
        .ivu-select-dropdown {

            position: absolute !important;
        }
        *{margin:0;padding:0;}
        #pop{background:#fff;width:260px;border:1px solid #e0e0e0;font-size:12px;position: fixed;right:10px;bottom:10px;}
        #popHead{line-height:32px;background:#f6f0f3;border-bottom:1px solid #e0e0e0;position:relative;font-size:12px;padding:0 0 0 10px;}
        #popHead h2{font-size:14px;color:#666;line-height:32px;height:32px;}
        #popHead #popClose{position:absolute;right:10px;top:1px;}
        #popHead a#popClose:hover{color:#f00;cursor:pointer;}
        #popContent{padding:5px 10px;}
        #popTitle a{line-height:24px;font-size:14px;font-family:'微软雅黑';color:#333;font-weight:bold;text-decoration:none;}
        #popTitle a:hover{color:#f60;}
        #popIntro{text-indent:24px;line-height:160%;margin:5px 0;color:#666;}
        #popMore{text-align:right;border-top:1px dotted #ccc;line-height:24px;margin:8px 0 0 0;}
        #popMore a{color:#f60;}
        #popMore a:hover{color:#f00;}
    </style>
</head>

<body>
<div id="app">

    <% Emp user = (Emp) request.getSession().getAttribute("emp");
        String username = user.getFEmp_Name();
        Integer userid = user.getfEmp_ID_Auto();
    %>
    <div id="page-content" style="min-height: 794px;" onkeydown="search()">
        <!-- Table Styles Header -->
        <div class="content-header">
            <div class="row">
                <div class="col-sm-12">
                    <div class="header-section" style="overflow: hidden;">
                        <h1 style="float: left;padding:0">管控措施制定</h1>
                        <div style="float: right;padding:0">
                            <div class="searchCon"><i class="hi hi-search"></i><input name="search" id="keywords"
                                                                                      placeholder="输入风险点名称 回车查询"
                                                                                      class="searchWrap"
                                                                                      type="text"></div>
                            <button type="button" onclick="querysearch()" class="btn btn-effect-ripple btn-primary">查询
                            </button>
                            <button type="button" class="btn btn-effect-ripple btn-primary" data-toggle="modal"
                                    data-target="#modal-add">设置筛选条件
                            </button>
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
                            <td style="position: relative" class="text-center tcrk" rowspan="2">
                            <span class="dj">序号
											<i id="itcys" class="fa fa-chevron-down fa-fw"></i></span>
                                <ul class="tcys" id="tcys">
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
                            <td class="text-center" rowspan="2" v-show="showOrNot('Name')">
                                {{'Name'|titleFilter('风险点')}}
                            </td>
                            <td class="text-center" rowspan="2" v-show="showOrNot('RiskDescription')">
                                {{'RiskDescription'|titleFilter('风险点描述')}}
                            </td>
                            <td class="text-center" rowspan="2" v-show="showOrNot('RiskDamageType')">
                                {{'RiskDamageType'|titleFilter('灾害类型')}}
                            </td>
                            <td  class="text-center" rowspan="2" v-show="showOrNot('RiskAccident') " v-if="false">事故类型</td>
                            <td class="text-center" rowspan="2" v-show="showOrNot('riskLevel')">
                                {{'riskLevel'|titleFilter('风险点等级')}}
                            </td>
                            <td class="text-center" rowspan="2" v-show="showOrNot('RiskColor')">
                                {{'RiskColor'|titleFilter('危险程度')}}
                            </td>
                            <td class="text-center" rowspan="2">措施数量</td>
                            <%--<td class="text-center" rowspan="2" v-show="showOrNot('RiskControlTier')">--%>
                                <%--{{'RiskControlTier'|titleFilter('管控层次')}}--%>
                            <%--</td>--%>
                            <%--<td class="text-center" rowspan="2" v-show="showOrNot('managerUnitName')">--%>
                                <%--{{'managerUnitName'|titleFilter('责任部门')}}--%>
                            <%--</td>--%>
                            <%--<td class="text-center" rowspan="2" v-show="showOrNot('managerName')">--%>
                                <%--{{'managerName'|titleFilter('责任人')}}--%>
                            <%--</td>--%>
                             <td class="text-center" rowspan="2">操作</td>
                            <%--  <tr class="biaot">
                                  <td class="text-center">工程技术</td>
                                  <td class="text-center">管理措施</td>
                                  <td class="text-center">培训教育</td>
                                  <td class="text-center">个体防护</td>
                                  <td class="text-center">应急处置</td>
                        </tr>--%>
                            <tbody v-for="(risk,riskIndex) in detailedList">
                            <tr>
                                <td class="text-center" v-text="pagesize*(nowpage-1)+riskIndex+1"></td>
                                <td v-show="showOrNot('Name')"><a
                                        v-text="risk.name+'('+risk.mchildRiskSite.length+')'"
                                        @click="forwardMRiskSite(risk)"></a></td>
                                <td v-text="risk.riskDescription" v-show="showOrNot('riskDescription')"></td>
                                <td v-show="showOrNot('riskDamageType')">
                                    <span v-text="dList[riskIndex]"> </span>
                                    <span style="color: red" v-text="dangerList[riskIndex]"></span>
                                </td>
                                <td  v-text="risk.riskAccident" v-show="showOrNot('RiskAccident')" v-if="false"></td>
                                <td v-text="risk.riskLevel" v-show="showOrNot('riskLevel')">
                                </td>
                                <td class="text-center" v-show="showOrNot('RiskColor')" v-if="risk.riskColor!=null"><span
                                         v-bind:style="'background-color:'+risk.riskColor"
                                        class="btys"></span></td>
                                <td class="text-center" v-show="showOrNot('RiskColor')" v-if="risk.riskColor==null"></td>

                                <td :id="'measure'+''+riskIndex"><%--{{risk.mriskControlMeasure.length}}--%></td>
                                <%-- <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>--%>
                                <%--<td v-text="risk.riskControlTier" v-show="showOrNot('riskControlTier')"></td>--%>
                                <%--<td v-text="risk.managerUnitName" v-show="showOrNot('managerUnitName')"></td>--%>
                                <%--<td v-text="risk.managerName" v-show="showOrNot('managerName')"></td>--%>
                                 <td style="white-space: nowrap">
                                     <a @click="updateRiskControlMeasure(risk,riskIndex)"  data-toggle="modal"
                                        data-target="#modal-regular1" style="color: #337ab7">查看措施</a>
                                 </td>
                            </tr>
                            </tbody>
                    </table>
                </div>
            </div>
        </div>
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
    <div id="modal-add" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="min-height: 100%;">
                <div class="modal-body">
                    <div class="block-title">
                        <h4>筛选</h4></div>
                    <form method="post" class="form-horizontal" onsubmit="return false;" >
                        <div class="form-group">
                            <label class="col-sm-3 control-label">{{'Name'|titleFilter('风险点')}}</label>
                            <div class="col-sm-8">
                                <input class="form-control input-sm" placeholder="" type="text" v-model="riskSite.name" placeholder="请输入风险点">
                            </div>
                        </div>
                        <%--<div class="form-group">
                            <label class="col-sm-3 control-label">管控层级</label>
                            <div class="col-sm-8">
                                &lt;%&ndash;<input class="form-control input-sm" placeholder="" type="text"&ndash;%&gt;
                                &lt;%&ndash;v-model="riskSite.riskControlTier">&ndash;%&gt;
                                <i-select v-model="riskSite.riskControlTier" filterable
                                          clearable placeholder="请选择管控层级"
                                          type="text">
                                    <i-option value="">请选择管控层级</i-option>
                                    <i-option v-for="(myguankong,index) in guankongList" :label="myguankong.fData_Name" :value="myguankong.fData_Name">
                                        <span v-text="myguankong.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="myguankong.fData_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>--%>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险灾害类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskDamageType">--%>
                                <i-select v-model="riskSite.riskDamageType" filterable
                                          clearable placeholder="请选择风险灾害类型"
                                          type="text">
                                    <i-option value="">请选择风险灾害类型</i-option>
                                    <i-option v-for="(mydamage,index) in damageList" :label="mydamage.fData_Name" :value="mydamage.fData_Name">
                                        <span v-text="mydamage.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="mydamage.fData_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险点等级</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskLevel">--%>
                                <i-select  type="text"
                                           v-model="riskSite.riskLevelSettingID" filterable
                                           clearable placeholder="请选择风险点等级">
                                    <i-option value="">请选择风险点等级</i-option>
                                    <i-option v-for="(risklever,index) in riskleversettingList" :value="risklever.riskLevelSettingID" :label="risklever.riskLevel">
                                        <span v-text="risklever.riskLevel"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="risklever.riskLevel_Shorthand"></span>
                                    </i-option>


                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险专业类型</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskMajorType">--%>
                                <i-select v-model="riskSite.riskMajorType" filterable
                                          clearable placeholder="请选择风险专业类型"
                                          type="text">
                                    <i-option value="">请选择风险专业类型</i-option>
                                    <i-option v-for="(mycategory,index) in categoryList" :label="mycategory.fData_Name" :value="mycategory.fData_Name">
                                        <span v-text="mycategory.fData_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="mycategory.fData_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>

                            </div>
                        </div>


                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-effect-ripple btn-primary" @click="judgeQuery"
                        data-dismiss="modal">确认
                </button>
                <button type="button" class="btn btn-effect-ripple btn-danger" @click="clearData">关闭</button>
            </div>
        </div>
    </div>
    <%-- <div id="modal-regular" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-body" style="height: 100%;overflow-y: auto">
                     <div class="block-title">
                         <h4 style="width: 100%;">
                             危险源:{{risk1.name
                             }}<span></span>
                             <div style="float: right;font-size:12px">风险等级：<span style="font-size:16px;color: #FF0000; ">{{risk1.riskLevel}}</span>
                             </div>
                         </h4>
                     </div>
                     <form method="post" class="form-horizontal" onsubmit="return false;">

                         <div class="form-group">
                             <label class="col-md-12 text-left" for="example-textarea-input">可能导致的事故</label>
                             <div class="col-md-12">
                                 <textarea id="example-textarea-input" v-text="risk1.clossConsequence"
                                           name="example-textarea-input" rows="7"
                                           class="form-control" readonly="readonly" placeholder="内容.."></textarea></div>
                         </div>
                         <div class="block full" style="    padding-top: 25px;">
                             <!-- Block Tabs Title -->
                             <div class="block-title">

                                 <ul class="nav nav-tabs" data-toggle="tabs">
                                     <li class="active">
                                         <a href="#zjcs">增加措施</a>
                                     </li>
                                     <li>
                                         <a href="#scbdwj">上传本地文件</a>
                                     </li>
                                     &lt;%&ndash; <li>
                                          <a href="#glzxfa">关联专项方案</a>
                                      </li>&ndash;%&gt;

                                 </ul>
                             </div>
                             <!-- END Block Tabs Title -->

                             <!-- Tabs Content -->
                             <div class="tab-content">
                                 <div class="tab-pane active" id="zjcs">
                                     <form method="post" class="form-horizontal" onsubmit="return false;">
                                         <div class="form-group">

                                             <div class="col-sm-12 text-right">
                                                 <button type="submit" class="btn btn-effect-ripple btn-primary"
                                                         @click="getNewRiskControlMeasure">清空
                                                 </button>
                                                 <button type="submit" class="btn btn-effect-ripple btn-primary"
                                                         @click="tempAddMeasure">添加
                                                 </button>
                                             </div>

                                         </div>
                                         <div class="form-group">
                                             <label class="col-md-12 text-left" for="example-textarea-input">措施名字</label>
                                             <div class="col-md-12">
                                                 <input type="text" class="form-control" placeholder="名字.."
                                                        id="measurename">
                                             </div>
                                         </div>
                                         <div class="form-group">
                                             <label class="col-md-12 text-left" for="example-textarea-input">措施类别</label>
                                             <div class="col-md-12">
                                                 <select name="" class="form-control" id="measuretype">
                                                     <option value="">请选择措施类别...</option>
                                                     <option value="工程技术">工程技术</option>
                                                     <option value="管理措施">管理措施</option>
                                                     <option value="培训教育">培训教育</option>
                                                     <option value="个体防护">个体防护</option>
                                                     <option value="应急处置">应急处置</option>
                                                 </select>
                                             </div>
                                         </div>
                                         <div class="form-group">
                                             <label class="col-md-12 text-left" for="example-textarea-input">措施内容</label>
                                             <div class="col-md-12">
                                                 <textarea id="measurecontent" name="example-textarea-input"
                                                           rows="7" class="form-control" placeholder="内容.."></textarea>
                                             </div>
                                         </div>
                                         <div class="form-group">
                                             <div class="col-sm-6" style="padding: 0;"><label class="col-md-12 text-left"
                                                                                              for="example-textarea-input"
                                             >责任部门</label>
                                                 <div class="col-md-12">
                                                     &lt;%&ndash;  <select name="" class="form-control">
                                                           <option value=""></option>
                                                       </select>&ndash;%&gt;
                                                     <span class="form-control" readonly="readonly"
                                                           v-text="risk1.manageUnit"></span>
                                                 </div>
                                             </div>
                                             <div class="col-sm-6" style="padding: 0;"><label class="col-md-12 text-left"
                                                                                              for="example-textarea-input"
                                             >责任人</label>
                                                 <div class="col-md-12">
                                                     &lt;%&ndash;  <select name="" class="form-control">
                                                           <option value=""></option>
                                                       </select>&ndash;%&gt;
                                                     <span type="text" class="form-control" readonly="readonly"
                                                           v-text=""></span>
                                                 </div>
                                             </div>
                                         </div>
                                         <div class="form-group">

                                             <div class="col-sm-12 text-right">
                                                 <label style="float: left;margin-top: 7px;"
                                                        for="example-textarea-input">管控措施</label>

                                             </div>

                                         </div>
                                         <div>
                                             <table id=" general-table"
                                                    class="table table-striped table-bordered table-vcenter">
                                                 <thead>
                                                 <tr>
                                                     <th class="text-center" style="width: 45px">
                                                         序号
                                                         &lt;%&ndash; <label class="csscheckbox csscheckbox-primary">
                                                              <input type="checkbox">
                                                              <span></span>
                                                          </label>&ndash;%&gt;

                                                     </th>
                                                     <th class="text-center" style="width: 50px;">措施名字</th>
                                                     <th class="text-center" style="width: 50px;">措施类别</th>
                                                     <th class="text-center" style="width: 60px">措施内容</th>
                                                     <th class="text-center" style="width: 25px">操作</th>

                                                 </tr>
                                                 </thead>
                                                 <tbody>
                                                 <tr v-for="(rcm,index) in riskControlMeasure">
                                                     <td class="text-center" v-text="index+1">
                                                         &lt;%&ndash;  <label class="csscheckbox csscheckbox-primary">
                                                               <input type="checkbox">
                                                               <span></span>
                                                           </label>&ndash;%&gt;
                                                     </td>
                                                     <td class="text-center" v-text="rcm.measureName"></td>
                                                     <td class="text-center" v-text="rcm.measureType"></td>
                                                     <td class="text-center">
                                                         <textarea v-text="rcm.measureContent"
                                                                   name="example-textarea-input"
                                                                   class="form-control"   readonly="readonly"></textarea>
                                                     </td>
                                                     <td class="text-center">
                                                        <p> <a @click="controlMeasureUpdate(rcm,index)">
                                                            修改
                                                        </a></p>
                                                         <p> </p>
                                                         <p><a href="javascript:void(0)" data-toggle="tooltip"

                                                               @click="deleperson(index)"
                                                               title="删除">
                                                             删除
                                                         </a></p>

                                                     </td>
                                                 </tr>
                                                 </tbody>
                                             </table>
                                         </div>

                                     </form>
                                 </div>
                                 <div class="tab-pane" id="scbdwj">
                                     <div class="col-sm-12">
                                         <form method="post" class="form-horizontal" id="uploadForm"
                                               onsubmit="return false;">
                                             <div class="col-sm-hh2">
                                                 <label class="control-label bjc" for="example-textarea-input">文件</label>
                                                 <div class="col-sm-hh3">
                                                     <div class="input-group" style="width: 100%;">
                                                         <input type="file"
                                                                name="example-input2-group2" id="upFile"
                                                                class="form-control" placeholder="">
                                                         <input type="text" name="fguid"
                                                                value="001"
                                                                hidden="hidden">
                                                         <input type="text" name="usefor"
                                                                value="ych"
                                                                hidden="hidden">
                                                         <input type="text" name="returnUrl" value="test"
                                                                hidden="hidden">
                                                         <span class="input-group-btn"></span>
                                                     </div>
                                                 </div>
                                             </div>
                                         </form>
                                         <label class="control-label bjc" for="example-textarea-input">已上传的文件</label>
                                         <div style="height:400px;overflow-y: auto">
                                             <table id="general-table"
                                                    class="table table-striped table-bordered table-vcenter">
                                                 <thead>
                                                 <tr>
                                                     <th class="text-center" style="width: 45px">
                                                         序号
                                                         &lt;%&ndash; <label class="csscheckbox csscheckbox-primary">
                                                              <input type="checkbox">
                                                              <span></span>
                                                          </label>&ndash;%&gt;
                                                     </th>
                                                     <th class="text-center" style="width: 80px">附件名</th>
                                                     <th class="text-center" style="width: 50px">附件URL</th>
                                                     <th class="text-center" style="width: 45px">操作</th>
                                                 </tr>
                                                 </thead>
                                                 <tbody>
                                                 <tr v-for="(trcm,index) in tempriskControlMeasure1">
                                                     <td class="text-center" v-text="index+1">
                                                         &lt;%&ndash;  <label class="csscheckbox csscheckbox-primary">
                                                               <input type="checkbox">
                                                               <span></span>
                                                           </label>&ndash;%&gt;
                                                     </td>
                                                     <td class="text-center" v-text="trcm.measureName"></td>
                                                     <td class="text-center"><a @click="downloadFile(trcm)" style="cursor:pointer;"
                                                                                v-text="trcm.measureURL"></a></td>
                                                     <td class="text-center">
                                                         <a href="javascript:void(0)" data-toggle="tooltip"
                                                            @click="deleperson1(index)"
                                                            title="删除">
                                                             删除
                                                         </a>

                                                     </td>
                                                 </tr>
                                                 </tbody>
                                             </table>
                                         </div>
                                     </div>
                                 </div>
                                 <div class="tab-pane" id="glzxfa">2</div>
                             </div>
                             <!-- END Tabs Content -->
                         </div>

                     </form>
                 </div>
                 <div class="modal-footer">
                     <button type="button" class="btn btn-effect-ripple btn-primary" @click="conmitAll">保存</button>
                     <button type="button" class="btn btn-effect-ripple btn-danger" &lt;%&ndash;data-dismiss="modal" &ndash;%&gt;
                             &lt;%&ndash;data-toggle="modal" data-target="#modal-delete"&ndash;%&gt; @click="confirmDelete">关闭
                     </button>
                 </div>

             </div>
         </div>
     </div>--%>
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
                        <%--<h4 style="width: 100%;">{{risk1.name}}
                            <span>{{risk1.riskObject}}</span> <span style="float: right;font-size:12px;color: #0000FF; ">（风钻）</span>
                        </h4>--%>
                        <h4 style="width: 100%;">
                            {{'Name'|titleFilter('风险点')}}:{{risk1.name

                            }}<span>({{templength}})</span>
                            <div style="float: right;font-size:12px">{{'riskLevel'|titleFilter('风险点等级')}}：<span
                                    style="font-size:16px;color: #FF0000; ">{{risk1.riskLevel}}</span>
                            </div>
                        </h4>
                    </div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">
<%--
                        <div class="form-group">
                            <label class="col-md-12 text-left" for="example-textarea-input">{{'riskDescription'|titleFilter('风险点描述')}}</label>
                            <div class="col-md-12">
                                <textarea id="example-textarea-input" v-text="risk1.riskDescription"
                                          name="example-textarea-input" rows="7"
                                          class="form-control" readonly="readonly"></textarea></div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6" style="padding: 0;"><label class="col-md-12 text-left"
                                                                             for="example-textarea-input"
                            >{{'managerUnitName'|titleFilter('责任部门')}}</label>
                                <div class="col-md-12">
                                    &lt;%&ndash;  <select name="" class="form-control">
                                          <option value=""></option>
                                      </select>&ndash;%&gt;
                                    <span type="text" class="form-control" v-text="risk1.managerUnitName"
                                          id="depart" readonly="readonly"> </span>
                                </div>
                            </div>
                            <div class="col-sm-6" style="padding: 0;"><label class="col-md-12 text-left"
                                                                             for="example-textarea-input">{{'managerName'|titleFilter('责任人')}}</label>
                                <div class="col-md-12">
                                    &lt;%&ndash;  <select name="" class="form-control">
                                          <option value=""></option>
                                      </select>&ndash;%&gt;
                                    <span type="text" class="form-control"
                                          v-text="risk1.managerName"
                                          id="departname" readonly="readonly"></span>
                                </div>
                            </div>
                        </div>--%>
                        <div class="block full" style="    padding-top: 25px;">
                            <!-- Block Tabs Title -->
                            <div class="block-title">

                                <ul class="nav nav-tabs" data-toggle="tabs">
                                    <li class="active">
                                        <a href="#zjcs1" style="font-weight: bold;">措施</a>
                                    </li>
                                    <li>
                                        <a href="#scbdwj1" style="font-weight: bold;">文件</a>
                                    </li>
                                    <%-- <li>
                                         <a href="#glzxfa1">关联专项方案</a>
                                     </li>--%>

                                </ul>
                            </div>
                            <!-- END Block Tabs Title -->

                            <!-- Tabs Content -->
                            <div class="tab-content">
                                <div class="tab-pane active" id="zjcs1">
                                    <form method="post" class="form-horizontal" onsubmit="return false;">
                                      <%--  <div class="form-group">

                                            <div class="col-sm-12 text-right">
                                                <button type="submit" class="btn btn-effect-ripple btn-primary"
                                                        @click="getNewRiskControlMeasure1">清空
                                                </button>
                                                <button type="submit" class="btn btn-effect-ripple btn-primary"
                                                        @click="tempAddMeasure1">添加
                                                </button>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-12 text-left" for="example-textarea-input">{{'MeasureName'|titleFilter1('措施名字')}}</label>
                                            <div class="col-md-12">
                                                <input type="text" class="form-control" placeholder="名字.."
                                                       id="measurename1">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-12 text-left" for="example-textarea-input">{{'MeasureType'|titleFilter1('措施类别')}}</label>
                                            <div class="col-md-12">
                                                <select name="" class="form-control" id="measuretype1">
                                                    <option value="">请选择措施类别...</option>
                                                    <option value="工程技术">工程技术</option>
                                                    <option value="管理措施">管理措施</option>
                                                    <option value="培训教育">培训教育</option>
                                                    <option value="个体防护">个体防护</option>
                                                    <option value="应急处置">应急处置</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-12 text-left" for="example-textarea-input">{{'MeasureContent'|titleFilter1('措施内容')}}</label>
                                            <div class="col-md-12">
                                                <textarea id="measurecontent1" name="example-textarea-input"
                                                          rows="7" class="form-control" placeholder="内容.."></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">

                                            <div class="col-sm-12 text-right">
                                                <label style="float: left;margin-top: 7px;"
                                                       for="example-textarea-input">管控措施</label>
                                            </div>
                                        </div>--%>
                                        <div>
                                            <table id="general-table"
                                                   class="table table-striped table-bordered table-vcenter">
                                                <thead>
                                                <tr>
                                                    <th class="text-center" style="width: 50px">
                                                        序号
                                                        <%-- <label class="csscheckbox csscheckbox-primary">
                                                             <input type="checkbox">
                                                             <span></span>
                                                         </label>--%>
                                                    </th>
                                                   <%-- <th class="text-center" style="width: 50px;">
                                                        {{'MeasureName'|titleFilter1('名字')}}
                                                    </th>--%>
                                                    <th class="text-center" >
                                                        {{'MeasureType'|titleFilter1('类别')}}
                                                    </th>
                                                    <th class="text-center" >
                                                        {{'MeasureContent'|titleFilter1('内容')}}
                                                    </th>
                                                    <th class="text-center" style="width:95px;">
                                                        {{'measureCreateTime'|titleFilter1('时间')}}
                                                    </th>
                                                   <%-- <th class="text-center" style="width: 45px">操作</th>--%>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr v-for="(rcm,index) in riskControlMeasure">
                                                    <td class="text-center" v-text="index+1">
                                                    </td>
                                                   <%-- <td class="text-center" v-text="rcm.measureName"></td>--%>
                                                    <td class="text-center" v-text="rcm.measureType"></td>
                                                    <td class="text-center">
                                                         <textarea v-text="rcm.measureContent"
                                                                   name="example-textarea-input"
                                                                   class="form-control" readonly="readonly"></textarea>
                                                    </td>
                                                    <td >
                                                        {{rcm.measureCreateTime}}
                                                    </td>
                                                    <%--<td class="text-center" style="width: 80px">
                                                        <p><a @click="controlMeasureUpdate(rcm,index)">
                                                            修改
                                                        </a></p>
                                                        <p><a href="javascript:void(0)" data-toggle="tooltip"

                                                              @click="deleperson(index)"
                                                              title="删除">
                                                            删除
                                                        </a></p>

                                                    </td>--%>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </form>
                                </div>
                                <div class="tab-pane" id="scbdwj1">
                                   <%-- <form method="post" class="form-horizontal" id="uploadForm1"
                                          onsubmit="return false;">
                                        <div class="col-sm-hh2">
                                            <label class="control-label bjc" for="example-textarea-input">文件</label>
                                            <div class="col-sm-hh3">
                                                <div class="input-group" style="width: 100%;">
                                                    <input type="file"
                                                           name="example-input2-group2" class="form-control"
                                                           id="upFile1" placeholder="">
                                                    <input type="text" name="fguid"
                                                           value="<%=userid%>"
                                                           hidden="hidden">
                                                    <input type="text" name="usefor"
                                                           value="<%=username%>"
                                                           hidden="hidden">
                                                    <input type="text" name="returnUrl" value="test" hidden="hidden">
                                                    <span class="input-group-btn"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </form>--%>
                                    <label class="control-label bjc" for="example-textarea-input">已上传的文件</label>
                                    <div>
                                        <table id="general-table"
                                               class="table table-striped table-bordered table-vcenter">
                                            <thead>
                                            <tr>
                                                <th class="text-center" style="width: 70px">
                                                    序号
                                                    <%-- <label class="csscheckbox csscheckbox-primary">
                                                         <input type="checkbox">
                                                         <span></span>
                                                     </label>--%>

                                                </th>
                                                <th class="text-center">附件名</th>
                                                <th class="text-center" style="width:140px;">上传时间</th>
                                              <%--  <th class="text-center" style="width: 50px">操作</th>--%>

                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr v-for="(trcm1,index) in tempriskControlMeasure1">
                                                <td class="text-center" v-text="index+1">
                                                    <%--  <label class="csscheckbox csscheckbox-primary">
                                                          <input type="checkbox">
                                                          <span></span>
                                                      </label>--%>
                                                </td>
                                                <td class="text-center"><a v-text="trcm1.measureName"
                                                                           @click="downloadFile(trcm1)"
                                                ></a></td>
                                                <td class="text-center">
                                                    {{trcm1.measureCreateTime}}
                                                </td>
                                               <%-- <td class="text-center">
                                                    <a href="javascript:void(0)" data-toggle="tooltip"
                                                       @click="deleperson1(index)"
                                                       title="删除">
                                                        删除
                                                    </a>
                                                </td>--%>
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
                    <%--<button type="button" class="btn btn-effect-ripple btn-primary" @click="conmitAll1">保存</button>--%>
                    <button type="button" class="btn btn-effect-ripple btn-danger" <%--data-dismiss="modal" --%>
                    <%--data-toggle="modal" data-target="#modal-delete"--%> @click="confirmDelete">关闭
                    </button>
                </div>
                <%--<form id="downloadForm1" hidden="hidden">
                    <table>
                        <tr>
                            <td>
                                checkid:
                            </td>
                            <td>
                                <input type="text" name="" id="checkid1">
                            </td>
                        </tr>
                    </table>
                    &lt;%&ndash; <input id="subButton" value="提交" type="button" @click="downloadFile">&ndash;%&gt;
                </form>
                <form id="downFile" action="<%=request.getContextPath()%>//RiskControlMeasureControl/downFile" method="post">
                    <input id="downloadUrl" name="downloadUrl" type="hidden"/>
                    <input id="realFileName" name="realFileName" type="hidden"/>
                </form>--%>
            </div>
        </div>
    </div>
    <div class="modal inmodal" id="modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="min-height: 100%; height: auto">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">关闭</h4>
                    <small></small>
                </div>
                <div class="modal-body">
                    <p> 尚未提交，确认要关闭吗？</p>
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
    <form id="getExcell" action="<%=request.getContextPath()%>/RiskAssessment/getExcell" method="post">
        <input id="ExcellID" name="ExcellID" type="hidden"/>
        <input id="ExcellName" name="ExcellName" type="hidden"/>
        <input id="riskName" name="riskName" type="hidden"/>
        <input id="riskControlTier" name="riskControlTier" type="hidden"/>
        <input id="riskDamageType" name="riskDamageType" type="hidden"/>
        <input id="riskMajorType" name="riskMajorType" type="hidden"/>
        <input id="riskLevel" name="riskLevel" type="hidden"/>
    </form>
    <div id="pop" style="display:none;" >
        <div id="popHead" >
            <a id="popClose" title="关闭">关闭</a>
            <h2>未制定管控措施的风险(<span style="color: red" v-text="riskHazardList.length"></span>)</h2>
        </div>
        <div id="popContent" style=" height: 200px; width: 300px;overflow:auto;">
            <dl>
                <dt id="popTitle"></dt>
                <dd id="popIntro"  v-for="(riskHazard,index) in riskHazardList" >
                    <a @click="showChild(riskHazard.hazardID)"><span>{{riskHazard.name}}</span></a><br >
                </dd>
            </dl>
        </div>
    </div>
    <a hidden  href="<%=request.getContextPath()%>/menu/RiskHazardControlMeasureInfo.action" target="_blank"><span id="redirectPage"></span></a>
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
<script src="../js/nowDate.js"></script>
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

    function querysearch() {
        var keywords = $("#keywords").val();
        vueApp.riskSite.name = keywords;
        vueApp.getPageCount();
    }

    var projectName = '<%=request.getContextPath() %>';
    var pageVar = "rcmlist";//页面唯一变量标识，每个页面不能重复
    var attrArray = null;
    /**
     * Created by txianwei on 2017/9/14
     */
    var vueApp = new Vue({
        el: "#app",
        data: {
            pagesize: 15,
            nowpage: 1,
            pagesize1: 10,
            nowpage1: 1,
            risk: null,
            risk1: "",
            riskSite: "",
            updateHazard: "",
            mRiskHazard: "",
            tempdeleteadd1: "",
            tempdeleteadd: [],
            riskControlMeasure: "",
            newriskControlMeasure1: "",
            newriskControlMeasure: "",
            riskControlMeasurelist: "",
            addriskControlMeasure: "",//新建管控措施空对象
            detailedList: null,
            tempindex: -1,
            tempurl: "",
            uploadRiskControlMeasure: "",
            tempfile: "",
            tempfile1: "",
            filePath: "",
            filePath1: "",
            fileName: "",
            fileName1: "",
            tempriskControlMeasure: new Array(),
            tempriskControlMeasure1: new Array(),
            tempriskControlMeasure2: new Array(),
            templength: "",
            tempfullnumber: "",
            tempupdateindex: "",
            tempdupdateid: "",
            attributes: "",
            propertys: new Array(),
            tempcrm: "",
            guankongList: "",
            damageList: "",
            categoryList: "",
            mydate: "",
            riskleversetting:"",
            riskleversettingList:"",
            riskHazardList:[],
            dangerList: [],
            dList: [],

        },
        created: function () {
            var _self = this;
            _self.getNewRiskSite();
            _self.getRiskAttributes();
            _self.getEnterprise_data_dictionaryListForOrg();
            _self.getNewRiskleversetting();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            showChild: function (hazardID) {
                var _self = this;
                $.post(projectName + "/RiskControlMeasureControl/gotoHazard/" + hazardID, function (data) {
                      window.open("<%=request.getContextPath()%>/menu/RiskHazardControlMeasureInfo.action");
                });
            }
            ,
            getNewRiskleversetting:function(){
                var _self=this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName+"/RiskAssessment/getNewRiskleversetting",function(data){
                    _self.riskleversetting=data;
                    _self.getRiskleversettingList();
                });

            },

            getRiskleversettingList:function(){
                var _self=this;
                $.ajax({
                    url:projectName+"/RiskAssessment/getRiskleversettingList", //发送请求的地址。
                    type:"post", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data:JSON.stringify(_self.riskleversetting),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    dataType:"json",//预期服务器返回的数据类型。
                    async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data){
                        //请求成功后的回调函数
                        _self.riskleversettingList=data;

                    },

                });

            },
            getExcell:function(){
                var _self=this;
                $("#ExcellID").val("1")
                $("#ExcellName").val("管控措施制定信息表.xls");
                $("#riskName").val(_self.riskSite.name);
                $("#riskControlTier").val(_self.riskSite.riskControlTier);
                $("#riskDamageType").val(_self.riskSite.riskDamageType);
                $("#riskMajorType").val(_self.riskSite.riskMajorType);
                $("#riskLevel").val(_self.riskSite.riskLevel);
                $("#getExcell").submit();
            },
            //筛选矿关闭时还原原本数据
            clearData: function () {
                var _self = this;
                _self.riskSite.name = null;
                _self.riskSite.riskControlTier = null;
                _self.riskSite.riskDamageType = null;
                _self.riskSite.riskMajorType = null;
                _self.riskSite.riskLevel = null
                $("#modal-add").modal("hide");

            },
            //判断查询
            judgeQuery: function () {
                var _self = this;
                if (_self.riskSite.riskControlTier == "null") {
                    _self.riskSite.riskControlTier = null
                }
                if (_self.riskSite.riskDamageType == "null") {
                    _self.riskSite.riskDamageType = null
                }
                if (_self.riskSite.riskLevel == "null") {
                    _self.riskSite.riskLevel = null
                }
                if (_self.riskSite.riskMajorType == "null") {
                    _self.riskSite.riskMajorType = null
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
            },
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
            },
            //从localStorage获取某列的状态反显到checkbox
            getShowState: function () {
                var _self = this;
                for (var i = 0; i < _self.attributes.length; i++) {
                    if (localStorage.getItem((pageVar + _self.attributes[i].classpropertyName).toUpperCase()) == null || localStorage.getItem((pageVar + _self.attributes[i].classpropertyName).toUpperCase()) == "true") {
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
                if (localStorage.getItem((pageVar + column).toUpperCase()) == null || localStorage.getItem((pageVar + column).toUpperCase()) == "true") {
                    return true;
                } else {
                    return false;
                }
            },
            //设置是否显示某一列,将结果写入localStorage
            confirmShowOrNot: function () {
                var _self = this;
                for (var i = 0; i < _self.attributes.length; i++) {
                    localStorage.setItem((pageVar + _self.attributes[i].classpropertyName).toUpperCase(), false);
                }
                for (var i = 0; i < _self.propertys.length; i++) {
                    localStorage.setItem((pageVar + _self.propertys[i]).toUpperCase(), true);
                }

                _self.getDataByPage(_self.nowpage);
            },
            forwardMRiskSite: function (risk) {
                var _self = this;
                var riskSiteID = risk.riskSiteID;
                var firstName = risk.name;
                var position = firstName;
                $.post(projectName + "/RiskControlMeasureControl/gotoMRiskSite/" + riskSiteID + "/" + position, function (data) {
                    if (data) {
                        window.location.href = "<%=request.getContextPath()%>/menu/RiskControlMeasureShowMRiskSite.action";
                    }
                });
            }
            ,
            //子附件下载
            downloadFile: function (trcm) {
                var _self = this;
                $("#checkid").val(trcm.measureURL)
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
            /*  //父附件下载
              downloadFile1: function (trcm1) {
                  var _self = this;
                  $("#checkid1").val(trcm1.measureURL)
                  var downloadForm1 = new FormData($("#downloadForm1")[0]);
                  $.ajax({
                      url: fileDownloadPath,
                      type: 'POST',
                      data: downloadForm1,
                      async: false,
                      cache: false,
                      contentType: false,
                      processData: false,
                      success: function (data) {
                          var result = eval(data);
                          $("#downloadUrl1").val(result.savePath);
                          $("#realFileName1").val(result.oldFileName);
                          $("#downFile1").submit();
                      },
                      error: function () {
                          _self.showToast("error", "下载失败");
                      }
                  });
              },*/
            //清空全部参数
            clearAllParam: function () {
                var _self = this;
                _self.risk = null;
                _self.risk1 = [];
                _self.updateHazard = "";
                _self.mRiskHazard = "";
                _self.tempdeleteadd1 = "";
                _self.tempdeleteadd = [];
                _self.riskControlMeasure = "";
                _self.newriskControlMeasure1 = "";
                _self.newriskControlMeasure = "";
                _self.riskControlMeasurelist = "";
                _self.addriskControlMeasure = "";//新建管控措施空对象
                _self.detailedList = null;
                _self.tempindex = -1;
                _self.tempurl = "";
                _self.uploadRiskControlMeasure = "";
                _self.tempfile = "";
                _self.filePath = "";
                _self.filePath1 = "";
                _self.fileName = "";
                _self.fileName1 = "";
                _self.tempriskControlMeasure = new Array();
                _self.tempriskControlMeasure1 = new Array();
                _self.tempriskControlMeasure2 = new Array();
                _self.templength = "";
                _self.tempfullnumber = "";
                _self.getNewRiskSite();
            },
            //管控措施增加
            addMeasureModal: function () {
                var _self = this;
                $("#measure-add").show();
                $("#upload-add").modal("hide");
            },
            //子提交方式
            conmitAll: function () {
                var _self = this;
                _self.tempfile = $("#upFile").val();
                if (_self.tempfile != "") {
                    _self.fileupload();
                } else {
                    _self.cmitMeasure();
                }
            },
            //子附件上传
            fileupload: function () {
                var _self = this;
                var formData = new FormData($("#uploadForm")[0]);
                _self.filePath = $("#upFile").val();
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
                            _self.showToast("warning", "请上传附件！");
                        } else {
                            _self.tempurl = data;
                            $.get(projectName + "/RiskControlMeasureControl/newRiskcontrolmeasure", {}, function (data) {
                                _self.uploadRiskControlMeasure = data;
                                _self.uploadRiskControlMeasure.riskSiteFullNumber = _self.tempfullnumber;
                                _self.uploadRiskControlMeasure.measureURL = _self.tempurl;
                                _self.uploadRiskControlMeasure.measureName = _self.fileName;
                                _self.uploadRiskControlMeasure.hazardID = _self.risk1.hazardID;
                                _self.uploadRiskControlMeasure.risksiteID = _self.risk1.risksiteID;
                                $.ajax({
                                    type: "POST",
                                    url: projectName + "/RiskControlMeasureControl/addMeasure",
                                    dataType: "json",
                                    contentType: "application/json",
                                    data: JSON.stringify(_self.uploadRiskControlMeasure),
                                    success: function (data) {
                                        _self.showToast("success", "上传成功！");
                                        /* _self.tempdupdateid = _self.uploadRiskControlMeasure.measureID;
                                         $.post(projectName + "/RiskControlMeasureControl/addMeasure/"+_self.tempdupdateid,function(data){

                                         });*/
                                        _self.cmitMeasure();
                                    }
                                })
                            });
                        }
                    },
                });

            },
            //父提交方式
            conmitAll1: function () {
                var _self = this;
                _self.tempfile1 = $("#upFile1").val();
                _self.filePath1 = $("#upFile1").val();
                _self.fileName1 = _self.filePath1.substring(_self.filePath1.lastIndexOf("\\") + 1);
                if (_self.tempfile1 != "") {
                    _self.fileupload1();
                } else {
                    _self.cmitMeasure();
                }
                _self.tempfile = "";
            },
            //父附件上传
            fileupload1: function () {
                var _self = this;
                var formData = new FormData($("#uploadForm1")[0]);
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
                            _self.showToast("warning", "请上传附件！");
                        } else {
                            _self.tempurl = data;
                            $.get(projectName + "/RiskControlMeasureControl/newRiskcontrolmeasure", {}, function (data) {
                                _self.uploadRiskControlMeasure = data;
                                _self.uploadRiskControlMeasure.riskSiteFullNumber = _self.tempfullnumber;
                                _self.uploadRiskControlMeasure.measureURL = _self.tempurl;
                                _self.uploadRiskControlMeasure.measureName = _self.fileName1;
                                _self.uploadRiskControlMeasure.risksiteID = _self.risk1.riskSiteID;
                                var mydate = new Date().format("yyyy-MM-dd hh:mm:ss");
                                _self.mydate = mydate;
                                _self.uploadRiskControlMeasure.measureCreateTime = _self.mydate;
                                $.ajax({
                                    type: "POST",
                                    url: projectName + "/RiskControlMeasureControl/addMeasure",
                                    dataType: "json",
                                    contentType: "application/json",
                                    data: JSON.stringify(_self.uploadRiskControlMeasure),
                                    success: function (data) {
                                        _self.showToast("success", "上传成功！");
                                        _self.cmitMeasure();
                                    }
                                })
                            });
                        }
                    },
                });
            },
            //清空添加措施方法
            clearMeasure: function () {
                var _self = this;
                $("#measuretype").val("");
                $("#measurecontent").val("");
                $("#measuretype1").val("");
                $("#measurecontent1").val("");
                $("#measurename").val("");
                $("#measurename1").val("");
                _self.tempindex != -1

            },
            //修改管控措施
            controlMeasureUpdate: function (crm, index) {
                var _self = this;
                _self.tempcrm = crm;
                $("#measuretype").val(crm.measureType);
                $("#measurecontent").val(crm.measureContent);
                $("#measuretype1").val(crm.measureType);
                $("#measurecontent1").val(crm.measureContent);
                $("#measurename1").val(crm.measureName);
                $("#measurename").val(crm.measureName);
                _self.tempindex = index;

            },
            //关闭确认删除框
            confirmDelete: function () {
                var _self = this;
                $("#modal-regular").modal('hide');
                $("#modal-regular1").modal('hide');
                /*_self.clearMeasure();*/
            },
            //暂时删除一个管控措施
            deleperson: function (key) {
                var _self = this;
                if (_self.riskControlMeasure[key].measureID != "") {
                    _self.tempdeleteadd.push(_self.riskControlMeasure[key].measureID);
                }
                this.riskControlMeasure.splice(key, 1);
            },
            //暂时删除一个管控措施附件
            deleperson1: function (key) {
                var _self = this;
                if (_self.tempriskControlMeasure1[key].measureID) {
                    _self.tempdeleteadd.push(_self.tempriskControlMeasure1[key].measureID);
                }
                this.tempriskControlMeasure1.splice(key, 1);
            },

            //三级菜单暂时保存一个管控措施1
            tempAddMeasure1: function () {
                var _self = this;
                $.get(projectName + "/RiskControlMeasureControl/newRiskcontrolmeasure", {}, function (data) {
                    if (_self.tempindex == -1) {
                        for (var j = 0; j < _self.riskControlMeasure.length; j++) {
                            if ($("#measurename1").val() == _self.riskControlMeasure[j].measureName) {
                                _self.showToast("warning", "管控措施名字重复");
                                return;
                            }
                        }
                    }

                    if ($("#measuretype1").val() == "" || $("#measurecontent1").val() == "" || $("#measurename1").val() == "") {
                        _self.showToast("warning", "措施名字或者措施类别或者措施内容为空！");
                        return;
                    } else {
                        if (_self.tempindex != -1) {
                            var tempriskControlMeasure1 = _self.riskControlMeasure;
                            tempriskControlMeasure1.splice(_self.tempindex, 1);
                            for (var j = 0; j < tempriskControlMeasure1.length; j++) {
                                if ($("#measurename1").val() == tempriskControlMeasure1[j].measureName) {
                                    tempriskControlMeasure1.splice(_self.tempindex, 0, _self.tempcrm);
                                    _self.showToast("warning", "管控措施名字重复");
                                    return;
                                }
                            }
                            tempriskControlMeasure1.splice(_self.tempindex, 0, _self.tempcrm);
                            _self.newriskControlMeasure1 = _self.tempcrm;
                            _self.newriskControlMeasure1.riskSiteFullNumber = _self.tempfullnumber;
                            _self.newriskControlMeasure1.measureName = $("#measurename1").val();
                            _self.newriskControlMeasure1.measureType = $("#measuretype1").val();
                            _self.newriskControlMeasure1.measureContent = $("#measurecontent1").val();
                            /*  _self.newriskControlMeasure1.hazardID = null;*/
                            _self.newriskControlMeasure1.risksiteID = _self.risk1.riskSiteID;
                            _self.riskControlMeasure.splice(_self.tempindex, 1, _self.newriskControlMeasure1);
                            _self.tempindex = -1;
                            _self.clearMeasure();

                        } else {
                            var mydate = new Date().format("yyyy-MM-dd hh:mm:ss");
                            _self.mydate = mydate;
                            _self.newriskControlMeasure1 = data;
                            _self.newriskControlMeasure1.measureCreateTime = _self.mydate;
                            _self.newriskControlMeasure1.riskSiteFullNumber = _self.tempfullnumber;
                            _self.newriskControlMeasure1.measureName = $("#measurename1").val();
                            _self.newriskControlMeasure1.measureType = $("#measuretype1").val();
                            _self.newriskControlMeasure1.measureContent = $("#measurecontent1").val();
                            _self.newriskControlMeasure1.hazardID = null;
                            _self.newriskControlMeasure1.risksiteID = _self.risk1.riskSiteID;
                            _self.riskControlMeasure.push(_self.newriskControlMeasure1);
                            _self.clearMeasure();

                        }
                    }
                });
            },
            //三级菜单暂时保存一个管控措施
            tempAddMeasure: function () {
                var _self = this;
                $.get(projectName + "/RiskControlMeasureControl/newRiskcontrolmeasure", {}, function (data) {
                    if (_self.tempindex == -1) {
                        for (var j = 0; j < _self.riskControlMeasure.length; j++) {
                            if ($("#measurename").val() == _self.riskControlMeasure[j].measureName) {
                                _self.showToast("warninig", "管控措施名字重复");
                                return;
                            }
                        }
                    }

                    if ($("#measuretype").val() == "" || $("#measurecontent").val() == "" || $("#measurename").val() == "") {
                        _self.showToast("warning", "措施名字或者措施类别或者措施内容为空！");
                    } else {
                        if (_self.tempindex != -1) {
                            var tempriskControlMeasure1 = _self.riskControlMeasure;
                            tempriskControlMeasure1.splice(_self.tempindex, 1);
                            for (var j = 0; j < tempriskControlMeasure1.length; j++) {
                                if ($("#measurename").val() == tempriskControlMeasure1[j].measureName) {
                                    tempriskControlMeasure1.splice(_self.tempindex, 0, _self.tempcrm);
                                    _self.showToast("warning", "管控措施名字重复");
                                    return;
                                }
                            }


                            _self.newriskControlMeasure1 = data;
                            _self.newriskControlMeasure1.riskSiteFullNumber = _self.tempfullnumber;
                            _self.newriskControlMeasure1.measureName = $("#measurename").val();
                            _self.newriskControlMeasure1.measureType = $("#measuretype").val();
                            _self.newriskControlMeasure1.measureContent = $("#measurecontent").val();
                            _self.newriskControlMeasure1.hazardID = _self.risk1.hazardID;
                            _self.newriskControlMeasure1.risksiteID = _self.risk1.risksiteID;
                            _self.riskControlMeasure.splice(_self.tempindex, 1, _self.newriskControlMeasure1);
                            _self.tempindex = -1;
                            _self.clearMeasure();

                        } else {
                            _self.newriskControlMeasure1 = data;
                            _self.newriskControlMeasure1.riskSiteFullNumber = _self.tempfullnumber;
                            _self.newriskControlMeasure1.measureName = $("#measurename").val();
                            _self.newriskControlMeasure1.measureType = $("#measuretype").val();
                            _self.newriskControlMeasure1.measureContent = $("#measurecontent").val();
                            _self.newriskControlMeasure1.hazardID = _self.risk1.hazardID;
                            _self.newriskControlMeasure1.risksiteID = _self.risk1.risksiteID;
                            _self.riskControlMeasure.push(_self.newriskControlMeasure1);
                            _self.clearMeasure();

                        }
                    }
                })
            },
            //查询一个危险源根据ID
            getHazardByID: function (hazardid) {
                var _self = this;
                $.get(projectName + "/RiskAssessment/getRiskhazard/" + hazardid, function (data) {
                    _self.updateHazard = data;
                    _self.risk1 = _self.updateHazard;
                    _self.tempfullnumber = _self.risk1.risksiteFullNumber;
                    _self.tempriskControlMeasure = [];
                    _self.tempriskControlMeasure1 = [],
                        _self.tempriskControlMeasure2 = [],
                        _self.tempriskControlMeasure = _self.updateHazard.mriskControlMeasure;
                    for (var j = 0; j < _self.tempriskControlMeasure.length; j++) {
                        if (_self.tempriskControlMeasure[j].measureURL != null) {
                            _self.tempriskControlMeasure1.push(_self.tempriskControlMeasure[j]);
                        } else {
                            _self.tempriskControlMeasure2.push(_self.tempriskControlMeasure[j])
                        }
                    }
                    _self.riskControlMeasure = _self.tempriskControlMeasure2;
                    $("#measuretype").val("");
                    $("#measurecontent").val("");
                    $("#measuretype1").val("");
                    $("#measurecontent1").val("");
                    $("#measurename").val("");
                    $("#measurename1").val("");
                });
            },
            //保存一个管控措施
            cmitMeasure: function () {
                var _self = this;
                if (_self.tempdeleteadd != null) {
                    for (var i = 0; i < _self.tempdeleteadd.length; i++) {
                        if (_self.tempdeleteadd[i] != null) {
                            _self.tempdeleteadd1 = _self.tempdeleteadd[i].toString();
                            $.ajax({
                                url: projectName + "/RiskControlMeasureControl/deleteMeasure/" + _self.tempdeleteadd1, //发送请求的地址。
                                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                dataType: "json",//预期服务器返回的数据类型。
                                success: function (data) {
                                    if (data) {
                                        $("#modal-regular").modal('hide');
                                        $("#modal-regular1").modal('hide');
                                        _self.clearMeasure();

                                    }
                                },
                                error: function (XMLHttpRequest) {
                                    alert("Error: " + XMLHttpRequest.responseText);
                                }
                            });
                        }
                        ;
                    }
                }

                for (var i = 0; i < _self.riskControlMeasure.length; i++) {
                    if (_self.riskControlMeasure[i].measureID != null) {
                        $.ajax({
                            url: projectName + "/RiskControlMeasureControl/updateMeasure", //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: JSON.stringify(_self.riskControlMeasure[i]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            contentType: "application/json",
                            async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                if (data) {
                                }
                            },
                        });

                    } else {
                        delete _self.riskControlMeasure[i].handler;
                        $.ajax({
                            type: "POST",
                            url: projectName + "/RiskControlMeasureControl/addMeasure",
                            dataType: "json",
                            contentType: "application/json",
                            data: JSON.stringify(_self.riskControlMeasure[i]),
                            success: function (data) {

                                if (data) {
                                    $("#modal-regular").modal('hide');
                                    $("#modal-regular1").modal('hide');
                                    $("#measuretype").val("");
                                    $("#measurecontent").val("");
                                    $("#measuretype1").val("");
                                    $("#measurecontent1").val("");
                                    $("#measurename1").val("");
                                    $("#measurename").val("");
                                    $("#modal-regular").modal('hide');
                                    $("#modal-regular1").modal('hide');
                                }
                            },
                        });
                    }
                }
                $("#modal-regular").modal('hide');
                $("#modal-regular1").modal('hide');
                $("#modal-regular").modal('hide');
                $("#modal-regular1").modal('hide');
                _self.clearAllParam();
            },
            //获取一个空的管控措施
            getNewRiskControlMeasure: function () {
                var _self = this;
                $.get(projectName + "/RiskControlMeasureControl/newRiskcontrolmeasure", {}, function (data) {
                    $("#measuretype").val("");
                    $("#measurecontent").val("");
                    $("#measurename").val("")
                    _self.newriskControlMeasure = data;
                });
            },
            //获取一个空的管控措施1
            getNewRiskControlMeasure1: function () {
                var _self = this;
                $.get(projectName + "/RiskControlMeasureControl/newRiskcontrolmeasure", {}, function (data) {
                    $("#measuretype1").val("");
                    $("#measurecontent1").val("");
                    $("#measurename1").val("")
                    _self.newriskControlMeasure = data;
                });
            },
            //新增管控措施
            addControlMeasure: function () {
                var _self = this;
                _self.newriskControlMeasure.managerName = $("#measurename").val();
                _self.newriskControlMeasure.managerUnitName = $("#measuredepart").val();
                _self.newriskControlMeasure.mriskControlMeasure = _self.addriskControlMeasure;
            },
            //清空管控措施
            clearRiskControlMeasure: function () {

            },
            //父点击修改换值
            updateRiskControlMeasure: function (risk, riskIndex) {
                var _self = this;
                _self.risk1 = risk;
                _self.tempupdateindex = riskIndex;
                _self.tempfullnumber = risk.fullNumber;
                $.ajax({
                    url:projectName +"/RiskControlMeasureControl/getMRiskSiteMeasures/"+_self.tempfullnumber, //发送请求的地址。
                    type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data:{},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    dataType:"json",//预期服务器返回的数据类型。
                    async:false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data){
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
                        if (_self.risk1.mhazards != 0) {
                            _self.templength = _self.risk1.mhazards.length;
                        } else {
                            _self.templength = _self.risk1.mchildRiskSite.length;
                        }
                        _self.riskControlMeasure = _self.tempriskControlMeasure2;
                        $("#measuretype").val("");
                        $("#measurecontent").val("");
                        $("#measuretype1").val("");
                        $("#measurecontent1").val("");
                        $("#measurename1").val("");
                        $("#measurename").val("");
                        $("#upFile").val("");
                        $("#upFile1").val("");
                        /*_self.getNewRiskControlMeasure();*/
                    },
                });


            },
            /*  //子点击修改传值
              updateRiskControlMeasure1: function (riskc) {
                  var _self = this;
                  alert("*");
                  _self.risk1 = riskc;
                  _self.riskControlMeasure = riskc.mriskControlMeasure;
                  /!*_self.getNewRiskControlMeasure();*!/

              },*/
            //筛选管控措施
            queryRiskControlMeasure: function () {

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
                _self.dList = [];
                _self.dangerList = [];
                _self.riskSite.pagesize = _self.pagesize;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskDetailedList/PageCount",
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
                            _self.detailedList = "";
                        }
                    }
                });
            },
            getDataByPage: function (page) {
                var _self = this;
                //加载层
                layer.load();
                _self.dList = [];
                _self.dangerList = [];
                _self.riskSite.page = page;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskDetailedList/Page",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskSite),
                    success: function (data) {
                        _self.detailedList = data;
                        for (var i = 0; i < _self.detailedList.length; i++) {
                            var childRisk = _self.detailedList[i].mchildRiskSite;
                            var damage = "";
                            for (var j = 0; j < childRisk.length; j++) {
                                var childHazard = childRisk[j].mhazards;
                                for (var z = 0; z < childHazard.length; z++) {
                                    if (childHazard[z].riskLevel == "重大风险") {
                                        if (childHazard[z].damageType != null && childHazard[z].damageType != "") {
                                            var damageList = childHazard[z].damageType.split(",");
                                            for (var h = 0; h < damageList.length; h++) {
                                                if (damage.indexOf(damageList[z]) == -1) {
                                                    damage += childHazard[z].damageType + ",";
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            damage = damage.substring(0, damage.length - 1);
                            if(damage!=""){
                                var zzList = damage.split(",");
                                if (_self.detailedList[i].riskDamageType != "" && _self.detailedList[i].riskDamageType != null) {
                                    var dmList = _self.detailedList[i].riskDamageType;

                                    for (var zz = 0; zz < zzList.length; zz++) {
                                        if(dmList.indexOf(zzList[zz]) != -1){
                                            dmList = dmList.replace(zzList[zz], "");
                                        }
                                    }
                                    var dlist=dmList.split(",");
                                    var dm="";
                                    for(var dl=0;dl<dlist.length;dl++){
                                        if(dlist[dl]!=""){
                                            dm+=dlist[dl]+",";
                                        }
                                    }
                                    _self.dList.push(dm);
                                }
                            }else{
                                _self.dList.push(_self.detailedList[i].riskDamageType);
                            }
                            _self.dangerList.push(damage);
                        }
                        layer.closeAll('loading');
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
        computed: {},
        watch:{
            'detailedList':function(){
                this.$nextTick(function(){
                    var _self =this;
                    var riskSiteFullNumber="";
                    for(var i=0;i<_self.detailedList.length;i++){
                        riskSiteFullNumber = _self.detailedList[i].fullNumber;
                        $.ajax({
                            url:projectName +"/RiskControlMeasureControl/getMRiskSiteMeasureCount/"+riskSiteFullNumber, //发送请求的地址。
                            type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data:{},//发送到服务器的数据。将自文件动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            contentType: "application/json",
                            dataType:"json",//预期服务器返回的数据类型。
                            async:false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function(data){
                             if(data!=null && data!=""){
                                 $("#measure"+i).text(data.length);
                             }else{
                                 $("#measure"+i).text(0);
                             }
                            },
                        });
                    }
                })
            }
        },
        filters: {
            upCaseFilter: function (val) {
                return val.toUpperCase();
            }, titleFilter: function (val, defaultName) {
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
            }, titleFilter1: function (val, defaultName) {
                var _self = this;
                var result = defaultName;
                if (attrArray == null) {
                    $.ajax({
                        url: projectName + "/SystemAttributeDevelop/classAttributes", //发送请求的地址。
                        type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: {name: 'Riskcontrolmeasure'},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
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
<script>  /*  $(window).scroll(function () {
    if ($(document).scrollTop() != 0) {
        sessionStorage.setItem('user', JSON.stringify(vueApp.risk));
        sessionStorage.setItem("offsetTop", $(window).scrollTop());//保存滚动位置
    }
});
window.onload = function () {
    var _offset = sessionStorage.getItem("offsetTop");
    if (_offset != null) {
        var userJsonStr = sessionStorage.getItem('user');
        var userEntity = JSON.parse(userJsonStr);
        vueApp.showChild(userEntity);
        $(document).scrollTop(offsetTop);
    }
};*/
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

</script>
<script>
    (function($j){
        $j.positionFixed = function(el){
            $j(el).each(function(){
                new fixed(this)
            })
            return el;
        }
        $j.fn.positionFixed = function(){
            return $j.positionFixed(this)
        }
        var fixed = $j.positionFixed.impl = function(el){
            var o=this;
            o.sts={
                target : $j(el).css('position','fixed'),
                container : $j(window)
            }
            o.sts.currentCss = {
                top : o.sts.target.css('top'),
                right : o.sts.target.css('right'),
                bottom : o.sts.target.css('bottom'),
                left : o.sts.target.css('left')
            }
            if(!o.ie6)return;
            o.bindEvent();
        }
        $j.extend(fixed.prototype,{
            bindEvent : function(){
                var o=this;
                o.sts.target.css('position','absolute')
                o.overRelative().initBasePos();
                o.sts.target.css(o.sts.basePos)
                o.sts.container.scroll(o.scrollEvent()).resize(o.resizeEvent());
                o.setPos();
            },
            overRelative : function(){
                var o=this;
                var relative = o.sts.target.parents().filter(function(){
                    if($j(this).css('position')=='relative')return this;
                })
                if(relative.size()>0)relative.after(o.sts.target)
                return o;
            },
            initBasePos : function(){
                var o=this;
                o.sts.basePos = {
                    top: o.sts.target.offset().top - (o.sts.currentCss.top=='auto'?o.sts.container.scrollTop():0),
                    left: o.sts.target.offset().left - (o.sts.currentCss.left=='auto'?o.sts.container.scrollLeft():0)
                }
                return o;
            },
            setPos : function(){
                var o=this;
                o.sts.target.css({
                    top: o.sts.container.scrollTop() + o.sts.basePos.top,
                    left: o.sts.container.scrollLeft() + o.sts.basePos.left
                })
            },
            scrollEvent : function(){
                var o=this;
                return function(){
                    o.setPos();
                }
            },
            resizeEvent : function(){
                var o=this;
                return function(){
                    setTimeout(function(){
                        o.sts.target.css(o.sts.currentCss)
                        o.initBasePos();
                        o.setPos()
                    },1)
                }
            }
        })
    })(jQuery)

    jQuery(function($j){
        $j('#footer').positionFixed()
    })

    //pop右下角弹窗函数
    //作者：yanue
    function Pop(/*title,url,intro*/){
        /* this.title=title;
         this.url=url;
         this.intro=intro;*/
        var _this =this;
        this.apearTime=1000;
        this.hideTime=500;
        this.delay=10000;
        $.post(projectName+"/RiskDetailedList/getOutOfTimeRiskHazard",{},function(data){
            if(data!=null && data.length>0){
                vueApp.riskHazardList =data;
                //显示
                _this.showDiv();
            }else{
                vueApp.riskHazardList = [];
            }
        });

        //关闭
        this.closeDiv();
    }
    Pop.prototype={
        /* addInfo:function(){

            /!* $("#popTitle a").attr('href',this.url).html(this.title);
             $("#popIntro").html(this.intro);
             $("#popMore a").attr('href',this.url);*!/
         },*/
        showDiv:function(time){
            $('#pop').slideDown(this.apearTime).delay(this.delay).fadeOut(400);;
            jQuery(function($j){
                $j('#pop').positionFixed()
            })
        },
        closeDiv:function(){
            $("#popClose").click(function(){
                    $('#pop').hide();
                }
            );
        }
    }
    $(new Pop())
</script>
</body>

</html>