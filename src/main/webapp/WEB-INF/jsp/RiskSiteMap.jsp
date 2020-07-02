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
    <title>安全风险地图</title>
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

    .panel {
        margin-bottom: 20px;
        bottom: 0;
        right: 0;
        position: fixed;
        width: 250px;
        margin-right: 10px;
    }

    .panel-primary > .panel-heading {
        color: #fff;
        background-color: #337ADE;
        /* border-color: #337ab7; */
    }

    .panel-span {
        color: #4E5465;
        margin-left: 8px;
        font-size: 15px;
        vertical-align: middle;
    }

    .popover-title {
        margin: 0;
        padding: 8px 14px;
        font-size: 14px;
        color: #ffffff;
        background-color: #505050;
    }

    .btys {
        display: inline-block;
        padding: 10px 20px;
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
                    <h1>风险地图</h1></div>
            </div>
            <div class="col-sm-6">
                <div class="header-section">
                    <button class="btn btn-primary pull-right" data-toggle="modal" data-target="#modal-filter">筛选
                    </button>
                </div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full">
        <div class="col-md-12">
            <div id="svgDiv">
            </div>
            <div style="position: fixed;bottom: 20px;">
                <img src="../img/mapLogo.png">
            </div>
            <div>
                <button></button>
            </div>
        </div>
        <!-- END Datatables Block -->
    </div>
    <div class="panel panel-primary ">
        <div class="panel-heading">
            <h3 class="panel-title"></h3>
        </div>
        <div class="panel-body">
            <a href="#" class="list-group-item" @click="showMajorRisk">
                <i class="iconfont icon-baojing" :style="{color: majorColor}">
                    <span class="panel-span">重大风险</span>
                    <span class="panel-span" v-text="majorCount"></span>
                </i>
            </a>
            <a href="#" class="list-group-item" @click="showBigRisk">
                <i class="iconfont icon-baojing" :style="{color:bigColor}">
                    <span class="panel-span">较大风险</span>
                    <span class="panel-span" v-text="bigCount"></span>
                </i>
            </a>
            <a href="#" class="list-group-item" @click="showNormalRisk">
                <i class="iconfont icon-baojing" :style="{color: normalColor}">
                    <span class="panel-span">一般风险</span>
                    <span class="panel-span" v-text="normalCount"></span>
                </i>
            </a>
            <a href="#" class="list-group-item" @click="showLowRisk">
                <i class="iconfont icon-baojing" :style="{color:lowColor}">
                    <span class="panel-span">低风险</span>
                    <span class="panel-span" v-text="lowCount"></span>
                </i>
            </a>

        </div>
    </div>
    <div id="modal-filter" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div class="block-title">
                        <h4>筛选风险点</h4></div>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">风险点名称</label>
                            <div class="col-sm-6">
                                <input class="form-control input-sm" placeholder="" type="text" id="riskName"></div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 control-label">地点类型</label>
                            <div class="col-sm-6">
                                <select class="form-control" id="addressType">
                                    <option></option>
                                    <option>一</option>
                                    <option>二</option>
                                    <option>三</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">责任部门</label>
                            <div class="col-sm-6">
                                <input class="form-control input-sm" placeholder="" type="text" id="riskUnit"></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal"
                            @click="searchRiskSite">提交
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
     * Created by txianwei on 2017-10-20
     */
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            riskSite: null,
            majorCount: "",
            bigCount: "",
            normalCount: "",
            lowCount: "",
            majorColor: "red",
            bigColor: "orange",
            normalColor: "yellow",
            lowColor: "deepskyblue"
        },
        created: function () {
            var _self = this;
            _self.getRiskSiteList();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            searchRiskSite: function () {
                var _self = this;
                var riskName = $("#riskName").val();
                //var riskLevel = $("#riskLevel").val();
                var riskUnit = $("#riskUnit").val();
                $.get(projectName + "/RiskMapShow/getRiskSiteByLevel", {
                    riskName: riskName,
                    riskUnit: riskUnit
                }, function (data) {
                    _self.riskSite = data;
                    _self.majorCount = data.major.length;
                    _self.bigCount = data.big.length;
                    _self.normalCount = data.normal.length;
                    _self.lowCount = data.low.length;
                    d3.selectAll("image").remove();
                    _self.markRiskSiteOnMap(data);
                });
            },
            showMajorRisk: function () {
                var _self = this;
                if (_self.majorColor == "red") {
                    d3.selectAll(".majorRiskImage").attr("display", "none");
                    _self.majorColor = "lightgrey";
                } else if (_self.majorColor == "lightgrey") {
                    d3.selectAll(".majorRiskImage").attr("display", "");
                    _self.majorColor = "red";
                }
            },
            showBigRisk: function () {
                var _self = this;
                if (_self.bigColor == "orange") {
                    d3.selectAll(".bigRiskImage").attr("display", "none");
                    _self.bigColor = "lightgrey";
                } else if (_self.bigColor == "lightgrey") {
                    d3.selectAll(".bigRiskImage").attr("display", "");
                    _self.bigColor = "orange";
                }
            },
            showNormalRisk: function () {
                var _self = this;
                if (_self.normalColor == "yellow") {
                    d3.selectAll(".normalRiskImage").attr("display", "none");
                    _self.normalColor = "lightgrey";
                } else if (_self.normalColor == "lightgrey") {
                    d3.selectAll(".normalRiskImage").attr("display", "");
                    _self.normalColor = "yellow";
                }
            },
            showLowRisk: function () {
                var _self = this;
                if (_self.lowColor == "deepskyblue") {
                    d3.selectAll(".lowRiskImage").attr("display", "none");
                    _self.lowColor = "lightgrey";
                } else if (_self.lowColor == "lightgrey") {
                    d3.selectAll(".lowRiskImage").attr("display", "");
                    _self.lowColor = "deepskyblue";
                }
            },
            getRiskSiteList: function () {
                var _self = this;
                layer.load();
                $.get(projectName + "/RiskMapShow/getRiskSiteByLevel", function (data) {
                    if(data!=null&&data!=""){
                    	_self.riskSite = data;
                        _self.majorCount = data.major.length;
                        _self.bigCount = data.big.length;
                        _self.normalCount = data.normal.length;
                        _self.lowCount = data.low.length;
                        _self.markRiskSiteOnMap(data);
                    }
                	
                });
            },
            markRiskSiteOnMap: function (riskSite) {

                var _self = this;
                var majorRisk = riskSite.major;
                var bigRisk = riskSite.big;
                var normalRisk = riskSite.normal;
                var lowRisk = riskSite.low;
                var svg = d3.select("g");
                //重大风险
                svg.selectAll(".majorRiskImage")
                    .data(riskSite.major)
                    .enter()
                    .append("image")
                    .attr("x", function (d, i) {
                        if (d.address != null) {
                            return d.address.axisX - 30;
                        }
                    })
                    .attr("y", function (d, i) {
                        if (d.address != null) {
                            return d.address.axisY - 30;
                        }
                    })
                    .attr("width", 40)
                    .attr("height", 40)
                    .attr("class", "majorRiskImage")
                    .attr("id", function (d, i) {
                        return "riskSite_" + d.risksite.riskSiteID;
                    })
                    .attr("xlink:href", function (d, i) {
                    	if (d.address != null) {
                            return "../img/alarm/major.png";
                        }
                    });

                //较大风险
                svg.selectAll(".bigRiskImage")
                    .data(riskSite.big)
                    .enter()
                    .append("image")
                    .attr("x", function (d, i) {
                        if (d.address != null) {
                            return d.address.axisX - 30;
                        }
                    })
                    .attr("y", function (d, i) {
                        if (d.address != null) {
                            return d.address.axisY - 30;
                        }
                    })
                    .attr("id", function (d, i) {
                        return "riskSite_" + d.risksite.riskSiteID;
                    })
                    .attr("width", 40)
                    .attr("height", 40)
                    .attr("class", "bigRiskImage")
                    .attr("xlink:href",  function (d, i) {
                    	if (d.address != null) {
                            return "../img/alarm/big.png";
                        }
                    });
                    		
                    		

                //一般风险
                svg.selectAll(".normalRiskImage")
                    .data(riskSite.normal)
                    .enter()
                    .append("image")
                    .attr("x", function (d, i) {
                        if (d.address != null) {
                            return d.address.axisX - 30;
                        }
                    })
                    .attr("y", function (d, i) {
                        if (d.address != null) {
                            return d.address.axisY - 30;
                        }
                    })
                    .attr("width", 40)
                    .attr("height", 40)
                    .attr("class", "normalRiskImage")
                    .attr("id", function (d, i) {
                        return "riskSite_" + d.risksite.riskSiteID;
                    })
                    .attr("xlink:href",function (d, i) {
                    	if (d.address != null) {
                    		return "../img/alarm/normal.png";
                        }
                    	
                    });
                    		

                //低风险
                svg.selectAll(".lowRiskImage")
                    .data(riskSite.low)
                    .enter()
                    .append("image")
                    .attr("x", function (d, i) {
                        if (d.address != null) {
                            return d.address.axisX - 30;
                        }
                    })
                    .attr("y", function (d, i) {
                        if (d.address != null) {
                            return d.address.axisY - 30;
                        }
                    })
                    .attr("width", 40)
                    .attr("height", 40)
                    .attr("class", "lowRiskImage")
                    .attr("id", function (d, i) {
                        return "riskSite_" + d.risksite.riskSiteID;
                    })
                    .attr("xlink:href", function (d, i) {
                    	if (d.address != null) {
                    		return "../img/alarm/low.png";
                        }
                    	
                    });

                d3.selectAll("image")
                    .on("mouseover", function (d) {
                        if (d != undefined) {
                            $("#riskSite_" + d.risksite.riskSiteID).popover('toggle');
                        }
                    })
                    .on("mousemove", function (d) {
                    })
                    .on("mouseout", function (d) {
                        $('.majorRiskImage').popover('hide');
                        $('.bigRiskImage').popover('hide');
                        $('.normalRiskImage').popover('hide');
                        $('.lowRiskImage').popover('hide');
                    });

                d3.selectAll("image").each(function (d, i) {
                    if (d != undefined) {
                        var childRisk = d.risksite.mchildRiskSite;
                        var htmlTable = "<table class=\"table table-hover\">\n" +
                            "            <thead>\n" +
                            "            <tr>\n" +
                            "                <th class=\"center\">作业活动</th>\n" +
                            "                <th class=\"center\">风险等级</th>\n" +
                            "                <th class=\"center\">风险颜色</th>\n" +
                            "            </tr>\n" +
                            "            </thead>\n" +
                            "            <tbody>\n";

                        for (var i = 0; i < childRisk.length; i++) {
                            htmlTable += " <tr>\n" +
                                "                <td class=\"center\">" + childRisk[i].name + "</td>\n" +
                                "                <td class=\"center\">" + (childRisk[i].riskLevel == null ? "" : childRisk[i].riskLevel) + "</td>\n" +
                                "                <td class=\"center\"><span class=\"btys\" style=\"background: " + childRisk[i].riskColor + "\"></span></td>\n" +
                                "            </tr>\n";
                        }

                        htmlTable += " </tbody>\n" +
                            " </table>";
                        if(d.address!=null){
                        	d3.select(this).attr("title", d.address.addressName)
                            .attr("data-container", "body")
                            .attr("data-toggle", "popover")
                            .attr("data-placement", "right")
                            .attr("data-content", htmlTable);
                        }
                        
                    }
                });
                $("[data-toggle='popover']").popover({html: true});
                layer.closeAll('loading');
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
<script type="text/javascript">
    $(document).ready(function () {
        CompTree.init();
        UiTables.init();
        $("[data-toggle='popover']").popover();
        var svg;
        var container;
        $.get(projectName + "/RiskSiteMap/getRiskSiteMapObj", function (result) {
            if (result.transForm != null) {
                $.get(projectName + "/RiskSiteMap/getRiskSiteMap", function (data) {
                    if (data != null) {
                        $("#svgDiv").append(data);
                        svg = d3.select("svg").call(zoom);
                        container = d3.select("g").attr("transform", result.transForm);

                    }
                });
            } else {
                $.get(projectName + "/RiskSiteMap/getRiskSiteMap", function (data) {
                    if (data != null) {
                        $("#svgDiv").append(data);
                        svg = d3.select("svg").call(zoom);
                        container = d3.select("g").attr("transform", "translate(-5,-150)");
                    }
                });
            }
        });

        var zoom = d3.behavior.zoom()
            .scaleExtent([1, 15])
            .on("zoom", zoomed);

        function zoomed() {
            container.attr("transform", "translate(" + d3.event.translate + ")scale(" + d3.event.scale + ")");
        }
    });

</script>
</body>

</html>