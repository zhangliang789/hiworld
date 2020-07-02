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
    <title>导入线下辨识结果</title>
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
    <link rel="stylesheet" type="text/css" href="../css/style1.css"/>
    <link rel="stylesheet" href="../js/plugins/uploader/webuploader.css">
    <link rel="stylesheet" type="text/css" href="../iview/iview.css">
    <style type="text/css">/*.nav .caret { border-top-color: #ebebeb; transition: all 0.3s ease-in-out; -webkit-transition: all 0.3s ease-in-out; -ms-transition: all 0.3s ease-in-out; }*/
    .xybnr {
        margin-top: 50px;
    }

    .hkdys {
        background-color: #f8f8f9;
        font-weight: bold;
    }

    .webuploader-pick {
        width: auto;
    }

    .modal {
        display: none;
        overflow: hidden;
        position: fixed;
        top: 95px;
        right: 450px;
        bottom: 0;
        left: 0;
        z-index: 1050;
        -webkit-overflow-scrolling: touch;
        outline: 0;
        height: 100%;
    }

    .webuploader-pick {
        /* padding: 3px 10px;*/
        height: 32px;
    }
    </style>
</head>

<body>
<div id="page-content" style="min-height: 794px;">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section" style="overflow: hidden;">
                    <h1 style="float: left;">导入线下辨识结果</h1>
                    <div style="float: right;">
                        <a class="btn btn-primary" id="file-picker"
                           style="position: relative;display: inline-block;vertical-align: middle;padding: 0">
                            打开文件
                        </a>
                        <button type="button" class="btn btn-primary" @click="confirmImport">确认导入</button>
                        <%-- <button type="button" class="btn btn-primary" >模板下载</button>--%>
                        <a class="btn btn-primary" href="../file/安全风险辨识模板.xlsx">模板下载</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="block full">
        <div class="" style="width:90%;margin: 0 auto;overflow: hidden">
            <ul class="nav nav-pills nav-justified step step-progress" data-step="1">
                <li v-bind:class="step1">
                    <a>选择文件
                        <span class="caret"></span></a>
                </li>
                <li v-bind:class="step2">
                    <a>校验分析
                        <span class="caret"></span></a>
                </li>
                <li v-bind:class="step3">
                    <a>导入数据
                        <span class="caret"></span></a>
                </li>
                <li v-bind:class="step4">
                    <a>提取辨识方法、风险信息
                        <span class="caret"></span></a>
                </li>
                <li v-bind:class="step5">
                    <a>完成
                        <span class="caret"></span></a>
                </li>
            </ul>
        </div>
        <div id="" class="xybnr">
            <div style="padding: 10px ;text-align: right;">
                <button type="button" class="btn btn-default" @click="nextStep">下一步</button>
            </div>
            <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                <tr class="hkdys">
                    <td class="text-center" rowspan="2" style="width: 70px;">序号</td>
                    <td class="text-center" rowspan="2" width="150">风险</td>
                    <%--<td class="text-center" rowspan="2" width="150">管控对象类型</td>--%>
                    <td class="text-center" rowspan="2" width="120">灾害类型</td>
                    <td class="text-center" rowspan="2" width="120">专业类型</td>
                    <td class="text-center" rowspan="2" width="120">事故类型</td>
                    <td class="text-center" colspan="1" width="300">管控措施</td>
                    <td class="text-center" rowspan="2" width="200">LEC/LS</td>
                    <td class="text-center" rowspan="2" width="200">风险种类</td>
                    <td class="text-center" rowspan="2" width="150">管控结果</td>
                    <tr class="biaot">
                    <tbody v-for="(risk,riskIndex) in detailedList">
                    <tr>
                        <td v-text="riskIndex+1"></td>
                        <td colspan="10"><i class="fa fa-caret-right fa-fw"></i> <a
                                v-text="risk.name+'('+risk.mchildRiskSite.length+')'"
                                @click="showChild(risk)"></a>
                        </td>
                    </tr>
                    <tr v-for="(riskc,index) in risk.mchildRiskSite" v-show="risk.showChild"
                        v-bind:id="'risk'+riskc.riskSiteUUID">
                        <td v-text=" (riskIndex+1)+'.'+(index+1)"></td>
                        <td colspan="10" style="padding-left: 20px"><i class="fa fa-caret-right fa-fw"></i> <a
                                v-text="riskc.name +'('+riskc.mhazards.length+')'"
                                @click="showHazard(riskc)"> </a></td>
                    </tr>

                    </tbody>
            </table>

        </div>
    </div>
    <div class="modal inmodal" id="modal-toast" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">您需要在平台中维护以下部门和角色</h4>
                    <small></small>
                </div>
                <div class="modal-body">
                    <h3>部门:</h3>
                    <p style="margin-left: 20px;color:red;" v-for="dept in lostDepartments" v-text="dept"></p>

                    <h3>角色:</h3>
                    <p style="margin-left: 20px;color:red;" v-for="role in lostRoles" v-text="role"></p>

                    <h3>数据字典:</h3>
                    <p style="margin-left: 20px;color:red;" v-for="dic in lostDics" v-text="dic"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal">确认
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal inmodal" id="modal-toastDepartment" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">您需要在平台中维护以下部门</h4>
                    <small></small>
                </div>
                <div class="modal-body">
                    <h3>部门:</h3>
                    <p style="margin-left: 20px;color:red;" v-for="dept in lostDepartments" v-text="dept"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal">确认
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal inmodal" id="modal-toastRole" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">您需要在平台中维护以下角色</h4>
                    <small></small>
                </div>
                <div class="modal-body">

                    <h3>角色:</h3>
                    <p style="margin-left: 20px;color:red;" v-for="role in lostRoles" v-text="role"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal">确认
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal inmodal" id="modal-toastDic" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">您需要在平台中维护以下数据字典</h4>
                    <small></small>
                </div>
                <div class="modal-body">

                    <h3>数据字典:</h3>
                    <p style="margin-left: 20px;color:red;" v-for="dic in lostDics" v-text="dic"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal">确认
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal inmodal" id="modal-toastDic1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">您需要维护下面数据:</h4>
                    <small></small>
                </div>
                <div class="modal-body">
                    <h3>提示:</h3>
                    <p style="margin-left: 20px;color:red;" v-for="dic in mchildrisksitelist" v-text="dic"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal">确认
                    </button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal inmodal" id="modal-riskLevelSettingExist" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY">
                <div class="modal-header">
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">提示</h4>
                    <small></small>
                </div>
                <div class="modal-body">

                    <h3>使用系统前，请根据您所在的企业情况，进入系统应用/风险属性设置，初始化风险等级及评估方法</h3>
                </div>
                <div class="modal-footer">

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
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/plugins/uploader/webuploader.js"></script>
<script src="../js/vue.js"></script>
<script>
    jQuery(document).ready(function () {
        //$("#modal-toast").modal("show");
    });
</script>
<script type="text/javascript">
    var projectName = '<%=request.getContextPath() %>';
    //var uploader;
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            detailedList: null,
            step1: "active",
            step2: "",
            step3: "",
            step4: "",
            step5: "",
            isConfirmImport: false,
            lostDepartments: "",
            lostRoles: "",
            lostDics:"",
            uploadResult: "",
            mchildrisksitelist:"",
        },
        created: function () {
            var _self = this;
            _self.CheckRiskLevelSettingExist();
        },
        mounted: function () {
            var _self = this;
            var uploader = WebUploader.create({
                // 自动上传。
                auto: true,
                // swf文件路径
                swf: '../uploader/Uploader.swf',
                // 文件接收服务端。
                server: '../ImportOffLineData/UploadFile',
                // 选择文件的按钮。可选。
                // 内部根据当前运行是创建，可能是input元素，也可能是flash.
                pick: '#file-picker',
                //文件数限制
                fileNumLimit: 1,
                //文件大小限制
                fileSingleSizeLimit: 10 * 1024 * 1024, //10M
                // 只允许选择文件类型，可选。
                accept: {
                    title: 'files',
                    extensions: 'xls,xlsx',
                    mimeTypes: 'application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
                }
            });
            uploader.on("startUpload", function () {
                layer.load();
            }),
                uploader.on("uploadSuccess", function (file, response) {
                    if(response.state=='500'){
                        _self.showToast("error", response.message);
                        layer.closeAll('loading');
                    }else{
                        _self.detailedList = response.data.list;
                        if(response.data.list==undefined){
                            _self.showToast("error", "抱歉分析数据失败！");
                            layer.closeAll('loading');
                            return
                        }
                        _self.showDamageInfo();
                        _self.lostDepartments = response.data.departments;
                        _self.lostRoles = response.data.roles;
                        _self.lostDics=response.data.dics;
                        _self.uploadResult = response;
                        _self.mchildrisksitelist = response.data.mchildrisksitelist;

                        if(_self.mchildrisksitelist.length >0){
                            $("#modal-toastDic1").modal('show');
                            _self.detailedList = null;
                            layer.closeAll('loading');
                            uploader.reset();
                            return ;
                        }



                        if (_self.lostDepartments == null || _self.lostDepartments == undefined) {
                            _self.showToast("error", "抱歉分析数据失败！");
                            _self.detailedList = null;
                            layer.closeAll('loading');
                            uploader.reset();
                            return
                        }

                        if (_self.lostRoles == null || _self.lostRoles == undefined) {
                            _self.showToast("error", "抱歉分析数据失败！");
                            _self.detailedList = null;
                            layer.closeAll('loading');
                            uploader.reset();
                            return
                        }

                        if (_self.lostDics == null || _self.lostDics == undefined) {
                            _self.showToast("error", "抱歉分析数据失败！");
                            _self.detailedList = null;
                            layer.closeAll('loading');
                            uploader.reset();
                            return
                        }

                        if (_self.lostDepartments.length > 0 || _self.lostRoles.length > 0||_self.lostDics.length>0) {
                            $("#modal-toast").modal('show');
                        }
                        _self.showToast("success", "上传成功");
                        _self.step2 = "active";
                        layer.closeAll('loading');
                    }

                    uploader.reset();
                });

            uploader.on('uploadError', function (file) {
                _self.showToast("error", "抱歉上传失败");
                layer.closeAll('loading');
                uploader.reset();
            });
        },
        updated: function () {

        },
        methods: {
            showDamageInfo: function () {
                var _self = this;
                for (var i = 0; i < _self.detailedList.length; i++) {
                    var infoOne = "";
                    if (_self.detailedList[i].mchildRiskSite.length != 0) {
                        var mrisksites = _self.detailedList[i].mchildRiskSite;
                        for (var j = 0; j < mrisksites.length; j++) {
                            var info = "";
                            if (mrisksites[j].mhazards.length != 0) {
                                var mhazards = mrisksites[j].mhazards;
                                for (var m = 0; m < mhazards.length; m++) {

                                    if (mhazards[m].damageType != "" && info.indexOf(mhazards[m].damageType) == -1) {
                                        info += mhazards[m].damageType + ",";
                                    }
                                    if (mhazards[m].damageType != "" && infoOne.indexOf(mhazards[m].damageType) == -1) {

                                        infoOne += "," + mhazards[m].damageType;
                                    }
                                }

                            }
                            if (info != "") {
                                info = info.substring(0, info.length - 1);
                                mrisksites[j].riskDamageType = info;
                            }
                        }

                    }
                    if (infoOne != "") {
                        infoOne = infoOne.substring(1, infoOne.length);
                        _self.detailedList[i].riskDamageType = infoOne;
                    }

                }
            },
            CheckRiskLevelSettingExist: function () {
                var _self = this;
                $.get(projectName + "/ImportOffLineData/CheckRiskLevelSettingExist", function (data) {
                    if (data) {

                    } else {
                        //_self.showToast("warning","请先维护安全风险属性!");
                        $("#modal-riskLevelSettingExist").modal('show');
                    }
                });
            },
            nextStep: function () {
                var _self = this;
                if (!_self.isConfirmImport) {
                    _self.showToast("warning", "您还没有导入数据");
                    return;
                }
                window.location.href = projectName + "/menu/ImportOffLineDataComplete";
            },
            showChild: function (risk) {
                var _self = this;
                risk.showChild = !risk.showChild;
                var childs = risk.mchildRiskSite;
                for (var i = 0; i < childs.length; i++) {
                    if ($("#riskHazard" + childs[i].riskSiteUUID).length > 0) {
                        $("#riskHazard" + childs[i].riskSiteUUID).remove();
                    }
                }
            },
            showHazard: function (risk) {
                var _self = this;
                var id = 'risk' + risk.riskSiteUUID;
                if (risk.mhazards.length > 0) {
                    if ($("#riskHazard" + risk.riskSiteUUID).length > 0) {
                        $("#riskHazard" + risk.riskSiteUUID).remove();
                    } else {
                        var html = '<tr id=' + 'riskHazard' + risk.riskSiteUUID + '>' +
                            '<td class="text-center"> </td>' +
                            '<td style="border: 0;padding: 0" class="text-center" colspan="100">' +
                            '<table style="border: 0" class="table table-striped table-bordered table-vcenter">'

                        for (var i = 0; i < risk.mhazards.length; i++) {
                            var riskHazard = risk.mhazards[i];
                            riskHazard.name = riskHazard.name == null ? "" : riskHazard.name;
                            riskHazard.clossConsequence = riskHazard.clossConsequence == null ? "" : riskHazard.clossConsequence;
                            riskHazard.damageType = riskHazard.damageType == null ? "" : riskHazard.damageType;
                            riskHazard.Eexpose = riskHazard.Eexpose == null ? "" : riskHazard.Eexpose;
                            riskHazard.consequence = riskHazard.consequence == null ? "" : riskHazard.consequence;
                            riskHazard.riskLevel = riskHazard.riskLevel == null ? "" : riskHazard.riskLevel;
                            riskHazard.manageUnit = riskHazard.manageUnit == null ? "" : riskHazard.manageUnit;
                            riskHazard.supervisionUnit = riskHazard.supervisionUnit == null ? "" : riskHazard.supervisionUnit;
                            riskHazard.riskDegree = riskHazard.riskDegree == null ? "" : riskHazard.riskDegree;
                            riskHazard.riskObject = riskHazard.riskObject == null ? "" : riskHazard.riskObject;
                            riskHazard.accountabilityUnit = riskHazard.accountabilityUnit == null ? "" : riskHazard.accountabilityUnit;
                            riskHazard.dutyRole = riskHazard.dutyRole == null ? "" : riskHazard.dutyRole;

                            riskHazard.Sseverity = riskHazard.Sseverity == null ? "" : riskHazard.Sseverity; //s
                            riskHazard.Lpossibility = riskHazard.Lpossibility == null ? "" : riskHazard.Lpossibility;//l
                            riskHazard.driskValue = riskHazard.driskValue == null ? "" : riskHazard.driskValue;//r
                            riskHazard.Eexpose = riskHazard.Eexpose == null ? "" : riskHazard.Eexpose;//e
                            riskHazard.clossConsequence = riskHazard.clossConsequence == null ? "" : riskHazard.clossConsequence;//c
                            riskHazard.majorType = riskHazard.majorType == null ? "" : riskHazard.majorType;//c
                            riskHazard.riskObjectType=riskHazard.riskObjectType== null ? "" :riskHazard.riskObjectType;
                            riskHazard.accidentType=riskHazard.accidentType== null ? "" :riskHazard.accidentType;
                            riskHazard.accidentType=riskHazard.accidentType== null ? "" :riskHazard.accidentType;
                            riskHazard.riskKind=riskHazard.riskKind== null ? "" :riskHazard.riskKind;
                            riskHazard.controlResult=riskHazard.controlResult== null ? "" :riskHazard.controlResult;
                            var controlMeasure = "";
                            if (riskHazard.mriskControlMeasure.length > 0) {
                                controlMeasure = riskHazard.mriskControlMeasure[0].measureContent;
                            }
                            var leslsString = "";
                            if (riskHazard.Eexpose != "") {
                                //lec
                                leslsString = "可能性(L):" + riskHazard.Lpossibility + ";暴露率(E):" + riskHazard.Eexpose + ";产生的后果(C):" + riskHazard.clossConsequence + ";风险值(R):" + riskHazard.driskValue;
                            }
                            if (riskHazard.Sseverity != "") {
                                leslsString = "可能性(L):" + riskHazard.Lpossibility + ";损失(S):" + riskHazard.Sseverity + ";风险值(R):" + riskHazard.driskValue;
                            }
                             console.log("6666666666666");
                             console.log(riskHazard);
                            html += '<tr class="biaot biaot1">' +
                                '<td width="150">' + riskHazard.name + '</td>' +
//                                '<td width="150">' + riskHazard.riskObjectType + '</td>' +
                                '<td width="120">' + riskHazard.damageType + '</td>' +
                                '<td width="120">' + riskHazard.majorType + '</td>' +
                                '<td width="120">' + riskHazard.accidentType + '</td>' +
                                '<td width="300">' + controlMeasure + '</td>' +
                                '<td width="200">' + leslsString + '</td>' +
                                '<td width="200">' + riskHazard.riskKind + '</td>' +
                                '<td width="150">' + riskHazard.controlResult + '</td>' +
                                '</tr class="biaot">';
                        }
                        html += '</table> </td> </tr>';
                        $("#" + id).after(html);
                    }
                }
            },
            confirmImport: function () {
                var _self = this;
                if (_self.detailedList == null) {
                    _self.showToast("warning", "请先上传辨识文件");
                    return;
                }
                layer.load();
                $.ajax({
                    type: "POST",
                    url: projectName + "/ImportOffLineData/Departments/Check",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.lostDepartments),
                    success: function (data) {
                        if (data.length > 0) {
                            _self.lostDepartments = data;
                            $("#modal-toastDepartment").modal("show");
                            layer.closeAll('loading');
                        } else {
                            $.ajax({
                                    type: "POST",
                                    url: projectName + "/ImportOffLineData/Role/Check",
                                    dataType: "json",
                                    contentType: "application/json",
                                    data: JSON.stringify(_self.lostRoles),
                                    success: function (data) {
                                        if (data.length > 0) {
                                            _self.lostRoles = data;
                                            $("#modal-toastRole").modal('show');
                                            layer.closeAll('loading');
                                        } else {
                                            $.ajax({
                                                url:projectName + "/ImportOffLineData/Dic/Check",
                                                type:"POST",
                                                dataType:"json",//预期服务器返回的数据类型。
                                                contentType: "application/json",
                                                data: JSON.stringify(_self.lostDics),
                                                success: function(data){
                                                  //请求成功后的回调函数
                                                    if(data.length>0){
                                                        _self.lostDics = data;
                                                        $("#modal-toastDic").modal('show');
                                                        layer.closeAll('loading');
                                                    }else{
                                                        $.ajax({
                                                            type: "POST",
                                                            url: projectName + "/ImportOffLineData/List/add",
                                                            dataType: "json",
                                                            contentType: "application/json",
                                                            data: JSON.stringify(_self.detailedList),
                                                            success: function (data) {
                                                                if (data) {
                                                                    _self.step3 = "active";
                                                                    _self.isConfirmImport = true;
                                                                    _self.showToast("success", "导入数据完成");
                                                                    layer.closeAll('loading');
                                                                } else {
                                                                    _self.showToast("error", "导入数据出现异常");
                                                                    layer.closeAll('loading');

                                                                }
                                                            }
                                                        });
                                                    }
                                                },
                                                error: function(XMLHttpRequest, textStatus, errorThrown) {

                                                }
                                            });

                                        }
                                    }
                                }
                            );

                        }
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
    })
</script>

<script>$(function () {
    CompTree.init();
    UiTables.init();
});
</script>
<script type="text/javascript">function bsStep(i) {
    $('.step').each(function () {
        var a, $this = $(this);
        if (i > $this.find('li').length) {
            console.log('您输入数值已超过步骤最大数量' + $this.find('li').length + '！！！');
            a = $this.find('li').length;
        } else if (i == undefined && $this.data('step') == undefined) {
            a = 1
        } else if (i == undefined && $this.data('step') != undefined) {
            a = $(this).data('step');
        } else {
            a = i
        }
        $(this).find('li').removeClass('active');
        $(this).find('li:lt(' + a + ')').addClass('active');
    })
}</script>
<script>$(function () {
    bsStep();
    //bsStep(i) i 为number 可定位到第几步 如bsStep(2)/bsStep(3)
})</script>
</body>

</html>