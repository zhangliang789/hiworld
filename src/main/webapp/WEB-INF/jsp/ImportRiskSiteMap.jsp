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
    <title>安全风险辨识-地图导入</title>
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
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../js/plugins/uploader/webuploader.css">
    <script src="../js/vendor/modernizr-3.3.1.min.js"></script>
    <link href="../css/bootstrap-treeview.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/fonts/iconfont/iconfont.css">
    <link rel="stylesheet" type="text/css" href="../iview/iview.css">
    <style type="text/css">p {
        margin-bottom: 0;
    }

    .close {
        top: 8px;
        position: absolute;
        right: 15px;
    }

    .tooltip {
        position: absolute;
        width: 120;
        height: auto;
        font-family: simsun;
        font-size: 14px;
        text-align: center;
        border-style: solid;
        border-width: 1px;
        padding: 3px;
        background-color: white;
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

    .modal-dialog {
        width: 600px;
        right: 300px;
        top: 150px;
        position: absolute;
        height: 100%;
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
                    <h1>安全风险辨识-地图导入</h1></div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full">
        <div class="col-sm-8 col-sm-push-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                    </h3>
                </div>
                <div class="panel-body">
                    <div id="svgDiv" :style="{cursor:cursor}">
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-4 col-sm-pull-8">
            <div id="">
                <!-- Collapsible Options -->
                <a href="javascript:void(0)" class="btn btn-block btn-default visible-xs" data-toggle="collapse"
                   data-target="#media-options">Media Box</a>
                <div id="media-options" class="collapse navbar-collapse remove-padding">
                    <!-- Filter -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            地点列表
                        </div>
                        <div class="panel-body">
                            <button type="button" id="file-picker">上传矿图</button>
                            <button type="button" class="btn btn-effect-ripple btn-primary" @click="saveSvgPosition">
                                地图纠偏
                            </button>
                            <button type="button" class="btn btn-effect-ripple btn-primary" data-toggle="modal"
                                    data-target="#modal-add">
                                添加地点
                            </button>
                            <button type="button" class="btn btn-effect-ripple btn-primary" @click="setCoordinate">
                                设置坐标
                            </button>
                            <div class="table-responsive" style="background-color: #ffffff;margin-top: 10px;">
                                <table class="table table-bordered table-hover table-hover">
                                    <thead>
                                    <tr>
                                        <th class="center" width="60px">选择</th>
                                        <th class="center" width="150px">地点名称</th>
                                        <th class="center" width="60px">X</th>
                                        <th class="center" width="60px">Y</th>
                                        <th class="center" width="60px">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr v-for="(result,index) in addressList">
                                        <td class="center">
                                            <input type="radio" v-model="chosedAddress" :value="result">
                                        </td>
                                        <td class="center" v-text="result.addressName"></td>
                                        <td class="center" v-text="result.axisX"></td>
                                        <td class="center" v-text="result.axisY"></td>
                                        <td class="center">
                                            <a href="#modal-update" data-toggle="modal"
                                               @click="updateAddress=result"><i class="iconfont icon-edit"
                                                                                style="color:#0B8DE5 "></i></a>
                                            <a href="#modal-delete" data-toggle="modal"
                                               @click="deleteAddress=result"><i class="iconfont icon-delete"
                                                                                style="color:#0B8DE5 "></i></a>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div class="center-block" style="text-align: center">
                                    <ul class="pagination pagination-sm remove-margin"
                                        id="pagination">
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END Datatables Block -->
    </div>
    <div class="modal inmodal" id="modal-coor" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">设置坐标</h4>
                    <small></small>
                </div>
                <div class="modal-body">
                    <p> 是否将{{chosedAddress.addressName}}的坐标设置为【X:{{axisX}}】【Y:{{axisY}}】</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal"
                            @click="updateAddressCoordinate">确认
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div id="modal-add" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div class="block-title">
                        <h4>添加地点</h4></div>
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">地点名称</label>
                            <div class="col-sm-6">
                                <input class="form-control input-sm" placeholder="请输入地点名称" type="text"
                                       v-model="address.addressName"></div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" @click="saveAddress"
                            data-dismiss="modal">提交
                    </button>
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal inmodal" id="modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">删除</h4>
                    <small></small>
                </div>
                <div class="modal-body">
                    <p> 确认要地点【{{deleteAddress.addressName}}】删除吗？</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal"
                            @click="confirmDelete">确认
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div id="modal-update" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div class="block-title">
                        <h4>修改信息</h4></div>
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">地点名称</label>
                            <div class="col-sm-6">
                                <input class="form-control input-sm" placeholder="" type="text"
                                       v-model="updateAddress.addressName"></div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" @click="confirmUpdate"
                            data-dismiss="modal">提交
                    </button>
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
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/plugins/uploader/webuploader.js"></script>
<script src="../js/vue.js"></script>
<script src="../js/d3.v3.min.js"></script>

<script type="text/javascript">
    var tooltip = d3.select("body")
        .append("div")
        .attr("class", "tooltip")
        .style("opacity", 0.0);

    var projectName = '<%=request.getContextPath() %>';
    /**
     * Created by txianwei on 2017/10/10
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            address: "",
            pagesize: 10,
            nowpage: 1,
            addressList: "",
            chosedAddress: "",
            cursor: 'default',
            axisX: 0,
            axisY: 0,
            transform: "",
            map: "",
            deleteAddress: "",
            updateAddress: ""
        },
        created: function () {
            var _self = this;
            _self.getNewAddress();
            _self.getMapObj();
        },
        mounted: function () {
            var _self = this;
        },
        updated: function () {
        },
        methods: {
            getMapObj: function () {
                var _self = this;
                $.get(projectName + "/RiskSiteMap/getRiskSiteMapObj", function (data) {
                    _self.map = data;
                });
            },
            getNewAddress: function () {
                var _self = this;
                $.get(projectName + "/Address/new", function (data) {
                    _self.address = data;
                    _self.getPageCount();
                });
            },
            saveAddress: function () {
                var _self = this;
                $.ajax({
                    type: "POST",
                    url: projectName + "/Address/add",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.address),
                    success: function (data) {
                        if (data) {
                            _self.showToast("success", "添加成功");
                            _self.getNewAddress();
                        } else {
                            _self.showToast("error", "添加失败");
                        }
                    }
                });
            },
            confirmDelete: function () {
                var _self = this;
                $.ajax({
                    type: "DELETE",
                    url: projectName + "/Address/delete",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.deleteAddress),
                    success: function (data) {
                        if (data) {
                            _self.showToast("success", "删除成功");
                            _self.getDataByPage(_self.nowpage);
                            _self.removeMark(_self.deleteAddress);
                        } else {
                            _self.showToast("error", "删除失败");
                        }
                    }
                });
            },
            confirmUpdate: function () {
                var _self = this;
                $.ajax({
                    type: "PUT",
                    url: projectName + "/Address/update",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.updateAddress),
                    success: function (data) {
                        if (data) {
                            _self.showToast("success", "修改成功");
                            _self.getDataByPage(_self.nowpage);
                            _self.removeMark(_self.updateAddress);
                            _self.addMark(_self.updateAddress);
                        } else {
                            _self.showToast("error", "修改失败");
                        }
                    }
                });
            },
            getPageCount: function () {
                var _self = this;
                _self.address.pageSize = _self.pagesize;
                $.ajax({
                    type: "POST",
                    url: projectName + "/Address/getAddressPageCount",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.address),
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
                            _self.addressList = "";
                        }
                    }
                });
            },
            getDataByPage: function (page) {
                var _self = this;
                //加载层
                layer.load();
                _self.address.page = page;
                $.ajax({
                    type: "POST",
                    url: projectName + "/Address/getAddressByPage",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.address),
                    success: function (data) {
                        //console.log(data);
                        _self.addressList = data;
                        layer.closeAll('loading');
                    }
                });
            },
            saveSvgPosition: function () {
                var _self = this;
                var transform = d3.select("g").attr("transform");
                $.get(projectName + "/RiskSiteMap/getRiskSiteMapObj", function (data) {
                    data.transForm = transform;
                    data.origionX = Math.abs(transform.substring(transform.indexOf("(") + 1, transform.indexOf(",")));
                    data.origionY = Math.abs(transform.substring(transform.indexOf(",") + 1, transform.indexOf(")")));
                    $.ajax({
                        type: "PUT",
                        url: projectName + "/RiskSiteMap/updateRiskSiteMap",
                        dataType: "json",
                        contentType: "application/json",
                        data: JSON.stringify(data),
                        success: function (result) {
                            if (result) {
                                map.transForm = data.transForm;
                                map.origionX = data.origionX;
                                map.origionY = data.origionY;
                                _self.showToast("success", "保存成功");
                            } else {
                                _self.showToast("error", "保存失败");
                            }
                        }
                    });
                });
            },
            setCoordinate: function () {
                var _self = this;
                if (_self.chosedAddress == "") {
                    _self.showToast("warning", "请先选择一个地点");
                    return;
                } else {
                    _self.cursor = 'crosshair';
                    var svg = d3.select("svg");
                    svg.on("click", function () {
                        var transform = d3.select("g").attr("transform");
                        var scale = 1;
                        if (transform.indexOf("scale") > 0) {
                            scale = Number(transform.substring(transform.indexOf("scale(") + 6, transform.lastIndexOf(")")));
                        }
                        var x = Number(transform.substring(transform.indexOf("(") + 1, transform.indexOf(",")));
                        var y = Number(transform.substring(transform.indexOf(",") + 1, transform.indexOf(")")));
                        var m = d3.mouse(svg.node());
                        //获取当前坐标值
                        _self.axisX = parseInt((m[0] - x) / scale);
                        _self.axisY = parseInt((m[1] - y) / scale);
                        $("#modal-coor").modal("show");
                    });
                }
            },
            updateAddressCoordinate: function () {
                var _self = this;
                _self.chosedAddress.axisX = _self.axisX;
                _self.chosedAddress.axisY = _self.axisY;
                _self.removeMark(_self.chosedAddress);
                _self.addMark(_self.chosedAddress);
                $.ajax({
                    type: "PUT",
                    url: projectName + "/Address/update",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.chosedAddress),
                    success: function (data) {
                        if (data) {
                            _self.showToast("success", "更新地点坐标成功");
                        } else {
                            _self.showToast("error", "更新地点坐标失败");
                        }
                    }
                });
            },
            escKeyUp: function () {
                var _self = this;
                _self.cursor = 'default';
                var svg = d3.select("svg");
                svg.on("click", null);
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
            getTextLength: function (val) {
                var len = 0;
                for (var i = 0; i < val.length; i++) {
                    var a = val.charAt(i);
                    if (a.match(/[^\x00-\xff]/ig) != null) {
                        len += 2;
                    }
                    else {
                        len += 1;
                    }
                }
                return len / 2;
            },
            addMark: function (address) {
                var _self = this;
                var svg = d3.select("g");
                var textX = 0;
                var textY = 0;
                svg.append("polyline")
                    .datum(address)
                    .attr("points", function (d) {
                        var x1 = Number(address.axisX);
                        var y1 = Number(address.axisY);
                        var nameLength = Number(_self.getTextLength(address.addressName));
                        var stepLength = 2.8 * nameLength;
                        var x2 = x1 - stepLength;
                        var y2 = y1 - stepLength;

                        var x3 = x2 - 3 * stepLength;
                        var y3 = y2;

                        var x4 = x3;
                        var y4 = y3 - 30;
                        //计算文字位置
                        textX = x4 + 10;
                        textY = y4 + 20;

                        var x5 = x4 + 7 * stepLength;
                        var y5 = y4;

                        var x6 = x5;
                        var y6 = y5 + 30;

                        var x7 = x6 - 3 * stepLength;
                        var y7 = y6;

                        var x8 = x1;
                        var y8 = y1;
                        return x1 + "," + y1 + " " + x2 + "," + y2 + " " + x3 + "," + y3 + " " + x4 + "," + y4 + " " + x5 + "," + y5 + " " + x6 + "," + y6 + " " + x7 + "," + y7 + " " + x8 + "," + y8;
                    })
                    .attr("id", function (d) {
                        return "addressPolyline_" + d.addressID;
                    })
                    .attr("style", "fill:#0B8DE5");

                svg.append("text")
                    .datum(address)
                    .attr("x", function (d) {
                        return textX;
                    })
                    .attr("id", function (d) {
                        return "addressText_" + d.addressID;
                    })
                    .attr("y", function (d) {
                        return textY;
                    })
                    .attr("font-size", 15)
                    .attr("style", "fill:white")
                    .text(address.addressName);
            },
            removeMark: function (address) {
                d3.select("#addressPolyline_" + address.addressID).remove();
                d3.select("#addressText_" + address.addressID).remove();
            }
        },
        computed: {},
        watch: {
            chosedAddress: function () {
                var _self = this;
                //选中svg
                var svg = d3.select("g");
                if (_self.chosedAddress.axisX != null) {
                    _self.removeMark(_self.chosedAddress);
                    _self.addMark(_self.chosedAddress);
                    //获取网页宽高
                    var width = Number(document.body.clientWidth) - 480;
                    var height = Number(document.body.clientHeight) - 30;
                    var axisX = -Number(_self.chosedAddress.axisX);
                    var axisY = -Number(_self.chosedAddress.axisY);
                    axisY = axisY + Number(_self.map.origionY);
                    //计算偏移值
                    var shiftX = Number(width) / 2 + axisX;
                    var shiftY = Number(height) / 2 + axisY - 150;
                    //设置偏移
                    var transform = "translate(" + shiftX + "," + shiftY + ")scale(1)";
                    svg.transition().duration(500).ease("linear").attr("transform", transform);
                } else {
                    svg.attr("transform", _self.transform);
                }
            },
        }
    })
</script>
<script>$(function () {
    CompTree.init();
    UiTables.init();
    document.onkeydown = function (e) {
        var ev = document.all ? window.event : e;
        if (ev.keyCode == 27) {
            vueApp.escKeyUp();
        }
    }

    var svg;
    var transform;
    var container;
    var uploader = WebUploader.create({
        // 自动上传。
        auto: true,
        // swf文件路径
        swf: '../uploader/Uploader.swf',
        // 文件接收服务端。
        server: '../RiskSiteMap/UploadFile',
        // 选择文件的按钮。可选。
        // 内部根据当前运行是创建，可能是input元素，也可能是flash.
        pick: '#file-picker',
        //文件数限制
        fileNumLimit: 10,
        //文件大小限制
        fileSingleSizeLimit: 50 * 1024 * 1024, //10M
        // 只允许选择文件类型，可选。
        accept: {
            title: 'files',
            extensions: 'dwg',
            mimeTypes: 'application/x-autocad'
        }
    });
    uploader.on("startUpload", function () {
        layer.load();
    });
    uploader.on("uploadSuccess", function (file, response) {
        vueApp.showToast("success", "上传成功");
        if ($("svg").length > 0) {
            $("svg").remove();
        }
        $("#svgDiv").append(response._raw);
        svg = d3.select("svg").call(zoom);
        container = d3.select("g").attr("transform", "translate(-5,-50)");
        layer.closeAll('loading');
    });
    uploader.on('uploadError', function (file) {
        vueApp.showToast("error", "抱歉上传失败");
        layer.closeAll('loading');
    });
    layer.load();
    $.get(projectName + "/RiskSiteMap/getRiskSiteMapObj", function (result) {
        if (result.transForm != null) {
            transform = result.transForm;
            vueApp.transform = result.transForm;
            $.get(projectName + "/RiskSiteMap/getRiskSiteMap", function (data) {
                if (data != null) {
                    $("#svgDiv").append(data);
                    svg = d3.select("svg").call(zoom);
                    container = d3.select("g").attr("transform", result.transForm);
                    layer.closeAll('loading');
                }
            });
        } else {
            $.get(projectName + "/RiskSiteMap/getRiskSiteMap", function (data) {
                if (data != null) {
                    $("#svgDiv").append(data);
                    svg = d3.select("svg").call(zoom);
                    container = d3.select("g").attr("transform", "translate(-5,-50)");
                    layer.closeAll('loading');
                }
            });
        }
    });

    var zoom = d3.behavior.zoom()
        .scaleExtent([1, 10])
        .on("zoom", zoomed);

    function zoomed() {
        container.attr("transform", "translate(" + d3.event.translate + ")scale(" + d3.event.scale + ")");

        var translate=d3.event.translate;
        var scale=d3.event.scale;
        d3.selectAll("polyline").attr("points",function(d,i){
            var x1 = Number(d.axisX);
            var y1 = Number(d.axisY);

            var nameLength = Number(vueApp.getTextLength(d.addressName));
            var stepLength = 2.8 * nameLength/scale;
            var x2 = x1 - stepLength;
            var y2 = y1 - stepLength;

            var x3 = x2 - 3 * stepLength;
            var y3 = y2;

            var x4 = x3;
            var y4 = y3 - 30/scale;

            var x5 = x4 + 7 * stepLength;
            var y5 = y4;

            var x6 = x5;
            var y6 = y5 + 30/scale;

            var x7 = x6 - 3 * stepLength;
            var y7 = y6;

            var x8 = x1;
            var y8 = y1;
            return x1 + "," + y1 + " " + x2 + "," + y2 + " " + x3 + "," + y3 + " " + x4 + "," + y4 + " " + x5 + "," + y5 + " " + x6 + "," + y6 + " " + x7 + "," + y7 + " " + x8 + "," + y8;
        });

        d3.selectAll("text").attr("x",function(d,i){
            var x1 = Number(d.axisX);
            var nameLength = Number(vueApp.getTextLength(d.addressName));
            var stepLength = 2.8 * nameLength/scale;
            var x2 = x1 - stepLength;
            var x3 = x2 - 3 * stepLength;
            var x4 = x3;
            //计算文字位置
            var textX = x4 + 10/scale;
            return textX;
        }).attr("y",function(d,i){
            var y1 = Number(d.axisY);
            var nameLength = Number(vueApp.getTextLength(d.addressName));
            var stepLength = 2.8 * nameLength/scale;
            var y2 = y1 - stepLength;
            var y3 = y2;
            var y4 = y3 - 30/scale;
            //计算文字位置
            var textY = y4 + 20/scale;
            return textY;
        }).attr("font-size",(15/scale));

    }
});
</script>
</body>

</html>