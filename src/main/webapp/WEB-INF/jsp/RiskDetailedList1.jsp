<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html class="no-js lt-ie10" lang="en">
<html class="js " lang="en">

<head>
    <meta charset="utf-8">
    <title>风险管控清单-第三级</title>
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
    </style>
</head>

<body>
<div id="page-content" style="min-height: 794px;" onkeydown="search()">

    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-6">
                <div class="header-section">
                    <h1 style="float: left;padding:0" v-if="riskSelf">风险管控清单</h1>
                    <h1 style="float: left;padding:0" v-if="relevance">关联隐患与事故</h1>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full" style="padding: 0;">
        <div class="">
            <div>

                </div>
                <div>
                    <ol class="breadcrumb">
                        <li><a href="<%=request.getContextPath()%>/menu/RiskDetailedList.do"><%=request.getSession().getAttribute("position")%></a></li>
                        <li><a href="<%=request.getContextPath()%>/menu/RiskDetailedListShowMRiskSite.action">{{riskSite.name}}</a></li>
                        <li> <a href="<%=request.getContextPath()%>/menu/RiskDetailedListShowMRiskSite.action" class="btn btn-effect-ripple btn-primary">返回</a></li>
                        <button type="button" @click="changePage" v-if="showrelaceaccident" class="btn btn-effect-ripple btn-primary">关联隐患与事故</button>
                        <button type="button" @click="addriskandhiddenandacc"  class="btn btn-effect-ripple btn-primary" id="addriskandaccident" hidden>保存</button>
                    </ol>
                </div>
            <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                <tr class="biaot biaot1">
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
                    <td class="text-center" rowspan="2" v-show="showOrNot('Name')" style="min-width: 200px">{{'Name'|titleFilter('风险')}}</td>
                    <td class="text-center" rowspan="2" v-show="showOrNot('hazardDesc')" style="min-width: 300px">{{'hazardDesc'|titleFilter('风险描述')}}</td>
                    <td class="text-center" rowspan="2" v-show="showOrNot('damageType')">
                        {{'damageType'|titleFilter('灾害类型')}}
                    </td>

                    <template v-if="hiddenRelevance">
                    <td>关联隐患</td>
                    <td>关联事故</td>
                    </template>

                    <template v-if="hiddenTitle">

                    <td class="text-center" rowspan="2" v-show="showOrNot('accidentType')">
                        {{'accidentType'|titleFilter('事故类型')}}
                    </td>
                    <td class="text-center" rowspan="2">辨识方法
                    </td>

                    <td class="text-center" rowspan="4" style="min-width: 200px">
                        风险分析
                    </td>
                    <td class="text-center" rowspan="2" v-show="showOrNot('riskValue')">
                        {{'driskValue'|titleFilter('风险值(D)')}}
                    </td>
                    <td class="text-center" rowspan="2" v-show="showOrNot('riskLevel')">{{'riskLevel'|titleFilter('风险等级')}}</td>
                    <td class="text-center" rowspan="2" v-show="showOrNot('riskColor')">{{'riskColor'|titleFilter('风险颜色')}}</td>
                    <td class="text-center" rowspan="2" v-show="showOrNot('status')">{{'supervisionUnit'|titleFilter('状态')}}</td>
                    <td class="text-center" rowspan="2">管控周期（始）
                    </td>
                    <td class="text-center" rowspan="2">管控周期（终）
                    </td>
                    <td class="text-center" rowspan="2">矿级管控
                    </td>
                    <td class="text-center" rowspan="2">专业级管控
                    </td>
                    <td class="text-center" rowspan="2">职能部室级管控
                    </td>
                    <td class="text-center" rowspan="2">区队级管控
                    </td>
                    <td class="text-center" rowspan="2">班组个人级管控
                    </td>
                        </template>
                <tbody v-for="(riskHazard,riskIndex) in riskHazards">
                <tr class="biaot1 biaot2">
                    <td class="text-center" v-text="riskIndex+1"></td>
                    <td v-text="riskHazard.name" v-show="showOrNot('Name')"></td>
                    <td v-text="riskHazard.hazardDesc" v-show="showOrNot('hazardDesc')"></td>
                    <td v-show="showOrNot('damageType')">
                        <span v-if="riskHazard.riskLevel=='重大风险'" style="color:red" v-text="riskHazard.damageType" ></span>
                        <span v-if="riskHazard.riskLevel!='重大风险'"  v-text="riskHazard.damageType"></span>
                    </td>

                    <template v-if="hiddenReContent">
                        <!--维护与事故&隐患关系-->
                        <td class="text-center" v-text="riskHazard.frameworkID" @click="addHidden(riskIndex)">
                            请选择隐患
                        </td>

                        <td class="text-center" v-html="riskHazard.coalmineName">
                        </td>
                    </template>

                    <template v-if="hiddenContent">

                    <td v-text="riskHazard.accidentType" v-show="showOrNot('accidentType')"></td>
                    <td v-text="riskHazard.identifyMethod"></td>
                    <td v-if="riskHazard.Sseverity==null&&riskHazard.clossConsequence==null"></td>
                    <td v-if="riskHazard.clossConsequence!=null&&riskHazard.clossConsequence!=0">评估方法(LEC): L={{riskHazard.Lpossibility}} , E={{riskHazard.Eexpose}} , C={{riskHazard.clossConsequence}}</td>
                    <td v-if="riskHazard.Sseverity!=0&&riskHazard.Sseverity!=null">评估方法(LS): L={{riskHazard.Lpossibility}} , S={{riskHazard.Sseverity}}</td>
                    <td v-text="riskHazard.driskValue" v-show="showOrNot('riskValue')"></td>
                    <td v-text="riskHazard.riskLevel" v-show="showOrNot('riskLevel')"></td>
                    <td class="text-center" v-show="showOrNot('riskColor')" v-if="riskHazard.riskColor!=null"><span v-show="showOrNot('riskColor')"
                                                                                  v-bind:style="'background-color:'+riskHazard.riskColor"
                                                                                  class="btys"></span></td>
                    <td class="text-center" v-show="showOrNot('riskColor')" v-if="riskHazard.riskColor==null"></td>
                    <td v-if="riskHazard.status==0" v-show="showOrNot('status')">未评估</td>
                    <td v-if="riskHazard.status==1" v-show="showOrNot('status')">已评估</td>
                    <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                    <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                    <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                    <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                    <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                    <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                    <td v-if="riskHazard.mRiskControlRange.length==0"></td>
                    <td v-if="riskHazard.mRiskControlRange.length!=0"   v-text="riskHazard.mRiskControlRange[0].controlRangeStartDay"
                    ></td>
                    <td v-if="riskHazard.mRiskControlRange.length!=0"   v-text="riskHazard.mRiskControlRange[0].controlRangeEndDay"
                    ></td>
                    <td v-for="range in riskHazard.mRiskControlRange"
                        v-if="range.controlRangeName=='矿级'"
                        v-text="range.manageUnit+'--'+range.manageDuty+'--'+range.controlRangePinci"></td>
                    <td v-for="range in riskHazard.mRiskControlRange"
                        v-if="range.controlRangeName=='专业级'"
                        v-text="range.manageUnit+'--'+range.manageDuty+'--'+range.controlRangePinci"></td>
                    <td v-for="range in riskHazard.mRiskControlRange"
                        v-if="range.controlRangeName=='职能部室级'"
                        v-text="range.manageUnit+'--'+range.manageDuty+'--'+range.controlRangePinci"></td>
                    <td v-for="range in riskHazard.mRiskControlRange"
                        v-if="range.controlRangeName=='区队级'"
                        v-text="range.manageUnit+'--'+range.manageDuty+'--'+range.controlRangePinci"></td>
                    <td v-for="range in riskHazard.mRiskControlRange"
                        v-if="range.controlRangeName=='班组个人级'"
                        v-text="range.manageUnit+'--'+range.manageDuty+'--'+range.controlRangePinci"></td>
                    </template>

                </tr>
                </tbody>
            </table>

            </div>
        </div>
    </div>



    <div id="modal-regular" class="modal" tabindex="-1" role="dialog" aria-hidden="true"  >
        <div class="modal-dialog" style=" overflow-y:auto; overflow-x:auto; width:700px; height:800px;">
            <div class="modal-content" style="min-height:750px;">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div class="block-title">
                        <h4>筛选</h4>
                    </div>
                    <div class="timeline block-content-full">
                        <form action="page_forms_components.html" method="post"
                              class="form-horizontal form-bordered"
                              onsubmit="return false;">

                            <div class="form-group">
                                <label class="col-md-3 control-label">隐患描述</label>
                                <div class="col-md-8">
                                    <div class="">
                                        <%--<input type="text" class="form-control" v-model="newhtdetail.fpCFS">--%>
                                        <i-input class="" v-model="fdescription" filterable clearable placeholder="请输入隐患描述">
                                        </i-input>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">责任部门</label>
                                <div class="col-md-8 ">
                                    <div class="">
                                        <%--<input type="text" class="form-control" v-model="newhtdetail.fdutyUnitName">--%>
                                        <i-select v-model="fdutyUnitName" placeholder="请选择责任部门" filterable clearable>
                                            <%--<i-option value=null>请选择责任部门</i-option>--%>
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
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">专业</label>
                                <div class="col-md-8 ">
                                    <div class="">
                                        <%--<input type="text" class="form-control" v-model="newhtdetail.fcatagories">--%>
                                        <i-select v-model="fcatagories"
                                                  placeholder="请选择专业"
                                                  filterable clearable>
                                            <%--<option value=null>请选择专业</option>--%>
                                            <i-option v-for="(mycategory,index) in categoryList"
                                                      :value="mycategory.fData_Name"
                                                      :label="mycategory.fData_Name"
                                                      :key="index">
                                                <span v-text="mycategory.fData_Name"></span>
                                                <span style="float:right;color:#ccc"
                                                      v-text="mycategory.fData_Name_Shorthand"></span>
                                            </i-option>
                                        </i-select>

                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">隐患等级</label>
                                <div class="col-md-8 ">
                                    <div>
                                        <%-- &lt;%&ndash;<input type="text" class="form-control"
                                                            v-model="newhtdetail.flocation">&ndash;%&gt;--%>
                                        <i-select v-model="flevel" name="example-if-password"
                                                  placeholder="请选择隐患等级" type="text" filterable clearable>
                                            <i-option v-for="(htdetail,index) in htdetailfLevelName"
                                                      :value="htdetail.fLevelName"
                                                      v-text="htdetail.fLevelName"></i-option>
                                        </i-select>

                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">隐患地点</label>
                                <div class="col-md-8 ">
                                    <div class="">
                                        <%--<input type="text" class="form-control" v-model="newhtdetail.flocation">--%>
                                        <i-select v-model="flocation" placeholder="请选择地点"
                                                  filterable clearable>
                                            <%--<i-option value=null>请选择地点</i-option>--%>
                                            <i-option v-for="(myplace,index) in placeList.rows"
                                                      :value="myplace.fPlace_Name"
                                                      :label="myplace.fPlace_Name">
                                                <span v-text="myplace.fPlace_Name"></span>
                                                <%--<span style="float:right;color:#ccc"--%>
                                                      <%--v-text="myplace.fPlace_Name_Shorthand"></span>--%>
                                            </i-option>
                                        </i-select>

                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">检查时间</label>
                                <div class="col-md-8 ">
                                    <div class="">
                                        <input type="text" class="form-control" id="mfdetectionTime"
                                               placeholder="点击选择检查时间">
                                    </div>
                                </div>
                            </div>

                        </form>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" @click="filterAssign">查询
                    </button>
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                </div>
                <div>
                    <table id="general-table" <%--class=" table-striped table-bordered table-vcenter"--%>
                           class="table table-striped table-bordered table-vcenter table-hover">
                        <thead>
                        <tr>
                            <th class="text-center" style="width: 90px">
                                序号
                            </th>
                            <th class="text-center"style="width: 200px">隐患描述</th>
                            <th class="text-center" style="width: 300px">隐患地点</th>
                            <th class="text-center" style="width:90px;">隐患等级</th>
                             <th class="text-center" style="width: 65px">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr v-for="(htdetail,index) in htdetailList">
                            <td class="text-center" v-text="pagesize*(nowpage-1)+index+1">
                            </td>
                            <td class="text-center" v-text="htdetail.fdescription" >

                            </td>
                            <td class="text-center" v-text="htdetail.flocation">
                            </td>
                            <td v-text="htdetail.flevel" ></td>
                            <td class="text-center" style="width: 80px">
                                <p><a @click="relationhidden(htdetail)">关联隐患</a></p>
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
<script src="../iview/iview.js"></script>
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
    var pageVar = "gkqdlist";//页面唯一变量标识，每个页面不能重复
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
            attributes: new Array(),
            propertys: new Array(),
            riskSelf:true,
            relevance:false,
            //类目
            hiddenTitle:true,
            //内容
            hiddenContent:true,
            //关联类目
            hiddenRelevance:false,
            //关联内容
            hiddenReContent:false,
            nowpage:0,
            pagesize:10,
            fdescription:"",       //隐患描述
            fdutyUnitName:"",      //责任部门
            fcatagories:"",        //专业
            flevel:"",             //等级
            flocation:"",          //地点
            htdetail:"",
            htdetailList:"",
            hiddenindex:0,
            departmentList:"",    //部门
            categoryList:"",      //专业类型
            placeList:"",         //地点信息
            htdetailfLevelName:"",//隐患等级
            riskrelationhiddenacc:"",//关联表对象
            showrelaceaccident:false,


        },
        created: function () {
            var _self = this;
            _self.getHazardByID();
            _self.getRiskAttributes();

            //关联隐患获取基础信息
            _self.Htdetaillevelsettin();
            _self.getEnterprise_data_dictionaryListForOrg();
            _self.getPlaceListForEnterprise();
            _self.getDepartment();
            _self.getshowrelaceaccident();
          //  _self.newriskrelationhiddenacc();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            //显式隐患关联事故(只对东风煤矿可见)
            getshowrelaceaccident:function(){
                var _self = this;
                var framework = "<%=request.getSession().getAttribute("framework")%>";
                var frameworklist = framework.split(",");
                var frameworkByid = frameworklist[2].split('=');
                var frameworkid = frameworkByid[1];
                var dfid = "14.05.81.01.008";
                if(frameworkid == "14.05.81.01.008"){
                    _self.showrelaceaccident = true;
                }
                if(frameworkid == "abc"){
                    _self.showrelaceaccident = true;
                }
            },

            //获取关联表对象
            newriskrelationhiddenacc:function(){
                var _self = this;
                //url:发送请求地址。
                //data:待发送 Key/value 参数。
                //callback:发送成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName+"/Riskrelationhiddenandaccident/new",function(data){
                    _self.riskrelationhiddenacc = data;
                });
            },



            //保存关联信息
            addriskandhiddenandacc:function(){
                var _self = this;
                var riskandaccidentlist = [];
                for(var i=0;i<_self.riskHazards.length;i++){
                    if(_self.riskHazards[i].frameworkID !="" && _self.riskHazards[i].frameworkID!="请选择隐患"){

                        $.ajax({
                            url:projectName+"/Riskrelationhiddenandaccident/new", //发送请求的地址。
                            type:"GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data:{},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType:"json",//预期服务器返回的数据类型。
                            async:false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function(data){
                                _self.riskrelationhiddenacc = data;
                                _self.riskrelationhiddenacc.riskSiteID = _self.riskHazards[i].risksiteID;
                                _self.riskrelationhiddenacc.hazardID = _self.riskHazards[i].hazardID;
                                _self.riskrelationhiddenacc.hazard_Name = _self.riskHazards[i].name;
                                _self.riskrelationhiddenacc.hazardDesc = _self.riskHazards[i].hazardDesc;  //风险描述
                                _self.riskrelationhiddenacc.damageType = _self.riskHazards[i].damageType; //灾害类型
                                _self.riskrelationhiddenacc.hazardUUID = _self.riskHazards[i].hazardUUID;

                                _self.riskrelationhiddenacc.fDescription = _self.riskHazards[i].frameworkID; //隐患描述
                                _self.riskrelationhiddenacc.fHiddenTroubleID = _self.riskHazards[i].risksiteFullNumber; //隐患ID
                                riskandaccidentlist.push(_self.riskrelationhiddenacc);
                            },
                        });
                    }
                }
                if(riskandaccidentlist.length <=0){
                    _self.showToast("warning","没有关联的隐患信息！");
                    return;
                }
                $.ajax({
                    url:projectName + "/Riskrelationhiddenandaccident/addrelationhidden", //发送请求的地址。
                    type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    contentType: "application/json",
                    data:JSON.stringify(riskandaccidentlist),
                    dataType:"json",//预期服务器返回的数据类型。
                    async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data){
                      //请求成功后的回调函数
                        if(data){
                            _self.showToast("success", "保存成功！");
                        }else{

                        }

                    },
                });

            },

            //关联隐患事件
            relationhidden:function(htdetail){
                var _self = this;
                _self.riskHazards[_self.hiddenindex].frameworkID =htdetail.fdescription;
                _self.riskHazards[_self.hiddenindex].risksiteFullNumber = htdetail.fhiddenTroubleID;
                _self.hiddenindex =0;
                $("#modal-regular").modal("hide");
            },

            //创建隐患对象
            getNewHtdetail: function () {
                var _self = this;
                $.get(projectName + "/Riskrelationhiddenandaccident/newHtdetail", function (data) {
                    console.log(data);
                    _self.htdetail = data;
                });
            },

            //隐患数据筛选信息
            filterAssign: function () {
                var _self = this;
                _self.nowpage = 1;

                if (_self.fdescription == "") {
                    _self.htdetail.fdescription = null;

                } else {
                    _self.htdetail.fdescription = _self.fdescription;
                }

                if(_self.flevel!=""){
                    _self.htdetail.flevel = _self.flevel;

                }else{
                    _self.htdetail.flevel =null;

                }
                if (_self.fdutyUnitName == "") {
                    _self.htdetail.fdutyUnitName = null;
                } else {
                    _self.htdetail.fdutyUnitName = _self.fdutyUnitName;
                }

                if (_self.fcatagories == "") {
                    _self.htdetail.fcatagories = null;

                } else {
                    _self.htdetail.fcatagories = _self.fcatagories;
                }


                if (_self.flocation == "") {
                    _self.htdetail.flocation = null;

                } else {
                    _self.htdetail.flocation = _self.flocation;
                }

                if ($("#mfdetectionTime").val() == "") {

                    _self.htdetail.fdetectionTime = null
                } else {
                    _self.htdetail.fdetectionTime = $("#mfdetectionTime").val();

                }

//                $("#modal-regular").modal('hide');
                _self.getPageCount();
            },
            //隐患分页获取总数
            getPageCount: function () {
                var _self = this;
                _self.loading= true,
                    _self.nowpage =1;
                _self.htdetail.pagesize = _self.pagesize;
                $.ajax({
                    type: "POST",
                    url: projectName + "/Riskrelationhiddenandaccident/getHtdetailCountByNoAssign",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.htdetail),
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
                            _self.htdetailList = "";
                        }
                    }
                });
            },
            //隐患分页获取数据
            getDataByPage: function (page) {
                var _self = this;
                //加载层
                layer.load();
                _self.htdetail.page = page;
                _self.htdetail.pagesize = 10;
                $.ajax({
                    type: "POST",
                    url: projectName + "/Riskrelationhiddenandaccident/getHtdetailNoAssignList",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.htdetail),
                    success: function (data) {
                        console.log(data);
                        _self.htdetailList = data;
                        layer.closeAll('loading');
                    }
                });
            },

            //点击添加隐患
            addHidden:function (riskIndex) {
                var _self = this;
                $("#modal-regular").modal("show");
                _self.hiddenindex = riskIndex;
                _self.getNewHtdetail();
            },


            //进入关联隐患与事故状态
            changePage: function(){
                var _self = this;
                _self.getAccident_danger_risk();
                _self.riskSelf = false;
                _self.relevance = true;
                _self.hiddenTitle = false;
                _self.hiddenContent = false;
                _self.hiddenRelevance = true;
                _self.hiddenReContent = true;
                $("#addriskandaccident").show();
            },

            //查询事故原因
            getAccident_danger_risk:function(){
                var _self = this;
                if(_self.riskHazards.length >0){
                    var accidentriskidlist =[];
                    for(var i=0;i<_self.riskHazards.length;i++){
                        accidentriskidlist[i] = _self.riskHazards[i].hazardUUID;
                        _self.riskHazards[i].coalmineName = "";
                        _self.riskHazards[i].frameworkID ="请选择隐患";
                        _self.riskHazards[i].risksiteFullNumber ="";
                    }
                }
                $.ajax({
                      url:projectName + "/Riskrelationhiddenandaccident/accidentriskByid", //发送请求的地址。
                      type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                      contentType: "application/json",
                      data:JSON.stringify(accidentriskidlist),
                      dataType:"json",//预期服务器返回的数据类型。
                      async:false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                      success: function(data){
                          for(var i=0;i<data.length;i++){
                              //事故原因信息
                              _self.riskHazards[i].coalmineName = data[i];

                          }
                          _self.updatehidden();
                      },
                });

            },

            //隐患回填
            updatehidden:function(){
                var _self = this;
                if(_self.riskHazards.length >0){
                    var accidentriskidlist =[];
                    for(var i=0;i<_self.riskHazards.length;i++){
                        accidentriskidlist[i] = _self.riskHazards[i].hazardUUID;
                    }
                }
                $.ajax({
                    url:projectName + "/Riskrelationhiddenandaccident/updatehiddenByid", //发送请求的地址。
                    type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    contentType: "application/json",
                    data:JSON.stringify(accidentriskidlist),
                    dataType:"json",//预期服务器返回的数据类型。
                    async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data){
                        for(var i=0;i<data.reasionlist.length;i++){
                            //隐患描述的回填
                            if(data.reasionlist[i] !=""){
                                _self.riskHazards[i].frameworkID = data.reasionlist[i];
                            }else{
                                _self.riskHazards[i].frameworkID = "请选择隐患";
                            }

                            _self.riskHazards[i].risksiteFullNumber =data.hiddenid[i];

                        }
                    },
                });
            },





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

                _self.getHazardByID();
            },
            //获取危险源信息
            getHazardByID: function () {
                var _self = this;
                $.post(projectName + "/RiskControlMeasureControl/getHazard", function (data) {
                    _self.riskSite = data;
                    _self.riskHazards = data.mhazards;
                    for (var i = 0; i < _self.riskHazards.length; i++) {
                        if (_self.riskHazards[i].mRiskControlRange.length != 0) {
                            var mrangs = _self.riskHazards[i].mRiskControlRange
                            for (var j = 0; j < mrangs.length; j++) {
                                if (mrangs[j].manageDuty == null) {
                                    mrangs[j].manageDuty = "";
                                }
                                if (mrangs[j].manageUnit == null) {
                                    mrangs[j].manageUnit = "";
                                }
                                if (mrangs[j].controlRangePinci == null) {
                                    mrangs[j].controlRangePinci = "";
                                }
                            }

                        }
                    }
                });
            },

            //获取隐患等级
            Htdetaillevelsettin: function () {
                var _self = this;
                $.post(projectName + "/Riskrelationhiddenandaccident/htdetaillevelsetting", function (data) {
                    _self.htdetailfLevelName = data;
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
                        _self.categoryList = data.专业类型;
                    },
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
                    _self.placeList = data;
                });
            },

            //获取平台部门信息
            getDepartment: function () {
                var _self = this;
                $.get(projectName + "/PlatForm/getDepartment", function (data) {
                    _self.departmentList = data;
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
                console.log(val);
                console.log(defaultName);
                var result=defaultName;
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
<script>
    laydate.render({
        elem: "#mfdetectionTime"
        , trigger: 'click'
        , theme: '#3188f2'
        , showBottom: false
        /*, showBottom: false*/

    });
</script>
</body>

</html>