<%@ page import="org.platform4j.model.Emp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html class="js " lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <title>风险现场管控</title>
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
    <style>.control-label {
        float: left;
    }

    .col-sm-hh {
        float: left;
        width: 25%;
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
        width: 100%;
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

    /*.btys{ display: inline-block; padding: 8px 20px; background-color: #ff0000; vertical-align: sub; }*/
    .jindu {
        font-weight: bold;
        color: #00a2e8;
        font-size: 18px;
    }

    .biaot > td {
        white-space: nowrap;
        background-color: #f1f1f1;
        font-weight: bold;

    }

    td textarea {
        width: 100%;
        height: 50px;
        resize: none;
        background-color: #FFF;
        border: 0;
    }

    .textarea1 {
        width: 100%;
        height: 25px;
        resize: none;
    }

    .dib {
        background-color: #f1f1f1;
        padding: 5px 15px;
        margin: 10px 0;
    }

    .dib label {
        padding-left: 15px;
        font-size: 16px;
    }

        .modal {
            overflow-y: scroll;
        }
    .table-responsive1{
        overflow-x: 0!important;
        min-height: 0.01%;
    }
        .ivu-upload{
            margin-left: 5px;
            float: left;
            width:24px;
            height:16px;
        }
    .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12{
        padding-right: 0;
        padding-left: 0;
    }
    /*.form-horizontal1 .control-label {*/
        /*margin-bottom: 5px;*/
        /*margin-right: 12px;*/
    /*}*/
        .ivu-select-dropdown{
            position: relative !important;
            top: 0px !important;
        }
    </style>
</head>

<body>
<div id="app">
    <%String riskSiteID =  (String)request.getSession().getAttribute("riskSiteID");
      String frameWorkID = (String)request.getSession().getAttribute("frameWorkID");
        Emp userObj = (Emp) request.getSession().getAttribute("emp");
        String username = userObj.getFEmp_Name();
        Integer userid = userObj.getfEmp_ID_Auto();
        String userDepartment = userObj.getFOrg_Name();
        Integer userDepartmentID = userObj.getfOrgID_Auto();
//    Integer userid = userObj.getfEmp_ID_Auto();

    %>
    <div id="page-content" style="min-height: 794px;">
        <input id="riskSiteID" value="<%=riskSiteID%>" hidden>
        <input id="frameWorkID" value="<%=frameWorkID%>" hidden>
        <!-- Table Styles Header -->
        <div class="content-header">
            <div class="row">
                <div class="col-sm-6">
                    <div class="header-section">
                        <h1>风险现场管控录入</h1></div>
                </div>
            </div>
        </div>
        <!-- END Table Styles Header -->
        <!-- Table Styles Block -->
        <div class="block full">
            <div class="table-responsive">
                <div class="table-responsive1">
                    <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer" style="330px">
                        <div class="row" style="background-color: #fff;">
                            <div class="col-sm-12 dib">
                                <div id="" class="">
                                    <form method="post" class="form-inline" onsubmit="return false;">
                                        <div class="form-group">
                                            <label class="biaot" for="example-if-password">检查信息</label>
                                            <div class="form-control" style="border: 0;background-color: #f1f1f1"></div>
                                        </div>
                                        <div class="form-group" style="float: right; padding-right: 15px;">
                                            <button type="submit" @click="saveRiskHazardList"
                                                    class="btn btn-effect-ripple btn-primary">提交
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-12" style="margin: 10px 0px;">
                                <div id="" class="">
                                    <form method="post" class="form-horizontal" onsubmit="return false;">
                                        <div class="col-sm-4">
                                            <label class="control-label" style="margin-left:17px"
                                                   for="example-input-small">检查时间</label>
                                            <div class="col-sm-hh1">
                                                <input id="checkTime" v-model="checkTime" class="form-control input-sm datepicker" placeholder="请选择检查时间" type="text"  readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <label class="control-label"> 检查人部门</label>
                                            <div class="col-sm-hh1">
                                                <i-select  v-model="checkDepartment" @on-change="changeEmp()" filterable clearable>
                                                    <i-option v-for="(mydepart,index) in departmentList"
                                                              :value="mydepart.fOrgID_Auto+'||'+mydepart.fOrg_Name"
                                                              :label="mydepart.fOrg_Name"
                                                              :key="mydepart.fOrgId">
                                                        <span v-text="mydepart.fOrg_Name"></span>
                                                        <span v-text="mydepart.fOrg_Name_Shorthand"></span>
                                                    </i-option>
                                                </i-select>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <label class="control-label"
                                                   for="example-input-small">检查人</label>
                                            <div class="col-sm-hh1">
                                                <i-select v-model="checkName"  filterable clearable>
                                                    <i-option v-for="(emp,index) in checkedUserList"
                                                              :value="emp.fEmp_ID_Auto +'||'+ emp.fEmp_Name"
                                                              :label="emp.fEmp_Name"
                                                    >
                                                        <span v-text="emp.fEmp_Name"></span>
                                                        <span style="float:right;color:#ccc"
                                                              v-text="emp.fEmp_Name_Shorthand"></span>
                                                    </i-option>

                                                </i-select>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-12" style="margin: 10px 0px;">
                                <div id="" class="">
                                    <form method="post" class="form-horizontal" onsubmit="return false;">
                                        <div class="col-sm-4">
                                            <label class="control-label"
                                                   for="example-input-small">陪检人员</label>
                                            <div class="col-sm-hh1">
                                                <i-select v-model="checkPeijianren"
                                                          style="font-weight: 500"
                                                          placeholder="请选择陪检人员" multiple>
                                                    <i-Option v-for="item in peijianList" :value="item.fEmp_ID_Auto +'||'+ item.fEmp_Name">
                                                        {{item.fEmp_Name }}
                                                    </i-Option>
                                                </i-select>
                                                <input style="font-weight: 500" class="form-control nihao1"
                                                       v-if="false" id="checkPeijianren" v-model="checkPeijianren">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                        <div class="row" style="background-color: #fff;">
                            <div class="col-sm-12 dib">
                                <div id="" class="">
                                    <form method="post" class="form-inline" onsubmit="return false;">
                                        <div class="form-group">
                                            <label class="" for="example-if-password">{{updatedRiskHazard.HazardName}}检查结果信息</label>
                                            <div class="form-control" style="border: 0;background-color: #f1f1f1"></div>
                                        </div>
                                        <div class="form-group" style="float: right;padding-right: 15px;">
                                            <button type="submit" @click="saveRiskHazardItem"
                                                    class="btn btn-effect-ripple btn-primary">保存检查结果
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <div class="col-sm-12" style="padding: 10px 15px;">
                                <div>
                                    <form method="post" class="form-horizontal" onsubmit="return false;">
                                        <div class="col-sm-7">
                                            <div style="margin-bottom: 5px;" class="row">
                                                    <div class="col-sm-4">
                                                        <div class="col-sm-3">
                                                            <label class="control-label" for="example-input-small">风险点</label></div>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="updateRiskSite" readonly="readonly" name="example-input-small"
                                                                                      class="form-control input-sm"  v-model="updatedRiskHazard.TopName">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="col-sm-3">
                                                            <label class="control-label" for="example-input-small">风险等级</label></div>
                                                        <div class="col-sm-9">
                                                            <input type="text" id="updateRiskLevel" readonly="readonly" name="example-input-small"
                                                                                     class="form-control input-sm"  v-model="updatedRiskHazard.RiskLevel">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                            <div class="col-md-3">
                                                                <label class="control-label" for="example-input-small">风险颜色</label>
                                                            </div>
                                                            <div class="col-md-9">
                                                                <div style="height: 25px;width: 70px;" v-bind:style="'background-color:'+riskColor">
                                                                </div>
                                                            </div>
                                                    </div>
                                                </div>
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <div class="col-sm-3">
                                                        <label class="control-label" for="example-input-small">管控对象</label></div>
                                                    <div class="col-sm-9">
                                                        <input type="text" id="updatehazard" readonly="readonly" name="example-input-small"
                                                               class="form-control input-sm"  v-model="updatedRiskHazard.ChildName">
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="col-sm-3">
                                                        <label class="control-label" for="example-input-small">灾害类型</label></div>
                                                    <div class="col-sm-9">
                                                        <input type="text" id="updateDamageType" readonly="readonly" name="example-input-small"
                                                               class="form-control input-sm"  v-model="updatedRiskHazard.HazardDamageType">
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="col-md-3">
                                                        <label class="control-label" for="example-input-small">专业类型</label>
                                                    </div>
                                                    <div class="col-md-9">
                                                        <input type="text" id="updateMajorType" readonly="readonly" name="example-input-small"
                                                               class="form-control input-sm"  v-model="updatedRiskHazard.HazardMajorType">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div  class="col-sm-5">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="col-sm-3">
                                                        <label class="control-label" for="example-input-small" style="float: left;">风险描述</label>
                                                    </div>
                                                    <div class="col-sm-8">
                                                        <textarea name="" rows="" cols="" v-model="updatedRiskHazard.TopRiskDescription" class="form-control" style="float: right;" readonly="readonly"></textarea>
                                                    </div>

                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="col-sm-3">
                                                        <label class="control-label" for="example-input-small" style="float: left;">管控措施</label>
                                                    </div>
                                                    <div class="col-sm-8">
                                                        <textarea style="width: 100%;" name="" rows="" cols="" v-model="updatedRiskHazard.MeasureContent" class="form-control" readonly="readonly"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="col-sm-4" style="margin: 10px 0px 10px 0px; width: 60%">
                                    <div id="" class="">
                                        <form method="post" class="form-horizontal" onsubmit="return false;">
                                            <div class="col-sm-hh2">
                                                <label class="control-label"
                                                       for="example-textarea-input">检查结果:</label>
                                                <div class="col-sm-hh3">
                                                    <div class="nihao2">
                                                        <label class="control-label" for="example-if-password">状态 &nbsp;</label>
                                                        <div>
                                                            <input name="status" type="radio" value="0" checked="checked"/>未失控
                                                            <input name="status" type="radio" value="1"/>失控
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-hh3">
                                            <textarea style="width: 84%;"
                                                      name="example-textarea-input" rows="7" class="form-control" v-model="updatedRiskHazard.questionDesc"
                                                      placeholder="" id="question">
                                            </textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                                <div class="col-sm-4" style="margin: 10px 0px; width: 40%">
                                    <div id="" class="">
                                        <form method="post" id="riskControlAttachmentidd" class="form-horizontal" onsubmit="return false;">
                                            <div class="col-sm-hh2">
                                                <label class="control-label" for="example-textarea-input">取证附件</label>
                                                <div class="col-sm-hh3">
                                                    <div style="height:156px;overflow-y: auto">
                                                        <table id="general-table"
                                                               class="table table-striped table-bordered table-vcenter table-hover">
                                                            <thead>
                                                            <tr>
                                                                <th class="text-center" style="width: 120px">
                                                                    序号
                                                                </th>
                                                                <th class="text-center">附件</th>
                                                                <th class="text-center" style="width: 110px">操作</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <tr v-for="(attatchfile,attatchindex) in attachFileList">
                                                                <td class="text-center" v-text="attatchindex+1">
                                                                </td>
                                                                <td class="text-center"
                                                                    v-text="attatchfile.fileName"></td>
                                                                <td class="text-center">
                                                                    <upload :action="fileUploadPath"
                                                                            :show-upload-list=false
                                                                            :on-success="uploadSuccess"
                                                                            :data='idObject'>
                                                                        <a>上传</a>
                                                                    </upload>
                                                                    <a @click="deleteAttch(attatchfile,attatchindex)">删除</a>
                                                                </td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="table-responsive">
                <div class="col-sm-12 dib">
                    <div id="" class="">
                        <form method="post" class="form-inline" onsubmit="return false;">
                            <div class="form-group">
                                <label class="" for="example-if-password">已检查问题</label>
                                <div class="form-control" style="border: 0;background-color: #f1f1f1"></div>
                            </div>
                            <div class="form-group" style="float: right; padding-right: 15px;">
                                <button v-if="riskHazardList.length > 1" type="submit" @click="showBatchUpdateDiv" class="btn btn-effect-ripple btn-primary">
                                    批量修改
                                </button>
                                <button v-if="riskHazardList.length > 1" type="submit" @click="batchDelete" class="btn btn-effect-ripple btn-primary">
                                    批量删除
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="">
                    <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                        <table id="general-table" ref="selection" class="table table-striped table-bordered table-vcenter table-hover">
                            <thead>
                            <tr>
                                <th class="text-center">
                                    <label class="csscheckbox csscheckbox-primary">
                                        <input type="checkbox" v-model="checkedone" v-on:click="checkedAll"><span></span>
                                    </label>
                                </th>
                                <th class="text-center">专业</th>
                                <th class="text-center">风险点</th>
                                <th class="text-center">管控对象</th>
                                <th class="text-center">风险</th>
                                <%--<th class="text-center">灾害类型</th>--%>
                                <th class="text-center">状态</th>
                                <th class="text-center">检查结果</th>
                                <th class="text-center">检查部门</th>
                                <th class="text-center">检查人</th>
                                <th class="text-center">检查时间</th>
                                <th class="text-center">取证附件</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr v-for="(riskHazardItem,index) in riskHazardList">
                                <td class="text-center">
                                    <label class="csscheckbox csscheckbox-primary">
                                        <input type="checkbox" v-model="checkIDs" v-bind:value="index">
                                        <span></span>
                                    </label>
                                </td>
                                <td v-text="riskHazardItem.HazardMajorType">
                                <td v-text="riskHazardItem.TopName">
                                <td v-text="riskHazardItem.ChildName"></td>
                                <td v-text="riskHazardItem.HazardName"></td>
                                <%--<td class="text-center" v-text="riskHazardItem.HazardDamageType"></td>--%>
                                <td class="text-center">
                                    <span v-if="riskHazardItem.status=='1'">失控</span>
                                    <span v-if="riskHazardItem.status=='0'">未失控</span>
                                </td>
                                <td class="text-center" v-text="riskHazardItem.question">
                                </td>
                                <td v-text="riskHazardItem.checkDepartment">
                                <td v-text="riskHazardItem.checkName">
                                <td v-text="riskHazardItem.checkTime">
                                    <%--<td class="text-center" v-text="riskHazardItem.accthes.length"></td>--%>
                                <td class="text-center" v-text="riskHazardItem.attachNum"></td>
                                <td class="text-center">
                                    <a href="javascript:void(0)" data-toggle="tooltip"
                                       @click="updateRiskHazard(riskHazardItem)"
                                       title="修改">
                                        修改
                                    </a>
                                    <a href="javascript:void(0)" data-toggle="tooltip"
                                       @click="delRiskHazard(riskHazardItem)"
                                       title="删除">
                                        删除
                                    </a>
                                    <a href="javascript:void(0)" data-toggle="tooltip"
                                       @click="openHideTroubleTab(riskHazardItem)"
                                       title="隐患设置">
                                        隐患设置
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>

        </div>
        <!-- 添加隐患信息 -->
        <div id="addHiddenTroubleInfo" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="min-height:100%">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true" @click="closeTroubleTab">&times;</button>
                        <div class="block-title">
                            <h4>隐患信息</h4></div>
                        <form method="post" class="form-horizontal" onsubmit="return false;">
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="example-select" style="margin-right: 30px;">检查类型</label>
                                <div class="col-md-8">
                                    <label style="width: 100%;">
                                        <div class="input-group" style="width:100%;">
                                            <select id="fpCFS" style="display: inline-block;font-weight:100"
                                                    name="example-if-password"
                                                    class="form-control nihao1"
                                                    type="text">
                                                <option value="-1">请选择检查类型</option>
                                                <option v-for="(mycheck,index) in checkData">{{mycheck.fData_Name}}
                                                </option>
                                            </select>
                                            <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>
                                        </div>
                                    </label>
                                </div>
                            </div>
                            <%--后面增加陪检人员--%>

                            <div class="form-group">
                                <label class="col-md-3 control-label" for="example-select" style="margin-right: 30px;">陪检人员</label>
                                <div class="col-md-8">
                                    <label style="width: 100%;">
                                        <div class="input-group" style="width: 100%">
                                            <i-select v-if="judgeAddOrShowInfo!=1" v-model="peijianren"
                                                      style="font-weight: 500"
                                                      placeholder="请选择陪检人员" multiple>
                                                <i-Option v-for="item in peijianList" :value="item.fEmp_Name">
                                                    {{item.fEmp_Name }}
                                                </i-Option>
                                            </i-select>
                                            <input style="font-weight: 500" class="form-control nihao1"
                                                   v-if="judgeAddOrShowInfo==1" id="peijianren" v-model="peijianren">
                                        </div>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="example-select" style="margin-right: 30px;">隐患地点</label>
                                <div class="col-md-8">
                                    <label style="width: 100%;">
                                        <div class="input-group" style="width: 100%">
                                            <input type="text" id="flocation" v-model="flocation"
                                                   class="form-control nihao1" style="font-weight: 500" placeholder="">
                                            <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>
                                        </div>
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label" style="margin-right: 30px;">隐患描述</label>
                                <div class="col-md-8">
                                    <label style="width: 100%;">
                                        <div class="input-group" style="width: 100%">
                                            <div class="input-group-btn" style="width: 100%;">

                                                <select style="min-height:60px; font-weight:500;display: none" id="fdescription"
                                                        @change="showStandard"
                                                        name="example-if-password"
                                                        class="form-control nihao1">
                                                    <option value="">请选择隐患描述</option>
                                                    <option v-for="(myemp,index) in standardList" :value="myemp.fHtdetailDescription" v-text="myemp.fHtdetailDescription">
                                                    </option>
                                                </select>
                                                <input style="font-weight: 500" type="text" style="min-height:60px"
                                                       id="myfdescription"
                                                       placeholder="请添加隐患描述" name="example-if-password"
                                                       class="form-control nihao1">

                                                <span v-if="addfd==1" @click="addFdescription"
                                                      style="cursor:pointer;color: deepskyblue;position: absolute;top:2px;font-size: 20px">+</span>
                                                <span id="myfd" v-if="addfd==0" @click="addFdescription1"
                                                      style="cursor:pointer;color: red;position: absolute;top:2px;font-size: 16px">↶</span>
                                                <span v-if="addfd==2"
                                                      style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                            </div>
                                        </div>
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="example-input-small" style="margin-right: 30px;">专业/等级</label>
                                <div class="col-sm-8">
                                    <select style="width:52%;display: inline-block;" id="fcatagories"
                                            name="example-if-password"
                                            class="form-control nihao1">
                                        <option value="-1">请选择专业</option>
                                        <option v-for="(mycategory,index) in majorList">{{mycategory.fData_Name}}
                                        </option>
                                    </select>

                                    <select style="width: 46%;display: inline-block;" id="flevel"
                                            name="example-if-password"
                                            class="form-control nihao1"
                                            type="text">
                                        <option value="-1">请选择隐患等级</option>
                                        <option v-for="(htdetail,index) in htdetailfLevelName"
                                                :value="htdetail.fLevelName"
                                                v-text="htdetail.fLevelName"></option>
                                    </select>
                                    <span style="color: red;right:0px;position: absolute;top:7px;font-size: 16px">*</span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="example-input-small" style="margin-right: 30px;">
                                    责任部门<span v-if="judgeInfo==0">/责任人</span></label>
                                <div class="col-sm-8">
                                    <select style="width: 52%;display: inline-block;" id="fdutyUnitName"
                                            v-model="fdutyUnitName" name="example-if-password"
                                            class="form-control nihao1" placeholder=""
                                            type="text" @change="myChange">
                                        <option value="">请选择责任部门</option>
                                        <option v-for="(mydepart,index) in departmentList">
                                            {{mydepart.fOrg_Name}}
                                        </option>
                                    </select>
                                    <select style="width: 46%;display: inline-block;" id="fdutyPersonName"
                                            name="example-if-password"
                                            class="form-control nihao1" placeholder=""
                                            type="text">
                                        <option value="-1">请选择责任人</option>
                                        <option v-if="updateInfo!=''">{{updateInfo}}</option>
                                        <option v-for="(myemp,index ) in empList3">{{myemp.fEmp_Name}}</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-3 control-label" style="margin-right: 30px;">班次</label>
                                <div class="col-md-8">
                                    <select id="classIndex" style="width: 52%;display: inline-block;"
                                            name="example-if-password"
                                            class="form-control nihao1" placeholder=""
                                            type="text">
                                        <option value="-1">请选择班次</option>
                                        <option v-for="(mybanCi,index) in banCi">{{mybanCi.fData_Name}}</option>
                                    </select>
                                    <span style="color: red;position: relative;top:7px;font-size: 16px">*</span>

                                </div>

                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="example-input-small" style="margin-right: 30px;">当班处理</label>
                                <div class="col-sm-6">
                                    <label class="switch switch-success">
                                        <input type="checkbox" id="mycheckboxID" v-model="checkboxID">
                                        <span></span>
                                    </label>
                                </div>
                            </div>
                            <div class="form-group" id="showDiv">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" for="example-input-small" style="margin-right: 30px;">整改期限</label>
                                    <div class="col-sm-8">
                                        <input type="text" style="width: 63%"
                                               id="fwillSolutionTime"
                                               name="example-input-small"
                                               class="form-control input-sm datepicker"
                                               readonly="readonly"
                                               placeholder="点击选择整改期限">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" for="example-input-small" style="margin-right: 30px;">直接下达</label>
                                    <div class="col-sm-6">
                                        <label style="position: absolute;left: 23px" class="switch switch-success">
                                            <input type="checkbox" id="mycheckQuick" v-model="checkQuick" ><span> </span></label>
                                        <span id="showspan1"
                                              style="margin-left: 50px;color:red;font-weight: 600; position: absolute;left: 36px;top: 6px">将进入隐患下达模块五定下达</span>
                                        <span id="showspan2"
                                              style="margin-left: 50px;color:red;font-weight: 600;position: absolute;left: 36px;top: 6px"
                                              hidden>将下达到{{fdutyUnitName}}下的所有员工</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="example-input-small" style="margin-right: 30px;">是否罚款</label>
                                <div class="col-sm-6">
                                    <div style="width: 49%;display: inline-block;">
                                        <label class="switch switch-success">
                                            <input type="checkbox" id="mycheckDuty" v-model="checkDuty">
                                            <span> </span>
                                        </label>
                                    </div>
                                </div>
                                <div id="showDuty" hidden>
                                    <div class="col-sm-12 nihao2">
                                        <label class="col-md-4 control-label"
                                               for="example-if-password" style="margin-right: 30px;">罚款方式</label>
                                        <div class="col-md-6">
                                            <select id="fselect"
                                                    v-model="fineway"
                                                    name="example-if-password"
                                                    class="form-control nihao1"
                                                    placeholder="" type="text">
                                                <option value="0">处罚单位</option>
                                                <option value="1">处罚个人</option>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="col-sm-12 nihao2" id="fineByUnit" style="overflow: hidden;">
                                        <label class="col-md-4 control-label"
                                               for="example-if-password" style="margin-right: 30px;">罚款金额</label>
                                        <div class="col-md-6"><input id="fMoeney" name="example-if-password"
                                                                     class="form-control nihao1"
                                                                     placeholder="元" type="text"></div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                    </div>
                                    <div class="col-sm-12 nihao2">
                                        <button type="submit" v-if="judgeAddOrShowInfo!=1"
                                                @click="getNewHtdetailstandardpunish"
                                                class="btn btn-effect-ripple btn-primary">添加罚款信息
                                        </button>
                                    </div>

                                </div>
                                <div class="col-sm-12" id="fineByPerson">
                                    <table class="table table-striped table-bordered table-vcenter table-hover">
                                        <tr>
                                            <th class="text-center">序号</th>
                                            <th class="text-center">岗位</th>
                                            <th class="text-center">是否主要责任人</th>
                                            <th class="text-center">责任部门</th>
                                            <th class="text-center">责任人</th>
                                            <th class="text-center">扣分</th>
                                            <th class="text-center">罚款</th>
                                            <th class="text-center" v-if="judgeAddOrShowInfo!=1">操作</th>

                                        </tr>
                                        <tr v-if="finewayList.length!=0&&judgeAddOrShowInfo!=1" v-for="(myfine,index) in finewayList">
                                            <td class="text-center" v-text="index+1"></td>
                                            <td v-if="myfine.fFineDuty!=null&&myfine.page!=1" v-text="myfine.fFineDuty"></td>
                                            <td v-if="myfine.fFineDuty==null||myfine.page==1">
                                                <select class="form-control" v-model="myfine.fFineDuty">
                                                    <option v-for="(role,index) in roleList" :value="role.fRole_Name">
                                                        {{role.fRole_Name}}
                                                    </option>
                                                </select>
                                            </td>
                                            <td v-if="myfine.fDutyPerson=='1'&&myfine.page!=1">是</td>
                                            <td v-if="myfine.fDutyPerson=='0'&&myfine.page!=1">联责处罚</td>
                                            <td v-if="myfine.fDutyPerson==null||myfine.page==1">
                                                <select class="form-control" v-model="myfine.fDutyPerson">
                                                    <option value="1">是</option>
                                                    <option value="0">联责处罚</option>

                                                </select>
                                            </td>
                                            <td>
                                                <select class="form-control" v-model="myfine.fFineDepartment"
                                                        @change="getCurrOrgEmpList(index,1)">
                                                    <option v-for="(mydepart,index) in departmentList">
                                                        {{mydepart.fOrg_Name}}
                                                    </option>
                                                </select>
                                            </td>
                                            <td>

                                                <select style="width: 75px" class="form-control" :id="'t'+index"
                                                        v-model="myfine.fFineDepartmentPerson">
                                                    <option>{{myfine.fFineDepartmentPerson}}</option>
                                                    <option v-for="(myemp,index ) in empList">
                                                        {{myemp.fEmp_Name}}
                                                    </option>
                                                </select>

                                            </td>
                                            <td><input class="form-control" v-model="myfine.fDeductPoint"></td>
                                            <td>
                                                <input class="form-control" v-model="myfine.fFineMoney">
                                            </td>
                                            <td class="text-center"><a @click="deleteInfoList(index)">删除</a>
                                            </td>

                                        </tr>
                                        <tr v-if="fineInfoList!=''&&index!=saveUnitIndex" v-for="(myfine,index) in fineInfoList">
                                            <td class="text-center" v-text="index+1"></td>
                                            <td v-for="(myduty,mindex) in dutyList" v-if="index==mindex"
                                                v-text="myduty"></td>
                                            <td v-if="myfine.fdutyPerson=='1'">是</td>
                                            <td v-if="myfine.fdutyPerson=='0'">联责处罚</td>
                                            <td v-text="myfine.fBePunishUnitName"></td>
                                            <td v-text="myfine.fBePunishPersonName"></td>
                                            <td v-text="myfine.fdeductPoint"></td>
                                            <td v-text="myfine.fMoeney"></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="saveHiddenTroubleInfotoRisk">提交</button>
                        <button type="button" class="btn btn-effect-ripple btn-danger" @click="closeTroubleTab" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- 批量修改 -->
        <div id="modal-regular"  class="modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body" style="height:750px;">
                        <div class="block-title">
                            <h4>批量修改检查信息</h4></div>
                        <form method="post" class="form-horizontal" onsubmit="return false;">
                            <div class="form-group">
                                <label class="col-sm-3 control-label"  style="margin-right: 30px;">检查人部门<span style="color: red">*</span></label>
                                <div class="col-sm-8">
                                    <i-select  id="multiSlctDept" v-model="multiSlctDept" filterable clearable>
                                    <i-option v-for="(mydepart,index) in multiDeptList"
                                    :value="mydepart.fOrgID_Auto+'||'+mydepart.fOrg_Name"
                                    :label="mydepart.fOrg_Name"
                                    :key="mydepart.fOrgId">
                                    <span v-text="mydepart.fOrg_Name"></span>
                                    <span v-text="mydepart.fOrg_Name_Shorthand"></span>
                                    </i-option>
                                    </i-select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" style="margin-right: 30px;">检查人<span style="color: red">*</span></label>
                                <div class="col-sm-8">
                                    <i-select id="multiSlctUser" v-model="multiSlctUser"  filterable clearable>
                                    <i-option v-for="(emp,index) in multiSlctUserList"
                                    :value="emp.fEmp_ID_Auto +'||'+ emp.fEmp_Name"
                                    :label="emp.fEmp_Name">
                                    <span v-text="emp.fEmp_Name"></span>
                                    <span style="float:right;color:#ccc" v-text="emp.fEmp_Name_Shorthand"></span>
                                    </i-option>
                                    </i-select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label"style="margin-right: 30px;">陪检人员</label>
                                <div class="col-sm-8">
                                    <i-select v-model="multiCheckPeijianren"
                                              style="font-weight: 500"
                                              placeholder="请选择陪检人员" multiple>
                                        <i-Option v-for="item in multiPeijianList" :value="item.fEmp_ID_Auto +'||'+ item.fEmp_Name">
                                            {{item.fEmp_Name }}
                                        </i-Option>
                                    </i-select>
                                    <input style="font-weight: 500" class="form-control nihao1"
                                           v-if="false" id="multiCheckPeijianren" v-model="multiCheckPeijianren">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" style="margin-right: 30px;">检查时间<span style="color: red">*</span></label>
                                <div class="col-sm-8">
                                    <input id="multiCheckTime" class="form-control input-sm datepicker" placeholder="请选择检查时间" type="text" v-model="multiSlctCheckTime" readonly="readonly">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" style="margin-right: 30px;">状态<span style="color: red">*</span></label>

                                <div class="col-sm-8">
                                    <input name="mutiSelectStatus" v-model="multiStatus" type="radio" value="0"/>未失控
                                    <input name="mutiSelectStatus" v-model="multiStatus" type="radio" value="1"/>失控
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" style="margin-right: 30px;">检查结果
                                <span style="color: red">*</span>
                                </label>
                                <div class="col-sm-8">
                                    <textarea style="width: 100%;" id="multiSlctResult"
                                    name="example-textarea-input" rows="7" class="form-control" v-model="multiSlctResult"
                                    placeholder="">
                                    </textarea>
                                </div>
                            </div>
                        </form>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-effect-ripple btn-primary"  @click="saveMultiSlctInfo" data-dismiss="modal">
                                确认
                            </button>
                            <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal" @click="closeBatchUpdateDiv">
                                关闭
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 添加风险点结束 -->

    </div>
</div>

<script src="../js/vendor/jquery-2.2.4.min.js"></script>
<script src="../js/vendor/bootstrap.min.js"></script>
<script src="../js/bootstrap-treeview.js"></script>
<script src="../js/treeview-demo.min.js"></script>
<script src="../js/plugins.js"></script>
<script src="../js/app.js"></script>
<script src="../js/vue.js"></script>
<script src="../js/iview.min.js"></script>
<script src="../js/pages/uiTables.js"></script>
<script src="../js/pages/compTree.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/resource.js"></script>

<script>
    var projectName = '<%=request.getContextPath() %>';
    var attrArray = null;
    var vueApp = new Vue({
        el: "#app",
//        el: "#page-content",
        data: {
            //颜色
            riskColor:"#eee",
            //风险点
            updateRiskSiteInfo:{},
            //检查部门列表
            departmentList: [],
            multiDeptList:[],
            //选择检查时间
            checkTime:null,
            multiSlctCheckTime:null,
            //选择检查部门
            checkDepartment: "",
            checkDepartmentID:"",
            multiSlctResultdd:'',
            checkedDepartment:'',
            checkedDepartmentID:'',
            //检查人
            responsibleList: [],
            checkedUserList:[],
            multiUserList:[],
            //选择检查人
            checkName:"",
            checkPeijianren:[],
            //风险管控列表多选id
            checkIDs:[],
            checkedone: false,
            multiSelect:{},
            //批量设置
            multiPeijianList:[],
            multiSlctDept:"",
            multiSlctDeptName:"",
            multiSlctDeptID:"",
            multiSlctDeptId:"",
            multiSlctUserList:[],
            multiSlctUser:"",
            multiCheckPeijianren:[],
            multiSlctResult:'',
            //待管控的风险列表
            riskHazardList:[],
            //准备修改的风险信息
            updatedRiskHazard:{},
            //触发监控的风险信息
            selectedHazard:{},
            //附件列表
            attachFileList:[{"fileName":""}],
            fileUploadPath:fileUploadPath,
            idObject: {"fguid": "<%=userid%>"},
            attachFiles:[{}],
            //选取的风险ID
            riskControlID:"",
            //隐患录入相关信息
            banCi: "",//平台班次
            checkData: "",//检查类型
            majorList: "",//平台专业类型
            jihualeixing: "",//计划类型
            judgeAddOrShowInfo: 0,
            peijianList: "",
            peijianren: [],
            flocation: "",//地点
            placeList: "",//平台获取地点
            standardList: "",//隐患描述集合
            addfd: 0, //添加描述
            htdetailfLevelName: "",//隐患标准空对象
            judgeInfo:0,
            fdutyUnitName: "",
            updateInfo:"",
            empList3:"",//责任人
            checkboxID: false,//判断是否当班处理
            checkQuick: false,//判断是否快速下达
            checkDuty: false,//判断是否罚款
            fineway: "0",
            finewayList: [],
            fineInfoList:"",
            roleList:"",
            empList:[],
            finerecord:{},
            htdetail:{

            },

            /***************************************************/
            riskcheckresult: "",
            temprisksite: "",
            risksiteoutofcontrolite: "",
            temprisksiteoutofcontrolite: "",
            risksiteoutofcontrolitems: "",
            otherfiles: null,
            status1: "失控",
            status: "未失控",
            riskcontrolList: "",
            stringriskcontrols: "",
            nowrisksiteoutofcontrolitem: 0,
            risksiteoutofcontrolitemcount: 0,
            tempitem: "",
            filelength: 0,
            fileIndex: 0,
            temprisksiteid: "",
            riskmcontrolitem: [],
            status2: "1",
            multiStatus:"0",
            multiCheckTime:"",
            /***************************************************/
        },
        created: function () {
            this.getDepartment();
            this.getUserinfoList();
            this.getEnterprise_data_dictionaryListForOrg();
            this.NowHtdetailStandard();
            this.Htdetaillevelsettin();
            this.getRoleTypes();
            this.getPlaceListForEnterprise();

        },
        mounted: function () {
            var _self = this;

            var month = (new Date()).getMonth()+1;
            if(month<10){
                month = "0"+month;
            }
            _self.checkTime = (new Date()).getFullYear()+"-"+month+"-"+(new Date()).getDate();
            _self.checkDepartment = "<%=userDepartmentID%>"+"||"+"<%=userDepartment%>";
            _self.checkName = "<%=userid%>"+"||"+"<%=username%>";
            this.getUserinfoList();

//            _self.multiSlctCheckTime = (new Date()).getFullYear()+"-"+month+"-"+(new Date()).getDate();
            var riskSiteID =$("#riskSiteID").val();
            var frameWorkID =$("#frameWorkID").val();
            $.post(projectName+"/RiskSiteAboutMe/getRiskHazardList/"+ frameWorkID + "/" + riskSiteID,function(data){
                //数据信息默认自动调入
                data.forEach(function(val,index){
                    val.checkTime = (new Date()).getFullYear()+"-"+month+"-"+(new Date()).getDate();
                    val.checkDepartment = "<%=userDepartment%>";
                    val.checkDepartmentID = "<%=userDepartmentID%>";
                    val.checkName = "<%=username%>";
                    val.checkId = "<%=userid%>";
                    val.status = "0";
                    val.question="检查合格";
                    val.attachNum = 0;
                });
                _self.riskHazardList = data;
                if(_self.riskHazardList.length == 1){
                    //自动填充编辑空间
                    _self.updateRiskHazard(_self.riskHazardList[0]);
                }
            });
        },
        updated: function () {
        },
        watch: {
            'multiSlctResult':{
                handler: function (val, oldVal) {
                    var $this = this;
                    $this.multiSlctCheckTime = $("#multiCheckTime").val();
                    $this.multiStatus = $("input[name='mutiSelectStatus']:checked").val();
                }
            },
            'multiStatus':{
                handler:function(){
                    var $this = this;
                    $this.multiSlctCheckTime = $("#multiCheckTime").val();
                }
            },
            'multiSlctCheckTime':{
                handler:function(){
                    var $this = this;
                    $this.multiStatus = $("input[name='mutiSelectStatus']:checked").val();
                }
            },
            'checkDepartment': {
                handler: function (val, oldVal) {
                    var $this = this;
                    $this.getFilterUserList();
                },
                deep: true
            },
            'multiSlctDept':{
                handler: function (val, oldVal) {
                    var $this = this;
                    $this.getMultiFilterUserList();
                },
                deep: true
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
            },

            'checkboxID': {
                //当班处理，隐藏整改期限和直接下达
                handler: function (val, oldVal) {
                    var _self = this;
                    if (_self.checkboxID) {//模态框隐藏
                        $("#showDiv").hide();
                    } else {//模态框展示
                        $("#showDiv").show()
                    }
                }
                ,
                deep: true
            },
            //是否直接下达的事件
            'checkQuick': {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (_self.checkQuick) {//模态框隐藏
                        $("#showspan1").hide();
                        $("#showspan2").show();
                    } else {//模态框展示
                        $("#showspan2").hide();
                        $("#showspan1").show();
                    }
                },
                deep: true
            },
            'checkDuty': {
                //是否罚款
                handler: function (val, oldVal) {
                    var _self = this;
                    if (_self.finewayList.length != 0 && _self.fisFinePerson != val) {
                        _self.recordOldVal = _self.finewayList;
                        _self.finewayList = [];
                    }
                    if (_self.checkDuty) {//模态框隐藏
                        $("#showDuty").show();
                        if (_self.fineway == "0") {
                            $("#fineByUnit").show();
                            $("#fineByPerson").show();

                        } else {
                            $("#fineByUnit").hide();
                            $("#fineByPerson").show();
                        }
                    } else {//模态框展示
                        $("#showDuty").hide();
                        $("#fineByPerson").hide();
                        $("#fineByUnit").hide();

                        //_self.htdetail.fdangBanChuLi=true;
                    }
                    if (_self.fineway == _self.fisFinePerson) {
                        _self.finewayList = _self.recordOldVal;
                    }
                },
                deep: true
            },
        },
        methods: {

            //获取部门列表信息
            getDepartment: function () {
                var _self = this;
                $.post(projectName + "/PlatForm/getDepartment", function (data) {
                    _self.departmentList = data;
                    _self.multiDeptList = data;
                });
            },
            getUserinfoList: function () {
                var _self = this;
                $.get(projectName + "/PlatForm/getUserinfoList", function (data) {
                    _self.responsibleList = data;
                    _self.peijianList = data;
                    _self.multiPeijianList = data;
                    _self.getFilterUserList();

                });
            },
            getFilterUserList:function(){
                var $this = this;
                var checkedUsers = [];
                if($this.checkDepartment != null && $this.checkDepartment != ''){
                    var orgInfo = $this.checkDepartment.split("||");
                    $this.checkedDepartmentID = orgInfo[0];
                    $this.checkedDepartment = orgInfo[1];
                    if($this.responsibleList != null && $this.responsibleList.length > 0){
                        var userList = $this.responsibleList;
                        userList.forEach(function(userVal,userIndex){
                            if(orgInfo[0] == userVal.fOrgID_Auto){
                                checkedUsers.push(userVal);
                            }
                        });
                    }
                    $this.checkedUserList = checkedUsers;
                }
            },
            getMultiFilterUserList:function(){
                var $this = this;
                var multiCheckedUsers = [];
                if($this.multiSlctDept != null && $this.multiSlctDept != ''){
                    var multiOrgInfo = $this.multiSlctDept.split("||");
                    $this.multiSlctDeptID = multiOrgInfo[0];
                    $this.multiSlctDeptName =multiOrgInfo[1];
                    if($this.responsibleList != null && $this.responsibleList.length>0){
                        var multiUserList = $this.responsibleList;
                        multiUserList.forEach(function(mulVal,mulIndex){
                            if(multiOrgInfo[0] ==mulVal.fOrgID_Auto){
                                multiCheckedUsers.push(mulVal);
                            }
                        });
                    }
                    $this.multiSlctUserList = multiCheckedUsers;
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
                        _self.majorList = data.专业类型
                        _self.jihualeixing = data.计划类型;
                        _self.banCi = data.班次;
                        _self.checkData = data.检查类型
                    },
                });
            },
            //创建隐患标准的空对象
            NowHtdetailStandard: function () {
                var _self = this;
                $.get(projectName + "/RiskControlAnalyzeControl/NewHtdetailstandard", function (data) {
                    _self.htdetailstandard = data;
                    _self.getHtdetailstandardList();
                });
            },
            //获取隐患描述
            getHtdetailstandardList: function () {
                var _self = this;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskControlAnalyzeControl/getHtdetailstandardList",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.htdetailstandard),
                    success: function (data) {
                        if(!data){
                            _self.standardList = {};
                        }else{
                            _self.standardList = data;
                        }
                    }
                })
            },
            //获取隐患等级
            Htdetaillevelsettin: function () {
                var _self = this;
                $.post(projectName + "/RiskControlAnalyzeControl/htdetaillevelsetting", function (data) {

                    _self.htdetailfLevelName = data;
                });
            },
            //获取地点信息
            getPlaceListForEnterprise: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.post(projectName + "/PlatForm/getPlaceListForEnterprise", function (data) {
                    _self.placeList = data.rows;
                });
            },
            //根据选择部门筛选可选择人员
            changeEmp:function(){
            },
            //选取一条具体风险展示信息
            updateRiskHazard:function(riskHazardItem){
                var _self = this;
                _self.updatedRiskHazard = riskHazardItem;
                _self.updatedRiskHazard.questionDesc = riskHazardItem.question;
                //附件信息
                _self.attachFiles = [{}];
                _self.attachFileList = [{}];
                //颜色
                _self.riskColor = riskHazardItem.RiskColor;
            },

            //删除一条具体风险
            delRiskHazard:function(riskHazardItem){
                var _self = this;
                var hazardList = _self.riskHazardList;
                hazardList.forEach(function(val,index){
                    if(val.HazardID == riskHazardItem.HazardID){
                        hazardList.splice(index,1);
                    }
                });
                _self.riskHazardList = hazardList;
            },
            //设置隐患信息
            openHideTroubleTab:function(riskHazardItem){
                var _self = this;
                _self.riskControlID = riskHazardItem.HazardID;
                _self.flocation = riskHazardItem.TopName;
                $("#myfdescription").val(riskHazardItem.question);
                $("#fcatagories").val(riskHazardItem.HazardMajorType);
                $('#addHiddenTroubleInfo').modal('show');
            },
            closeTroubleTab:function(){
                this.deleteTroubleTab();
                $("#addHiddenTroubleInfo").hide();
            },
            //单条风险回写到列表
            saveRiskHazardItem:function(){

                var _self = this;
                _self.checkTime = $("#checkTime").val();
                if(_self.checkTime == null || _self.checkTime == ''){
                    _self.showToast("warning", "检查时间不能为空！");
                    return;
                }
                if(_self.checkDepartment == null ||_self.checkDepartment.size <= 0){
                    _self.showToast("warning", "检查部门不能为空！");
                    return;
                }
                if(_self.checkName == null || _self.checkName.size <= 0 ){
                    _self.showToast("warning", "检查人不能为空！");
                    return;
                }
                //检查时间
                _self.updatedRiskHazard.checkTime = _self.checkTime;
                //检查部门
                _self.updatedRiskHazard.checkDepartment = _self.checkedDepartment;
                _self.updatedRiskHazard.checkDepartmentID = _self.checkedDepartmentID;
                //检查人
                var checkUserInfo = _self.checkName.split("||");
                _self.updatedRiskHazard.checkId = checkUserInfo[0];
                _self.updatedRiskHazard.checkName = checkUserInfo[1];
                //陪检人
                var peijianrenName = "";
                var peijianrenID = "";
               _self.checkPeijianren.forEach(function(peijianren,index){
                   var peijianrenInfo = peijianren.split("||");
                   peijianrenID += peijianrenInfo[0]+",";
                   peijianrenName += peijianrenInfo[1]+",";
               });


                _self.updatedRiskHazard.checkPeijianren = peijianrenName;
                _self.updatedRiskHazard.checkPeijianrenID = peijianrenID;

                //状态
                _self.updatedRiskHazard.status =$("input[name='status']:checked").val();
                _self.updatedRiskHazard.question = _self.updatedRiskHazard.questionDesc;

                //是否进入隐患系统
//                _self.updatedRiskHazard.htChoose = $("input[name='htChoose']:checked").val();

                //附件信息
                _self.updatedRiskHazard.attachFileList = _self.attachFiles;
                //附件名称信息
                var names="";
                var num = 0;
                _self.attachFiles.forEach(function(val,index){
                    names += val.fileName + ",";
                    num ++;
                });
                _self.updatedRiskHazard.attachFileNames = names;
                _self.updatedRiskHazard.attachNum = num-1;

                var hazardList = _self.riskHazardList;
                hazardList.forEach(function(val,index){
                    if(val.HazardID == _self.updatedRiskHazard.HazardID){
                        hazardList.splice(index,1);
                        hazardList.splice(index,0,_self.updatedRiskHazard);
                    }
                });
                _self.riskHazardList = hazardList;
            },
            //风险管控历史List保存
            saveRiskHazardList:function(){
                var _self = this;
                if(_self.riskHazardList.length == 1){
                    _self.saveRiskHazardItem();
                }
                var riskControlHistoryList = [];
                _self.riskHazardList.forEach(function(val,index){
                    var riskControlHistory = {};
                    riskControlHistory.frameworkID = $("#frameWorkID").val();
                    riskControlHistory.riskSiteName = val.TopName;
                    riskControlHistory.riskSiteID = val.TopRiskSiteID;
                    riskControlHistory.riskObjName = val.ChildName;
                    riskControlHistory.riskObjID = val.ChildRiskSiteID;
                    riskControlHistory.riskHazardName =val.HazardName;
                    riskControlHistory.riskHazardID = val.HazardID;
                    riskControlHistory.majorType = val.HazardMajorType;
                    riskControlHistory.riskValue = val.RiskLevel;
                    riskControlHistory.checkTime = val.checkTime;
                    riskControlHistory.riskControlLevel= "" ;
                    riskControlHistory.checkDept = val.checkDepartment;
                    riskControlHistory.checkDepteID = val.checkDepartmentID;
                    riskControlHistory.checkerName = val.checkName;
                    riskControlHistory.checkerID = val.checkId;
                    riskControlHistory.checkResult = val.question;
                    riskControlHistory.riskState = val.status;
                    riskControlHistory.attachFileList = val.attachFileList;
                    riskControlHistory.htdetail = val.htdetail;
                    riskControlHistory.riskControlLevel = val.ControlRangeName;
                    riskControlHistory.checkPeijianren = val.checkPeijianren;
                    riskControlHistory.checkPeijianrenID = val.checkPeijianrenID;
                    riskControlHistoryList.push(riskControlHistory);
                });
                $.ajax({
                    url: projectName + "/RiskSiteAboutMe/saveRiskControlHistoryList", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(riskControlHistoryList),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    dataType: "json",//预期服务器返回的数据类型。
                    async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        if(data){
                            _self.showToast("success", "保存成功！");
                        }

                    },
                });

            },
            //附件上传（添加方法）
            uploadSuccess: function (response, file, fileList) {
                var _self = this;
                var uploadFile = {};
                var attachmentUUID = "riskControlAttachmentidd";
                uploadFile["fileId"] = response;
                uploadFile["fileName"] = file.name;
                uploadFile["attachmentUUID"] = attachmentUUID;
                _self.attachFiles.splice(_self.attachFiles.length-1,1);
                _self.attachFiles.push(uploadFile);
                _self.attachFiles.push({});
                _self.attachFileList = _self.attachFiles;

            },

            showStandard: function () {
                var _self = this;
                for (var i = 0; i < _self.standardList.length; i++) {
                    if (_self.standardList[i].fHtdetailDescription != $("#fdescription").val()) {
                    } else {
                        $("#flevel").val(_self.standardList[i].fHtdetailLevel);
                        $("#fcatagories").val(_self.standardList[i].fMajorType);
                        _self.htdetail.fhiddenDangerStandard = _self.standardList[i].fStandardID;

                        vueApp.finewayList = [];
                        vueApp.recordOldVal = [];
                        if (vueApp.standardList[i].mPunish.length > 0) {
                            var PersonOrUnit = -1;
                            for (var j = 0; j < vueApp.standardList[i].mPunish.length; j++) {
                                if (vueApp.standardList[i].mPunish[j].fFineDuty != null) {
                                    vueApp.finewayList.push(vueApp.standardList[i].mPunish[j]);
                                    vueApp.recordOldVal.push(vueApp.standardList[i].mPunish[j]);
                                } else {
                                    PersonOrUnit = 0;
                                    $("#fMoeney").val(vueApp.standardList[i].mPunish[0].fFineMoney);
                                }
                            }
                            if (PersonOrUnit == 0) {
                                _self.fineway = "0";
                                _self.fisFinePerson = "0";
                            } else {
                                _self.fineway = "1";
                                _self.fisFinePerson = "1";
                            }
                            _self.checkDuty = true;
                        } else {
                        }
                    }
                    ;
                }
            },
            addFdescription1: function () {
                var _self = this;
                _self.addfd = 1;
                _self.finewayList = [];
                $("#myfdescription").hide();
                $("#fdescription").show();
                _self.showStandard();
            },
            addFdescription: function () {
                var _self = this;
                _self.addfd = 0;
                $("#fdescription").hide();
                $("#myfdescription").show();
                _self.finewayList = [];
                _self.htdetail.fhiddenDangerStandard = null;
            },
            //隐患信息中责任部门和责任人级联
            myChange: function () {
                var _self = this;
                _self.empList3 = "";
                _self.fdutyPersonName = "";
                var orgID = "-1";
                for (var i = 0; i < _self.departmentList.length; i++) {
                    if (_self.departmentList[i].fOrg_Name == _self.fdutyUnitName) {
                        orgID = _self.departmentList[i].fOrgID;
                    }
                }
                if (orgID != "-1") {
                    //url:发送请求地址。
                    //data:待发送 Key/value 参数。
                    //callback:发送成功时回调函数。
                    //type:返回内容格式，xml, html, script, json, text, _default。
                    $.post(projectName + "/PlatForm/getCurrOrgEmpList/" + orgID, function (data) {
                        _self.empList3 = data;
                    });
                }
            },
            //获取隐患标准从表空对象
            getNewHtdetailstandardpunish: function () {
                var _self = this;
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/RiskControlAnalyzeControl/NewHtdetailstandardpunish", function (data) {
                    if (_self.fineway == "1") {
                        if (_self.finewayList.length != 0) {
                            for (var i = 0; i < _self.finewayList.length; i++) {
                                if (_self.finewayList[i].fDutyPerson == 1) {
                                    data.fDutyPerson = 0;
                                }
                            }
                        } else {
                            data.fDutyPerson = 1;
                        }
                        data.page = 1;
                    } else {
                        data.fDutyPerson = '0'
                        data.page = null;
                    }
                    data.fDeductPoint = 0;
                    data.fFineMoney = 0;
                    _self.finewayList.push(data);
                });
            },
            //删除一条罚款信息
            deleteInfoList: function (index) {
                var _self = this;
                _self.finewayList.splice(index, 1);
            },
            //获取人员信息
            getCurrOrgEmpList: function (index, judge) {
                var _self = this;
                _self.empList = "";
                var orgID = "-1";
                if (judge == 1) {
                    for (var i = 0; i < _self.finewayList.length; i++) {
                        if (i == index) {
                            _self.finewayList[index].fFineDepartmentPerson = "";
                            $("#t" + i).attr("disabled", false);
                        } else {
                            $("#t" + i).attr("disabled", true);
                        }
                    }
                } else {
                    for (var i = 0; i < _self.finewayList.length; i++) {
                        $("#t" + i).attr("disabled", false);
                    }
                }
                for (var i = 0; i < _self.departmentList.length; i++) {
                    if (_self.departmentList[i].fOrg_Name == _self.finewayList[index].fFineDepartment) {
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
                    });
                }
            },
            //将隐患信息保存到相应风险管控信息
            saveHiddenTroubleInfotoRisk:function(){
                var _self = this;
                if ($("#fpCFS").val() == "-1" || $("#fpCFS").val() == "" || $("#fpCFS").val() == null) {
                    _self.showToast("warning", "请选择检查类型")
                    return;
                }

                if (_self.flocation == "" || _self.flocation == null) {
                    _self.showToast("warning", "请选择隐患地点")
                    return;
                }
                if (_self.addfd == 1) {
                    if ($("#fdescription").val() == "") {
                        _self.showToast("warning", "请选择隐患描述");
                        return;
                    } else {
                        _self.htdetail.fdescription = $("#fdescription").val();

                    }

                } else if (_self.addfd == 0) {

                    if ($("#myfdescription").val() == "") {
                        _self.showToast("warning", "请填写隐患描述");
                        return;
                    } else {
                        _self.htdetail.fdescription = $("#myfdescription").val();
                        _self.htdetail.fhiddenDangerStandard = null;

                    }
                }
                if ($("#fcatagories").val() == "-1" || $("#fcatagories").val() == "" || $("#fcatagories").val() == null) {
                    _self.showToast("warning", "请选择专业");
                    return;
                }
                if ($("#flevel").val() == "-1" || $("#flevel").val() == "" || $("#flevel").val() == null) {
                    _self.showToast("warning", "请选择隐患等级");
                    return;
                }
                if ($("#fdutyUnitName").val() == "" || $("#fdutyUnitName").val() == null) {
                    _self.showToast("warning", "请选择责任单位");
                    return;
                }
                if ($("#classIndex").val() == "-1" || $("#classIndex").val() == "" || $("#classIndex").val() == null) {
                    _self.showToast("warning", "请选择班次");
                    return;
                }
                if (_self.checkDuty) {
                    if (_self.fineway == "0") {
                        if ($("#fMoeney").val() == "") {
                            _self.showToast("warning", "请填写罚款金额")
                            return;
                        } else {
                            var reg = /(^[1-9](\d+)?(\.\d{1,2})?$)|(^(0){1}$)|(^\d\.\d{1,2}?$)/;
                            if (!reg.test($("#fMoeney").val())) {
                                _self.showToast("warning", "罚款金额为整数或最多为小数点后两位");
                                return;
                            }
                        }
                        var reg = /(^[1-9](\d+)?(\.\d{1,2})?$)|(^(0){1}$)|(^\d\.\d{1,2}?$)/;
                        for (var i = 0; i < _self.finewayList.length; i++) {
                            if (_self.finewayList[i].fFineDuty == "" || _self.finewayList[i].fFineDuty == null) {
                                _self.showToast("warning", "请选择岗位");
                                return;

                            }
                            if (_self.finewayList[i].fFineDepartment == "" || _self.finewayList[i].fFineDepartment == null) {
                                _self.showToast("warning", "请选择责任部门");
                                return;

                            }
                            if (_self.finewayList[i].fFineDepartmentPerson == "" || _self.finewayList[i].fFineDepartmentPerson == null) {

                                _self.showToast("warning", "请选择责任人");
                                return;
                            }
                            if (!reg.test(_self.finewayList[i].fDeductPoint)) {
                                _self.showToast("warning", "分值为整数或最多为小数点后两位");
                                return;
                            }

                            if (!reg.test(_self.finewayList[i].fFineMoney)) {
                                _self.showToast("warning", "罚款金额为整数或最多为小数点后两位");
                                return;
                            }
                        }

                    } else {
                        var reg = /(^[1-9](\d+)?(\.\d{1,2})?$)|(^(0){1}$)|(^\d\.\d{1,2}?$)/;
                        var judge = 0;
                        for (var i = 0; i < _self.finewayList.length; i++) {
                            if (_self.finewayList[i].fDutyPerson == 1||_self.finewayList[i].fDutyPerson == "1") {
                                judge++;
                            }

                            if (_self.finewayList[i].fFineDepartment == "" || _self.finewayList[i].fFineDepartment == null) {
                                _self.showToast("warning", "请选择责任部门");
                                return;

                            }
                            if (_self.finewayList[i].fFineDepartmentPerson == "" || _self.finewayList[i].fFineDepartmentPerson == null) {

                                _self.showToast("warning", "请选择责任人");
                                return;
                            }
                            if (!reg.test(_self.finewayList[i].fDeductPoint)) {
                                _self.showToast("warning", "分值为整数或最多为小数点后两位");
                                return;
                            }

                            if (!reg.test(_self.finewayList[i].fFineMoney)) {
                                _self.showToast("warning", "罚款金额为整数或最多为小数点后两位");
                                return;
                            }
                        }
                        if (judge == 0) {
                            _self.showToast("warning", "主要责任人至少要有一个");
                            return;

                        }
                        if (judge > 1) {
                            _self.showToast("warning", "主要责任人只能有一个");
                            return;

                        }
                    }

                }
                if (_self.checkboxID) {
                    _self.htdetail.fdangBanChuLi = true;
                } else {
                    if ($("#fwillSolutionTime").val() == "") {
                        _self.showToast("warning", "请选择整改期限");
                        return;
                    }
                    _self.htdetail.fdangBanChuLi = false;

                }
                if (_self.checkQuick) {
                    _self.htdetail.fisRightNow = true;
                    _self.htdetail.fZGLX = 1;
                } else {

                    _self.htdetail.fisRightNow = false;
                    _self.htdetail.fZGLX = 2;
                }
                //是否罚款的操作
                if (_self.checkDuty) {
                    if ($("#fselect").val() == "0") {
                        _self.finerecord.fPunishUnit = true;
                        _self.finerecord.fPunishPersonal = false;
                        <%--var info = "<%=userDepartment%>" + "," + "<%=username%>" + "," + _self.fdutyUnitName + "," + $("#fdescription").val() + "," + "0,0,0,0;";--%>
                        var info = "";
                        for (var i = 0; i < _self.finewayList.length; i++) {
                            if (i != _self.finewayList.length - 1) {
                                info += _self.finewayList[i].fFineDepartment + "," + _self.finewayList[i].fFineDuty + "," + _self.finewayList[i].fFineDepartmentPerson + "," + _self.finewayList[i].fDeductPoint + "," + _self.finewayList[i].fFineMoney + "," + _self.finewayList[i].fDutyPerson + "," + $("#fdescription").val() + "," + _self.finewayList[i].page + ";"
                            } else {
                                info += _self.finewayList[i].fFineDepartment + "," + _self.finewayList[i].fFineDuty + "," + _self.finewayList[i].fFineDepartmentPerson + "," + _self.finewayList[i].fDeductPoint + "," + _self.finewayList[i].fFineMoney + "," + _self.finewayList[i].fDutyPerson + "," + $("#fdescription").val() + "," + _self.finewayList[i].page;

                            }
                        }
                        _self.finerecord.fBePunishUnitName = _self.fdutyUnitName;
                        _self.finerecord.fDescription = info;
                        _self.finerecord.fMoeney = $("#fMoeney").val();
                    } else {
                        _self.finerecord.fPunishUnit = false;
                        _self.finerecord.fPunishPersonal = true;
                        var info = "";
                        for (var i = 0; i < _self.finewayList.length; i++) {
                            if (i != _self.finewayList.length - 1) {
                                info += _self.finewayList[i].fFineDepartment + "," + _self.finewayList[i].fFineDuty + "," + _self.finewayList[i].fFineDepartmentPerson + "," + _self.finewayList[i].fDeductPoint + "," + _self.finewayList[i].fFineMoney + "," + _self.finewayList[i].fDutyPerson + "," + _self.htdetail.fdescription + "," + _self.finewayList[i].page + ";"
                            } else {
                                info += _self.finewayList[i].fFineDepartment + "," + _self.finewayList[i].fFineDuty + "," + _self.finewayList[i].fFineDepartmentPerson + "," + _self.finewayList[i].fDeductPoint + "," + _self.finewayList[i].fFineMoney + "," + _self.finewayList[i].fDutyPerson + "," + _self.htdetail.fdescription + "," + _self.finewayList[i].page;

                            }
                        }
                        _self.finerecord.fDescription = info;
                    }

                    _self.finerecord.fPunishTime = _self.htdetail.fdetectionTime;
                    _self.finerecord.fBePunishUnitName = $("#fdutyUnitName").val();
                    _self.finerecord.fCreater = "<%=username%>";
                    _self.finerecord.fCreaterID =<%=userid%>;
                    _self.finerecord.fPunishNumber = _self.htdetail.fdetectionTime + "罚款单";
                }

                for (var i = 0; i < _self.departmentList.length; i++) {
                    if ($("#fdutyUnitName").val() == _self.departmentList[i].fOrg_Name) {
                        _self.htdetail.fdutyUnitName = _self.departmentList[i].fOrg_Name;
                        _self.htdetail.fdutyUnitID = _self.departmentList[i].fOrgID_Auto;
                        if (_self.checkDuty) {
                            _self.finerecord.fBePunishUnitID = _self.departmentList[i].fOrgID_Auto + "";
                        }
                    }
                }
                var judgeYOrN = 0;
                for (var i = 0; i < _self.placeList.length; i++) {
                    if (_self.flocation == _self.placeList[i].fPlace_Name) {
                        _self.htdetail.flocationID = _self.placeList[i].fPlace_GUID;
                        _self.htdetail.flocation = _self.flocation;
                        judgeYOrN = 1;
                        break;
                    }
                }
                if (judgeYOrN != 1) {
                    _self.htdetail.flocation = _self.flocation;
                    $.ajax({
                        url: projectName + "/PlatForm/savePlaceOfBussiness/" + _self.flocation,
                        type: "POST",
                        dataType: "json",
                        async: false,
                        contentType: "application/json",
                        success: function (data) {
                            _self.htdetail.flocationID = data;
                            _self.getPlaceListForEnterprise();
                        },
                    })
                }
                _self.htdetail.fcheckedDeptName = "<%=userDepartment%>";
                _self.htdetail.fcheckedDeptID = <%=userDepartmentID%>;
                _self.htdetail.fcreaterID = "<%=userid%>";
                _self.htdetail.fcreaterName = "<%=username%>";
                _self.htdetail.fregisterID = "<%=userid%>";
                _self.htdetail.fregister = "<%=username%>";
                _self.htdetail.fpCFS = $("#fpCFS").val();
                _self.htdetail.fisFromTrineSystem = _self.lossControlItemID;
                if (_self.peijianren.length != 0) {
                    var pei = ""
                    for (var i = 0; i < _self.peijianren.length; i++) {
                        if (i != _self.peijianren.length - 1) {
                            pei += _self.peijianren[i] + ","
                        }
                        if (i == _self.peijianren.length - 1) {
                            pei += _self.peijianren[i]
                        }
                    }
                    _self.htdetail.peijianRenYuan = pei;
                } else {
                    _self.htdetail.peijianRenYuan = null;

                }
                _self.htdetail.fcatagories = $("#fcatagories").val();
                _self.htdetail.flevel = $("#flevel").val();
                if(_self.fineway=="0"){
                    if ($("#fdutyPersonName").val() == "-1") {
                        _self.htdetail.fdutyPersonName = null
                    }else{
                        _self.htdetail.fdutyPersonName = $("#fdutyPersonName").val();
                        for (var i = 0; i < _self.empList3.length; i++) {
                            if ($("#fdutyPersonName").val() == _self.empList3[i].fEmp_Name) {
                                _self.htdetail.fdutyPersonID = _self.empList3[i].fEmp_ID_Auto;
                                _self.htdetail.fdutyPersonName = $("#fdutyPersonName").val();
                                if (_self.checkDuty == true) {
                                    _self.finerecord.fBePunishPersonID = _self.departmentList[i].fEmp_ID_Auto + "";
                                }
                            }
                        }
                    }
                }else{
                    for (var i = 0; i < _self.finewayList.length; i++) {
                        if (_self.finewayList[i].fDutyPerson == "1"||_self.finewayList[i].fDutyPerson == 1) {

                            _self.htdetail.fdutyPersonName = _self.finewayList[i].fFineDepartmentPerson;
                            break;
                        }
                    }
                }
                _self.htdetail.classIndex = $("#classIndex").val();
                _self.htdetail.fwillSolutionTime = $("#fwillSolutionTime").val();

                /****************以上为验证信息**********************/





                var riskCtrolId = _self.riskControlID;
                var hazardList = _self.riskHazardList;
                hazardList.forEach(function(val,index){
                    if(val.HazardID == riskCtrolId){
                        val.htdetail = _self.htdetail;
                        val.finerecord = _self.finerecord;
                        hazardList.splice(index,1);
                        hazardList.splice(index,0,val);
                    }
                });
                _self.riskHazardList = hazardList;
                $("#addHiddenTroubleInfo").hide();
            },
            //暂时添加一个失控子条目
            //删除附件图片
            deleteAttch: function (otherfile, otherindex) {
                var _self = this;
                _self.attachFiles.splice(otherindex, 1);
                _self.attachFileList = _self.attachFiles;
                $.post(projectName + "/RiskCheckResult/deleteAttachMent", {"attchID": otherfile.attchID}, function (data) {
                    _self.showToast("success", "删除附件成功!");
                });

            },

            deleteTroubleTab:function(){
                var _self = this;
                //检查类型
                $("#fpCFS").val("");
                //陪检人员
                this.peijianren = [];
                //隐患地点
                this.flocation = "";
                //隐患描述
                $("#myfdescription").val("");
                //专业/等级
                $("#fcatagories").val("");
                $("#flevel").val("");
                //责任部门/责任人
                this.fdutyUnitName = {};
                $("#fdutyPersonName").val("");
                //班次
                $("#classIndex").val("");
                //当班处理
                this.checkboxID = false;
                //整改期限
                $("#fwillSolutionTime").val("");
                //直接下达
                this.checkQuick=false;
                //是否罚款
                this.checkDuty=false;
                //罚款方式
                this.fineway="0";
                //罚款金额
                $("#fMoeney").val("");
                //罚款信息列表
                this.fineInfoList = [];

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

            //全选按钮的事件
            checkedAll: function () {
                var _this = this;
                if (_this.checkedone) {//实现反选
                    _this.checkIDs = [];
                } else {//实现全选
                    _this.checkIDs = [];
                    _this.riskHazardList.forEach(function(item,index){
                        _this.checkIDs.push(index);
                    });
                }
            },
            //批量修改
            showBatchUpdateDiv:function(){
                var _self = this;
                if(_self.checkIDs.length <= 0){
                    _self.showToast("warning", "请选择要修改的风险管控信息！");
                    return;
                }

//                $("#modal-regular").show();
                $('#modal-regular').modal('show');

            },
            saveMultiSlctInfo:function(){
                var $this = this;
//                var checkTime = $this.multiSlctCheckTime;

                var isRight = true;
                if(this.multiSlctDept == null || this.multiSlctDept == ""){
                    $this.showToast("error", "请选择检查部门!");
                    $("#multiSlctDept").focus();
                    isRight = false;
                }

                var deptInfo = this.multiSlctDept.split("||");
                var checkDeptId = deptInfo[0];
                var checkDeptName = deptInfo[1];

                if($this.multiSlctUser == null || $this.multiSlctUser==""){
                    $this.showToast("error", "请选择检查人！");
                    $("#multiSlctUser").focus();
                    isRight = false;
                }
                var checkUserInfo = $this.multiSlctUser.split("||");
                var checkUserId = checkUserInfo[0];
                var checkUserName = checkUserInfo[1];

                //陪检人员
                var multiPeijian = $this.multiCheckPeijianren;
                var peijianIds = "";
                var peijianNames = "";

                multiPeijian.forEach(function(val,index){
                    var peijianInfo = val.split("||");
                    peijianIds += peijianInfo[0] + ",";
                    peijianNames += peijianInfo[1] + ",";
                });



                var checkTime = $("#multiCheckTime").val();
                if(checkTime == ""){
                    $this.showToast("error", "请选择检查时间！");
                    $("#multiCheckTime").focus();
                    isRight = false;
                }
                var checkStatus = $("input[name='mutiSelectStatus']:checked").val();
                if(checkStatus == null || checkStatus == ""){
                    $this.showToast("error", "请选择状态！");
                    isRight = false;
                }
                var checkRsult = $this.multiSlctResult;
                if(checkRsult == null || checkRsult == ""){
                    $this.showToast("error", "请输入检查结果！");
                    $("#multiCheckTime").focus();
                    isRight = false;
                }
                if(isRight == true){
                    var riskctrolList = $this.riskHazardList;
                    $this.checkIDs.forEach(function(val,index){
                        var item = riskctrolList[val];
                        item.checkTime = checkTime;
                        item.checkDepartment = checkDeptName;
                        item.checkDepartmentID = checkDeptId;
                        item.checkName = checkUserName;
                        item.checkId = checkUserId;
                        item.status = checkStatus;
                        item.question = checkRsult;
                        item.checkPeijianren = peijianNames;
                        item.checkPeijianrenID = peijianIds;
                        riskctrolList.splice(val,1);
                        riskctrolList.splice(val,0,item);
                    });
                    $this.riskHazardList = riskctrolList;
                    $this.closeBatchUpdateDiv();
                }else{
                    $('#modal-regular').modal('show');
                }


            },
            closeBatchUpdateDiv:function(){
                this.clearBatchSlctData();
                $("#modal-regular").hide();
            },
            clearBatchSlctData:function(){
                this.multiSlctDept = [];
                this.multiSlctUser = [];
                this.multiSlctResult = '';
            },
            batchDelete:function(){
                var $this = this;
                if($this.checkIDs.length <= 0){
                    $this.showToast("warning", "请选择要删除的风险管控信息！");
                    return;
                }
                if(confirm("确定要删除选中的风险管控信息吗？")){
                    var riskctrolList = $this.riskHazardList;
                    var existList = [];
                    var delList = $this.checkIDs;
                    for(var i=0;i<riskctrolList.length;i++){
                        if(delList.indexOf(i) < 0){
                            existList.push(riskctrolList[i]);
                        }
                    }
//                    $this.checkIDs.forEach(function(val,index){
//                        riskctrolList.splice(val,1);
//                    });
                    $this.checkIDs = [];
                    $this.checkedone = false;
                    $this.riskHazardList = existList;
                }
            },

        },


        computed: {},
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
                        data: {name: 'Riskhazard'},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            attrArray = data;
                            for (var i = 0; i < attrArray.length; i++) {
                                if (val.toLowerCase() == attrArray[i].classpropertyName.toLowerCase()) {
                                    result = attrArray[i].classpropertyTitle;
                                    break;
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
                            break;
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


<script>$(function () {
    CompTree.init();
});</script>
<script>$(function () {
    UiTables.init();

});</script>
<script>$(document).ready(function () {
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
});</script>
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