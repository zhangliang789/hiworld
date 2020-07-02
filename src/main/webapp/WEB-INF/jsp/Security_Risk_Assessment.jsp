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
    <title>安全风险预控数据表</title>
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
        .table {
            margin-bottom: 0;
        }

        .btys {
            display: inline-block;
            padding: 10px 40px;
            vertical-align: sub;
        }

        .biaot1 > td {
            border-left-width: 0 !important;
        }

        .biaot > td {
            white-space: nowrap;
            background-color: #f8f8f9;
            font-weight: bold;

        }

        .table > tbody + tbody {
            border-top: 0;
        }

        .modal-footer {

            background-color: #fff;
        }

        .fa-caret-right {
            transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            -moz-transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            -o-transform: rotate(45deg);
        }

        .form-horizontal .control-label {
            margin-bottom: 5px;
            font-weight: 100;
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

        .table-responsive {
            overflow-x: hidden;
            min-height: 0.01%;
        }

        .biaot2 td {
            text-align: left;
        }

        textarea.form-control {
            height: 70px;
            resize: none;
        }

        #test li.active {
            border: 1px solid #b1b1b1;
            border-radius: 3px;
            box-sizing: border-box;
        }

        #test1 li.active {

            border: 1px solid #b1b1b1;
            border-radius: 3px;
            box-sizing: border-box;
        }

        #test2 li.active {

            border: 1px solid #b1b1b1;
            border-radius: 3px;
            box-sizing: border-box;
        }

        #test3 li.active {

            border: 1px solid #b1b1b1;
            border-radius: 3px;
            box-sizing: border-box;
        }

        #test4 li.active {

            border: 1px solid #b1b1b1;
            border-radius: 3px;
            box-sizing: border-box;
        }

        #test li, #test1 li, #test2 li, #test3 li, #test4 li {
            padding: 5px 5px;
            margin-top: 5px;
            border: 2px solid #ffffff;
        }

        #test li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 256px 74px;
            box-sizing: border-box;
        }

        #test1 li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 256px 74px;
            box-sizing: border-box;
        }

        #test2 li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 152px 74px;
            box-sizing: border-box;
        }

        #test3 li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 152px 74px;
            box-sizing: border-box;
        }

        #test4 li.active {
            border: 2px solid #0B8DE5;
            background: url(../img/dh.png) no-repeat;
            background-size: 20px 20px;
            background-position: 152px 74px;
            box-sizing: border-box;
        }

        .fxdj1 {
            background-color: #FFFF00;
            height: 30px;
            width: 100%;
        }

        .fxdj2 {
            background-color: #FF3300;
            height: 30px;
            width: 100%;
        }

        .fxdj3 {
            background-color: #FF0000;
            height: 30px;
            width: 100%;
        }

        .table {
            margin-bottom: 0;
        }

        label input[type="radio"] {
            vertical-align: text-top;
        }

        .form-group {
            margin-bottom: 5px;
        }

        #test li, #test1 li {
            padding: 5px 5px;
            margin-top: 5px;
            border: 2px solid #ffffff;
        }

        .wxdj {
            display: inline-block;
            width: 50px;
            height: 20px;
            margin-right: 10px;
            background-color: #FF0000;
            vertical-align: middle;
        }

        .wxdj-h {
            background-color: #FF0000;
        }

        .wxdj-u {
            background-color: #fdc300;
        }

        .wxdj-j {
            background-color: #FFFF00;
        }

        .wxdj-l {
            background-color: #00a3e9;
        }

        .fxdj {
            background-color: #00a3e9;
            height: 30px;
            width: 100%;
        }

        .wxdj-wz {
            display: inline-block;
            width: 200px;
            vertical-align: text-top;
            height: 60px;
        }

        .modal-dialog {
            width: 625px;

        }

        .tcys {
            display: none;
            position: absolute;
            top: 30px;
            left: 0;
            min-width: 100px;
            background-color: #fff;
            z-index: 999;
            border: 1px solid #d1dbe5;
            border-radius: 2px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, .12), 0 0 6px rgba(0, 0, 0, .12);
            box-sizing: border-box;
            margin: 2px 0;
            height: 300px;
            overflow-y: scroll;

        }

        .tcys li {
            text-align: left;
            padding: 5px 0;
        }

        .el-checkbox__label {
            font-size: 14px;
            padding-left: 5px;
            font-weight: 100;
        }

        .el-table-filter__bottom {
            border-top: 1px solid #d1dbe5;
            padding: 8px;
        }

        .el-table-filter__bottom button {
            background: transparent;
            border: none;
            color: #8391a5;
            cursor: pointer;
            font-size: 14px;
            padding: 0 3px;
        }

        .el-table-filter__bottom button:hover {
            color: #20a0ff;
        }

        td a {
            color: #337ab7
        }

        a {
            cursor: pointer;
        }

        .ivu-select-dropdown {

            position: absolute !important;
        }

        input[type=file] {
            width: 100% !important;
            height: 100% !important;
            opacity: 0;
        }

        .form-group1 {
            background-color: #e9ecf1;
            padding: 10px 15px;
        }

        .form-group1 label {
            margin: 0 !important;
        }

    </style>
</head>

<body>
<div id="page-content" style="min-height: 794px;">

    <div class="content-header" style="width: 2000px">
        <div class="row">
            <div class="col-sm-12">
                <div class="header-section" style="overflow: hidden;">
                    <h1 style="float: left;padding:0">安全风险预控数据表</h1>
                    <div style="float: left;">
                        <div class="searchCon" style="width: 550px">
                        <button type="button" class="btn btn-effect-ripple btn-primary" data-toggle="modal"
                                data-target="#modal-select" id="screen">设置筛选条件
                        </button>
                            <a class="btn btn-primary" href="../file/风险预控数据模板.xls">模板下载</a>
                            <a class="btn btn-primary" id="file-picker" style="position: relative;vertical-align: middle;cursor:pointer;">导入文件</a>
                            <button href="" data-toggle="modal" class="btn btn-effect-ripple btn-primary"  @click="getExcel">导出文件</button>
                            <button href="" data-toggle="modal" class="btn btn-effect-ripple btn-primary"  @click="jumpAssessmentAdd">新增</button>
                    </div>

                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
        <div class="block full" style="width:2000px;padding-top: 0;">
            <div class="table-responsive">
                <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                    <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                        <thead>
                        <tr align="center">
                            <th class="text-center" style="width:50px">序号</th>
                            <th class="text-center" style="width:80px">部门</th>
                            <th class="text-center" style="width:80px">工作任务</th>
                            <th class="text-center" style="width:80px">工序</th>
                            <th class="text-center" style="width:80px">风险</th>
                            <th class="text-center" style="width:80px">风险后果描述</th>
                            <th class="text-center" style="width:50px">风险类型</th>
                            <th class="text-center" style="width:50px">事故类型</th>
                            <th class="text-center" style="width:50px">事故发生条件</th>
                            <th class="text-center" style="width:60px">可能性</th>
                            <th class="text-center" style="width:50px">损失</th>
                            <th class="text-center" style="width:60px">风险值</th>
                            <th class="text-center" style="width:80px">风险等级</th>
                            <th class="text-center" style="width:80px">管控对象</th>
                            <th class="text-center" style="width:160px">管理标准</th>
                            <th class="text-center" style="width:80px">主要负责人</th>
                            <th class="text-center" style="width:80px">直接管理人</th>
                            <th class="text-center" style="width:60px">主要监管部门</th>
                            <th class="text-center" style="width:80px">主要监管人</th>
                            <th class="text-center" style="width:80px">监管措施</th>
                            <th class="text-center" style="width:80px">操作</th>
                        </tr>
                        </thead>
                        <tbody v-for="(risk,riskIndex) in detailedList" align="center">
                        <tr>
                            <td v-text="pageSize*(nowpage-1)+riskIndex+1">1</td>
                            <td v-text="risk.risk_department"></td>
                            <td v-text="risk.risk_task"></td>
                            <td v-text="risk.risk_procedure"></td>
                            <td v-text="risk.risk_risk"></td>
                            <td v-text="risk.risk_consequences"></td>
                            <td v-text="risk.risk_type"></td>
                            <td v-text="risk.risk_accitype"></td>
                            <td v-text="risk.risk_condition"></td>
                            <td v-text="risk.risk_possibility"></td>
                            <td v-text="risk.risk_loss"></td>
                            <td v-text="risk.risk_value"></td>
                            <td v-text="risk.risk_grade"></td>
                            <td v-text="risk.risk_object"></td>
                            <td v-text="risk.risk_standard"></td>
                            <td v-text="risk.risk_priperson"></td>
                            <td v-text="risk.risk_dirmanager"></td>
                            <td v-text="risk.risk_major"></td>
                            <td v-text="risk.risk_majorperson"></td>
                            <td v-text="risk.risk_measures"></td>
                            <td class="text-center">
                                 <a @click="deleteAssessment(risk)">
                                     删除
                                 </a>
                                 <a @click="jumpUpdateAssessment(risk.risk_id)">
                                 修改
                                 </a>
                             </td>
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
    <div id="modal-select" class="modal" tabindex="-1" role="dialog" aria-hidden="true" style="height: 450px;">

        <div class="modal-dialog">
            <div class="modal-content" style="min-height: 100%">
                <div class="modal-body">
                    <div class="block-title">
                        <h4>筛选信息</h4></div>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><b>部门</b></label>
                            <div class="col-sm-8">
                                <i-select style="width: 380px;height: 35px;"
                                          v-model="risk_department" filterable clearable>
                                    <i-option v-for="(mydepart,mindex) in departmentList"
                                              :value="mydepart.fOrg_Name"
                                              :label="mydepart.fOrg_Name"
                                              :key="mindex">
                                        <span v-text="mydepart.fOrg_Name"></span>
                                        <span style="float:right;color:#ccc"
                                              v-text="mydepart.fOrg_Name_Shorthand"></span>
                                    </i-option>
                                </i-select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><b>工作任务</b></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" v-model="risk_task" placeholder="请输入工作任务">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><b>工序</b></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" v-model="risk_procedure" placeholder="请输入工作任务">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><b>风险</b></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" v-model="risk_risk" placeholder="请输入风险">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><b>风险类型</b></label>
                            <div class="col-sm-8">
                               <input type="text" class="form-control" v-model="risk_type" placeholder="请输入风险类型">
                                <!--<i-select placeholder="请选择风险类型" type="text"
                                          v-model="risk_type" clearable filterable>
                                    <i-option value="人"></i-option>
                                    <i-option value="机"></i-option>
                                    <i-option value="环"></i-option>
                                    <i-option value="管"></i-option>
                                </i-select>-->
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><b>事故类型</b></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" v-model="risk_accitype" placeholder="请输入风险类型">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label"><b>风险等级</b></label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" v-model="risk_grade" placeholder="请输入风险类型">
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

    <div class="modal inmodal" id="modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated flipInY" style="height: 100% !important;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <i class="fa  modal-icon"></i>
                    <h4 class="modal-title">删除</h4>
                    <small></small>
                </div>
                <div class="modal-body">
                    <p> 确认要删除吗？</p>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-effect-ripple btn-primary"
                            @click="confirmDelete(deleteAssessment1.risk_id)">确认
                    </button>
                </div>
            </div>
        </div>
    </div>

    <form id="getExcel" action="<%=request.getContextPath()%>/Security_risk_assessment/getExcell" method="post">
        <input id="ExcellID" name="ExcellID" type="hidden"/>
        <input id="ExcellName" name="ExcellName" type="hidden"/>
        <input id="risk_department" name="risk_department" type="hidden"/>
        <input id="risk_task" name="risk_task" type="hidden"/>
        <input id="risk_risk" name="risk_risk" type="hidden"/>
        <input id="risk_type" name="risk_type" type="hidden"/>
        <input id="risk_accitype" name="risk_accitype" type="hidden"/>
        <input id="risk_grade" name="risk_grade" type="hidden"/>
        <input id="risk_procedure" name="risk_procedure" type="hidden"/>
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
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/vue.js"></script>
<script src="../js/iview.min.js"></script>
<script src="../js/resource.js"></script>
<script src="../js/plugins/uploader/webuploader.js"></script>
<script type="text/javascript">
    var projectName = '<%=request.getContextPath() %>';

    var vueApp = new Vue({
        el: "#page-content",
        data: {
            pageSize: 10,
            nowpage: 1,
            assessmentList:[],
            detailedList: new Array(),
            risk_department:"",
            risk_task:"",
            risk_risk:"",
            risk_type:"",
            risk_accitype:"",
            risk_grade:"",
            risk_procedure:"",
            deleteAssessment1:{},
            departmentList: "",
        },
        created: function () {
            var _self = this;
            _self.getNewSecurity_risk_assessment();
            _self.getDepartment();
        },
        mounted: function () {
                var _self = this;
                var uploader = WebUploader.create({
                    // 自动上传。
                    auto: true,
                    // swf文件路径
                    swf: '../uploader/Uploader.swf',
                    // 文件接收服务端。
                    server: '../Security_risk_assessment/UploadFile',
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
                        _self.showToast("success", "上传成功");
                        _self.getPageCount();
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
            //获取新的管控清单对象
           getNewSecurity_risk_assessment:function () {
               var _self = this ;
               $.get(projectName + "/Security_risk_assessment/newSecurity_risk_assessment", function (data) {
                   _self.assessmentList = data;
                   _self.getPageCount();
               });
           },
            //获取总条数
            getPageCount: function () {
                var _self = this;
                _self.assessmentList.pageSize = _self.pageSize;
                $.ajax({
                    type: "POST",
                    url: projectName + "/Security_risk_assessment/getSecurity_risk_assessmentPageCount",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.assessmentList),
                    success: function (data) {
                        console.log("data:---"+data);
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
                                    currentPage: _self.nowpage > data ? 1 : _self.nowpage,
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
                            _self.detailedList = "";
                        }
                    }
                });
            },
            //分页获取数据，参数是Risksite 对象和页面大小和页码
            getDataByPage: function (page) {
                var _self = this;
                //加载层
                layer.load();
                _self.assessmentList.page = page;

                $.ajax({
                    type: "POST",
                    url: projectName + "/Security_risk_assessment/getSecurity_risk_assessmentByPage",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.assessmentList),
                    success: function (data) {
                        _self.detailedList = data;
                        //console.log(_self.detailedList);
                        layer.closeAll('loading');
                    }
                });

            },
            //查询
            judgeQuery: function () {
                var _self = this;
                _self.nowpage = 1;
                _self.assessmentList.risk_department = _self.risk_department;
                _self.assessmentList.risk_task = _self.risk_task;
                _self.assessmentList.risk_risk = _self.risk_risk;
                _self.assessmentList.risk_type = _self.risk_type;
                _self.assessmentList.risk_accitype = _self.risk_accitype;
                _self.assessmentList.risk_grade = _self.risk_grade;
                _self.assessmentList.risk_procedure = _self.risk_procedure;
                _self.getPageCount()

            },
            //筛选关闭
            clearData: function () {
                var _self = this;
                _self.assessmentList.risk_department = "";
                _self.assessmentList.risk_task = "";
                _self.assessmentList.risk_risk = "";
                _self.assessmentList.risk_type = "";
                _self.assessmentList.risk_accitype = "";
                _self.assessmentList.risk_grade = "";
                _self.assessmentList.risk_procedure = "";

                $("#modal-select").modal("hide");

            },
            //点击删除事件
            deleteAssessment:function(risk){
                this.deleteAssessment1 = risk;
                $("#modal-delete").modal("show");
            },

            //单条删除历史数据
            confirmDelete: function (risk_id) {
                console.log("risk_id：" + risk_id);
                var _self = this;
                $.ajax({
                    type: "DELETE",
                    url: projectName + "/Security_risk_assessment/deleteSecurity_risk_assessmentById/" + risk_id,
                    dataType: "json",
                    contentType: "application/json",
                    success: function (data) {
                        if (data > 0) {
                            _self.showToast("success", "删除成功!");
                            _self.getNewSecurity_risk_assessment();
                            $("#modal-delete").modal("hide");
                        } else {
                            _self.showToast("error", "删除失败!")
                            _self.getNewSecurity_risk_assessment();
                        }
                    }
                });
            },

            //跳转新增预控数据
            jumpAssessmentAdd:function () {
                var _self = this;
                    window.location.href = projectName + "/menu/Security_Risk_AssessmentAdd.action";
            },
            //修改
            jumpUpdateAssessment: function (risk_id) {
                var _self = this;
                        window.location.href = projectName + "/menu/Security_Risk_AssessmentAdd.action?risk_id=" + risk_id;
            },
            //导出表格
            getExcel:function(){
                var _self=this;
                $("#ExcellName").val("安全风险预控信息表.xls");
                $("#risk_department").val(_self.risk_department);
                $("#risk_task").val(_self.risk_task);
                $("#risk_risk").val(_self.risk_risk);
                $("#risk_accitype").val(_self.risk_accitype);
                $("#risk_grade").val(_self.risk_grade);
                $("#risk_procedure").val(_self.risk_procedure);
                $("#risk_accitype").val(_self.risk_accitype);
                $("#getExcel").submit();
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
        watch: {

        },
        filters: {
        }
    })

</script>
</body>

</html>