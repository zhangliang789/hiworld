<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/6
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>风险管控-历史管控情况(详情)</title>
    <meta name="description"
          content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
    <meta name="author" content="pixelcave">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="../img/favicon.png">
    <link rel="apple-touch-icon" href="../img/icon57.png" sizes="57x57">
    <link rel="apple-touch-icon" href="../img/icon72.png" sizes="72x72">
    <link rel="apple-touch-icon" href="../img/icon76.png" sizes="76x76">
    <link rel="apple-touch-icon" href="../img/icon114.png" sizes="114x114">
    <link rel="apple-touch-icon" href="../img/icon120.png" sizes="120x120">
    <link rel="apple-touch-icon" href="../img/icon144.png" sizes="144x144">
    <link rel="apple-touch-icon" href="../img/icon152.png" sizes="152x152">
    <link rel="apple-touch-icon" href="../img/icon180.png" sizes="180x180">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/plugins.css">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/themes.css">
    <link rel="stylesheet" href="../css/layui.css"/>
    <script src="../js/vendor/modernizr-3.3.1.min.js"></script>
    <link href="../css/bootstrap-treeview.css" rel="stylesheet">
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../iview/iview.css">
    <style>
        th{
            white-space: nowrap;
        }
        #page-content {

            padding: 20px 20px 1px;
        }
        .searchCon {
            width: 240px;
            height: 25px;
            text-align: left;
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
            height: 35px;
            border-radius: 1px;
            font-size: 5px;
            font-family: "Microsoft Yahei";
            padding-left: 33px;
            padding-right: 26px;
            box-sizing: border-box;
            border: none;
            background-color: rgb(241, 243, 247);
        }
        a {
            cursor:pointer;
        }
        .ivu-select-dropdown {

            position: absolute !important;
        }
        *{margin:0;padding:0;}
        #pop{background:#fff;width:260px;border:1px solid #e0e0e0;font-size:12px;position: fixed;right:10px;bottom:10px;}
        #popHead{line-height:32px;background:#f6f0f3;border-bottom:1px solid #e0e0e0;position:relative;font-size:12px;padding:0 0 0 10px;}
        #popHead h2{font-size:14px;color:#666;line-height:32px;height:32px;}
        #popHead #popClose{position:absolute;right:10px;top:1px;}
        #popHead a#popClose:hover{color:#f00;cursor:pointer;}
        #popContent{padding:5px 10px;}
        #popTitle a{line-height:24px;font-size:14px;font-family:'微软雅黑';color:#333;font-weight:bold;text-decoration:none;}
        #popTitle a:hover{color:#f60;}
        #popIntro{text-indent:24px;line-height:160%;margin:5px 0;color:#666;}
        #popMore{text-align:right;border-top:1px dotted #ccc;line-height:24px;margin:8px 0 0 0;}
        #popMore a{color:#f60;}
        #popMore a:hover{color:#f00;}
    </style>

<body>
<div id="page-content" style="min-height: 794px;">
    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section">
                    <h1 style="float: left;"><%=request.getSession().getAttribute("riskSiteName")%>历史管控记录</h1>
                    <div class="form-group" style="float: right; position: relative;right: 19px">
                        <div class="searchCon">
                            <input placeholder="请选择检查时间(始)" readonly class="searchWrap"
                                   type="text" name="startTime"
                                   v-model="startTime"
                                   id="startTime"/>
                        </div>
                        ～
                        <div class="searchCon">
                            <input placeholder="请选择检查时间(终)" readonly class="searchWrap"
                                   type="text" name="endTime"
                                   v-model="endTime"
                                   id="endTime"/>
                        </div>
                        <button type="button"
                                onclick="querysearch()"
                                class="btn btn-effect-ripple btn-primary">
                            查询
                        </button>
                        <button type="submit" class="btn btn-effect-ripple btn-primary"
                                data-toggle="modal"
                                data-target="#modal-search">设置筛选条件
                        </button>
                        <button type="submit"
                                @click="getExcell"
                                class="btn btn-effect-ripple btn-primary">
                            导出
                        </button>
                        <button type="submit"
                                @click="initurl('/menu/RiskSiteAboutMe.do')"
                                class="btn btn-effect-ripple btn-primary">
                            返回
                        </button>
                </div>
            </div>
        </div>
    </div>
    </div>

    <div class="block full" style="padding-top: 0;">
        <div class="table-responsive">
            <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                    <thead>
                    <tr>
                        <th style="width: 80px;" class="text-center">序号</th>
                        <th class="text-center">检查时间</th>
                        <th class="text-center">管控层级</th>
                        <th class="text-center">检查部门</th>
                        <th class="text-center">检查人</th>
                        <th class="text-center">状态</th>
                        <th class="text-center">检查结果</th>
                    </tr>
                    </thead>

                    <tbody align="center" style="font-size: 12px;">
                    <tr v-for="(riskcontrolhistory1,index) in historyList">
                        <td class="text-center" v-text="pageSize*(nowpage-1)+index+1"></td>
                        <td v-text="riskcontrolhistory1.checkTime"></td>
                        <td v-text="riskcontrolhistory1.riskControlLevel"></td>
                        <td v-text="riskcontrolhistory1.checkDept"></td>
                        <td v-text="riskcontrolhistory1.checkerName"></td>
                        <td class="text-center" v-if="riskcontrolhistory1.riskState==1">失控</td>
                        <td class="text-center" v-if="riskcontrolhistory1.riskState==0">未失控</td>
                        <td class="text-center" v-if="riskcontrolhistory1.riskState==null">

                        </td>
                        <td v-text="riskcontrolhistory1.checkResult"></td>
                    </tr>
                    </tbody>
                </table>

                <!--分页-->
                <div class="row">
                    <div class="col-sm-7 col-xs-12 clearfix">
                        <nav class="pull-right">
                            <ul class="pagination pagination-sm remove-margin "
                                id="pagination">
                            </ul>
                        </nav>
                    </div>
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
                                    <h4>筛选条件</h4></div>
                                <div class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">检查时间</label>
                                        <div class="col-sm-8">
                                            <input id="checkTime" class="form-control input-sm datepicker" placeholder="请选择检查时间" type="text" v-model="startTime" readonly="readonly"></div>
                                    </div>
                                    <!--

                                        <div class="col-sm-8">
                                            <input id="checkTime" class="form-control input-sm datepicker" placeholder="请选择检查时间(始)" type="text" v-model="keywords">
                                            ～
                                            <input id="checkTime1" class="form-control input-sm datepicker" placeholder="请选择检查时间(终)" type="text" v-model="keywords1"></div>
                                    </div>
                                    -->
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">检查部门</label>
                                        <div class="col-sm-8">
                                            <i-select type="text" v-model="checkdept"
                                                      placeholder="请选择部门" clearable filterable>
                                                <i-option v-for="(mydepart,index) in checkDeptList" :label="mydepart.fOrg_Name"
                                                          :value="mydepart.fOrg_Name">
                                                    <span v-text="mydepart.fOrg_Name"></span>
                                                    <span style="float:right;color:#ccc"
                                                          v-text="mydepart.fOrg_Name_Shorthand"></span>
                                                </i-option>
                                            </i-select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">检查人</label>
                                        <div class="col-sm-8">
                                            <i-select type="text" v-model="checkername"
                                                      placeholder="请选择检查人" clearable filterable>
                                                <i-option v-for="(myemp,index ) in empList" :label="myemp.fEmp_Name"
                                                          :value="myemp.fEmp_Name">
                                                    <span v-text="myemp.fEmp_Name"></span>
                                                    <span style="float:right;color:#ccc"
                                                          v-text="myemp.fEmp_Name_Shorthand"></span>
                                                </i-option>
                                            </i-select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">专业</label>
                                        <div class="col-sm-8">
                                            <i-select v-model="majortype" placeholder="请选择专业"
                                                      type="text" clearable filterable>
                                                <i-option v-for="(mycategory,index) in categoryList"
                                                          :value="mycategory.fData_Name"
                                                          :label="mycategory.fData_Name">
                                                    <span v-text="mycategory.fData_Name"></span>
                                                    <span style="float:right;color:#ccc"
                                                          v-text="mycategory.fData_Name_Shorthand"></span>
                                                </i-option>
                                            </i-select>
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
    <!--导出表格-->
    <form id="getExcell" action="<%=request.getContextPath()%>/Riskcontrolhistory/getExcell" method="post">
        <input id="ExcellID" name="ExcellID" type="hidden"/>
        <input id="ExcellName" name="ExcellName" type="hidden"/>
        <input id="eCheckTime" name="eCheckTime" type="hidden"/>
        <input id="CheckDept" name="CheckDept" type="hidden"/>
        <input id="CheckerName" name="CheckerName" type="hidden"/>
        <input id="majoyType" name="majorType" type="hidden">
        <input id="riskSiteName" name="riskSiteName" type="hidden">
        <input id="riskHazardId" name="riskHazardId" type="hidden">
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
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>
<script>
    function querysearch() {
        vueApp.riskcontrolhistory.startCheckTime = $("#startTime").val();
        vueApp.riskcontrolhistory.endCheckTime = $("#endTime").val();
//        vueApp.getPageCountByTime();
        vueApp.getPageCount();
    }


</script>
<script>
    var projectName = '/' + window.location.pathname.split('/')[1];
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            pageSize: 10,
            nowpage: 1,
            //历史记录结果集
            historyList: [],
            //历史记录空对象
            riskcontrolhistory: "",
            //检查部门集合
            checkDeptList:"",
            checkdept:"",
            //检查人集合
            empList:"",
            checkername:"",
            //专业集合
            categoryList: "",
            //专业类型
            majortype:"",
            //时间段
            startTime:"",
            endTime:"",
        },
        created: function () {
            var _self = this;
            _self.getNewRiskcontrolhistory();
            _self.getEnterprise_data_dictionaryListForOrg();
            _self.getDepartment();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            //导出表格
            getExcell: function () {
                var _self = this;
                console.log(_self.riskcontrolhistory);
                $("#ExcellID").val("0");
                $("#ExcellName").val("历史管控情况信息表.xls");
                $("#eCheckTime").val(_self.riskcontrolhistory.checkTime);
                $("#CheckDept").val(_self.riskcontrolhistory.checkDept);
                $("#CheckerName").val(_self.riskcontrolhistory.checkerName);
                $("#majoyType").val(_self.majortype);
//                $("#riskSiteName").val(_self.riskcontrolhistory.riskSiteName);
                $("#riskHazardId").val(<%=request.getSession().getAttribute("riskSiteID")%>);
                $("#getExcell").submit();
                //_self.getNewRiskcontrolhistory();
            },

            //获取一个空的Riskcontrolhistory对象
            getNewRiskcontrolhistory: function () {
                var _self = this;
                $.get(projectName + "/Riskcontrolhistory/newRiskcontrolhistory", function (data) {
                    _self.riskcontrolhistory = data;
                    _self.getPageCount();
//                    _self.getPageCountByTime();
                })
            },

            //获取总条数，参数是Riskcontrolhistory 对象
            getPageCount: function () {
                var _self = this;
                _self.riskcontrolhistory.id = null;
                _self.riskcontrolhistory.pageSize = _self.pageSize;
                _self.riskcontrolhistory.riskHazardID = <%=request.getSession().getAttribute("riskSiteID")%>;
                $.ajax({
                    type: "POST",
                    url: projectName + "/Riskcontrolhistory/getRiskcontrolhistoryPageCount",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskcontrolhistory),
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
                            _self.historyList = "";
                        }
                    },
                    error: function () {
                        // 状态码
                        console.log(XMLHttpRequest.status);
                        // 状态
                        console.log(XMLHttpRequest.readyState);
                        // 错误信息
                        console.log(textStatus);
                    }
                });
            },

            //带有时间段查询条件下获取页数，参数是Riskcontrolhistory 对象
            getPageCountByTime: function () {
                var _self = this;
                _self.riskcontrolhistory.id = null;
                _self.riskcontrolhistory.pageSize = _self.pageSize;
                _self.riskcontrolhistory.riskHazardID = <%=request.getSession().getAttribute("riskSiteID")%>;
                $.ajax({
                    type: "POST",
                    url: projectName + "/Riskcontrolhistory/getRiskcontrolhistoryPageCountByTime",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskcontrolhistory),
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
                                        _self.getDataByPageByTime(page);
                                        _self.nowpage = page;
                                    }
                                }
                            $("#pagination").bootstrapPaginator(page_options);
                            _self.getDataByPageByTime(_self.nowpage);
                        } else {
                            $("#pagination").hide();
                            _self.showToast("info", "没有查询到数据");
                            _self.historyList = "";
                        }
                    },
                    error: function () {
                        // 状态码
                        console.log(XMLHttpRequest.status);
                        // 状态
                        console.log(XMLHttpRequest.readyState);
                        // 错误信息
                        console.log(textStatus);
                    }
                });
            },
            //时间段查询条件下分页获取数据，参数是Riskcontrolhistory 对象和页面大小和页码
            getDataByPageByTime: function (page) {
                var _self = this;
                //加载层
                //layer.load();
                _self.riskcontrolhistory.page = page;
                $.ajax({
                    type: "POST",
                    url: projectName + "/Riskcontrolhistory/getRiskcontrolhistoryByPageByTime",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskcontrolhistory),
                    success: function (data) {
                        console.log(data);
                        _self.historyList = data;
                        //layer.closeAll('loading');
                    },
                    error: function () {
                        // 状态码
                        console.log(XMLHttpRequest.status);
                        // 状态
                        console.log(XMLHttpRequest.readyState);
                        // 错误信息
                        console.log(textStatus);
                    }
                });
            },

            //分页获取数据，参数是Riskcontrolhistory 对象和页面大小和页码
            getDataByPage: function (page) {
                var _self = this;
                //加载层
                //layer.load();
                _self.riskcontrolhistory.page = page;
                $.ajax({
                    type: "POST",
                    url: projectName + "/Riskcontrolhistory/getRiskcontrolhistoryByPage",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskcontrolhistory),
                    success: function (data) {
                        console.log(data);
                        _self.historyList = data;
                        //layer.closeAll('loading');
                    },
                    error: function () {
                        // 状态码
                        console.log(XMLHttpRequest.status);
                        // 状态
                        console.log(XMLHttpRequest.readyState);
                        // 错误信息
                        console.log(textStatus);
                    }
                });
            },
            //获取部门信息
            getDepartment: function () {
                var _self = this;
                //url:待载入页面的URL地址
                //data:待发送 Key/value 参数。
                //callback:载入成功时回调函数。
                //type:返回内容格式，xml, html, script, json, text, _default。
                $.get(projectName + "/PlatForm/getDepartment", function (data) {
                    _self.checkDeptList = data;
                });

            },
            //筛选条件关闭时清空选择数据
            clearData: function () {
                var _self = this;
                _self.majortype = "";
                _self.checkdept = "";
                _self.checkername = "";
                $("#modal-search").modal("hide");

            },
            //筛选条件之后的确定事件
            judgeQuery: function () {
                var _self = this;
                //_self.riskSiteName = <%=request.getSession().getAttribute("riskSiteID")%>;
                //console.log(_self.riskSiteName);
                _self.riskcontrolhistory.riskHazardID = _self.riskSiteID;
                _self.riskcontrolhistory.checkTime = $("#checkTime").val();
                if (_self.checkdept == "") {
                    _self.riskcontrolhistory.checkDept = null;
                } else {
                    _self.riskcontrolhistory.checkDept = _self.checkdept;
                }
                if (_self.checkername == "") {
                    _self.riskcontrolhistory.checkerName = null;
                } else {
                    _self.riskcontrolhistory.checkerName = _self.checkername;
                }
                if (_self.majortype == "") {
                    _self.riskcontrolhistory.majorType = null;
                } else {
                    _self.riskcontrolhistory.majorType = _self.majortype;
                }
                _self.getPageCount();

            },

            //获取专业类型
            getEnterprise_data_dictionaryListForOrg: function () {
                var _self = this;
                $.ajax({
                    url: projectName + "/PlatForm/getEnterprise_data_dictionaryListForOrg", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: {
                        "orgID": "00000000",
                        "data_TypeOrName": null,
                    },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {//请求成功后的回调函数
                        _self.categoryList = data.专业类型;
                    },
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
            initurl: function (url) {
                window.location.href="<%=request.getContextPath()%>/menu/RiskAboutMeByXinAn.do"
            },
        },
        computed: {},
        //监听器：
        watch: {
            'checkdept': {
                handler: function (val, oldVal) {
                    var _self = this;
                    if(oldVal!="" && oldVal!=null){
                        _self.empList = ""
                        var orgID = "";
                        for (var i = 0; i < _self.checkDeptList.length; i++) {
                            if (_self.checkDeptList[i].fOrg_Name == _self.checkdept) {
                                orgID = _self.checkDeptList[i].fOrgID;
                            }
                        }
                        if (orgID != "null") {
                            $.post(projectName + "/PlatForm/getCurrOrgEmpList/" + orgID, function (data) {
                                _self.empList = data;
                            });

                        }
                    }
                }
            }
        }

    })

</script>
<script>

    laydate.render({
        elem: "#startTime"
        , trigger: 'click'
        , type: 'date'
        , theme: '#3188f2'
    });
    laydate.render({
        elem: "#endTime"
        , trigger: 'click'
        , type: 'date'
        , theme: '#3188f2'
    });
    laydate.render({
        elem: "#checkTime"
        , trigger: 'click'
        , type: 'date'
        , theme: '#3188f2'
    });
    laydate.render({
        elem: "#checkTime1"
        , trigger: 'click'
        , type: 'date'
        , theme: '#3188f2'
    });
</script>
</body>
</html>
