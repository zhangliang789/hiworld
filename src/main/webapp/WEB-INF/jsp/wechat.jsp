<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/1
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>短信微信接口设置</title>
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

</head>
<body>

<div id="page-content" style="min-height: 794px;">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section">

                    <h1 style="float: left;">微信短信提醒 </h1>
                    <div class="form-group" style="float: right;">

                        <button type="submit" @click="UpdateOrAdd" class="btn btn-effect-ripple btn-primary">预警信息推送</button>

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
                            <form
                                  class="form-horizontal form-bordered" onsubmit="return false;">
                                <!-- Jquery Tags Input (class is initialized in js/app.js -> uiInit()), for extra usage examples you can check out https://github.com/xoxco/jQuery-Tags-Input -->

                                <div style="overflow: hidden;margin-top: 25px;">
                                    <label style="float: left;height: 40px;line-height: 40px;width: 140px;font-weight: 400;">微信接口</label>
                                    <div style="float: left;">
                                        <input style="height: 40px;padding:0 5px;width: 400px;"  placeholder="http://api.weixin.qq.com/cgi-bin/report/addvoicetorecofortext?access_token=ACCESS_TOKEN&format=&voice_id=xxxxxx&lang=zh_CN"/>
                                    </div>
                                </div>
                                <div style="overflow: hidden;margin-top: 25px;">
                                    <label style="float: left;height: 40px;line-height: 40px;width: 140px;font-weight: 400;">短信接口</label>
                                    <div style="float: left;">
                                        <input style="height: 40px;padding:0 5px;width: 400px;"  placeholder="http://sms.shsixun.com/Port/default.ashx?method=SendSms&username=?&password =?&phonelist=?&msg="/>
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

</script>
<script>
    var projectName = '<%=request.getContextPath() %>';
    var vueApp = new Vue({
            el: "#page-content",
            data: {
            },
            created: function () {
                var _self = this;
            },
            mounted: function () {

            },
            updated: function () {
            },
            methods: {

                UpdateOrAdd: function () {
                    var _self = this;
                    _self.showToast("success", "预警信息推送成功！");

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
