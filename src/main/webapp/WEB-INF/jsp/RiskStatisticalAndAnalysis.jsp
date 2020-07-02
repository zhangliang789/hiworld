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
    <title>风险分析-管控情况分析</title>
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
    <link href="../css/iview.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../iview/iview.css">
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

        .input-group-addon,
        .input-group-btn {
            width: 1% !important;
            white-space: nowrap;
            vertical-align: middle;
        }
        a {
            cursor:pointer;
        }
        .table {
            margin-bottom: 0;
        }

        .table-striped > tbody > tr:nth-of-type(odd) {
            background-color: #fff !important;
        }

        .btys {
            display: inline-block;
            padding: 10px 40px;
            vertical-align: sub;
        }

        /*.btys{ display: inline-block; padding: 8px 20px; background-color: #ff0000; vertical-align: sub; }*/

        .close {
            line-height: 0;
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
            top: 12px;
            right: 373px;
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

        .modal-footer {
            background-color: #fff;
        }
        th{white-space:nowrap; }
    </style>
</head>

<body>
<div id="page-content" style="min-height: 794px;overflow-y: auto;" onkeydown="search()">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section">
                    <h1 style="float: left;">管控情况分析</h1>
                    <div class="form-group" style="float: right; position: relative;right: 19px">
                        <div class="searchCon"><i class="hi hi-search" style="padding-left: 170px;"></i><input
                                name="search" id="keywords"
                                placeholder="输入风险点名称 回车查询"
                                class="searchWrap"
                                type="text"></div>
                        <button type="button" onclick="querysearch()" class="btn btn-effect-ripple btn-primary">查询
                        </button>
                        <%--<button type="submit" class="btn btn-effect-ripple btn-primary" data-toggle="modal"--%>
                                <%--data-target="#modal-search">设置筛选条件--%>
                        <%--</button>--%>
                        <button type="submit"  @click="getExcell"  class="btn btn-effect-ripple btn-primary">导出</button>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full" style="padding-top: 0;">
        <div class="table-responsive">
            <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                    <thead>
                    <tr>
                        <th class="text-center">序号</th>
                        <th class="text-center">{{'Name'|titleFilter('风险点')}}</th>
                        <th class="text-center">{{'RiskDescription'|titleFilter('风险点描述')}}</th>
                        <th class="text-center" rowspan="2" >
                            {{'RiskDamageType'|titleFilter('灾害类型')}}
                        </th>
                        <th class="text-center">事故类型</th>
                        <th class="text-center">{{'riskLevel'|titleFilter('风险点等级')}}</th>
                        <th class="text-center">{{'RiskColor'|titleFilter('预警程度')}}</th>
                        <%--<th class="text-center">{{'riskFrequency'|titleFilter('管控频次')}}</th>--%>
                        <th class="text-center">状态</th>

                        <th class="text-center">当前失控次数</th>
                        <th class="text-center">历史失控次数</th>
                        <%--<th class="text-center">失控风险数量</th>--%>
                        <%--<th class="text-center">当前隐患数量</th>--%>
                        <%--<th class="text-center">历史记录</th>--%>
                        <%--<th class="text-center">{{'RiskControlTier'|titleFilter('管控层次')}}</th>--%>
                        <th class="text-center">{{'managerUnitName'|titleFilter('责任部门')}}</th>
                        <%--<th class="text-center">{{'managerName'|titleFilter('责任人')}}</th>--%>
                    </tr>
                    </thead>
                    <tbody v-for="(risk,riskIndex) in detailedList">
                    <tr>
                        <td v-text="pagesize*(nowpage-1)+riskIndex+1">1</td>
                        <td v-text="risk.Name"></td>
                        <td v-text="risk.RiskDescription"></td>
                        <td v-text="risk.RiskDamageType"></td>
                        <td v-text="risk.RiskAccident"></td>
                        <td v-text="risk.RiskLevel">
                        </td>
                        <td><span v-if="risk.RiskColor !=null"
                                  v-bind:style="'background-color:'+risk.RiskColor"
                                  class="btys"></span><span
                                v-if="risk.RiskColor =='' || risk.RiskColor ==null"
                                class="btys"></span></td>
                        <%--<td v-text="risk.RiskFrequency"></td>--%>
                        <td v-if="risk.CheckStatus==''||risk.CheckStatus==null||risk.CheckStatus==0">未执行</td>
                        <td v-if="risk.CheckStatus==1">已执行</td>
                        <td><a @click="getOutofControlByLostItemIDs(risk.LostNowItemIDs)" v-text="risk.LostNowCount" STYLE="color: #00a2e8"></a></td>
                        <td><a @click="getOutofControlByLostItemIDs(risk.LostHistoryItemIDs)" v-text="risk.LostHistoryCount" STYLE="color: #00a2e8"></a></td>
                        <%--<td><a @click="getHazardInfo(risk)" v-text="risk.HazardCount" STYLE="color: #00a2e8"></a></td>--%>
                        <%--<td v-for="(hcount,hindex) in hazardcount"--%>
                            <%--v-if="pagesize*(nowpage-1)+riskIndex+1==pagesize*(nowpage-1)+hindex+1">--%>
                            <%--<a @click="getHazardInfo(risk,hcount,0)" STYLE="color: #00a2e8" v-text="hcount"></a></td>--%>
                        <%--<a href="#modal-regular" data-toggle="modal">1</a></td>--%>
                        <%--<td>--%>
                        <%--<a href="">20</a></td>--%>
                        <td v-text="risk.ManagerUnitName"></td>
                    </tr>
                    </tbody>
                </table>
                <div class="row">
                    <div class="col-sm-7 col-xs-12 clearfix" >
                        <%--<nav class="pull-right">--%>
                            <%--<ul class="pagination pagination-sm remove-margin "--%>
                                <%--id="pagination">--%>
                            <%--</ul>--%>
                        <%--</nav>--%>

                            <template>
                                <Page :total="detailedListAll.length" :current.sync="nowpage" @on-change="showRiskInfo" :page-size="pagesize"></Page>
                            </template>


                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--得到风险信息-->
    <div id="modal-add" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="min-height: 100%">
                <div class="modal-body" style="overflow-y: auto;height: 665px;">
                    <div class="block-title">
                        <h4>风险清单</h4></div>
                    <%--<div class="col-sm-12" style="text-align: right;padding:0" >--%>
                    <%--<div class="searchCon"><_self.number class="hi hi-search"></_self.number><input name="queryhazard" id="queryhazard"--%>
                    <%--placeholder="输入风险点名称 回车查询"--%>
                    <%--class="searchWrap"--%>
                    <%--type="text"></div>--%>
                    <%--</div>--%>
                    <table id="gener" class="table table-striped table-bordered table-vcenter table-hover">
                        <thead>
                        <tr>
                            <%--<th class="text-center">--%>
                            <%--<label class="csscheckbox csscheckbox-primary">--%>
                            <%--<input type="checkbox">--%>
                            <%--<span></span>--%>
                            <%--</label>--%>
                            <%--</th>--%>
                            <th class="text-center">序号</th>
                            <th class="text-center">风险名称</th>
                            <th class="text-center">风险等级</th>
                            <th class="text-center">风险类型</th>

                        </tr>
                        </thead>
                        <tbody id="myid" v-for="(rcm,index) in riskhazardList">
                        <tr :id="rcm.name">
                            <%--<td class="text-center">--%>
                            <%--<label class="csscheckbox csscheckbox-primary">--%>
                            <%--<input type="checkbox" @click="checkRisksite(rcm,index)">--%>
                            <%--<span></span>--%>
                            <%--</label>--%>
                            <%--</td>--%>
                                <label for="example-textarea-input" class="text-left"><span>{{saveriskSite.name}}</span></label>

                          <%--  <select  style="margin: 10px 10px;    width: 40%;
    display: inline-block;" class="form-control" v-model="checks">
                                <option value="请选择">请选择</option>
                                <option v-for="(myriskSite,index) in saveriskSite.mchildRiskSite">{{myriskSite.name}}
                                </option>
                            </select>--%>
                            <th v-text="index+1">1</th>
                            <td v-text="rcm.name"></td>
                            <td v-text="rcm.riskLevel"></td>
                            <td v-text="rcm.riskType"></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>

    <!--得到管控措施信息-->
    <div id="modal-add1" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="min-height: 100%">
                <div class="modal-body" style="overflow-y: auto;height: 665px">
                    <div class="block-title">
                        <h4>失控清单</h4></div>
                    <%--<div class="col-sm-12" style="text-align: right;padding:0" >--%>
                    <%--<div class="searchCon"><_self.number class="hi hi-search"></_self.number><input name="search" id="keywords"--%>
                    <%--placeholder="输入风险点名称 回车查询"--%>
                    <%--class="searchWrap"--%>
                    <%--type="text"></div>--%>
                    <%--</div>--%>

                    <table id="gener" class="table table-striped table-bordered table-vcenter table-hover">
                        <thead>
                        <tr>
                            <%--<th class="text-center">--%>
                            <%--<label class="csscheckbox csscheckbox-primary">--%>
                            <%--<input type="checkbox">--%>
                            <%--<span></span>--%>
                            <%--</label>--%>
                            <%--</th>--%>
                                <label for="example-textarea-input" class="text-left"><span>{{saveriskSite.name}}</span></label>

                            <%--<select style="margin: 10px 10px;    width: 40%;
    display: inline-block;" class="form-control" v-model="checkIDs">
                                <option value="请选择">请选择</option>
                                <option v-for="(myriskSite,index) in saveriskSite.mchildRiskSite">{{myriskSite.name}}
                                </option>
                            </select>
                            <select style="    width: 30%;
    display: inline-block;" class="form-control" class="form-control" v-model="checkHazards">
                                <option value="请选择">请选择</option>
                                <option v-for="(myriskHazard,index) in riskHazardData">{{myriskHazard.name}}</option>

                            </select>--%>
                            <th class="text-center">序号</th>
                            <th class="text-center">计划名称</th>
                            <th class="text-center">检查时间</th>
                            <th class="text-center">检查部门</th>
                            <th class="text-center">检查人</th>
                            <th class="text-center">风险内容</th>
                            <th class="text-center">存在问题</th>
                            <th class="text-center">失控状态</th>



                        </tr>
                        </thead>
                        <tbody id="myid" v-for="(rcm,index) in controlmeasureList">
                        <tr :id="rcm.name">
                            <%--<td class="text-center">--%>
                            <%--<label class="csscheckbox csscheckbox-primary">--%>
                            <%--<input type="checkbox" @click="checkRisksite(rcm,index)">--%>
                            <%--<span></span>--%>
                            <%--</label>--%>
                            <%--</td>--%>
                            <th v-text="index+1">1</th>
                                <td v-text="rcm.MonthPlanName"></td>
                                <td v-text="rcm.CheckTime"></td>
                                <td v-text="rcm.CreateUnitName"></td>
                                <td v-text="rcm.CreateName"></td>
                                <td v-text="rcm.Name"></td>

                                <td v-text="rcm.CheckQuestion"></td>
                                <td v-if="rcm.OutOfControlStatus==true">失控</td>
                                <td v-if="rcm.OutOfControlStatus==false">未失控</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <!--筛选-->
    <div id="modal-search" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="min-height: 100%">
                <div class="modal-body">
                    <div class="block-title">
                        <h4>筛选</h4></div>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险点名称</label>
                            <div class="col-sm-8">
                                <input class="form-control input-sm" placeholder="" type="text"
                                       id="planname"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险点等级</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--id="plantype">--%>
                                <select class="form-control nihao1" placeholder="" type="text"
                                        id="plantype">
                                    <option value=null>请选择风险点等级</option>
                                    <option v-for="(risklever,index) in riskleversettingList" :value="risklever.riskLevelSettingID">{{risklever.riskLevel}}</option>

                                </select>

                            </div>
                        </div>
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
    </div>
    <!--附件下载-->
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
        <%-- <input id="subButton" value="提交" type="button" @click="downloadFile">--%>
    </form>
    <form id="downFile" action="<%=request.getContextPath()%>/RiskControlMeasureControl/downFile" method="post">
        <input id="downloadUrl" name="downloadUrl" type="hidden"/>
        <input id="realFileName" name="realFileName" type="hidden"/>
    </form>
</div>
<!-- END Page Content -->
<!-- 添加 -->
<div id="modal-regular" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <div class="block-title">
                    <h4>隐患详细信息</h4></div>
                <div class="timeline block-content-full">
                    <ul class="timeline-list">
                        <li>
                            <div class="timeline-time">2017-10-10</div>
                            <div class="timeline-icon themed-background-danger text-light-op">1</div>
                            <div class="timeline-content">
                                <p class="push-bit">
                                    <strong style="color: #0B8DE5;">等级c级</strong></p>
                                <p class="push-bit">隐患内容：未佩戴防护用具</p>
                                <p class="push-bit">录入人：汤先伟（安监员）</p>
                                <p class="push-bit">治理部门：掘进一区队</p>
                                <p class="push-bit">责任人：王旭</p></div>
                        </li>
                        <li>
                            <div class="timeline-time">2017-10-10</div>
                            <div class="timeline-icon themed-background text-light-op">2</div>
                            <div class="timeline-content">
                                <p class="push-bit">
                                    <strong>Time to eat</strong></p>
                                <p class="push-bit">Delicious fresh italian pizzas!</p></div>
                            <div class="timeline-content">
                                <p class="push-bit">
                                    <strong style="color: #0B8DE5;">等级c级</strong></p>
                                <p class="push-bit">隐患内容：未佩戴防护用具</p>
                                <p class="push-bit">录入人：汤先伟（安监员）</p>
                                <p class="push-bit">治理部门：掘进一区队</p>
                                <p class="push-bit">责任人：王旭</p></div>
                        </li>
                        <li>
                            <div class="timeline-time">2017-10-10</div>
                            <div class="timeline-icon themed-background-info text-light-op">3</div>
                            <div class="timeline-content">
                                <p class="push-bit">
                                    <strong style="color: #0B8DE5;">等级c级</strong></p>
                                <p class="push-bit">隐患内容：未佩戴防护用具</p>
                                <p class="push-bit">录入人：汤先伟（安监员）</p>
                                <p class="push-bit">治理部门：掘进一区队</p>
                                <p class="push-bit">责任人：王旭</p></div>
                        </li>
                        <li>
                            <div class="timeline-time">2017-10-10</div>
                            <div class="timeline-icon themed-background-amethyst text-light-op">4</div>
                            <div class="timeline-content">
                                <p class="push-bit">
                                    <strong style="color: #0B8DE5;">等级c级</strong></p>
                                <p class="push-bit">隐患内容：未佩戴防护用具</p>
                                <p class="push-bit">录入人：汤先伟（安监员）</p>
                                <p class="push-bit">治理部门：掘进一区队</p>
                                <p class="push-bit">责任人：王旭</p></div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-effect-ripple btn-primary">提交</button>
                <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
    <form id="getExcell" action="<%=request.getContextPath()%>/RiskDetailedList/getExcell" method="post">
        <input id="ExcellID" name="ExcellID" type="hidden"/>
        <input id="ExcellName" name="ExcellName" type="hidden"/>
        <input id="riskName" name="riskName" type="hidden"/>
    </form>
</div>
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
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/vue.js"></script>
<script src="../js/iview.min.js"></script>
<script src="../js/resource.js"></script>
<script type="text/javascript">
    function search() {
        if (event.keyCode == 13) {
            var keywords = $("#keywords").val();
            vueApp.riskName = keywords;
            vueApp.getOutOfControlRiskAnalyze();
        }
    };

    function querysearch() {
        var keywords = $("#keywords").val();
        vueApp.riskName = keywords;
        vueApp.getOutOfControlRiskAnalyze();
    }

    //    function searchRiskSite() {
    //        vueApp.riskSite.name = $("#planname").val();
    //        vueApp.riskSite.riskLevel = $("#plantype").val();
    //        vueApp.getPageCount();
    //    }

    var projectName = '<%=request.getContextPath() %>';
    var attrArray = null;
    /**
     * Created by Administrator on 2017/9/26
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            pagesize: 10,
            nowpage: 1,
            detailedList: new Array(),
            detailedListAll:"",
            riskSite: "",
            riskhazard: "",
            riskhazardList: [],
            controlmeasure: "",
            controlmeasureList:"",
            number: 0,
            replacecount: new Array(),
            hazardcount: new Array(),
            measurecount: new Array(),
            saveriskSite: "",
            checkIDs: "请选择",
            riskHazardData: "",
            checkHazards: "请选择",
            checks: "请选择",
            riskleversetting:"",
            riskleversettingList:"",
            riskName:"",
        },
        created: function () {
            var _self = this;
//            _self.getNewRiskSite();
            _self.getRiskHazard();
            _self.getRiskMeasure();
            _self.getNewRiskleversetting();
            _self.getOutOfControlRiskAnalyze();

        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            getOutofControlByLostItemIDs:function(value){
              var _self=this;
                $.ajax({
                    url:projectName+"/RiskControlAnalyzeControl/getOutofControlByLostItemIDs", //发送请求的地址。
                    type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data:{"LostItemIDs":value},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType:"json",//预期服务器返回的数据类型。
                    async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function(data){
                      //请求成功后的回调函数
                        if(data!=0){
                            _self.controlmeasureList=data;
                            $("#modal-add1").modal("show");
                        }else{
                            _self.showToast("warning","无失控数量");

                        }

                    },
                });


            },
            showRiskInfo:function(val){
                var _self=this;
                _self.detailedList=[];

                    for(var i=(val-1)*_self.pagesize;i<_self.detailedListAll.length;i++){
                        if(i<val*_self.pagesize){
                            _self.detailedList.push(_self.detailedListAll[i]);
                        }

                    }

                    _self.nowpage=val;
            },
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
                $("#ExcellName").val("管控情况分析信息表.xls");
                $("#riskName").val($("#keywords").val());
                $("#getExcell").submit();
            },
            //筛选矿关闭时还原原本数据
            clearData: function () {
                var _self = this;
                $("#planname").val("");
                $("#plantype").val("null");
                $("#modal-search").modal("hide");

            },
            judgeQuery: function () {
                var _self = this;
                if ($("#planname").val() == "") {
                    _self.riskSite.name = null;
                } else {
                    _self.riskSite.name = $("#planname").val()
                }
                if ($("#plantype").val() == "null") {
                    _self.riskSite.riskLevelSettingID = null;
                } else {
                    _self.riskSite.riskLevelSettingID = $("#plantype").val()
                }
                _self.getPageCount()

            },
            //附件下载
            downloadFile: function (data) {
                var _self = this;
                $("#checkid").val(data)
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
            getHazardcount: function () {
                var _self = this;
                if(_self.number ==0){
                    _self.measurecount=[];
                    _self.hazardcount=[];
                }
                $.ajax({
                    url: projectName + "/RiskControlPlaneByMonthControl/getHazardCount", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {
                        "frameWorkID": _self.detailedList[_self.number].frameWorkID,
                        "riskSiteFullNumber": _self.detailedList[_self.number].fullNumber
                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (hazarddata) {
                        if (_self.detailedList[_self.number].frameWorkID == "" || _self.detailedList[_self.number].frameWorkID == null || _self.detailedList[_self.number].fullNumber == "" || _self.detailedList[_self.number].fullNumber == null) {
                            _self.hazardcount.push(0);
                        } else {
                            _self.hazardcount.push(hazarddata);
                        }

                        $.ajax({
                            url: projectName + "/RiskControlPlaneByMonthControl/getControlMeasureCount", //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: {
                                "frameWorkID": _self.detailedList[_self.number].frameWorkID,
                                "riskSiteFullNumber": _self.detailedList[_self.number].fullNumber,
                            },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            dataType: "json",//预期服务器返回的数据类型。
                            async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (datacount) {
                                if (_self.detailedList[_self.number].frameWorkID == "" || _self.detailedList[_self.number].frameWorkID == null || _self.detailedList[_self.number].fullNumber == "" || _self.detailedList[_self.number].fullNumber == null) {
                                    _self.showToast("warning", _self.detailedList[_self.number].name + "--企业编码或全编码为空,查询风险,管控措施个数有误");
                                    _self.measurecount.push(0);
                                } else {
                                    _self.measurecount.push(datacount);
                                }
                                if (_self.number < _self.detailedList.length) {
                                    _self.number += 1;
                                    _self.getHazardcount();

                                }
                                if (_self.number == _self.detailedList.length) {
                                    _self.number = 0;
                                }
                            }
                        });
                    }
                });
            },
            //得到一个riskhazard空对象
            getRiskHazard: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/RiskAssessment/newRiskhazard", function (data) {
                    _self.riskhazard = data;
                });

            },
            //得到一个riskcontrolmeasure空对象
            getRiskMeasure: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/RiskAssessment/newRisksiteoutofcontrolitem", function (data) {
                    _self.controlmeasure = data;
                });

            },
            getMeasureInfo: function (myrisk) {
                var _self = this;
                _self.controlmeasureList = [];
                var mitemInfo=myrisk.ItemID.split(",");
                for(var i=0;i<mitemInfo.length;i++){
                    _self.controlmeasure.itemID=parseInt(mitemInfo[i]);
//                    _self.controlmeasure.outOfControlStatus=null;
                    layer.load();
                    $.ajax({
                        url: projectName + "/RiskAssessment/getRisksiteoutofcontrolitemData", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: JSON.stringify(_self.controlmeasure),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        contentType: "application/json",
                        dataType: "json",//预期服务器返回的数据类型。
                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
                            _self.controlmeasureList.push(data[0]) ;
                            $("#modal-add1").modal("show");
                            layer.closeAll('loading');


                        },
                    });
                }
            },
            getHazardInfo: function (myrisk) {
                var _self = this;
                _self.riskhazardList = [];
                if(myrisk.Hazards!=undefined){
                    var hc=myrisk.Hazards.split(",");
                    for(var i=0;i<hc.length;i++){

                        _self.riskhazard.hazardID = hc[i];

                        layer.load();
                        $.ajax({
                            url: projectName + "/RiskAssessment/getRiskhazard", //发送请求的地址。
                            type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                            data: JSON.stringify(_self.riskhazard),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                            contentType: "application/json",
                            dataType: "json",//预期服务器返回的数据类型。
                            async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                            success: function (data) {
                                //请求成功后的回调函数
                                _self.riskhazardList.push(data[0]);
                                $("#modal-add").modal("show");
                                layer.closeAll('loading');

                            },
                        });
                    }

                }else{
                    _self.showToast("warning","无风险数量");

                }


            },

            getOutOfControlRiskAnalyze:function(){
              var _self=this;
              layer.load();
                _self.nowpage=1;
                _self.detailedList=[];
              $.ajax({
                  url:projectName+"/RiskControlAnalyzeControl/getOutOfControlRiskAnalyze", //发送请求的地址。
                  type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                  dataType:"json",//预期服务器返回的数据类型。
                  data:{"riskName":_self.riskName},
                  async:"false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                  success: function(data){
                    //请求成功后的回调函数
                      _self.detailedListAll = data;
                      for(var i=0;i<_self.detailedListAll.length;i++){
                          if(i<_self.pagesize){
                              _self.detailedList.push(_self.detailedListAll[i]);
                          }

                      }
                      layer.closeAll('loading');
                  },

              });

            },
            //得到一个risksite空对象
            getNewRiskSite: function () {
                var _self = this;
                $.get(projectName + "/RiskDetailedList/newRiskSite", function (data) {
                    _self.riskSite = data;
                    _self.getPageCount();
                });

            },
            //获取总条数，参数是Risksite 对象
            getPageCount: function () {
                var _self = this;
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
                            _self.showToast("info", "没有查询到数据");
                            _self.detailedList = "";
                        }
                    }
                });
            },
            //分页获取数据，参数是Risksite 对象和页面大小和页码
            getDataByPage: function (page) {
                var _self = this;
                //加载层
                layer.load();
                _self.riskSite.page = page;
                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskDetailedList/Page",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskSite),
                    success: function (data) {
                        console.log(data);
                        _self.detailedList = data;
                        _self.number = 0;
                        _self.getHazardcount();

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
            },

        },
        computed: {},
        watch: {
            //监视数据数组，以便控制全选的选中与不选中
            'checkIDs': {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == '请选择') {
                        _self.checkIDs = "请选择"
                        _self.riskHazardData = ""
                        _self.getMeasureInfo(_self.saveriskSite, 1, 1);
                    }
                    for (var i = 0; i < _self.saveriskSite.mchildRiskSite.length; i++) {
                        if (val == _self.saveriskSite.mchildRiskSite[i].name) {
                            _self.riskHazardData = _self.saveriskSite.mchildRiskSite[i].mhazards;
                            _self.getMeasureInfo(_self.saveriskSite.mchildRiskSite[i], 1, 1);
                        }
                    }
                },
                deep: true
            },
            'checkHazards': {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == '请选择') {
                        for (var i = 0; i < _self.saveriskSite.mchildRiskSite.length; i++) {
                            if (_self.checkIDs == _self.saveriskSite.mchildRiskSite[i].name) {
                                _self.getMeasureInfo(_self.saveriskSite.mchildRiskSite[i], 1, 1);
                            }
                        }
                    }
                    for (var i = 0; i < _self.riskHazardData.length; i++) {
                        if (val == _self.riskHazardData[i].name) {
                            _self.getMeasureInfo(_self.riskHazardData[i], 1, 2);
                        }
                    }
                },
                deep: true
            },
            'checks': {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (val == '请选择') {
                        _self.getHazardInfo(_self.saveriskSite, 1, 1);
                    }
                    for (var i = 0; i < _self.saveriskSite.mchildRiskSite.length; i++) {
                        if (val == _self.saveriskSite.mchildRiskSite[i].name) {
                            _self.getHazardInfo(_self.saveriskSite.mchildRiskSite[i], 1, 2);
                        }
                    }
                },
                deep: true
            }
        },
        filters: {
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
            $(this).siblings("_self.number").addClass("fa fa-caret-down").removeClass("a fa-caret-right");
        } else {
            $(this).siblings("_self.number").addClass("a fa-caret-right").removeClass("a fa-caret-down");
        }
        //
    });
});</script>
</body>

</html>