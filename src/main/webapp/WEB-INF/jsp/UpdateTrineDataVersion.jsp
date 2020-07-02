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
    <title>评估方法管理</title>
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
    <link rel="stylesheet" href="../js/plugins/spectrum/spectrum.css">
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../iview/iview.css">
    <style type="text/css">
        p {
            margin-bottom: 0;
        }

        .close {
            top: 8px;
            position: absolute;
            right: 15px;
        }

        .jqstooltip {
            width: auto !important;
            height: auto !important;
            position: absolute;
            left: 0px;
            top: 0px;
            visibility: hidden;
            background: #000000;
            color: white;
            font-size: 11px;
            text-align: left;
            white-space: nowrap;
            padding: 5px;
            z-index: 10000;
        }

        .jqsfield {
            color: white;
            font: 10px arial, san serif;
            text-align: left;
        }

        .input-group-but {
            border: 0;
            background-color: #fff;
        }

        .chosen-search {
            position: relative;
            z-index: 1010;
            margin: 0;
            padding: 3px 4px;
            white-space: nowrap;
        }

        .chosen-search input[type="text"] {
            margin: 1px 0;
            padding: 4px 20px 4px 5px;
            width: 100%;
            height: auto;
            outline: 0;
            border: 1px solid #dae0e8;
            border-radius: 4px;
            font-size: 1em;
            line-height: normal;
        }

        #easy-tree1 {
            max-height: 300px;
            overflow-y: auto;
        }

        @media (max-width: 768px) {
            label {
                width: 100%
            }

            .input-group-btn {
                width: 100%;
            }

            .form-group {
                margin-right: 0 !important;
            }
        }

        .block {
            overflow: hidden;
        }

        .nav {
            border: 1px solid #ebeef2;
        }

        .nav > li > a {
            position: relative;
            display: block;
            padding: 18px 15px;
        }

        .nav-pills > li.active > a button {
            background-color: #0B8DE5;
        }

        .nav > li > a button {
            background-color: #fff;
            border: 0;
            font-size: 12px;
            color: #c2cbd0;
        }

        .nav > li > a button:hover {
            color: #3CBAFF;
        }

        .nav-stacked > li > a {
            margin: 0px 0 0;
        }

        .nav-pills > li > a {
            border-radius: 0px;
        }

        .nav > li > a span {
            float: right;
        }

        .flsl {
            width: 16px;
            line-height: 16px;
            height: 16px;
            text-align: center;
            display: block;
            float: right;
            background-color: #cbd0da;
            margin-left: 20px;
        }

        .lbtj {
            display: block;
            width: 100%;
            height: 50px;
            line-height: 50px;
            text-align: center;
            background-color: #d1d1d1;
            text-decoration: none !important;
            color: #fff;
            font-size: 13px;
        }

        .biaota h1 {
            font-weight: 900;
            font-size: 16px;
            padding: 10px 5px;
        }
    </style>
</head>

<body>
<div id="page-content" style="min-height: 794px;">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-6">
                <div class="header-section">
                    <h1>更新风险数据版本</h1></div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full">
        上次版本更新时间：<span v-text="nowVersionTime"></span>
        <i-button type="primary" @click="modal1 = true">更新</i-button>
        <modal
                v-model="modal1"
                title="更新风险数据版本"
                @on-ok="ok"
                @on-cancel="cancel">
            <p>更新风险数据版本后，打开APP后会自动更新数据，如果不更新风险数据版本，则不会。</p>
        </modal>
    </div>
    <!-- END Datatables Block -->
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
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/plugins/spectrum/spectrum.js"></script>
<script src="../js/plugins/spectrum/jquery.spectrum-zh-cn.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>
<script>
    var projectName = '/' + window.location.pathname.split('/')[1];
    var vueApp = new Vue({
        el:'#page-content',
        data:{
            modal1:false,
            nowVersionTime:""
        },
        created:function(){
            this.getTrineDataVersion();
        },
        updated:function(){},
        mounted:function(){},
        methods:{
            getTrineDataVersion:function(){
                var _self =this;
                $.post(projectName+"/Trinedataversion/getTrineDataVersionTime",{},function(data){
                    _self.nowVersionTime =data;
                });
            },
            ok:function(){
                var _self =this;
               $.post(projectName+"/Trinedataversion/update",{},function(data){
                   if(data){
                       _self.$Message.info("更新成功");
                       _self.getTrineDataVersion();
                   }else{
                       _self.$Message.info("更新失败");
                   }
               });
            },
            cancel:function(){}
        },
        computed:{},
        watch:{}

    })
</script>
<script>
    $(function () {
        CompTree.init();
    });
    $(function () {
        UiTables.init();
    });
</script>

</body>

</html>

