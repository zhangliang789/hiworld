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
    <title>维护安全风险预控数据</title>
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

        @media (min-width: 768px) {
            .form-horizontal .control-label {
                text-align: left;
                margin-bottom: 0;
                padding: 7px 10px;
            }

        }

        .kuang {
            border: 1px solid #e0e0e0;
            padding-top: 20px;
            background-color: #faf9f9;
        }

        .a {
            border-bottom: 1px solid #0B8DE5;
            width: 100%;
            text-align: left;
            display: block;
        }

        textarea {
            color:#454e59;
            padding-top: 1%;
            background-color: #fcfcfc;
            border: 1px solid #ccc;
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
        }

        input {
            color: #454e59;
        }

        th {
            white-space: nowrap;

        }

        #page-content {

            padding: 20px 20px 1px;
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

        a {
            cursor: pointer;
        }

        .ivu-select-dropdown {

            position: absolute !important;
        }

        * {
            margin: 0;
            padding: 0;
        }

    </style>
</head>
<body>
<div id="page-content" style="min-height: 794px;">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section">
                    <h1 style="float:left;margin-bottom: 0;">安全风险预控数据维护</h1>
                    <div class="form-group" style="float: right;margin-bottom: 0;">
                        <a href="" data-toggle="modal"
                           data-target="#modal-back" class="btn btn-effect-ripple btn-primary">
                            返回
                        </a>
                        <button type="button" class="btn btn-effect-ripple btn-primary" @click="saveRiskInfo"
                                data-dismiss="modal">
                            保存
                        </button>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full">
        <div class="table-responsive">
            <div class="table-responsive">
                <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="row" style="background-color: #fff;">
                            <div class="col-sm-12 dib" style="margin: 10px 0px;">
                                <label class="control-label a" style="font-size: 14px;">风险预控-工序</label>
                            </div>
                            <div style="margin: 10px -15px;"></div>
                        </div>
                        <div class="row" style="background-color: #fff;">
                            <div class="col-sm-12 kuang">
                                <div id="" class="">
                                    <div class="col-sm-4">
                                        <div class="col-sm-hh1">
                                            <label class="control-label" style=" padding-top: 18px;">部门<b style="color: red">*</b></label>
                                            <i-select style="width: 250px;"
                                                    v-model="risk.risk_department" filterable clearable>
                                                <i-option v-for="(mydepart,mindex) in departmentList"
                                                          :value="mydepart.fOrg_Name"
                                                          :label="mydepart.fOrg_Name"
                                                          :key="mindex">
                                                    <span v-text="mydepart.fOrg_Name"></span>
                                                    <span style="float:right;color:#ccc"
                                                          v-text="mydepart.fOrg_Name_Shorthand"></span>
                                                </i-option>
                                            </i-select>
                                           <%-- <input class="form-control input-sm" style=""
                                                   v-model="risk.risk_department" placeholder="请填写部门" type="text"/>--%>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="col-sm-hh1">
                                            <label class="control-label" style=" padding-bottom:5%;">工作任务<b style="color: red">*</b></label>
                                            <textarea style="width:55%;;" placeholder="请填写工作任务" v-model="risk.risk_task"></textarea>
                                        </div>
                                    </div>

                                    <div class="col-sm-4">
                                        <div class="col-sm-hh1">
                                            <label class="control-label" style=" padding-bottom:6%;"> 工序</label><label>&nbsp;</label>
                                            <!--<input class="form-control input-sm" v-model="risk.risk_procedure" placeholder="请填写工序" type="text"/>-->
                                            <textarea style="width:50%;" placeholder="请填写工序" v-model="risk.risk_procedure"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%-- <hr style="height: 1px;background-color:silver;border: none" />--%>

                        <div class="row" style="background-color: #fff;">
                            <div class="col-sm-12 dib" style="margin: 10px 0px;">
                                <label class="control-label a" style="font-size: 14px">风险预控-风险</label>
                            </div>
                            <div style="margin: 10px -15px;"></div>
                        </div>
                        <div class="kuang">
                            <div class="row">
                                <div class="col-sm-12" style="margin: 10px 0px;">
                                    <div id="" class="">
                                        <div class="col-sm-4">
                                            <div class="col-sm-hh1">
                                                <label class="control-label" style="padding-bottom:6%;"
                                                       for="example-input-small">风险</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <!-- <input class="form-control input-sm" v-model="risk.risk_risk" placeholder="请填写风险" type="text"/>-->
                                                <textarea style="width:50%;" placeholder="请填写风险" v-model="risk.risk_risk"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-hh1">
                                                <label class="control-label" style="padding-bottom:6%;">风险后果描述</label>&nbsp;&nbsp;&nbsp;
                                                <!--<input class="form-control input-sm" v-model="risk.risk_consequences" placeholder="请填写风险后果描述" type="text"/>-->
                                                <textarea style="width:60%;" placeholder="请填写风险后果描述" v-model="risk.risk_consequences"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-hh1">
                                                <label class="control-label">风险值</label>&nbsp;&nbsp;&nbsp;
                                                <input class="form-control input-sm" style="width:40%;"
                                                       v-model="risk.risk_value" placeholder="请填写风险值" type="text"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12" style="margin: 10px 0px;">
                                    <div id="" class="">
                                        <div class="col-sm-4">
                                            <div class="col-sm-hh1">
                                                <label class="control-label">风险类型</label>&nbsp;&nbsp;&nbsp;
                                                <input class="form-control input-sm" style="width:40%;"
                                                       v-model="risk.risk_type" placeholder="请填写风险类型" type="text"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-hh1">
                                                <label class="control-label">风险等级</label>&nbsp;&nbsp;&nbsp;
                                                <input class="form-control input-sm" style="width:40%;"
                                                       v-model="risk.risk_grade" placeholder="请填写风险等级" type="text"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-hh1">
                                                <label class="control-label">可能性</label>&nbsp;&nbsp;&nbsp;
                                                <input class="form-control input-sm" style="width:40%;"
                                                       v-model="risk.risk_possibility" placeholder="请填写可能性"
                                                       type="text"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%-- <hr style="height: 1px;background-color:silver;border: none" />--%>

                        <div class="row" style="background-color: #fff;">
                            <div class="col-sm-12 dib" style="margin: 10px 0px;">
                                <label class="control-label a" style="font-size: 14px">风险预控-事故</label>
                            </div>
                            <div style="margin: 10px -15px;"></div>
                        </div>
                        <div class="row kuang">
                            <div class="col-sm-12" style="margin: 10px 0px;">
                                <div class="col-sm-4">
                                    <div class="col-sm-hh1">
                                        <label class="control-label">事故类型</label>&nbsp;&nbsp;&nbsp;
                                        <input class="form-control input-sm" style="width: 40%;"
                                               v-model="risk.risk_accitype" placeholder="请填写事故类型" type="text"/>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="col-sm-hh1">
                                        <label class="control-label">事故发生条件</label>&nbsp;&nbsp;&nbsp;
                                        <input class="form-control input-sm" style="width: 40%;"
                                               v-model="risk.risk_condition" placeholder="请填写事故发生条件" type="text"/>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="col-sm-hh1">
                                        <label class="control-label">损失</label>&nbsp;&nbsp;&nbsp;
                                        <input class="form-control input-sm" style="width: 40%;"
                                               v-model="risk.risk_loss" placeholder="请填写损失" type="text"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%-- <hr style="height: 1px;background-color:silver;border: none" />
 --%>
                        <div class="row">
                            <div class="col-sm-12 dib" style="margin: 10px 0px;">
                                <label class="control-label a" style="font-size: 14px">风险预控-管理</label>
                            </div>
                            <div style="margin: 10px -15px;"></div>
                        </div>
                        <div class="kuang">
                            <div class="row">
                                <div class="col-sm-12" style="margin: 10px 0px;">
                                    <div id="" class="">
                                        <div class="col-sm-4">
                                            <div class="col-sm-hh1">
                                                <label class="control-label">管控对象</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input class="form-control input-sm" style="width: 40%;"
                                                       v-model="risk.risk_object" placeholder="请填写管控对象" type="text"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-hh1">
                                                <label class="control-label" style=" padding-bottom: 6%;">管理标准</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <!-- <input class="form-control input-sm" v-model="risk.risk_standard" placeholder="请填写管理标准" type="text"/>-->
                                                <textarea style="width: 70%;" placeholder="请填写管理标准" v-model="risk.risk_standard"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-hh1">
                                                <label class="control-label">主要负责人</label>&nbsp;&nbsp;&nbsp;
                                                <input class="form-control input-sm" style="width: 40%;"
                                                       v-model="risk.risk_priperson" placeholder="请填写主要负责人"
                                                       type="text"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12" style="margin: 10px 0px;">
                                    <div id="" class="">
                                        <div class="col-sm-4">
                                            <div class="col-sm-hh1">
                                                <label class="control-label">直接管理人</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input class="form-control input-sm" style="width: 40%;"
                                                       v-model="risk.risk_dirmanager" placeholder="请填写直接管理人"
                                                       type="text"/>
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-hh1">
                                                <label class="control-label" style=" padding-bottom: 6%;">主要监管部门</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <!--<input class="form-control input-sm" v-model="risk.risk_major" placeholder="请填写主要监管部门" type="text"/>-->
                                                <textarea style="width: 50%;" placeholder="请填写主要监管部门" v-model="risk.risk_major"></textarea>

                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="col-sm-hh1">
                                                <label class="control-label" style="padding-bottom: 6%;">主要监管人</label>&nbsp;&nbsp;&nbsp;
                                                <!-- <input class="form-control input-sm" v-model="risk.risk_majorperson" placeholder="请填写主要监管人" type="text"/>-->
                                                <textarea style="width: 50%" placeholder="请填写主要监管人" v-model="risk.risk_majorperson"></textarea>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12" style="margin: 10px 0px;">
                                    <div id="" class="">
                                        <div class="col-sm-4">
                                            <div class="col-sm-hh1">
                                                <label class="control-label" style="padding-bottom: 6%;">监管措施</label>&nbsp;&nbsp;&nbsp;
                                                <!-- <input class="form-control input-sm" v-model="risk.risk_measures" placeholder="请填写监管措施" type="text"/>-->
                                                <textarea style="width: 50%" placeholder="请填写监管措施">{{risk.risk_measures}}</textarea>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--<hr style="height: 1px;background-color:silver;border: none" />--%>
                        <input type="hidden" value=<%=request.getParameter("risk_id")%> id="risk_id"/>
                    </form>

                </div>
            </div>
        </div>

    </div>

    <div class="modal inmodal" id="modal-back" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="height: 100% !important;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h3 class="modal-title">返回</h3>
                    <small></small>
                </div>
                <div class="modal-body">
                    <p> 确认要返回吗？</p>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-effect-ripple btn-primary"
                            @click="clearRiskInfo()">确认
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
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>

<script>
    var projectName = '<%=request.getContextPath() %>';
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            risk: {},
            departmentList: "",
        },
        created: function () {
            this.selectAssessment();
            this.getDepartment();
        },
        mounted: function () {
        },
        updated: function () {
        },
        watch: {},
        methods: {
            //保存
            saveRiskInfo: function () {
                var $this = this;
                var risk = this.risk;
                if(this.risk.risk_department=="" || this.risk.risk_department==null){
                    $this.showToast("error", "请选择部门！");
                    return;
                }
                if(this.risk.risk_task=="" || this.risk.risk_task==null){
                    $this.showToast("error", "请填写工作任务！");
                    return;
                }
                $.ajax({
                    url: projectName + "/Security_risk_assessment/add", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(risk),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    dataType: "json",//预期服务器返回的数据类型。
                    async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        if (data) {
                            $this.showToast("success", "保存成功！");
                            window.location.href = projectName + "/menu/Security_Risk_Assessment.do";
                            //window.history.go(-1);
                        }
                    },
                });
            },
            //返回
            clearRiskInfo: function () {

                this.risk = {};
                window.location.href = projectName + "/menu/Security_Risk_Assessment.do";
                //window.history.go(-1);
            },
            //修改时初始化
            selectAssessment: function () {
                var $this = this;
                var risk_id = $("#risk_id").val();
                //console.log("risk_id---" + risk_id);
                $.ajax({
                    type: "post",
                    url: projectName + "/Security_risk_assessment/getSecurity_risk_assessmentById/" + risk_id,
                    dataType: "json",
                    contentType: "application/json",
                    success: function (data) {
                        $this.risk = data;
                    }
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
            },


        },

        computed: {},
        filters: {}
    })

</script>
</body>
</html>
