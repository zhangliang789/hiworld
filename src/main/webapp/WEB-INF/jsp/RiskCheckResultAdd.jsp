<%@ page import="org.platform4j.model.Emp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html class="js " lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <title>风险管控-现场检查结果管理-维护</title>
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
    <style>.control-label {
        float: left;
    }

    .col-sm-hh {
        float: left;
        width: 25%;
        margin-right: 5px;
    }

    .col-sm-hh1 {
        float: left;
        width: 60%;
        margin-left: 5px;
    }

    .col-sm-hh2 {
        float: left;
        width: 100%;
        margin-right: 5px;
    }

    .col-sm-hh3 {
        float: left;
        width: 100%;
    }

    .input-group-addon, .input-group-btn {
        width: 1% !important;
        white-space: nowrap;
        vertical-align: middle;
    }

    .table {
        margin-bottom: 0;
    }

    .table-striped > tbody > tr:nth-of-type(odd) {
        background-color: #fff !important;
    }

    /*.btys{ display: inline-block; padding: 8px 20px; background-color: #ff0000; vertical-align: sub; }*/
    .jindu {
        font-weight: bold;
        color: #00a2e8;
        font-size: 18px;
    }

    .biaot > td {
        white-space: nowrap;
        background-color: #f1f1f1;
        font-weight: bold;

    }

    td textarea {
        width: 100%;
        height: 50px;
        resize: none;
        background-color: #FFF;
        border: 0;
    }

    .textarea1 {
        width: 100%;
        height: 25px;
        resize: none;
    }

    .dib {
        background-color: #f1f1f1;
        padding: 5px 15px;
        margin: 10px 0;
    }

    .dib label {
        font-size: 16px;
    }

    .demo-upload-list {
        display: inline-block;
        width: 60px;
        height: 60px;
        text-align: center;
        line-height: 60px;
        border: 1px solid transparent;
        border-radius: 4px;
        overflow: hidden;
        background: #fff;
        position: relative;
        box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
        margin-right: 4px;
    }

    .demo-upload-list img {
        width: 100%;
        height: 100%;
    }

    .demo-upload-list-cover {
        display: none;
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        background: rgba(0, 0, 0, .6);
    }

    .demo-upload-list:hover .demo-upload-list-cover {
        display: block;
    }

    .demo-upload-list-cover i {
        color: #fff;
        font-size: 20px;
        cursor: pointer;
        margin: 0 2px;
    }

    .ivu-upload {

    }

    </style>
</head>

<body>
<div id="page-content" style="min-height: 794px;">

    <% Emp user = (Emp) request.getSession().getAttribute("emp");
        String username = user.getFEmp_Name();
        Integer userid = user.getfEmp_ID_Auto();
        String fOrg_Name = user.getFOrg_Name();
        Integer fOrgID_Auto = user.getfOrgID_Auto();
    %>

    <!-- Table Styles Header -->
    <div class="content-header">
        <div class="row">
            <div class="col-sm-6">
                <div class="header-section">
                    <h1>现场检查结果维护</h1></div>
            </div>
        </div>
    </div>
    <!-- END Table Styles Header -->
    <!-- Table Styles Block -->
    <div class="block full">
        <div class="table-responsive">
            <div class="table-responsive">
                <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                    <div class="row" style="background-color: #fff;">
                        <div class="col-sm-12 dib">
                            <div id="" class="">
                                <form method="post" class="form-inline" onsubmit="return false;">
                                    <div class="form-group">
                                        <label class="biaot" for="example-if-password">检查信息</label>
                                        <div class="form-control" style="border: 0;background-color: #f1f1f1"></div>
                                    </div>
                                    <div class="form-group" style="float: right;">
                                        <button type="submit" @click="saveRisksiteoutof"
                                                class="btn btn-effect-ripple btn-primary">保存
                                        </button>
                                        <%-- <button type="submit" class="btn btn-effect-ripple btn-primary"
                                                 @click="clearRiskControl">重置
                                         </button>
                                         <button type="submit" class="btn btn-effect-ripple btn-primary">导出</button>--%>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-12" style="margin: 10px 0px;">
                            <div id="" class="">
                                <form method="post" class="form-horizontal" onsubmit="return false;">
                                    <div class="col-sm-4">
                                        <label class="control-label" style="margin-left:17px"
                                               for="example-input-small"><%--{{'checkTime'|titleFilter1('检查时间')}}--%>检查时间</label>
                                        <div class="col-sm-hh1">
                                            <input type="text" id="checktime" name="example-input-small"
                                                   class="form-control input-sm datepicker"
                                                   v-bind:value="riskcheckresult.checkTime" readonly="readonly"
                                                   placeholder=""></div>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="control-label"><%--{{'CreateUnitName'|titleFilter1('检查人部门')}}--%>检查人部门</label>
                                        <div class="col-sm-hh1">
                                            <input class="form-control" id="checkdepart" readonly="readonly"
                                                   :value="riskcheckresult.createUnitName">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="control-label"
                                               for="example-input-small"><%--{{'CreateName'|titleFilter1('检查人')}}--%>检查人</label>
                                        <div class="col-sm-hh1">
                                            <input class="form-control input-sm" id="checkperson" readonly="readonly">
                                            </input>

                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                    <div class="row" style="background-color: #fff;">
                        <div class="col-sm-12 dib">
                            <div id="" class="">
                                <form method="post" class="form-inline" onsubmit="return false;">
                                    <div class="form-group">
                                        <label class="" for="example-if-password">检查结果信息
                                            <%--<span class="jindu">{{nowrisksiteoutofcontrolitem }}/{{risksiteoutofcontrolitemcount}}</span>--%></label>
                                        <div class="form-control" style="border: 0;background-color: #f1f1f1"></div>
                                    </div>
                                    <div class="form-group" style="float: right;">
                                        <%-- <button type="submit" @click="lastoutof"
                                                 class="btn btn-effect-ripple btn-primary">上一条
                                         </button>
                                         <button type="submit" @click="nextoutof"
                                                 class="btn btn-effect-ripple btn-primary">下一条
                                         </button>--%>
                                        <button type="submit" @click="updateOutOfControlitem"
                                                class="btn btn-effect-ripple btn-primary">添加
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-12" style="padding: 10px 15px;">
                            <div id="" class="">
                                <form method="post" class="form-horizontal" onsubmit="return false;">
                                    <div class="col-sm-hh" style="width:45.%;">
                                        <label class="control-label" for="example-input-small">&nbsp;&nbsp;&nbsp;&nbsp;{{'Name'|titleFilter('风险')}}</label>
                                        <div class="col-sm-hh1" style="width:80.5%;">
                                            <input type="text" id="riskhazard" readonly="readonly"
                                                   name="example-input-small"
                                                   class="form-control input-sm" placeholder="" style="width: 100%">
                                        </div>
                                    </div>
                                    <div class="col-sm-hh">
                                        <label class="control-label" for="example-input-small">{{'RiskLevel'|titleFilter('风险等级')}}</label>
                                        <div class="col-sm-hh1">
                                            <input type="text" id="level" readonly="readonly" name="example-input-small"
                                                   class="form-control input-sm" placeholder=""></div>
                                    </div>
                                    <%--   <div class="col-sm-hh">
                                           <label class="control-label" for="example-input-small">{{'status'|titleFilter2('状态')}}</label>
                                           <div class="col-sm-hh1">
                                               <select id="hazardstatus" name="example-input-small" style="padding: 0 5px;"
                                                       class="form-control input-sm">
                                                   <option v-bind:value="0">失控</option>
                                                   <option v-bind:value="1">未失控</option>

                                               </select>
                                           </div>
                                       </div>--%>
                                    <div class="nihao2">
                                        <label class="control-label" for="example-if-password">状态 &nbsp;</label>
                                        <div>
                                            <select class="form-control input-sm" v-model="status2">
                                                <option value="1">失控</option>
                                                <option value="0">未失控</option>
                                            </select></div>

                                        <%--</form>--%>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div class="col-sm-4" style="margin: 10px 0px 10px 0px; width: 65%">
                                <div id="" class="">
                                    <form method="post" class="form-horizontal" onsubmit="return false;">
                                        <div class="col-sm-hh2">
                                            <label class="control-label"
                                                   for="example-textarea-input"><%--{{'checkQuestion'|titleFilter1('检查结果')}}--%>检查结果</label>
                                            <div class="col-sm-hh3">
                                            <textarea style="width: 100%;"
                                                      name="example-textarea-input" rows="7" class="form-control"
                                                      placeholder="" id="exitquestion">
                                            </textarea>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <%-- <div class="col-sm-4" style="margin: 10px -15px;">

                                 <div id="" class="">
                                     <form method="post" class="form-horizontal" onsubmit="return false;">
                                         <div class="col-sm-hh2">
                                             <label class="control-label" for="example-textarea-input">管控措施</label>
                                             <div class="col-sm-hh3">
                                                 <div style="height:156px;overflow-y: auto">
                                                     <table id="general-table"
                                                            class="table table-striped table-bordered table-vcenter">
                                                         <thead>
                                                         <tr>
                                                             <th class="text-center" style="width: 80px">
                                                                 序号
                                                             </th>
                                                             <th class="text-center">措施名</th>
                                                             <th class="text-center">内容</th>
                                                         </tr>
                                                         </thead>
                                                         <tbody>
                                                         <tr v-if="riskcontrolList!=null"
                                                             v-for="(riskcontrolLis,index) in riskcontrolList">
                                                             <td class="text-center" v-text="index+1">
                                                             </td>
                                                             <td class="text-center"
                                                                 v-text="riskcontrolLis.measureName"></td>
                                                             <td class="text-center">
                                                                 <span></span>
                                                                 <a  v-if="riskcontrolLis.measureURL!=null"
                                                                     v-text="riskcontrolLis.measureURL" @click="downloadFile(riskcontrolLis)"></a>
                                                                 <textarea   v-if="riskcontrolLis.measureContent!=null"
                                                                             v-text="riskcontrolLis.measureContent"
                                                                             name="example-textarea-input"
                                                                             class="textarea1" rols="1" rows="1" disabled="disabled" readonly="readonly"></textarea>
                                                             </td>
                                                         </tr>
                                                         </tbody>
                                                     </table>
                                                 </div>
                                             </div>
                                         </div>
                                     </form>
                                 </div>
                             </div>--%>
                            <div class="col-sm-4" style="margin: 10px 0px; width: 35%">
                                <div id="" class="">
                                    <form method="post" class="form-horizontal" onsubmit="return false;">
                                        <div class="col-sm-hh2">
                                            <label class="control-label" for="example-textarea-input">取证附件</label>
                                            <div class="col-sm-hh3">
                                                <div style="height:156px;overflow-y: auto">
                                                    <table id="general-table"
                                                           class="table table-striped table-bordered table-vcenter table-hover">
                                                        <thead>
                                                        <%--<tr>
                                                            <td><label>选择图片：</label> </td>
                                                            <td><input type="file" id="photofile" /></td>
                                                            <td><input type="submit" value="上传"/></td>
                                                        </tr>--%>
                                                        <tr>
                                                            <th class="text-center" style="width: 80px">
                                                                序号
                                                            </th>
                                                            <th class="text-center">附件名</th>
                                                            <th class="text-center">内容</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr v-if="riskcontrolList!=null"
                                                            v-for="(otherfile,otherindex) in otherfiles">
                                                            <td class="text-center" v-text="otherindex+1">
                                                            </td>
                                                            <td class="text-center"
                                                                v-text="otherfile.fileName"></td>
                                                            <td class="text-center">
                                                                <a :bind="otherfile.serviceUUID"
                                                                   @click="downloadFile(otherfile)">下载</a>
                                                                <a @click="deleteAttch(otherfile,otherindex)">删除</a>
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="form-group" style="width: 100%;margin-bottom:5px">
                                            <label class="col-md-3 control-label" style="margin-right: 15px"
                                                   for="example-if-password">上传图片</label>
                                            <div class="demo-upload-list" v-for="(item,itemindex) in uploadList">
                                                <template v-if="item.status === 'finished'">
                                                    <img :src="item.url">
                                                    <div class="demo-upload-list-cover">
                                                        <icon type="ios-eye-outline"
                                                              @click.native="handleView(item)"></icon>
                                                        <icon type="ios-trash-outline"
                                                              @click.native="handleRemove(item,itemindex)"></icon>
                                                    </div>
                                                </template>
                                                <template v-else>
                                                    <i-progress v-if="item.showProgress" :percent="item.percentage"
                                                                hide-info></i-progress>
                                                </template>
                                            </div>
                                            <upload
                                                    ref="upload"
                                                    :show-upload-list="false"
                                                    :on-success="handleSuccess"
                                                    :format="['jpg','jpeg','png']"
                                                    :max-size="4096"
                                                    :on-format-error="handleFormatError"
                                                    :on-exceeded-size="handleMaxSize"
                                                    :before-upload="handleBeforeUpload"
                                                    multiple
                                                    type="drag"
                                                    :action="fileUploadPath"
                                                    :data="otherData"
                                                    style="display: inline-block;width:58px;">
                                                <div style="width:58px;height:58px;line-height: 58px;">
                                                    <icon type="camera" size="20"></icon>
                                                </div>
                                            </upload>
                                            <modal title="View Image" v-model="visible">
                                                <img :src="imgName" v-if="visible" style="width: 100%">
                                            </modal>
                                        </div>


                                    </form>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="table-responsive">
            <div class="col-sm-12 dib">
                <div id="" class="">
                    <form method="post" class="form-inline" onsubmit="return false;">
                        <div class="form-group">
                            <label class="" for="example-if-password">现场检查结果
                                <%--<span class="jindu">{{nowrisksiteoutofcontrolitem }}/{{risksiteoutofcontrolitemcount}}</span>--%></label>
                            <div class="form-control" style="border: 0;background-color: #f1f1f1"></div>
                        </div>

                    </form>
                </div>
            </div>
            <div class="">
                <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                    <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                        <thead>
                        <tr>
                            <th class="text-center">序号</th>
                            <th class="text-center">{{'Name'|titleFilter('风险')}}</th>
                            <th class="text-center">{{'RiskLevel'|titleFilter('风险等级')}}</th>
                            <th class="text-center">状态</th>
                            <th class="text-center"><%--{{'checkQuestion'|titleFilter1('检查结果')}}--%>检查结果</th>
                            <th class="text-center">取证附件</th>
                            <th class="text-center">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr v-for="(risksiteoutofcontrolitem,riskIndex) in risksiteoutofcontrolitems">
                            <td class="text-center" v-text="riskIndex+1">
                            </td>
                            <td v-text="risksiteoutofcontrolitem.hazard.name"></td>
                            <td class="text-center" v-text="risksiteoutofcontrolitem.hazard.riskLevel"></td>
                            <td class="text-center"><span
                                    v-if="risksiteoutofcontrolitem.outOfControlStatus=='1'">失控</span><span
                                    v-if="risksiteoutofcontrolitem.outOfControlStatus=='0'">未失控</span></td>
                            <td class="text-center">
                                  <textarea v-text="risksiteoutofcontrolitem.checkQuestion"
                                            name="example-textarea-input"
                                            class="" rols="2" rows="1" readonly="readonly"
                                            disabled="disabled"
                                            style="height: 30px"
                                  ></textarea>
                            </td>
                            <td class="text-center" v-text="risksiteoutofcontrolitem.accthes.length"></td>
                            <td class="text-center">
                                <a href="javascript:void(0)" data-toggle="tooltip"
                                   @click="checkUnable(risksiteoutofcontrolitem,riskIndex,1)"
                                   title="修改">
                                    修改
                                </a>
                                <a data-toggle="tooltip"
                                   @click="checkUnable(risksiteoutofcontrolitem,riskIndex,2)"
                                   title="删除">
                                    删除
                                </a>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
        <form id="downloadForm" hidden="hidden" title="图片下载">
            <table>
                <tr>
                    <td>
                        checkid:
                    </td>
                    <td>
                        <input type="text" name="checkId" id="checkid">
                    </td>
                </tr>
            </table>
            <%-- <input id="subButton" value="提交" type="button" @click="downloadFile">--%>
        </form>
        <form id="downFile" action="<%=request.getContextPath()%>/RiskControlMeasureControl/downFile"
              method="post">
            <input id="downloadUrl" name="downloadUrl" type="hidden"/>
            <input id="realFileName" name="realFileName" type="hidden"/>
        </form>
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
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/resource.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>
<script src="../js/resource.js"></script>
<script src="../js/nowDate.js"></script>
<script>
    var projectName = '<%=request.getContextPath() %>';
    var attrArray = null;
    var vueApp = new Vue({
        el: "#page-content",
        data: {
            riskcheckresult: "",
            temprisksite: "",
            risksiteoutofcontrolite: "",
            temprisksiteoutofcontrolite: "",
            risksiteoutofcontrolitems: "",
            otherfiles: null,
            status1: "失控",
            status: "未失控",
            riskcontrolList: "",
            stringriskcontrols: "",
            nowrisksiteoutofcontrolitem: 0,
            risksiteoutofcontrolitemcount: 0,
            tempitem: "",
            filelength: 0,
            fileIndex: 0,
            temprisksiteid: "",
            riskmcontrolitem: [],
            status2: "1",
            uploadList: [],
            fileUploadPath: fileUploadPath,
            imgName: "",
            visible: false,
            otherData: {"fguid":<%=userid%>},
        },
        created: function () {
            var _self = this;
            _self.getRiskCheckResult();
            _self.getNewRiskCheckResultItem();
            _self.getNewAttch();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {

            handleView: function (item) {
                var _self = this;
                _self.imgName = item.url;
                _self.visible = true;
            },
            handleRemoveitem: function (item, itemindex) {
                var _self = this;
                _self.risksiteoutofcontrolitem.accthes.splice(itemindex, 1)

            },
            handleRemove: function (item, itemindex) {
                var _self = this;
                _self.uploadList.splice(itemindex, 1);
                _self.risksiteoutofcontrolitem.accthes.splice(itemindex, 1);
            },
            handleSuccess: function (res, file) {
                var _self = this;
                $("#checkid").val(res);
                var downloadForm = new FormData($("#downloadForm")[0]);
                $.ajax({
                    url: fileDownloadPath,
                    type: 'POST',
                    data: downloadForm,
                    async: false,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function (data) {
                        var result = eval(data);
                        file.url = result.savePath;
                        file.name = result.oldFileName;
                        _self.uploadList.push(file);
                    },
                });
                if (res != 0 && res != null && res != "") {
                    $.ajax({
                        url: projectName + "/RiskCheckResult/newRisksiteoutofcontrolattachment", //发送请求的地址。
                        type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            _self.outofcontrolattachment = data;
                            _self.outofcontrolattachment.localPath = file.url;
                            _self.outofcontrolattachment.fileName = file.name;
                            _self.outofcontrolattachment.serviceUUID = res;
                            _self.otherfiles.push(_self.outofcontrolattachment);
//                            _self.risksiteoutofcontrolitem.accthes.push(_self.outofcontrolattachment);
//                            _self.outofcontrolattachmentList.push(_self.outofcontrolattachment);
                            //_self.outofcontrolattachment.checkRecordID= "";
                            //_self.outofcontrolattachment.itemID= "";
                            //该两个属性在添加事件中赋值
                        },
                    });
                }
            },
            handleFormatError: function (file) {
                this.$Notice.warning({
                    title: '文件格式不正确！',
                    desc: '文件 ' + file.name + ' 格式错误, 请选择.jpg或者.png格式！.'
                });
            },
            handleBeforeUpload: function (file) {
                var check = this.uploadList.length < 5;
                if (!check) {
                    this.$Notice.warning({
                        title: '最多可以上传五张图片。'
                    });
                }
                if (file.name.indexOf("&") != -1 || file.name.indexOf("=") != -1) {
                    this.$Notice.warning({
                        title: '文件名不能含有特殊字符如&,=。'
                    });
                    return false;
                }
                return check;
            },
            handleMaxSize: function (file) {
                this.$Notice.warning({
                    title: 'Exceeding file size limit',
                    desc: '文件  ' + file.name + ' 最大大不能超过4M！'
                });
            },


            //校验该条数据是不是可以修改。
            checkUnable: function (risksiteoutofcontrolitem, riskIndex, param) {
                var _self = this;
                for (var i = 0; i < _self.risksiteoutofcontrolitems.length; i++) {
                    for (var j = 0; j < _self.risksiteoutofcontrolitems[i].accthes.length; j++) {
                        if (_self.risksiteoutofcontrolitems[i].accthes[j].checkRecordID == null) {
                            _self.risksiteoutofcontrolitems[i].accthes.splice(j, 1);
                        }
                    }
                }
                _self.otherfiles = [];
                _self.uploadList = [];

                $.ajax({
                    url: projectName + "/RiskCheckResult/checkUnable", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(risksiteoutofcontrolitem),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    contentType: "application/json",
                    dataType: "json",//预期服务器返回的数据类型。
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        if (data) {
                            if (param == 1) {
                                _self.updaterisksiteoutofcontrolitem(risksiteoutofcontrolitem, riskIndex);
                            } else {
                                _self.deteleOutOfControlitem(risksiteoutofcontrolitem, riskIndex);
                            }
                        } else {
                            _self.showToast("warning", "该条失控风险信息被分析不能被操作！");
                        }
                    },
                });
                var _self = this;

            },
            //子附件下载
            downloadFile: function (otherfile) {
                var _self = this;
                $("#checkid").val(otherfile.serviceUUID);
                var downloadForm = new FormData($("#downloadForm")[0]);
                $.ajax({
                    url: fileDownloadPath,
                    type: 'POST',
                    data: downloadForm,
                    async: false,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function (data) {
                        var result = eval(data);
                        $("#downloadUrl").val(result.savePath);
                        $("#realFileName").val(result.oldFileName);
                        $("#downFile").submit();
                    },
                    error: function () {
                        _self.showToast("error", "下载失败");
                    }
                });
            },
            // 获取一个新的附件对象
            getNewAttch: function () {
                var _self = this;
                $.get(projectName + "/RiskCheckResult/newRisksiteoutofcontrolattachment", function (data) {
                    _self.otherfile = data;
                });
            },
            //暂时添加一个失控子条目
            //删除附件图片
            deleteAttch: function (otherfile, otherindex) {
                var _self = this;
                if (_self.otherfile != null) {
                    _self.otherfiles.splice(otherindex, 1);
                    _self.uploadList.splice(otherindex, 1);
                }
                $.post(projectName + "/RiskCheckResult/deleteAttachMent", {"attchID": otherfile.attchID}, function (data) {
                    _self.showToast("success", "删除附件成功!");
                });


            },

            /*  //上一条数据
              lastoutof: function () {
                  var _self = this;
                  if (_self.risksiteoutofcontrolitemcount >= _self.nowrisksiteoutofcontrolitem && _self.nowrisksiteoutofcontrolitem > 1) {
                      if (_self.risksiteoutofcontrolitemcount = _self.nowrisksiteoutofcontrolitem) {
                          _self.nowrisksiteoutofcontrolitem = _self.nowrisksiteoutofcontrolitem - 2;
                          _self.tempitem = _self.risksiteoutofcontrolitems[_self.nowrisksiteoutofcontrolitem];
                          _self.otherfiles = _self.tempitem.accthes;
                          _self.filelength = _self.otherfiles.length;
                          _self.riskcontrolList = _self.tempitem.hazard.mriskControlMeasure;
                          _self.temprisksiteid = tempitem.hazard.hazardID;
                          $("#riskhazard").val(_self.tempitem.hazard.name);
                          $("#level").val(_self.tempitem.hazard.riskLevel);
                          $("#accident").val(_self.tempitem.hazard.consequence);
                          $("#hazardstatus").val(_self.tempitem.hazard.status);
                          $("#exitquestion").val(_self.tempitem.checkQuestion)
                          _self.nowrisksiteoutofcontrolitem = _self.nowrisksiteoutofcontrolitem + 1;

                      } else {
                          _self.tempitem = _self.risksiteoutofcontrolitems[_self.nowrisksiteoutofcontrolitem];
                          _self.otherfiles = _self.tempitem.accthes;
                          _self.riskcontrolList = _self.tempitem.hazard.mriskControlMeasure;
                          _self.filelength = _self.otherfiles.length;
                          _self.temprisksiteid = tempitem.hazard.hazardID;
                          $("#riskhazard").val(_self.tempitem.hazard.name);
                          $("#level").val(_self.tempitem.hazard.riskLevel);
                          $("#accident").val(_self.tempitem.hazard.consequence);
                          $("#hazardstatus").val(_self.tempitem.hazard.status);
                          $("#exitquestion").val(_self.tempitem.checkQuestion)
                          _self.nowrisksiteoutofcontrolitem = _self.nowrisksiteoutofcontrolitem + 1;

                      }
                  }
              },*/
            /*   //下一条记录
               nextoutof: function () {
                   var _self = this;
                   if (_self.risksiteoutofcontrolitemcount > _self.nowrisksiteoutofcontrolitem) {
                       _self.tempitem = _self.risksiteoutofcontrolitems[_self.nowrisksiteoutofcontrolitem];
                       _self.otherfiles = _self.tempitem.accthes;
                       _self.riskcontrolList = _self.tempitem.hazard.mriskControlMeasure
                       _self.filelength = _self.otherfiles.length;
                       _self.temprisksiteid = tempitem.hazard.hazardID;
                       $("#riskhazard").val(_self.tempitem.hazard.name);
                       $("#level").val(_self.tempitem.hazard.riskLevel);
                       $("#accident").val(_self.tempitem.hazard.consequence);
                       if (_self.tempitem.hazard.status == false) {
                           $("#hazardstatus").val("0");
                       } else {
                           $("#hazardstatus").val("1");
                       }

                       $("#exitquestion").val(_self.tempitem.checkQuestion)
                       _self.nowrisksiteoutofcontrolitem = _self.nowrisksiteoutofcontrolitem + 1;
                   }
               },*/
            //清空风险信息
            clearRiskControl: function () {
                $("#accident").val("");
                $("#riskhazard").val("");
                $("#exitquestion").val("");
                $("#level").val("");

            },
            //点击修改一个失控措施子条目
            updaterisksiteoutofcontrolitem: function (risksiteoutofcontrolitem, riskIndex) {
                var _self = this;
                _self.nowrisksiteoutofcontrolitem = riskIndex + 1;
                _self.risksiteoutofcontrolite = risksiteoutofcontrolitem;
                _self.otherfiles = risksiteoutofcontrolitem.accthes;
                _self.filelength = _self.otherfiles.length;
                _self.riskcontrolList = risksiteoutofcontrolitem.hazard.mriskControlMeasure;
                _self.temprisksiteid = risksiteoutofcontrolitem.hazard.hazardID;
                if (risksiteoutofcontrolitem.outOfControlStatus) {
                    _self.status2 = "1"
                } else {
                    _self.status2 = "0"
                }
                $("#riskhazard").val(_self.risksiteoutofcontrolite.hazard.name);
                $("#level").val(_self.risksiteoutofcontrolite.hazard.riskLevel);
                $("#accident").val(_self.risksiteoutofcontrolite.hazard.consequence);
                $("#exitquestion").val(risksiteoutofcontrolitem.checkQuestion)


            },
            //暂时删除一个失控措施子条目
            detelerisksiteoutofcontrolitem: function () {
                var _self = this;

            },
            //获取一个空的失控措施子条目
            getNewRiskCheckResultItem: function () {
                var _self = this;
                $.get(projectName + "/RiskCheckResult/newRisksiteoutofcontrolitem", function (data) {
                    _self.temprisksiteoutofcontrolite = data;
                    _self.otherfiles = data.accthes;
                });
            },
            //获取上级失控措施
            getRiskCheckResult: function () {
                var _self = this;
                var checkRecordID = <%=request.getSession().getAttribute("checkRecordID")%>;
                $.post(projectName + "/RiskCheckResult/getRisksiteoutofcontrol/" + checkRecordID, function (data) {
                    _self.riskcheckresult = data;
                    _self.temprisksite = data.mriskSite;
                    $("#checktime").val(_self.riskcheckresult.checkTime);
                    $("#checkdepart").val(_self.riskcheckresult.createUnitName);
                    $("#checkperson").val(_self.riskcheckresult.createName);
                    $("#managerperson").val(_self.temprisksite.managerName);
                    $("#managerdepart").val(_self.temprisksite.managerUnitName);
                    if (_self.riskcheckresult.status != 1) {
                        $("#hazardstatus").val("0");
                    } else {
                        $("#hazardstatus").val("1");
                    }

                    _self.risksiteoutofcontrolitems = _self.riskcheckresult.mcontrolitem;
                    _self.risksiteoutofcontrolitemcount = _self.risksiteoutofcontrolitems.length;
                    _self.risksiteoutofcontrolite = _self.riskcheckresult.mcontrolitem;


                });
            },
            //更新失控措施子条目
            updateOutOfControlitem: function () {
                var _self = this;

                if ($("#riskhazard").val() == null || $("#riskhazard").val() == "") {
                    _self.showToast("warning", "请先选择要修改的现场检查结果信息！");
                    return;
                }

                if (_self.status2 == "1") {
                    if ($("#exitquestion").val() == null || $("#exitquestion").val() == '') {
                        _self.showToast("warning", "检查结果不能为空！");
                        return;
                    } else {
                        if ($.trim($("#exitquestion").val()) == null || $.trim($("#exitquestion").val()) == "") {
                            _self.showToast("warning", "检查结果不能为空！");
                            return;
                        }
                    }
                }

                if (_self.nowrisksiteoutofcontrolitem > 0) {
                    _self.riskcheckresult.mcontrolitem[_self.nowrisksiteoutofcontrolitem - 1].checkQuestion = $("#exitquestion").val();
                    _self.riskcheckresult.mcontrolitem[_self.nowrisksiteoutofcontrolitem - 1].accthes = _self.otherfiles;
                    if (_self.riskcheckresult.mcontrolitem[_self.nowrisksiteoutofcontrolitem - 1].accthes.length > 0) {
                        for (var i = 0; i < _self.riskcheckresult.mcontrolitem[_self.nowrisksiteoutofcontrolitem - 1].accthes.length; i++) {
                            if (_self.riskcheckresult.mcontrolitem[_self.nowrisksiteoutofcontrolitem - 1].accthes[i].attchID == null) {
                                _self.riskcheckresult.mcontrolitem[_self.nowrisksiteoutofcontrolitem - 1].accthes[i].checkRecordID = _self.riskcheckresult.checkRecordID;
                                _self.riskcheckresult.mcontrolitem[_self.nowrisksiteoutofcontrolitem - 1].accthes[i].itemID = _self.riskcheckresult.mcontrolitem[_self.nowrisksiteoutofcontrolitem - 1].itemID;
                            }
                        }
                    }
                    _self.riskcheckresult.mcontrolitem[_self.nowrisksiteoutofcontrolitem - 1].hazardID = _self.temprisksiteid;
                    if (_self.status2 == "1") {
                        _self.riskcheckresult.mcontrolitem[_self.nowrisksiteoutofcontrolitem - 1].outOfControlStatus = true;
                    } else {
                        _self.riskcheckresult.mcontrolitem[_self.nowrisksiteoutofcontrolitem - 1].outOfControlStatus = false;
                    }
                    $.ajax({
                        url: projectName + "/RiskCheckResult/updateOutOfControlitem", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: JSON.stringify(_self.riskcheckresult.mcontrolitem[_self.nowrisksiteoutofcontrolitem - 1]),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        contentType: "application/json",
                        dataType: "json",//预期服务器返回的数据类型。
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
                        },
                    });
                    _self.otherfiles = "";
                    _self.otherfile = "";
                    _self.riskcontrolList = "";
                    _self.clearRiskControl();
                }

            },
            //
            saveRisksiteoutof: function () {
                var _self = this;
                if ($("#riskhazard").val() != null && $("#riskhazard").val() != "") {
                    _self.updateOutOfControlitem();
                }

                if ($("#checktime").val() == null) {
                    _self.showToast("warning", "检查时间不能为空");
                    return;

                }
                if ($("#checkdepart").val() == null) {
                    _self.showToast("warning", "检查部门不能为空");
                    return;

                }
                if ($("#checkperson").val() == null) {
                    _self.showToast("warning", "检查人不能为空");
                    return;

                }
                /*    if ($("#managerperson").val() == null) {
                      _self.showToast("warning", "责任人不能为空");
                      return;

                  }
                  if ($("#managerdepart").val() == null) {
                      _self.showToast("warning", "责任部门不能为空");
                      return;

                  }*/
                if (_self.riskmcontrolitem.length != 0) {

                    $.ajax({
                        url: projectName + "/RiskCheckResult/deleteupdateRisksiteoutofcontrolitem", //发送请求的地址。
                        type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: JSON.stringify(_self.riskmcontrolitem),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        contentType: "application/json",
                        dataType: "json",//预期服务器返回的数据类型。
                        async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            //请求成功后的回调函数
                        },
                    });
                }
                ;
                var newArry = _self.riskcheckresult.mcontrolitem.every(function (data) {
                    return !data.outOfControlStatus;
                })
                if (newArry) {
                    _self.riskcheckresult.status = false;
                } else {
                    _self.riskcheckresult.status = true;
                }
                _self.riskcheckresult.checkTime = $("#checktime").val();
                _self.riskcheckresult.createUnitName = $("#checkdepart").val();
                _self.riskcheckresult.createName = $("#checkperson").val();
                _self.riskcheckresult.mriskSite.managerName = $("#managerperson").val();
                _self.riskcheckresult.mriskSite.managerUnitName = $("#managerdepart").val();
                /*_self.riskcheckresult.status = parseInt();*/

                $.ajax({
                    url: projectName + "/RiskCheckResult/updateRisksiteoutofcontrol", //发送请求的地址。
                    type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                    data: JSON.stringify(_self.riskcheckresult),//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                    dataType: "json",//预期服务器返回的数据类型。
                    contentType: "application/json",
                    async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    success: function (data) {
                        //请求成功后的回调函数
                        if (data) {
                            /* $("#checktime").val("");
                             $("#checkdepart").val("");
                             $("#checkperson").val("");
                             $("#managerperson").val("");
                             $("#managerdepart").val("");*/
                            _self.showToast("success", "保存成功");
                            window.location.href = "<%=request.getContextPath()%>/menu/RiskCheckResult.do";

                        } else {
                            _self.showToast("error", "保存失败");
                        }

                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                    }
                });
            },


            //删除失控措施子条目
            deteleOutOfControlitem: function (risksiteoutofcontrolitem, riskIndex) {
                var _self = this;
                if (_self.riskcheckresult.mcontrolitem.length < 2) {
                    _self.showToast("warning", "现场检查结果不能少于一条!");
                    return;
                } else {
                    _self.riskmcontrolitem.push(risksiteoutofcontrolitem);
                    _self.riskcheckresult.mcontrolitem.splice(riskIndex, 1);
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


        computed: {},
        filters: {
            upCaseFilter: function (val) {
                return val.toUpperCase();
            },
            titleFilter: function (val, defaultName) {
                var _self = this;
                //console.log(val);
                //console.log(defaultName);
                var result = defaultName;
                if (attrArray == null) {
                    $.ajax({
                        url: projectName + "/SystemAttributeDevelop/classAttributes", //发送请求的地址。
                        type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                        data: {name: 'Riskhazard'},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                        dataType: "json",//预期服务器返回的数据类型。
                        async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                        success: function (data) {
                            attrArray = data;
                            for (var i = 0; i < attrArray.length; i++) {
                                if (val.toLowerCase() == attrArray[i].classpropertyName.toLowerCase()) {
                                    result = attrArray[i].classpropertyTitle;
                                    break;
                                } else {
                                    continue;
                                }
                            }
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {

                        }
                    });

                } else {
                    for (var i = 0; i < attrArray.length; i++) {
                        if (val.toLowerCase() == attrArray[i].classpropertyName.toLowerCase()) {
                            result = attrArray[i].classpropertyTitle;
                            break;
                        } else {
                            continue;
                        }
                    }
                }
                return result;
            }
        }
    })

</script>


<script>$(function () {
    CompTree.init();
});</script>
<script>$(function () {
    UiTables.init();

});</script>
<script>$(document).ready(function () {
    $("#treetable .qiehxg").click(function () {

        var b = $(this).parent().siblings("ul").css("display");
        $(this).parent().siblings("ul").toggle(300);

        if (b == 'none') {
            $(this).siblings("i").addClass("fa fa-caret-down").removeClass("a fa-caret-right");
        } else {
            $(this).siblings("i").addClass("a fa-caret-right").removeClass("a fa-caret-down");
        }
        //
    });
});</script>
<script>

    lay('.datepicker').each(function () {
        laydate.render({
            elem: this
            , trigger: 'click'
            , showBottom: false

        });
    });


</script>
</body>

</html>