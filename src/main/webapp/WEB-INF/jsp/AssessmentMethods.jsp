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
    <link rel="stylesheet" type="text/css" href="../iview/iview.css">
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
        .btys {
            display: inline-block;
            padding: 10px 40px;
            vertical-align: sub;
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
                    <h1>评估方法管理</h1></div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full">
        <div class="col-sm-3">
            <div id="">
                <!-- Collapsible Options -->
                <a href="javascript:void(0)" class="btn btn-block btn-default visible-xs" data-toggle="collapse"
                   data-target="#media-options">Media Box</a>
                <div id="media-options" class="collapse navbar-collapse remove-padding">
                    <!-- Filter -->
                    <div class="block-section">
                        <ul class="nav nav-pills nav-stacked nav-icons media-filter">
                            <li @click="setSelectMethod(selectedMethod,0)" v-bind:class="{active:selectedMethod==1}">
                                <a href="javascript:void(0)">
                                    <strong>风险等级设置</strong>
                                    <span>
                                 </span>
                                </a>
                            </li>


                            <li v-for="(method,index) in methods" v-bind:class="{active:method===selectedMethod}"
                                @click="setSelectMethod(method,1)">
                                <a href="javascript:void(0)">
                                    <strong v-text="method.hazardidentificationMethod"></strong>
                                    <span class="flsl" v-text="method.mRiskdegreeitems.length"></span>
                                    <span>
                                 </span>
                                </a>
                            </li>
                        </ul>
                        <!-- END Filter by Type links -->
                    </div>
                </div>
                <!-- END Collapsible Options -->
            </div>
        </div>
        <div class=" col-sm-9" id="showData">
            <div class="">
                <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                    <div class="row" style="background-color: #fff;border-bottom: 1px solid #ebeef2;">
                        <div class="col-sm-10" style="padding: 0;">
                            <div class="biaota">
                                <h1 style="padding:10px 0 ;">风险等级对应关系设置</h1>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <%--  <div class="pull-right">
                                  <button type="button" class="btn btn-primary" @click="addNewItem">新增条目</button>
                              </div>--%>
                        </div>
                    </div>
                    <table id="general-table1" class="table table-striped table-bordered table-vcenter table-hover"
                           style="margin-bottom: 0;">
                        <thead>
                        <tr>
                            <th class="text-center">风险等级</th>
                            <th class="text-center">风险指示灯</th>
                            <th class="text-center">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr v-for="(myrisk,index) in riskleverList">
                            <td class="text-center" v-text="myrisk.riskLevel">
                                <%--<input type="text" v-model="item.riskLevel" v-bind:disabled="item.edit"/>--%></td>
                            <td class="text-center">
                                <input type="text" v-model="myrisk.riskColor" class="colorpicker"/>
                            </td>
                            <td class="text-center">
                                <a @click="saveRisklever(myrisk)">保存设置</a>
                                <%-- <a @click="deleteItem(index,item)">删除</a>--%>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class=" col-sm-9" id="showMethod">
            <div class="">
                <div id="example-datatable_wrapper1" class="dataTables_wrapper form-inline no-footer">
                    <div class="row" style="background-color: #fff;border-bottom: 1px solid #ebeef2;">
                        <div class="col-sm-10" style="padding: 0;">
                            <div class="biaota">
                                <h1 style="padding:10px 0 ;">风险等级对应关系设置</h1>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <%--  <div class="pull-right">
                                  <button type="button" class="btn btn-primary" @click="addNewItem">新增条目</button>
                              </div>--%>
                        </div>
                    </div>
                    <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover"
                           style="margin-bottom: 0;">
                        <thead>
                        <tr>
                            <th class="text-center">风险等级</th>
                            <th class="text-center">风险值范围</th>
                            <th class="text-center">风险指示灯</th>
                            <th class="text-center">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr v-for="(item,index) in items">
                            <td class="text-center" v-text="item.mRiskLevelSetting.riskLevel">
                                <%--<input type="text" v-model="item.riskLevel" v-bind:disabled="item.edit"/>--%></td>
                            <td class="text-center">
                                <input type="text" v-model="item.riskRangMIX" />≤ X ≤
                                <input type="text" v-model="item.riskRangMAX" />
                            </td>
                            <td class="text-center">
                               <span
                                     v-bind:style="'background-color:'+item.mRiskLevelSetting.riskColor"
                                     class="btys"></span>
                            </td>
                            <td class="text-center">
                                <a @click="saveItem(item)">保存设置</a>
                                <%-- <a @click="deleteItem(index,item)">删除</a>--%>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
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
<script type="text/javascript">
    var projectName = '<%=request.getContextPath() %>';
    /**
     * Created by txianwei on 2017/10/6
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            methods: null,
            active: 'active',
            items: "",
            chosedColor: "",
            selectedMethod: null,
            riskleversetting: "",
            riskleverList:"",
            riskdegree: "",
            judge: "",
        },
        created: function () {
            var _self = this;
            _self.getNewRiskleversetting();
            _self.getAllMethods();

        },
        mounted: function () {

        },
        updated: function () {
            var _self = this;
            $(".colorpicker").spectrum({
                showPalette: true,
                hideAfterPaletteSelect: true,
                palette: [
                    ["#000", "#444", "#666", "#999", "#ccc", "#eee", "#f3f3f3", "#fff"],
                    ["#f00", "#f90", "#ff0", "#0f0", "#0ff", "#00f", "#90f", "#f0f"],
                    ["#f4cccc", "#fce5cd", "#fff2cc", "#d9ead3", "#d0e0e3", "#cfe2f3", "#d9d2e9", "#ead1dc"],
                    ["#ea9999", "#f9cb9c", "#ffe599", "#b6d7a8", "#a2c4c9", "#9fc5e8", "#b4a7d6", "#d5a6bd"],
                    ["#e06666", "#f6b26b", "#ffd966", "#93c47d", "#76a5af", "#6fa8dc", "#8e7cc3", "#c27ba0"],
                    ["#c00", "#e69138", "#f1c232", "#6aa84f", "#45818e", "#3d85c6", "#674ea7", "#a64d79"],
                    ["#900", "#b45f06", "#bf9000", "#38761d", "#134f5c", "#0b5394", "#351c75", "#741b47"],
                    ["#600", "#783f04", "#7f6000", "#274e13", "#0c343d", "#073763", "#20124d", "#4c1130"]
                ]
            });
            $(".colorpicker").on('hide.spectrum', function (e, tinycolor) {
                _self.chosedColor = tinycolor.toHexString();
            });
        },
        methods: {

            //得到riskdegree空对象
            getNewRiskleversetting: function () {
                var _self = this;
                _self.judge=0;
                $.get(projectName + "/AssessmentMethods/newRiskleversetting", function (data) {
                    _self.riskleversetting = data;
                    _self.riskleversettingIsExist();

                });
            },
            getRiskleversetting:function(){
              var _self=this;
                $.ajax({
                    type: "POST",
                    url: projectName + "/AssessmentMethods/getRiskleversettingList",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskleversetting),
                    success: function (data) {
                        _self.riskleverList=data;
                    }
                });


            },



            riskleversettingIsExist: function () {
                var _self = this;
                $.ajax({
                    type: "POST",
                    url: projectName + "/AssessmentMethods/riskleversettingIsExist",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskleversetting),
                    success: function (data) {
                        if (!data) {
                            _self.initializeaRiskLevelSetting();
                        }else{
                            _self.getRiskleversetting();
                        }
                    }
                });

            },



            initializeaRiskLevelSetting: function () {
                var _self = this;
                $.post(projectName + "/AssessmentMethods/initializeaRiskLevelSetting", function (data) {
                    _self.showToast("success", "初始化成功");
                    _self.getRiskleversetting();
                });

            },
            setSelectMethod: function (method, index) {
                var _self = this;
                if(index==0){
                    _self.selectedMethod = 1;

                }else{

                    _self.selectedMethod = method;
                }

                _self.judge = index;
                _self.items = method.mRiskdegreeitems;
            },
//            addNewItem: function () {
//                var _self = this;
//                $.get(projectName + "/AssessmentMethods/newItem", function (data) {
//                    data.riskdegreeID = _self.selectedMethod.riskdegreeID;
//                    data.edit = false;
//                    _self.items.push(data);
//                });
//            },

            saveRisklever: function (risklever) {
                var _self = this;
                if(_self.chosedColor==""){
                    _self.showToast("success", "更新成功");
                    _self.getAllMethods();
                }else{
                    risklever.riskColor=_self.chosedColor;
                    $.ajax({
                        type: "POST",
                        url: projectName + "/AssessmentMethods/updateRiskleversetting",
                        dataType: "json",
                        contentType: "application/json",
                        data: JSON.stringify(risklever),
                        success: function (data) {
                            if (data) {
                                _self.showToast("success", "更新成功");
                                _self.getAllMethods();
                            } else {
                                _self.showToast("error", "更新失败");
                            }
                        }
                    });
                }

            },


            saveItem: function (item) {
                var _self = this;

                if(item.riskRangMIX == null || item.riskRangMIX == ""||item.riskRangMAX == null || item.riskRangMAX == ""){
                    _self.showToast("error","阈值不可为空");
                    return ;
                }
                if(_self.selectedMethod.hazardidentificationMethod == "风险矩阵分析法（LS）" &&(item.riskRangMIX >36 || item.riskRangMAX > 36)){
                    _self.showToast("error","取值过大，不得高于36");
                    return ;
                }
                if(_self.selectedMethod.hazardidentificationMethod == "LEC风险评价法" &&(item.riskRangMIX >10000 || item.riskRangMAX > 10000)){
                    _self.showToast("error","取值过大，不得高于10000");
                    return ;
                }
                $.ajax({
                    type: "PUT",
                    url: projectName + "/AssessmentMethods/update",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(item),
                    success: function (data) {
                        if (data) {
                            _self.showToast("success", "更新成功");
                        } else {
                            _self.showToast("error", "更新失败");
                        }
                    }
                });
            },
            deleteItem: function (index, item) {
                var _self = this;
                if (item.riskdegreeItemID == null) {
                    //本地删除
                    _self.items.splice(index, 1);
                } else {
                    //服务端删除
                    $.ajax({
                        type: "DELETE",
                        url: projectName + "/AssessmentMethods/delete",
                        dataType: "json",
                        contentType: "application/json",
                        data: JSON.stringify(item),
                        success: function (data) {
                            if (data) {
                                _self.showToast("success", "删除成功");
                                _self.getAllMethods();
                            } else {
                                _self.showToast("error", "删除失败");
                            }
                        }
                    });
                }

            },
            getAllMethods: function () {
                var _self = this;
                $.get(projectName + "/AssessmentMethods/all", function (data) {
                    console.log(data);
                    _self.methods = data;
                    _self.items = data[0].mRiskdegreeitems;
                    _self.selectedMethod = 1;

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
            'judge': {
                handler: function (val, oldVal) {
                    var _self = this;
                    if (_self.judge==0) {//模态框隐藏
                        $("#showData").show();
                        $("#showMethod").hide();
                    } else {//模态框展示
                        $("#showMethod").show();
                        $("#showData").hide();
                        //_self.htdetail.fdangBanChuLi=true;
                    }
                }
                ,

                deep: true
            },


        },
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