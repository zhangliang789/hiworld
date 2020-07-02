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
    <title>风险属性设置</title>
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
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="../css/bootstrap-treeview.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../iview/iview.css">
    <style type="text/css">
        p {
            margin-bottom: 0;
        }

        .form-control {
            width: 100% !important;
            display: block !important;
        }

        .control-label {
            text-align: left !important;
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
            font-weight: 500;
            font-size: 24px;
            padding: 10px 5px;
        }

        .nihao {
            overflow: hidden;
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
                    <h1>风险属性设置</h1>
                    <div class="form-group" style="float: right; position: relative;right: 19px">
                        <input type="text" id="searchWrap"   v-model="checkTitle"  placeholder="请输入标题" >
                        <%--<input class="input-sm" placeholder="请输入查询属性标题" v-model="checkTitle" type="text">--%>
                        <button class="btn btn-effect-ripple btn-primary" @click="choseClass(checkResult)">查询</button>
                        <button class="btn btn-effect-ripple btn-primary" href="#modal-regular" @click="addSingleLineText" hidden>新建</button>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full">
        <div class="col-sm-3">
            <div>
                <!-- Collapsible Options -->
                <a href="javascript:void(0)" class="btn btn-block btn-default visible-xs" data-toggle="collapse"
                   data-target="#media-options">Media Box</a>
                <div id="media-options" class="collapse navbar-collapse remove-padding">
                    <!-- Filter -->
                    <div class="block-section">
                        <ul class="nav nav-pills nav-stacked nav-icons media-filter">
                            <li v-for="(result,index) in results" @click="choseClass(result)" v-bind:class="{active:result===chosedClass}">
                                <a href="javascript:void(0)">
                                    <strong v-text="result.classDescription"></strong>
                                </a>
                            </li>

                        </ul>
                        <!-- END Filter by Type links -->
                    </div>
                </div>
                <!-- END Collapsible Options -->
            </div>
        </div>
        <div class="table-responsive col-sm-9">
            <div class="row" style="background-color: #fff;">
                <div class="col-sm-12">
                    <div class="form-horizontal" v-show="attributes!=null">
                        <div style="background-color: #f1f9ff;padding: 10px;width: 800px;float: left;margin-left: 10px;">
                            <table class="table table-striped table-bordered table-vcenter table-hover">
                                <tr>
                                    <th class="text-center">序号</th>
                                    <th class="text-center">名称</th>
                                    <th class="text-center">标题</th>
                                    <th class="text-center">是否显示</th>
                                    <th class="text-center">是否系统属性</th>
                                    <th class="text-center">操作</th>
                                </tr>
                                <tr  v-for="(attr,index) in attributes">
                                    <td class="text-center" v-text="index+1"></td>
                                    <td  v-text="attr.classpropertyName"></td>
                                    <td  v-text="attr.classpropertyTitle"></td>
                                    <td  v-if="attr.canBeShow">是</td>
                                    <td  v-if="!attr.canBeShow">否</td>
                                    <td  v-if="attr.systemAtrr">是</td>
                                    <td  v-if="!attr.systemAtrr">否</td>
                                    <td class="text-center">
                                        <a @click="showModal(attr)">编辑</a>
                                        <a v-if="!attr.systemAtrr" @click="deleteInfoList(index)" hidden>删除</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END Datatables Block -->
    <!-- 添加 -->
    <div id="modal-regular" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div class="block-title">
                        <h4>修改属性名称</h4></div>
                    <div class="form-horizontal">

                        <div class="form-group">
                            <label class="col-sm-3 control-label">名称<span style="color: red">*</span></label>
                            <div class="col-sm-8">
                                <input class="form-control input-sm"
                                       placeholder="请输入自定义字段的名称" v-model="newAttribute.classpropertyName" v-bind:disabled="newAttribute.systemAtrr" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">标题<span style="color: red">*</span></label>
                            <div class="col-md-8">
                                <input v-model="newAttribute.classpropertyTitle" class="form-control input-sm"
                                       placeholder="请输入自定义字段显示的标题"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">是否显示</label>
                            <div class="col-md-8">

                                    <%--<input v-model="newAttribute.canBeShow"  type="checkbox" v-bind:disabled="newAttribute.systemAtrr">--%>
                                        <input name="canBeShow" v-model="newAttribute.canBeShow" type="radio" value=true />显示
                                        <input name="canBeShow" v-model="newAttribute.canBeShow" type="radio" value=false />不显示

                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal" @click="confirmAddAttribute">确认</button>
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
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
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/plugins/uploader/webuploader.js"></script>
<script src="../js/vue.js"></script>
<script>
    $("#searchWrap").click(function(){

    });
</script>
<script type="text/javascript">
    var projectName = '<%=request.getContextPath() %>';
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            results: null,
            attributes: null,
            newAttribute: {},
            chosedClass: null,
            custormAttrs: new Array(),
            checkTitle:"",
            checkResult:{},

        },
        created: function () {
            var _self = this;
            _self.getAllClasses();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            getAllClasses: function () {
                var _self = this;
                $.get(projectName + "/SystemAttributeDevelop/AttributesClasses", function (data) {
                    _self.results = data;
                    _self.choseClass(_self.results[0]);
                });
            },
            choseClass: function (result) {
                var _self = this;
                _self.checkResult = result;
                // _self.attributes = result.mAttributes;
                _self.attributes=new Array();
                _self.custormAttrs=new Array();
                _self.chosedClass = result;
                for(var i=0;i<result.mAttributes.length;i++){
                    //只显示canBeShow为true的属性
                    if(result.mAttributes[i].canBeShow){
                        if(_self.checkTitle != ""){
                            if(result.mAttributes[i].classpropertyTitle.indexOf(_self.checkTitle) != -1){
                                _self.attributes.push(result.mAttributes[i]);
                            }
                        }else{
                            _self.attributes.push(result.mAttributes[i]);
                        }

                    }
                }
            },
            addSingleLineText: function () {
                var _self = this;
                if (_self.attributes == null) {
                    _self.showToast("warning", '请选择要扩展的对象')
                    return;
                }
                $.get(projectName + "/SystemAttributeDevelop/randomAttr", function (data) {
                    data.classID = _self.chosedClass.classID;
//                    _self.custormAttrs.push(data);
                    _self.newAttribute = data;
                    _self.newAttribute.canBeShow = true;
                });
                $("#modal-regular").modal('show');

            },
            showModal: function (attr) {
                var _self = this;
                _self.newAttribute = attr;
                $("#modal-regular").modal('show');
            },
            confirmAddAttribute: function () {
                var _self = this;
                if(_self.newAttribute.classpropertyName == null || _self.newAttribute.classpropertyName ==""){
                    _self.showToast("error","请输入自定义字段的名称");
                    return ;
                }
                if(_self.newAttribute.classpropertyTitle == null || _self.newAttribute.classpropertyTitle == ""){
                    _self.showToast("error","请输入自定义字段显示的标题");
                    return ;
                }
                var list = [];
                list.push(_self.newAttribute);
                $.ajax({
                    type: "POST",
                    url: projectName + "/SystemAttributeDevelop/save",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(list),
                    success: function (data) {
                        if (data) {
                            _self.showToast("success", "修改成功");
                            _self.choseClass(_self.chosedClass);
                        } else {
                            _self.showToast("error", "修改成功");
                        }
                        setTimeout("location.reload()",2000);
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
</body>
</html>