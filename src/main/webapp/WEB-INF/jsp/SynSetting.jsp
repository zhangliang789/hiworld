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
    <title>上报设置</title>
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
    <link href="../iview/iview.css" rel="stylesheet" type="text/css">
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <style>

        /*input:focus {
            border-color: #5ccdde;
        }
*/
    </style>
</head>

<body>
<% Emp user = (Emp) request.getSession().getAttribute("emp");
    String frameworkID = user.getFFrame_ID();
%>
<div id="page-content" style="min-height: 794px;">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section">

                    <h1 style="float: left;">上报设置 </h1>
                    <div class="form-group" style="float: right;">


                        <button type="submit" @click="UpdateOrAdd" class="btn btn-effect-ripple btn-primary">保存</button>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->

    <div class="block full" style="padding-top: 0;">

        <div class="">
            <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">

                <div class="row" style="background-color: #fff;border: 0 ; padding-top: 0;">

                    <div class="col-sm-12" style="padding: 0;">
                        <div id="" class="">
                            <form action="page_forms_components.html" method="post"
                                  class="form-horizontal form-bordered" onsubmit="return false;">
                                <!-- Jquery Tags Input (class is initialized in js/app.js -> uiInit()), for extra usage examples you can check out https://github.com/xoxco/jQuery-Tags-Input -->


                                <div style="overflow: hidden;margin-top: 25px;">
                                    <label style="float: left;height: 40px;line-height: 40px;width: 140px;font-weight: 400;">上报服务基地址</label>
                                    <div style="float: left;">
                                        <input v-model="synServiceBaseAddress"
                                               style="height: 40px;padding:0 5px;width: 400px;"/>
                                        <p>请填写监局服务器地址，如http://10.212.1.37:8080/。请确保VPN网络连接成功。</p>
                                    </div>
                                </div>
                                <div style="overflow: hidden;margin-top: 25px;">
                                    <label style="float: left;height: 40px;line-height: 40px;width: 140px;font-weight: 400;">矿井编码</label>
                                    <div style="float: left;">
                                        <input v-model="synMineCode" style="height: 40px;padding:0 5px;width: 400px;"/>
                                        <p>请填写监局编制的矿井编码，如有疑问请致电联系煤监局相关处室。</p>
                                    </div>
                                </div>
                                <div style="overflow: hidden;margin-top: 25px;">
                                    <label style="float: left;height: 40px;line-height: 40px;width: 140px;font-weight: 400;">矿井秘钥</label>
                                    <div style="float: left;">
                                        <input v-model="apiKey" style="height: 40px;padding:0 5px;width: 400px;"/>
                                        <p>请填写监局编制的矿井秘钥，如有疑问请致电联系煤监局相关处室。</p>
                                    </div>
                                </div>

                            </form>

                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

    <div class="modal inmodal" id="input_pwd" tabindex="-1" onkeydown="search()" data-backdrop="static"
         data-keyboard="false" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="height: 100%;overflow-y: auto">
                <div class="modal-header">
                    <%--<button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>--%>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">您需要先输入密码</h4>
                    <small></small>
                </div>
                <div class="modal-body" style="width: 562px">
                    <form method="post" class="form-horizontal" onsubmit="return false;">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">密码:</label>
                            <div class="col-sm-8">
                                <%--<input class="form-control input-sm" placeholder="" type="text"--%>
                                <%--v-model="riskSite.riskMajorType"></div>--%>
                                <i-input placeholder="请先输入上报密码" autofocus="true" type="password" v-model="INPWD">
                                </i-input>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" @click="confirmPWD">确认
                    </button>
                    <%--<button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>--%>

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
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>

<script>
    $(function () {
        CompTree.init();
    });

    function search() {
        if (event.keyCode == 13) {
            vueApp.confirmPWD();
        }
    }
</script>
<script>
    /**
     * Created by Administrator on 2018/1/11
     */
    var projectName = '<%=request.getContextPath() %>';
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            synsetting: "",//上报设置空对象
            synServiceBaseAddress: "",//上报服务基地址
            synMineCode: "",//矿井编码
            //synToken: "",//token
            apiKey: "",//矿井秘钥
            judgeUpdateOrAdd: false,
            passwordLC: "",
            INPWD: "",


        },
        created: function () {
            var _self = this;
            _self.getPWD();
//            _self.getNewSynsetting();
        },
        mounted: function () {

        },
        updated: function () {
        },
        methods: {
            getPWD: function () {
                var _self = this;
                //url:发送请求地址。
                //data:待发送 Key/value 参数。
                //callback:发送成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.post(projectName + "/Syn/getPWD", {}, function (data) {
                    _self.passwordLC=data;
                    if(data!=""){
                        _self.loading=true;
                        $("#input_pwd").modal("show");
                    }else{
                        _self.loading=false;
                        _self.getNewSynsetting();
                    }
                });
            },
            confirmPWD: function () {
                var _self = this;
                if (_self.passwordLC == _self.INPWD) {
                    _self.loading = false;
                    _self.getNewSynsetting();
                    $("#input_pwd").modal("hide");
                } else {
                    _self.showToast("warning", "你输入的密码有误");
                    _self.loading = true;
                }
            },
            //得到上报设置空对象
            getNewSynsetting: function () {
                var _self = this;
                _self.loading = true;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/Syn/newSynsetting", function (data) {
                    _self.synsetting = data;
                    _self.synsettingIsExist();
                });
            },
            synsettingIsExist: function () {
                var _self = this;
                $.ajax({
                    url: projectName + "/Syn/synsettingIsExist", //发送请求的地址。
                    type: "post", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.synsetting),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        _self.loading = false;
                        if (data == 1) {
                            _self.judgeUpdateOrAdd = true;
                            _self.getSynsetting();
                        } else {
                            _self.judgeUpdateOrAdd = false;
                        }
                    },
                });

            },
            getSynsetting: function () {
                var _self = this;
                //url:发送请求地址。
                //data:待发送 Key/value 参数。
                //callback:发送成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.post(projectName + "/Syn/getSynsetting", function (data) {
                    _self.synServiceBaseAddress = data.synServiceBaseAddress;
                    _self.synMineCode = data.synMineCode;
                    //_self.synToken = data.synToken;
                    _self.apiKey = data.apiKey;

                });

            },
            UpdateOrAdd: function () {
                var _self = this;
                if (_self.synServiceBaseAddress == "" || _self.synServiceBaseAddress == null) {
                    _self.showToast("warning", "请正确填写上报服务器基地址");
                    return;
                }
                if (_self.synMineCode == "" || _self.synMineCode == null) {
                    _self.showToast("warning", "请正确填写矿井编码");
                    return;
                }
                if (_self.apiKey == "" || _self.apiKey == null) {
                    _self.showToast("warning", "请正确填写矿井秘钥");
                    return;
                }

                _self.synsetting.synServiceBaseAddress = _self.synServiceBaseAddress;
                _self.synsetting.synMineCode = _self.synMineCode;
                //_self.synsetting.synToken = _self.synToken;
                _self.synsetting.apiKey = _self.apiKey;

                if (_self.judgeUpdateOrAdd) {
                    $.ajax({
                        url: projectName + "/Syn/updateSynsetting", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: JSON.stringify(_self.synsetting),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        contentType: "application/json",
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
                            _self.showToast("success", "修改成功");
                            _self.getSynsetting();
                        },
                    });

                } else {
                    $.ajax({
                        url: projectName + "/Syn/addSynsetting", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: JSON.stringify(_self.synsetting),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        contentType: "application/json",
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
                            _self.showToast("success", "添加成功");
                            _self.getSynsetting();
                        },
                    });

                }

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


</body>

</html>