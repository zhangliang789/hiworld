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
    <title>风险管控-安全风险管控计划-新增</title>
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
<%Integer MonthPlaneID = (Integer) request.getSession().getAttribute("MonthPlaneID");%>
<%Integer judgeShow = (Integer) request.getSession().getAttribute("judgeShow");%>
<% Emp userObj = (Emp) request.getSession().getAttribute("emp");
    String username = userObj.getFEmp_Name();
    String unitname = userObj.getFOrg_Name();
%>
<div id="page-content" style="min-height: 794px;">

    <input id="monthPlaneID" value="<%=MonthPlaneID%>" hidden>
    <input id="judgeShow" value="<%=judgeShow%>" hidden>
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-6">
                <div class="header-section">
                    <h1>黄陵二矿安全风险管控计划</h1></div>
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
                            <label class="control-label">黄陵二矿风险管控计划内容</label>
                            <div class="form-group" style="float: right;" v-if="showDelete!=-1">
                                <button type="" @click="getPageCount" data-toggle="modal"
                                        data-target="#modal-add" class="btn btn-effect-ripple btn-primary">添加检查点
                                </button>
                                <button type="submit" class="btn btn-effect-ripple btn-primary"
                                        @click="addRiskcontrolplanebymonth">保存
                                </button>
                                <%--<a href="#modal-regular" class="btn btn-effect-ripple btn-primary"--%>
                                <%--data-toggle="modal">参考采掘接续计划</a>--%>
                                <%--<button type="submit" class="btn btn-effect-ripple btn-primary">导出</button>--%>
                            </div>
                            <div class="form-group" style="float: right;" v-if="showDelete==-1">
                                <button type="" @click="backPlanMonth" data-toggle="modal"
                                        class="btn btn-effect-ripple btn-primary">返回
                                </button>
                            </div>
                            <div style="margin: 10px -15px;"></div>
                        </div>
                        <div class="col-sm-12" style="margin: 10px 0px;">
                            <div id="" class="">
                                <form method="post" class="form-horizontal" onsubmit="return false;">
                                    <div class="col-sm-hh">
                                        <label class="control-label">年份</label>
                                        <div class="col-sm-hh1">
                                            <input type="text" id="myyear" name="example-input-small"
                                                   class="form-control input-sm datepicker" readonly="readonly"
                                                   placeholder="">
                                        </div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                    </div>
                                    <div class="col-sm-hh">
                                        <label class="control-label" for="example-input-small">月份</label>
                                        <div class="col-sm-hh1">
                                            <input type="text" id="mymonth" name="example-input-small"
                                                   class="form-control input-sm datepicker1" readonly="readonly"
                                                   placeholder="">
                                        </div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                    </div>
                                    <div class="col-sm-hh">
                                        <label class="control-label" for="example-input-small">计划类型</label>
                                        <div class="col-sm-hh1">
                                            <select type="text" id="planName"
                                                    name="example-input-small"
                                                    class="form-control input-sm" placeholder="">

                                                <option value=null>请选择计划类型</option>
                                                <option v-for="(mymonthplan,index) in monthPlanList">
                                                    {{mymonthplan.fData_Name}}
                                                </option>

                                            </select>
                                        </div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                    </div>
                                    <div class="col-sm-hh">
                                        <label class="control-label" for="example-input-small">系统</label>
                                        <div class="col-sm-hh1">
                                            <select id="monthplanMajorType" name="example-if-password"
                                                    class="form-control nihao1" placeholder="请选择系统"  type="text">
                                                <option value="生产系统">生产系统</option>
                                                <option value="机电运输系统">机电运输系统</option>
                                                <option value="一通三防系统">一通三防系统</option>
                                                <option value="地测防治水">地测防治水</option>
                                                <option value="监测监控系统">监测监控系统</option>
                                                <option value="矿井安全生产">矿井安全生产</option>
                                                <%--<option v-for="(mycategory,index) in categoryList">--%>
                                                <%--{{mycategory.fData_Name}}--%>
                                                <%--</option>--%>
                                            </select>
                                        </div>
                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>

                                    </div>
                                    <div class="col-sm-hh">
                                        <label class="control-label" for="example-input-small">检查频次</label>
                                        <div class="col-sm-hh1">
                                            <select id="monthPlanFrequency" @change="showOrNot"
                                                    name="example-if-password"
                                                    class="form-control nihao1" placeholder="请选择检查频次"
                                                    type="text">
                                                <option value="">请选择检查频次</option>
                                                <option>每年</option>
                                                <option>每月</option>
                                                <option>每旬</option>
                                                <option>每周</option>
                                            </select>
                                        </div>

                                        <span style="color: red;position: absolute;top:7px;font-size: 16px">*</span>


                                    </div>
                                    <div class="col-sm-hh" id="showX" hidden>
                                        <label class="control-label" for="example-input-small">旬度</label>
                                        <div class="col-sm-hh1">
                                            <select id="xunDu"  name="example-if-password"
                                                    class="form-control nihao1" placeholder="请选择旬度"
                                                    type="text">
                                                <option value="">请选择旬度</option>
                                                <option>上旬</option>
                                                <option>中旬</option>
                                                <option>下旬</option>
                                            </select>
                                        </div>

                                        <span style="color: red;position: relative;top:7px;font-size: 16px">*</span>


                                    </div>
                                    <div class="col-sm-hh" id="showZ" hidden>
                                        <label class="control-label" for="example-input-small">周度</label>
                                        <div class="col-sm-hh1">
                                            <select id="zhouDu"  name="example-if-password"
                                                    class="form-control nihao1" placeholder="请选择周度"
                                                    type="text">
                                                <option value="">请选择周度</option>
                                                <option>第一周</option>
                                                <option>第二周</option>
                                                <option>第三周</option>
                                                <option>第四周</option>
                                                <option>第五周</option>
                                            </select>
                                        </div>

                                        <span style="color: red;position: relative;top:7px;font-size: 16px">*</span>


                                    </div>
                                </form>

                            </div>
                        </div>
                        <div class="col-sm-12" style="margin: 10px 0px;">
                            <label class="control-label">风险管控内容</label>
                            <div class="col-sm-12 " style="margin: 10px -15px;">
                                <textarea style="width:100%;" class="monthp1 form-control" id="monthplancontent"
                                          rows="5" cols="90" placeholder="请输入风险管控内容...">

                                </textarea>
                                <%--<span style="color: red;position: absolute;top:45px;right:0px ;font-size: 16px">*</span>--%>
                            </div>


                        </div>
                        <div class="col-sm-12 dib" style="margin: 10px 0px;">
                            <label style="" class="control-label">检查地点</label>


                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="table-responsive">
            <div class="table-responsive">
                <div style="overflow-y: auto;height: 300px; overflow-x: auto;width: auto"
                     id="example-datatable_wrapper1"
                     class="dataTables_wrapper form-inline no-footer">
                    <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                        <thead>
                        <tr>
                            <th class="text-center">序号</th>
                            <th class="text-center">{{'Name'|titleFilter('风险点')}}</th>
                            <th class="text-center">{{'RiskDamageType'|titleFilter('灾害类型')}}</th>
                            <th class="text-center">{{'riskLevel'|titleFilter('风险点等级')}}</th>
                            <th class="text-center" rowspan="2">{{'RiskColor'|titleFilter('预警程度')}}</th>
                            <%--
                                                        <th class="text-center">风险</th>
                            --%>
                            <th class="text-center">管控措施</th>
                            <th class="text-center" style="min-width: 15%">重点管控工作安排</th>
                            <th class="text-center">管控开始时间</th>
                            <th class="text-center">管控结束时间</th>
                            <th class="text-center" style="width: 15%">{{'managerUnitName'|titleFilter('责任部门')}}</th>
                            <th class="text-center" style="width: 12%">{{'managerName'|titleFilter('责任人')}}</th>
                            <th class="text-center" v-if="showDelete!=-1">操作</th>
                        </tr>

                        </thead>
                        <tbody>
                        <tr v-for="(myplanbymonthitem,index) in planbymonthitem">
                            <td class="text-center" v-text="index+1"></td>
                            <td class="text-center" v-text="myplanbymonthitem.mriskSite.name"></td>
                            <td class="text-center" v-text="myplanbymonthitem.mriskSite.riskDamageType"></td>
                            <td class="text-center" v-text="myplanbymonthitem.mriskSite.riskLevel"></td>
                            <td class="text-center"><span
                                    v-bind:style="'background-color:'+myplanbymonthitem.mriskSite.riskColor"
                                    class="btys"></span></td>
                            <%--
                                                        <td class="text-center" v-text="myplanbymonthitem.riskHazardsCount"></td>
                            --%>
                            <td class="text-center"><a @click="updateRiskControlMeasure(myplanbymonthitem.mriskSite)">{{myplanbymonthitem.controlMeasureCount}}</a>
                            </td>
                            <td><textarea :id="'t'+myplanbymonthitem.risksiteID" :value="myplanbymonthitem.keyContent"
                                          class="changeStyle" placeholder="请输入重点管控工作安排内容..."></textarea></td>
                            <td>

                                <row>
                                    <i-col span="12">
                                        <date-picker type="date"  v-model="myplanbymonthitem.planStartDate" placeholder="请选择管控开始时间" @on-open-change="confirmIndex(index)"  @on-change="selectStartTime" style="width: 110px"></date-picker>
                                    </i-col>
                                </row>
                            </td>
                            <td>

                                <row>
                                    <i-col span="12">
                                        <date-picker type="date"  v-model="myplanbymonthitem.planEndDate" placeholder="请选择管控结束时间" @on-open-change="confirmIndex(index)"  @on-change="selectEndTime" style="width: 110px"></date-picker>
                                    </i-col>
                                </row>
                            </td>
                            <td class="text-center">
                                <i-select  v-model="myplanbymonthitem.mUnits"  <%--@on-change="getCurrOrgEmpList(index)"--%>
                                           @on-change="changgeEmp(index)" filterable multiple clearable>
                                    <i-option v-for="(mydepart,mindex) in departmentList"
                                              :value="mydepart.fOrg_Name"
                                              :label="mydepart.fOrg_Name"
                                              :key="mindex">
                                        <span v-text="mydepart.fOrg_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="mydepart.fOrg_Name_Shorthand"></span>
                                    </i-option>

                                </i-select>

                                <%-- <select :id="'b'+myplanbymonthitem.risksiteID" @change="getCurrOrgEmpList(index)">
                                     <option>{{myplanbymonthitem.unitName}}</option>
                                     <option v-for="(mydepart,mindex) in departmentList">
                                         {{mydepart.fOrg_Name}}

                                     </option>

                                 </select>--%>

                            </td>
                            <td class="text-center">

                                <%--<select :id="'r'+myplanbymonthitem.risksiteID">
                                    <option>{{myplanbymonthitem.itemcheckerName}}</option>
                                    <option v-for="(myemp,index) in empList">
                                        {{myemp.fEmp_Name}}

                                    </option>

                                </select>--%>
                                <i-select v-model="myplanbymonthitem.mChecks"  filterable multiple clearable>
                                    <%--<option>{{myplanbymonthitem.itemcheckerName}}</option>--%>

                                    <i-option   v-for="(myemp,indexx) in peijianListlist[index]"
                                                :value="myemp.fEmp_Name"
                                                :label="myemp.fEmp_Name"
                                    >
                                        <span v-text="myemp.fEmp_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="myemp.fEmp_Name_Shorthand"></span>
                                    </i-option>

                                </i-select>
                            </td>
                            <td v-if="showDelete!=-1">
                                <a @click="deleperson(index)">删除</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!---查询父级风险点-->
    <div id="modal-add" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="min-height: 100%">
                <div class="modal-body" style="overflow-y: auto;height: 600px">
                    <div class="block-title">
                        <h4>选择风险点</h4></div>
                    <div class="col-sm-12" style="text-align: right;padding:0">
                        <div class="searchCon"><i class="hi hi-search"></i><input name="search" v-model="checkIDs"
                                                                                  id="keywords"
                                                                                  placeholder="输入风险点名称查询"
                                                                                  class="searchWrap"
                                                                                  type="text"></div>
                    </div>
                    <table id="gener" class="table table-striped table-bordered table-vcenter table-hover">
                        <thead>
                        <tr>
                            <%--<th class="text-center">--%>
                            <%--<label class="csscheckbox csscheckbox-primary">--%>
                            <%--<input type="checkbox">--%>
                            <%--<span></span>--%>
                            <%--</label>--%>
                            <%--</th>--%>
                            <%--<th class="text-center" style="width: 10%">序号</th>--%>
                            <th class="text-center" style="width: 15%">{{'Name'|titleFilter('风险点')}}</th>
                            <th class="text-center" style="width: 15%">{{'riskLevel'|titleFilter('风险点等级')}}</th>
                            <th class="text-center" style="width: 15%">{{'riskFrequency'|titleFilter('管控频次')}}</th>
                            <th class="text-center" style="width: 15%">状态</th>

                            <th class="text-center" style="width: 20%">{{'managerUnitName'|titleFilter('责任部门')}}</th>
                            <th class="text-center" style="width: 10%">操作</th>

                        </tr>
                        </thead>
                        <tbody id="myid" v-for="(rcm,index) in detailedList">
                        <tr :id="'rs'+rcm.riskSiteID">
                            <%--<td class="text-center">--%>
                            <%--<label class="csscheckbox csscheckbox-primary">--%>
                            <%--<input type="checkbox" @click="checkRisksite(rcm,index)">--%>
                            <%--<span></span>--%>
                            <%--</label>--%>
                            <%--</td>--%>
                            <%--<th class="text-center" v-text="index+1">1</th>--%>
                            <td v-text="rcm.name"></td>
                            <td v-text="rcm.riskLevel"></td>
                            <td v-text="rcm.riskFrequency"></td>
                            <td v-if="rcm.checkStatus==''||rcm.checkStatus==null||rcm.checkStatus==0">未检查</td>
                            <td v-if="rcm.checkStatus==1">已检查</td>
                            <td v-text="rcm.managerUnitName"></td>
                            <td class="text-center"><a class="btn btn-effect-ripple btn-primary"
                                                       @click="checkRisksite(rcm)">添加</a></td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="modal-footer">没找到？请
                        去<-风险辨识界面->添加风险点
                        <%--<button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal" @click="tijiao">提交风险点</button>--%>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-effect-ripple btn-danger"
                                data-dismiss="modal">关闭
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--参考采掘接续计划-->
    <div id="modal-regular" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div class="block-title">
                        <h4>6月份采掘接续计划</h4></div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="form-group">
                            <div class="table-responsive">
                                <div id="example-datatable_wrapper2" class="dataTables_wrapper form-inline no-footer">
                                    <div class="row" style="background-color: #fff;">
                                        <div class="col-sm-12">
                                            <div class="form-group" style="float: right;margin-right: 0px;">
                                                <button type="submit" class="btn btn-effect-ripple btn-primary">上月
                                                </button>
                                                <button type="submit" class="btn btn-effect-ripple btn-primary">下月
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <table id="general-table1"
                                           class="table table-striped table-bordered table-vcenter table-hover">
                                        <thead>
                                        <tr>
                                            <th class="text-center">序号</th>
                                            <th class="text-center">地点名字</th>
                                            <th class="text-center">施工队组</th>
                                            <th class="text-center">操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="text-center">1</td>
                                            <td class="text-center"></td>
                                            <td class="text-center"></td>
                                            <td class="text-center"></td>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary">保存</button>
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>

    <!--查看措施-->
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
                            风险点:{{risk1.name}}<%--<span>({{templength}})</span>--%>
                            <div style="float: right;font-size:12px">风险点等级：<span
                                    style="font-size:16px;color: #FF0000; ">{{risk1.riskLevel}}</span>
                            </div>
                        </h4>
                    </div>
                    <form method="post" class="form-horizontal" onsubmit="return false;">

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
                            >责任部门</label>
                                <div class="col-md-12">
                                    <%--  <select name="" class="form-control">
                                          <option value=""></option>
                                      </select>--%>
                                    <span type="text" class="form-control" v-text="risk1.managerUnitName"
                                          id="depart" readonly="readonly"> </span>
                                </div>
                            </div>
                            <div class="col-sm-6" style="padding: 0;"><label class="col-md-12 text-left"
                                                                             for="example-textarea-input">责任人</label>
                                <div class="col-md-12">
                                    <%--  <select name="" class="form-control">
                                          <option value=""></option>
                                      </select>--%>
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
                                        <a href="#zjcs1">措施</a>
                                    </li>
                                    <li>
                                        <a href="#scbdwj1">文件</a>
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
                                        <div>
                                            <table id="general-table"
                                                   class="table table-striped table-bordered table-vcenter table-hover">
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
                                                    <th class="text-center">
                                                        <%--{{'MeasureType'|titleFilter1('类别')}}--%>
                                                        类别
                                                    </th>
                                                    <th class="text-center">
                                                        <%--{{'MeasureContent'|titleFilter1('')}}--%>
                                                        内容
                                                    </th>
                                                    <th class="text-center" style="width:95px;">
                                                        <%--{{'measureCreateTime'|titleFilter1('')}}--%>
                                                        时间
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
                                                                       class="form-control"
                                                                       readonly="readonly"></textarea>
                                                    </td>
                                                    <td>
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
                                    <%--<form method="post" class="form-horizontal" id="uploadForm1"
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
                                               class="table table-striped table-bordered table-vcenter table-hover">
                                            <thead>
                                            <tr>
                                                <th class="text-center" style="width: 90px">
                                                    序号
                                                    <%-- <label class="csscheckbox csscheckbox-primary">
                                                         <input type="checkbox">
                                                         <span></span>
                                                     </label>--%>
                                                </th>
                                                <th class="text-center">附件名</th>
                                                <th class="text-center" style="width:140px;">上传时间</th>
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
                                                <td class="text-center" v-text="trcm1.measureCreateTime">
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
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal"
                    <%--data-toggle="modal" data-target="#modal-delete"--%> >关闭
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
            checkIDs: "",
            saveData: new Array(),
            monthPlanList: "",
            categoryList: "",
            riskcontrolplane: "",
            riskcontrolplaneList: "",
            judgedataInfo: 0,
            departmentList: "",
            peijianListtemp:[],
            empList: "",
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
            peijianList:[],
            peijianListlist:[],
            plandateIndex:-1,
            lennum:0,

        },
        created: function () {
            var _self = this;
            _self.getNewRiskSite();
            _self.getNewRiskControlPlane();
            _self.getNewRiskControlPlaneByMonth();
            _self.getNewRiskControlPlaneByMonthitem();
            _self.getEnterprise_data_dictionaryListForOrg();
            _self.getDepartment();
            _self.getUserinfoList();

        },
        mounted: function () {

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

            changgeEmp:function(index){
                var _self = this;

                _self.peijianList = [];

                var list = _self._self.planbymonthitem[index].mUnits;
                var tem =[];
                for(var i=0;i<list.length;i++){
                    for(var j=0;j<_self.peijianListtemp.length;j++){
                        if(list[i]==_self.peijianListtemp[j].fOrg_Name){
                            _self.peijianList.push(_self.peijianListtemp[j]);
                        }
                    }
                }

                _self.peijianListlist[index] =  _self.peijianList;
                console.log(_self.peijianList);




                var time = _self.planbymonthitem[0].planStartDate;
                _self.planbymonthitem[0].planStartDate = "2018-01-01" ;
                _self.planbymonthitem[0].planStartDate = time;

//
            },



            changgeEmp1 (index){
                var _self=this;
                //console.log(_self.planbymonthitem[index].mUnits);
                var changeOrg = _self.planbymonthitem[index].mUnits;
                var temp = _self.peijianListtemp;
                var end = [];
                if(changeOrg.length >0){
                    changeOrg.forEach(orgitem => {
                        temp.forEach(item => {
                        if(orgitem == item.fOrg_Name){
                        end.push(item);
                        console.log(item);
                    }
                });
                });
                }
                _self.peijianList = end;
            },

            mcheckclick:function(index){
                var _self = this;
                var lists = [];
                var list = _self._self.planbymonthitem[index].mUnits;
                var tem =[];
                for(var i=0;i<list.length;i++){
                    for(var j=0;j<_self.peijianListtemp.length;j++){
                        if(list[i]==_self.peijianListtemp[j].fOrg_Name){
                            lists.push(_self.peijianListtemp[j]);
                        }
                    }
                }

                _self.peijianListlist[index] =  lists;

            },

            confirmIndex:function(index){
                var _self=this;
                _self.plandateIndex=index;


            },
            selectStartTime:function(date){
                var _self=this;
                _self.planbymonthitem[_self.plandateIndex].planStartDate=date;
            },
            selectEndTime:function(date){
                var _self=this;
                _self.planbymonthitem[_self.plandateIndex].planEndDate=date;
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
//                        if (_self.risk1.mhazards != 0) {
//                            _self.templength = _self.risk1.mhazards.length;
//                        } else {
//                            _self.templength = _self.risk1.mchildRiskSite.length;
//                        }
                        _self.riskControlMeasure = _self.tempriskControlMeasure2;
                        $("#modal-regular1").modal("show");
                        /*_self.getNewRiskControlMeasure();*/
                    },
                });


            },
            //获取人员信息
            getCurrOrgEmpList: function (indexID) {
                var _self = this;
//                    $("#b" + _self.planbymonthitem[indexID-1].risksiteID + "").val($("#b" + _self.planbymonthitem[indexID-1].risksiteID+" option:selected").val())
                for (var i = 0; i < _self.planbymonthitem.length; i++) {
                    _self.planbymonthitem[i].keyContent = $("#t" + _self.planbymonthitem[i].risksiteID + "").val()
                    _self.planbymonthitem[i].planStartDate = $("#d" + _self.planbymonthitem[i].risksiteID + "").val()
                    _self.planbymonthitem[i].itemcheckerName = $("#r" + _self.planbymonthitem[i].risksiteID + "").val()
                    _self.planbymonthitem[indexID].itemcheckerName = "";
//                        $("#r" + _self.planbymonthitem[i].risksiteID + "").val()
                    if (indexID == i) {
                        $("#r" + _self.planbymonthitem[indexID].risksiteID + "").attr("disabled", false);

                    } else {
                        $("#r" + _self.planbymonthitem[i].risksiteID + "").attr("disabled", true);


                    }


                }
                var orgID = "-1";
                _self.empList = ""
                for (var i = 0; i < _self.departmentList.length; i++) {

                    if (_self.departmentList[i].fOrg_Name == $("#b" + _self.planbymonthitem[indexID].risksiteID + "").val()) {
                        orgID = _self.departmentList[i].fOrgID;
                    }

                }
                if (orgID != "-1") {
                    //url:发送请求地址。
                    //data:待发送 Key/value 参数。
                    //callback:发送成功时回调函数。
                    //type:返回内容格式，xml, html, script, json, text, _default。
                    $.post(projectName + "/PlatForm/getCurrOrgEmpList/" + orgID, function (data) {
                        for (var i = 0; i < indexID; i++) {
                            $("#r" + _self.planbymonthitem[i].risksiteID + "").val(_self.planbymonthitem[i].itemcheckerName);
                            $("#r" + _self.planbymonthitem[i].risksiteID + "").attr("disabled", true);
                        }

                        _self.empList = data;
                        _self.count = 1

                    });

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
                window.location.href = projectName + "/menu/RiskControlPlaneByMonthByHL.do"

            },
            showOrNot:function(){

                if ($("#monthPlanFrequency").val() == "每旬") {
                    $("#showX").show();
                    $("#showZ").hide();
                } else if($("#monthPlanFrequency").val() == "每周"){
                    $("#showX").hide();
                    $("#showZ").show();
                }else{
                    $("#showX").hide();
                    $("#showZ").hide();
                }

            },
            getUpdateInfo: function () {
                var _self = this;
                _self.judgedataInfo = 1;
                if ($("#monthPlaneID").val() != "" && $("#monthPlaneID").val() != "null" && $("#monthPlaneID").val() != null) {
                    var riskmonthplanID = $("#monthPlaneID").val();
                    //url:待载入页面的URL地址
                    //data:待发送 Key/value 参数。
                    //callback:载入成功时回调函数。
                    //type:返回内容格式，xml, html, script, json, text, _default。
                    //加载层
                    layer.load();
                    $.get(projectName + "/RiskControlPlaneByMonthControl/getRiskcontrolplanebymonthByID1/" + riskmonthplanID, function (data) {
                        _self.riskplanbymonth = data;
                        _self.updateContent = _self.riskplanbymonth.monthplanName;
                        _self.updateFrequency = _self.riskplanbymonth.monthPlanFrequency;
                        var yearValue = _self.riskplanbymonth.monthplanName.substring(0, 4);//2017-09fenxian
                        var monthValue = _self.riskplanbymonth.monthplanName.substring(5, 7);
                        $("#myyear").val(yearValue);
                        $("#mymonth").val(monthValue);
                        $("#planName").val(_self.riskplanbymonth.monthplanType);
                        if (_self.riskplanbymonth.monthPlanFrequency == "每年" || _self.riskplanbymonth.monthPlanFrequency == "每月") {
//                            _self.monthPlanFrequency = _self.riskplanbymonth.monthPlanFrequency;
                            $("#monthPlanFrequency").val(_self.riskplanbymonth.monthPlanFrequency);

                        } else if(_self.riskplanbymonth.monthPlanFrequency.indexOf('旬')!=-1){
                            $("#monthPlanFrequency").val("每旬");
                            $("#xunDu").val(_self.riskplanbymonth.monthPlanFrequency);
//                            _self.monthPlanFrequency = "每旬";
//                            _self.xunDu = _self.riskplanbymonth.monthPlanFrequency;

                        }else if(_self.riskplanbymonth.monthPlanFrequency.indexOf('周')!=-1){
                            $("#monthPlanFrequency").val("每周");
                            $("#zhouDu").val(_self.riskplanbymonth.monthPlanFrequency);
//                            _self.monthPlanFrequency = "每旬";
//                            _self.xunDu = _self.riskplanbymonth.monthPlanFrequency;

                        }
                        _self.showOrNot();
                        $("#monthplanMajorType").val(_self.riskplanbymonth.monthplanMajorType);

                        $("#monthplancontent").val(_self.riskplanbymonth.monthplanContent);
                        if ($("#judgeShow").val() == "-1") {
                            $("#planName").attr("disabled", true);
                            $("#monthplanMajorType").attr("disabled", true);
                            $("#monthPlanFrequency").attr("disabled", true);
                            $("#xunDu").attr("disabled", true);
                            $("#monthplancontent").attr("disabled", true);
                        }
//                        $("#monthplanMajorType").val(_self.riskcontrolplanebymonth.monthplanMajorType)
                        for (var i = 0; i < _self.riskplanbymonth.mmonthPlanItems.length; i++) {
                            var riskSite = _self.riskplanbymonth.mmonthPlanItems[i].mriskSite;
                            $.ajax({
                                url: projectName + "/RiskControlPlaneByMonthControl/getHazardCount", //发送请求的地址。
                                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                data: {"frameWorkID": riskSite.frameWorkID, "riskSiteFullNumber": riskSite.fullNumber},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                dataType: "json",//预期服务器返回的数据类型。
                                async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                success: function (data) {
                                    //请求成功后的回调函数
                                    _self.hcount = data;
                                    $.ajax({
                                        url: projectName + "/RiskControlPlaneByMonthControl/getControlMeasureCount", //发送请求的地址。
                                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                        data: {
                                            "frameWorkID": riskSite.frameWorkID,
                                            "riskSiteFullNumber": riskSite.fullNumber
                                        },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                        dataType: "json",//预期服务器返回的数据类型。
                                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                        success: function (datacount) {
                                            //请求成功后的回调函数
                                            _self.mcount = datacount;
                                            /*   if ($("#monthPlaneID").val() != "" && $("#monthPlaneID").val() != "null" && $("#monthPlaneID").val() != null) {
                                                   _self.riskcontrolplanebymonthitem.monthplaneID = $("#monthPlaneID").val();

                                               }*/
                                            _self.riskplanbymonth.mmonthPlanItems[i].riskHazardsCount = _self.hcount;
                                            _self.riskplanbymonth.mmonthPlanItems[i].controlMeasureCount = _self.mcount;
                                        }

                                    })
                                }
                            })
                        }
                        for(var mt=0;mt<_self.riskplanbymonth.mmonthPlanItems.length;mt++){
                            var items=_self.riskplanbymonth.mmonthPlanItems[mt];
                            items.mUnits=items.unitName.split(",");
                            items.mChecks=items.itemcheckerName.split(",");

                        }
                        _self.planbymonthitem = _self.riskplanbymonth.mmonthPlanItems;
                        layer.closeAll('loading');

                        _self.changgeEmpupdate();
                        _self.getPageCount();


                    });
                }
            },


            //责任人信息回填
            changgeEmpupdate:function(){
                var _self = this;

                for(var s=0;s< _self.planbymonthitem.length;s++){

                    _self.peijianList = [];
                    var list = _self._self.planbymonthitem[s].mUnits;
                    var tem =[];
                    for(var i=0;i<list.length;i++){
                        for(var j=0;j<_self.peijianListtemp.length;j++){
                            if(list[i]==_self.peijianListtemp[j].fOrg_Name){
                                _self.peijianList.push(_self.peijianListtemp[j]);
                            }
                        }
                    }
                    _self.peijianListlist[s] =  _self.peijianList;
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
            //删除showRiskInfo数组中元素
            deleperson: function (index) {
                var _self = this;
                for (var i = 0; i < _self.planbymonthitem.length; i++) {
                    _self.planbymonthitem[i].keyContent = $("#t" + _self.planbymonthitem[i].risksiteID + "").val()
                    _self.planbymonthitem[i].planStartDate = $("#d" + _self.planbymonthitem[i].risksiteID + "").val()
                    _self.planbymonthitem[i].itemcheckerName = $("#r" + _self.planbymonthitem[i].risksiteID + "").val()

                }
                _self.planbymonthitem.splice(index, 1);


            },
            //弹出框中风险点的多选事件
            checkRisksite: function (riskSite) {
                var _self = this;
                console.log(riskSite);
                _self.riskcontrolplanebymonthitem.mriskSite = riskSite;
                _self.riskcontrolplanebymonthitem.itemcheckerName = riskSite.managerName
                _self.riskcontrolplanebymonthitem.unitName = riskSite.managerUnitName
                _self.riskcontrolplanebymonthitem.risksiteID = riskSite.riskSiteID;
                if (riskSite.frameWorkID != "" && riskSite.frameWorkID != null && riskSite.fullNumber != "" && riskSite.fullNumber != null) {
                    //加载层
                    layer.load();
                    $.ajax({
                        url: projectName + "/RiskControlPlaneByMonthControl/getHazardS", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: {"frameWorkID": riskSite.frameWorkID, "riskSiteFullNumber": riskSite.fullNumber},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
                            _self.hcount = data.length;
                            var risksiteInfo = "";
                            for (var i = 0; i < data.length; i++) {
                                risksiteInfo += data[i].name + "，";
                            }
                            risksiteInfo = risksiteInfo.substring(0, risksiteInfo.length - 1);
                            $.ajax({
                                url: projectName + "/RiskControlPlaneByMonthControl/getControlMeasureCount", //发送请求的地址。
                                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                data: {"frameWorkID": riskSite.frameWorkID, "riskSiteFullNumber": riskSite.fullNumber},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                dataType: "json",//预期服务器返回的数据类型。
                                async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                success: function (datacount) {
                                    //请求成功后的回调函数
                                    _self.mcount = datacount
                                    if ($("#monthPlaneID").val() != "" && $("#monthPlaneID").val() != "null" && $("#monthPlaneID").val() != null) {
                                        _self.riskcontrolplanebymonthitem.monthplaneID = $("#monthPlaneID").val();

                                    }
                                    _self.riskcontrolplanebymonthitem.riskHazardsCount = _self.hcount;
                                    _self.riskcontrolplanebymonthitem.controlMeasureCount = _self.mcount;
                                    _self.riskcontrolplanebymonthitem.keyContent = "排查对象为：" + risksiteInfo + "。";
                                    _self.planbymonthitem.push(_self.riskcontrolplanebymonthitem);
                                    layer.closeAll('loading');
                                    /* for (var i = 0; i < _self.planbymonthitem.length; i++) {

                                         _self.planbymonthitem[i].keyContent = $("#t" + _self.planbymonthitem[i].risksiteID + "").val();
                                         _self.planbymonthitem[i].planDate = $("#" + _self.planbymonthitem[i].risksiteID + "").val()

                                     }*/
                                    if (_self.checkIDs == null || _self.checkIDs == "") {
                                        _self.hideorshow1();
                                    }

                                    for (var i = 0; i < _self.saveData.length; i++) {
                                        for (var j = 0; j < _self.planbymonthitem.length; j++) {
                                            if (_self.planbymonthitem[j].risksiteID == _self.saveData[i].riskSiteID) {
                                                $("#rs" + _self.saveData[i].riskSiteID + "").hide()
                                            }
                                        }
                                    }
                                    _self.riskcontrolplanebymonthitem = "";
                                    _self.hcount = "";
                                    _self.mcount = "";
                                    _self.getNewRiskControlPlaneByMonthitem();

                                },
                            });

                        },
                    });
                } else {
                    _self.showToast("warning", riskSite.name + "--企业编码或全编码为空,查询风险,管控措施个数有误");
                    if ($("#monthPlaneID").val() != "" && $("#monthPlaneID").val() != "null" && $("#monthPlaneID").val() != null) {
                        _self.riskcontrolplanebymonthitem.monthplaneID = $("#monthPlaneID").val();

                    }
                    _self.riskcontrolplanebymonthitem.riskHazardsCount = 0;
                    _self.riskcontrolplanebymonthitem.controlMeasureCount = 0;
                    _self.planbymonthitem.push(_self.riskcontrolplanebymonthitem);
                    _self.hideorshow1();
                    _self.riskcontrolplanebymonthitem = "";
                    _self.getNewRiskControlPlaneByMonthitem();

                }

            },
            //获取一个空的RiskControlPlaneByMonth对象
            getNewRiskControlPlaneByMonth: function () {
                var _self = this;
                $.get(projectName + "/RiskControlPlaneByMonthControl/newRiskControlPlaneByMonth", function (data) {
                    _self.riskcontrolplanebymonth = data;
                })
            },
            //获取一个空的RiskControlPlaneByMonthitem对象
            getNewRiskControlPlaneByMonthitem: function () {
                var _self = this;
                $.get(projectName + "/RiskControlPlaneByMonthControl/newRiskControlPlaneByMonthitem", function (data) {
                    data.mChecks=[];
                    data.mUnits=[];
                    _self.riskcontrolplanebymonthitem = data;
                })
            },

            //提交RiskControlPlaneByMonth
            addRiskcontrolplanebymonth: function () {
                var _self = this;
                if ($("#myyear").val() == "" || $("#mymonth").val() == "") {
                    _self.showToast("warning", "请选择年份或月份");
                    return;
                }
                if ($("#planName").val() == "" || $("#planName").val() == "null") {
                    _self.showToast("warning", "请选择计划类型");
                    return;

                }
                if ($("#monthplanMajorType").val() == "" || $("#monthplanMajorType").val() == "null") {
                    _self.showToast("warning", "请选择专业类型");
                    return;

                }
                ;
                if ($("#monthPlanFrequency").val()== "") {
                    _self.showToast("warning", "请选择检查频次");
                    return;
                }
                ;
                if ($("#monthPlanFrequency").val() == "每旬" && $("#xunDu").val() == "") {
                    _self.showToast("warning", "请选择旬度");
                    return;

                }
                if ($("#monthPlanFrequency").val() == "每周" && $("#zhouDu").val() == "") {
                    _self.showToast("warning", "请选择周度");
                    return;

                }

                for (var i = 0; i < _self.planbymonthitem.length; i++) {
                    if ($("#t" + _self.planbymonthitem[i].risksiteID + "").val() == "" || $("#t" + _self.planbymonthitem[i].risksiteID + "").val() == null) {
                        _self.showToast("warning", "请输入重点管控内容");
                        return;

                    } else {
                        _self.planbymonthitem[i].keyContent = $("#t" + _self.planbymonthitem[i].risksiteID + "").val()
                    }

                    if (_self.planbymonthitem[i].planStartDate == "" || _self.planbymonthitem[i].planStartDate == null) {
                        _self.showToast("warning", "请选择管控开始时间");
                        return;

                    }
                    if (_self.planbymonthitem[i].planEndDate == "" || _self.planbymonthitem[i].planEndDate == null) {
                        _self.showToast("warning", "请选择管控结束时间");
                        return;

                    }

                    if(_self.planbymonthitem[i].planStartDate > _self.planbymonthitem[i].planEndDate ){
                        _self.showToast("warning", "管控开始时间不能大于管控结束时间");
                        return;
                    }


                    if (_self.planbymonthitem[i].mUnits.length == 0) {
                        _self.showToast("warning", "请选择责任部门");
                        return;

                    }else{
                        var mun="";
                        for(var mu=0;mu<_self.planbymonthitem[i].mUnits.length;mu++){
                            if(mu<_self.planbymonthitem[i].mUnits.length-1){
                                mun+=_self.planbymonthitem[i].mUnits[mu]+",";
                            }else{
                                mun+=_self.planbymonthitem[i].mUnits[mu];
                            }

                        }
                        _self.planbymonthitem[i].unitName=mun;

                    }
                    if (_self.planbymonthitem[i].mChecks.length == 0) {
                        _self.showToast("warning", "请选择责任人");
                        return;

                    }else{
                        var mch="";
                        for(var mc=0;mc<_self.planbymonthitem[i].mChecks.length;mc++){
                            if(mc<_self.planbymonthitem[i].mChecks.length-1){
                                mch+=_self.planbymonthitem[i].mChecks[mc]+",";
                            }else{
                                mch+=_self.planbymonthitem[i].mChecks[mc];
                            }

                        }
                        _self.planbymonthitem[i].itemcheckerName=mch;

                    }
                }
                _self.riskcontrolplanebymonth.monthplanName = $("#myyear").val() + "-" + $("#mymonth").val() + $("#planName").val() + $("#monthplanMajorType").val() + "的风险管控计划";
                if ($("#monthPlanFrequency").val()== "每年"||$("#monthPlanFrequency").val()== "每月") {

                    _self.riskcontrolplanebymonth.monthPlanFrequency = $("#monthPlanFrequency").val();

                } else if($("#monthPlanFrequency").val()== "每旬"){
                    _self.riskcontrolplanebymonth.monthPlanFrequency = $("#xunDu").val();


                }else if($("#monthPlanFrequency").val()== "每周"){
                    _self.riskcontrolplanebymonth.monthPlanFrequency = $("#zhouDu").val();

                }
                _self.riskcontrolplanebymonth.fyear = parseInt($("#myyear").val());
                _self.riskcontrolplanebymonth.fMonth = parseInt($("#mymonth").val());
                _self.riskcontrolplanebymonth.monthplanType = $("#planName").val();
                _self.riskcontrolplanebymonth.monthplanContent = $("#monthplancontent").val();
                _self.riskcontrolplanebymonth.monthplanMajorType = $("#monthplanMajorType").val();
                if (_self.updateContent != _self.riskcontrolplanebymonth.monthplanName || _self.updateFrequency != _self.riskcontrolplanebymonth.monthPlanFrequency) {
                    _self.judgedataInfo = 0;

                }
                if (_self.judgedataInfo == 0) {
                    for (var i = 0; i < _self.riskcontrolplaneList.length; i++) {
                        if (_self.riskcontrolplaneList[i].monthplanName == _self.riskcontrolplanebymonth.monthplanName &&
                            _self.riskcontrolplanebymonth.monthplanType == _self.riskcontrolplaneList[i].monthplanType
                            && _self.riskcontrolplanebymonth.monthplanMajorType == _self.riskcontrolplaneList[i].monthplanMajorType
                            && _self.riskcontrolplanebymonth.monthPlanFrequency == _self.riskcontrolplaneList[i].monthPlanFrequency
                        ) {
                            _self.showToast("warning", "年份、月份、计划类型、专业及频次均相同的计划已录入，无法再次录入重复的计划");
                            return;

                        }
                    }
                }
                //_self.updateContent

                if ($("#monthPlaneID").val() != null && $("#monthPlaneID").val() != "null" && $("#monthPlaneID").val() != "") {
                    _self.riskcontrolplanebymonth.monthplaneID = $("#monthPlaneID").val();

                } else {
                    _self.riskcontrolplanebymonth.monthplanStatus = 0;
                }
//                for (var i = 0; i < _self.planbymonthitem.length; i++) {
//
//                    _self.planbymonthitem[i].keyContent=$("#t" + _self.planbymonthitem[i].risksiteID + "").val()
//
//                }
                /*for (var i = 0; i < _self.departmentList.length; i++) {
                    for (var j = 0; j < _self.planbymonthitem.length; j++) {
                        if (_self.departmentList[i].fOrg_Name == $("#b" + _self.planbymonthitem[j].risksiteID + "").val()) {
                            _self.planbymonthitem[j].unitName = $("#b" + _self.planbymonthitem[j].risksiteID + "").val();
                            _self.planbymonthitem[j].itemunitID = _self.departmentList[i].fOrgID_Auto;

                        }
                    }
                }*/
                /*for (var i = 0; i < _self.empList.length; i++) {
                    for (var j = 0; j < _self.planbymonthitem.length; j++) {
                        if (_self.empList[i].fEmp_Name == $("#r" + _self.planbymonthitem[j].risksiteID + "").val()) {
                            _self.planbymonthitem[j].itemcheckerName = $("#r" + _self.planbymonthitem[j].risksiteID + "").val();
                            _self.planbymonthitem[j].itemcheckerID = _self.empList[i].fEmp_ID_Auto;
                        }
                    }
                }*/
                _self.riskcontrolplanebymonth.monthplanCreater = "<%=username%>";
                _self.riskcontrolplanebymonth.monthplanCreateUnit = "<%=unitname%>";
                _self.riskcontrolplanebymonth.mmonthPlanItems = _self.planbymonthitem;
                console.log(_self.riskcontrolplanebymonth);
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskControlPlaneByMonthControl/SaveRiskcontrolplanebymonth",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskcontrolplanebymonth),
                    success: function (data) {
                        $("#myyear").val("");
                        $("#mymonth").val("");
                        $("#planName").val("");
                        _self.planbymonthitem = "";
                        window.location.href = projectName + "/menu/RiskControlPlaneByMonthByHL.do"
                    }
                });


            },
            //判断detailedList
            judgeList: function () {
                var _self = this;
                if (_self.detailedList == "") {
                    _self.getPageCount();

                } else {
                    _self.showRiskInfo();
                }

            },
            showRiskInfo: function () {
                var _self = this;
                var count = 0;
                var keywords = $("#keywords").val();
                if (keywords == "" || keywords == null) {
                    vueApp.hideorshow1();
                } else {//keywords=='1' 进行模糊查询
                    if (count == 0) {
                        for (var i = 0; i < vueApp.detailedList.length; i++) {
                            if (vueApp.detailedList[i].name.indexOf(keywords) != -1) {
                                $("#rs" + vueApp.detailedList[i].riskSiteID + "").show()
                                vueApp.saveData.push(vueApp.detailedList[i]);
                                for (var j = 0; j < vueApp.planbymonthitem.length; j++) {
                                    if (vueApp.planbymonthitem[j].risksiteID == vueApp.detailedList[i].riskSiteID) {
                                        $("#rs" + vueApp.detailedList[i].riskSiteID + "").hide()
                                    }
                                }
                                count = 2;
                            } else {
                                $("#rs" + vueApp.detailedList[i].riskSiteID + "").hide()

                            }
                        }
                        if (count != 2) {
                            vueApp.showToast("warning", "没有找到你要找的风险点");
                            return;
                        }
                    }
                }

            },
            //得到一个risksite空对象
            getNewRiskSite: function () {
                var _self = this;
                $.get(projectName + "/RiskDetailedList/newRiskSite", function (data) {
                    _self.riskSite = data;
                })
            },
            //获取总条数，参数是Risksite 对象
            getPageCount: function () {
                var _self = this;
                //加载层
                layer.load();
                var year=$("#myyear").val();
                var month=$("#mymonth").val();
                $.ajax({
                    url:projectName+"/RiskControlPlaneByMonthControl/getRiskSiteCheckStatus", //发送请求的地址。
                    type:"post", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data:{
                        "year":year,
                        "month":month,

                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType:"json",//预期服务器返回的数据类型。
                    async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data){
                        //请求成功后的回调函数
                        _self.detailedList = data;
                        _self.hideorshow1();
                        layer.closeAll('loading');
                        if ($("#judgeShow").val() == "-1") {
                            for (var i = 0; i < _self.planbymonthitem.length; i++) {
                                $("#d" + _self.planbymonthitem[i].risksiteID + "").attr("disabled", true);
                                $("#t" + _self.planbymonthitem[i].risksiteID + "").attr("disabled", true);
                                /*$("#b" + _self.planbymonthitem[i].risksiteID + "").attr("disabled", true);
                                $("#r" + _self.planbymonthitem[i].risksiteID + "").attr("disabled", true);*/
                            }
                            _self.showDelete = -1;
                        }
                    },

                });



                /*  $.ajax({
                      type: "POST",
                      url: projectName + "/RiskControlPlaneByMonthControl/RiskSiteBySearchHazardAndMeasure",
                      dataType: "json",
                      contentType: "application/json",
                      data: JSON.stringify(_self.riskSite),
                      success: function (data) {
                          console.log(data);
                          _self.detailedList = data;
                          _self.hideorshow1();
                          layer.closeAll('loading');
                          if ($("#judgeShow").val() == "-1") {
                              for (var i = 0; i < _self.planbymonthitem.length; i++) {
                                  $("#" + _self.planbymonthitem[i].risksiteID + "").attr("disabled", true);
                                  $("#t" + _self.planbymonthitem[i].risksiteID + "").attr("disabled", true);
                                  $("#b" + _self.planbymonthitem[i].risksiteID + "").attr("disabled", true);
                                  $("#r" + _self.planbymonthitem[i].risksiteID + "").attr("disabled", true);
                              }
                              _self.showDelete = -1;
                          }
                      }
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
                        console.log(data);
                        _self.riskcontrolplaneList = data;
                    }
                });

            },
        },
        computed: {},
        watch: {
            //监视数据数组，以便控制全选的选中与不选中
            'checkIDs': {
                handler: function (val, oldVal) {

                    var count = 0;
                    var keywords = $("#keywords").val();
                    if (keywords == "" || keywords == null) {
                        vueApp.hideorshow1();
                    } else {//keywords=='1' 进行模糊查询
                        if (count == 0) {
                            for (var i = 0; i < vueApp.detailedList.length; i++) {
                                if (vueApp.detailedList[i].name.indexOf(keywords) != -1) {
                                    $("#rs" + vueApp.detailedList[i].riskSiteID + "").show()
                                    vueApp.saveData.push(vueApp.detailedList[i]);
                                    for (var j = 0; j < vueApp.planbymonthitem.length; j++) {
                                        if (vueApp.planbymonthitem[j].risksiteID == vueApp.detailedList[i].riskSiteID) {
                                            $("#rs" + vueApp.detailedList[i].riskSiteID + "").hide()
                                        }
                                    }
                                    count = 2;
                                } else {
                                    $("#rs" + vueApp.detailedList[i].riskSiteID + "").hide()

                                }
                            }
                            if (count != 2) {
                                vueApp.showToast("warning", "没有找到你要找的风险点");
                                return;
                            }
                        }
                    }
                },
                deep: true
            },
            /* "monthPlanFrequency": {
                 handler: function (val, oldVal) {
                     var _self = this;

                     if (_self.monthPlanFrequency == "每旬") {
                         $("#showX").show();
                     } else {
                         $("#showX").hide();
                     }
                 },
                 deep: true
             },*/

        },
        filters: {
            upCaseFilter: function (val) {
                return val.toUpperCase();
            },
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