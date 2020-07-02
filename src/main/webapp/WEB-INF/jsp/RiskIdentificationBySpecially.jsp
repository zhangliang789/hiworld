<%@ page import="org.platform4j.model.Framework" %>
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
      <title>专项辨识</title>
      <meta name="description" content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
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
      <link rel="stylesheet" href="../css/layui.css" />
      <script src="../js/vendor/modernizr-3.3.1.min.js"></script>
      <link href="../css/bootstrap-treeview.css" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="../iview/iview.css">
      <style>.table { margin-bottom: 0; }

      .xiugai{
        color:#5ccdde;
      }
      .shanchu{
        color:#5ccdde;
      }
      th{white-space:nowrap; }


      </style></head>
    <script src="../js/vendor/modernizr-3.3.1.min.js"></script>
    <link href="../css/bootstrap-treeview.css" rel="stylesheet">
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">



    <body>
    <% Framework framework = (Framework)request.getSession().getAttribute("framework");
    String frameworkid = framework.getFramewordID();
    %>

      <div id="page-content" style="min-height: 794px;">
        <!-- Table Styles Header -->
        <div class="content-header">
          <div class="row">
            <div class="col-sm-12">
              <div class="header-section">
                <h1 style="float: left;">专项辨识</h1>
                <div class="form-group" style="float: right; position: relative;right: 19px">
                  <a type="submit"  class="btn btn-effect-ripple btn-primary" @click="addspecially">新建</a>
                  <button type="submit" @click="getExcell" class="btn btn-effect-ripple btn-primary">导出</button>

                </div>

              </div>
            </div>
          </div>
        </div>
        <!-- END Table Styles Header -->
        <!-- Table Styles Block -->
        <div class="block full" style="padding-top: 0;">
          <div class="table-responsive">
            <div class="table-responsive">
              <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                  <thead>
                    <tr>
                      <th class="text-center">序号</th>
                      <th class="text-center">年度</th>
                      <th class="text-center">日期</th>
                      <th v-if="showSpecialName == true" class="text-center">专项辨识名称</th>
                      <th class="text-center" style="width: 60px">辨识风险点数量</th>
                      <th class="text-center">专项辨识类型</th>
                      <th class="text-center">状态</th>
                      <th class="text-center">主持人</th>
                      <th class="text-center">记录人</th>
                      <th class="text-center">参会人员</th>
                      <th class="text-center">附件</th>
                      <th class="text-center" style="width: 100px">操作</th></tr>
                  </thead>
                  <tbody>
                    <tr v-for="(risk,riskIndex) in listspcially">
                      <td class="text-center" v-text="pagesize*(nowpage-1)+riskIndex+1"></td>
                      <td  v-text="risk.identificationYear"></td>
                      <td  v-text="risk.identificationMonth"></td>
                      <td  v-if="showSpecialName == true" v-text="risk.specialName"></td>
                      <td  v-text="risk.mRiskSite.mchildRiskSite.length"></td>
                      <td  v-text="risk.identityType"></td>
                      <td  v-text="risk.mRiskSite.status==1 ?'已评估':'未评估'"></td>
                      <td  v-text="risk.meetingCompere"></td>
                      <td  v-text="risk.meetingRecorder"></td>
                      <td  v-text="risk.meetingParticipant"></td>
                      <td class="text-center"><a  @click="Fileup(risk.meetringAttachmentUUID)">{{risk.meetringAttachmentFileName}}</a></td>
                      <td class="text-center">
                          <a  data-toggle="tooltip"  @click="updateid(risk)" >修改
                          </a>

                        <a data-toggle="modal" data-target="#Modal-delete" v-bind:value="risk.riskidentificationSpeciallyID"  @click="deleteTask=risk" >删除
                        </a>
                      </td>
                  </tbody>
                </table>
                <div class="row">
                  <div class="col-sm-7 col-xs-12 clearfix">
                    <div class="dataTables_paginate paging_bootstrap" id="example-datatable_paginate">
                      <ul class="pagination pagination-sm remove-margin "
                          id="pagination">
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="modal inmodal" id="Modal-delete" tabindex="-1" role="dialog" aria-hidden="true">
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
                <button type="button" class="btn btn-effect-ripple btn-primary" data-dismiss="modal"
                        @click="Deletespecially">确认
                </button>
              </div>
            </div>
          </div>
        </div>

        <!--附件下载-->
        <form id="downloadForm" hidden="hidden">
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
        </form>
        <form id="downFile" action="<%=request.getContextPath()%>/RiskByYearControl/downFile" method="post">
          <input id="downloadUrl" name="downloadUrl" type="hidden"/>
          <input id="realFileName" name="realFileName" type="hidden"/>
        </form>

        <form id="getExcell" action="<%=request.getContextPath()%>/RiskIdentificationBySpecially/getExcell" method="post">
          <input id="ExcellID" name="ExcellID" type="hidden"/>
          <input id="ExcellName" name="ExcellName" type="hidden"/>
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
      <script src="../js/vue.js"></script>
      <script src="../js/plugins/layer/layer.min.js"></script>
      <script src="../js/plugins/toastr/toastr.min.js"></script>
      <script src="../js/plugins/laydate/laydate.js"></script>
      <script src="../js/bootstrap-paginator.min.js"></script>
      <script src="../js/resource.js"></script>

      <script type="text/javascript">
          var projectName = '<%=request.getContextPath() %>';
          /**
         * Created by Administrator on 2017/9/21
         */
        var vueApp=new Vue({

           el:"#page-content",
           data:{
               pagesize:10,
               nowpage:1,
               newbyspecially:"",   //专项辨识的空对象
               listspcially:"",     //v-for展示对象
               deletebySpecially:"",//删除定义的空对象
               deleteTask:"",
               checkIDs:[],
               checkedone:false,
               showSpecialName:false,

             },
           created:function(){
                var _self=this;
                _self.newRiskidenspecially();
                _self.getshowrelaceaccident();
           },
           mounted: function () {
           },
           updated: function () {
           },
           methods:{
               //显式隐患关联事故(只对东风煤矿可见)
               getshowrelaceaccident:function(){
                   var _self = this;
                   var framework = "<%=request.getSession().getAttribute("framework")%>";
                   var frameworklist = framework.split(",");
                   var frameworkByid = frameworklist[2].split('=');
                   var frameworkid = frameworkByid[1];
                   var dfid = "14.05.81.01.008";
//                   var dfid = "abc";
                   if(frameworkid == dfid){
                       _self.showSpecialName = true;
                   }
               },

               getExcell:function(){
                   var _self=this;
                   $("#ExcellName").val("专项辨识信息表.xls");
                   $("#getExcell").submit();
               },
               //附件下载
               Fileup: function (data) {
                   var _self = this;
                   $("#checkid").val(data);
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



                //创建专项辨识空对象
               newRiskidenspecially:function(){
                   var _self = this;
                   $.get(projectName+"/RiskIdentificationBySpecially/newRiskidentificationbyspecially",function(data){
                       _self.newbyspecially = data;
                       _self.getPageCount();
                   });
               },

               //分页展示（查询总条数）
               getPageCount: function () {
                   var _self = this;
                   _self.newbyspecially.pagesize = _self.pagesize;
                   $.ajax({
                       type: "POST",
                       url: projectName + "/RiskIdentificationBySpecially/PageCount",
                       dataType: "json",
                       contentType: "application/json",
                       data: JSON.stringify(_self.newbyspecially),
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
                               _self.listspcially = "";
                           }
                       }
                   });
               },
               //分页展示数据
               getDataByPage: function (page) {
                   var _self = this;
                   _self.newbyspecially.page = page;
                   $.ajax({
                       type: "POST",
                       url: projectName + "/RiskIdentificationBySpecially/Page",
                       dataType: "json",
                       contentType: "application/json",
                       data: JSON.stringify(_self.newbyspecially),
                       success: function (data) {
                           _self.listspcially = data;
                           //layer.closeAll('loading');
                       }
                   });
               },


               //新增跳转页面传递主键值
               addspecially:function(){
                   var _self = this;
                   $.post(projectName+"/RiskIdentificationBySpecially/byadd/",function(data){
                       if("<%=frameworkid%>"=="65.01.01.01.133"){
                           window.location.href="<%=request.getContextPath()%>/menu/RiskIdentificationBySpeciallyEntryByEkuang.action"

                       }else{
                           window.location.href="<%=request.getContextPath()%>/menu/RiskIdentificationBySpeciallyEntry.action"

                       }
                   });
               },


               //修改跳转页面传递主键值 65.01.01.01.133
               updateid:function(risk){
                   var _self = this;
                   var Speciallyid = risk.riskidentificationSpeciallyID;
                   $.post(projectName+"/RiskIdentificationBySpecially/byid/"+Speciallyid,function(data){
                       if("<%=frameworkid%>"=="65.01.01.01.133"){
                           window.location.href="<%=request.getContextPath()%>/menu/RiskIdentificationBySpeciallyEntryByEkuang.action"

                       }else{
                           window.location.href="<%=request.getContextPath()%>/menu/RiskIdentificationBySpeciallyEntry.action"

                       }
                   });
               },

               speciallydel:function(){
                   var _self =this;
                   $.ajax({
                       type:"DELETE",
                       url:projectName+"/RiskIdentificationBySpecially/delete",
                       dataType: "json",
                       contentType: "application/json",
                       data: JSON.stringify(_self.deleteTask),
                       success: function(data){
                           if(data){
                               _self.showToast("success","删除成功");
                           }else{

                           }
                      },
                  });
               },



               //全选按钮的事件
               checkedAll: function () {
                   var _self = this;
                   if (_self.checkedone) {//实现反选
                       _self.checkIDs = [];

                   } else {//实现全选
                       _self.checkIDs = [];
                       _self.listspcially.forEach(function (item) {
                           _self.checkIDs.push(item.riskidentificationSpeciallyID);

                       });
                   }
               },
                //全选或多选删除
               Deletespecially1: function () {
                   var _self = this;
                   for(var i=0;i<_self.checkIDs.length;i++) {
                       $.ajax({
                           type: "DELETE",
                           url: projectName + "/RiskIdentificationBySpecially/delete/" + _self.checkIDs[i],
                           dataType: "json",
                           success: function (data) {
                               if (data) {
                               }
                           },
                       });
                   }
                   _self.showToast("success", "删除成功！");
                   _self.getPageCount();
               },

               //删除事件
               Deletespecially: function () {
                   var _self = this;
                   var speciallyid = _self.deleteTask.riskidentificationSpeciallyID;
                   $.ajax({
                       type: "DELETE",
                       url: projectName + "/RiskIdentificationBySpecially/delete/"+speciallyid,
                       dataType: "json",
                       /*data:{
                           "speciallyid":speciallyid,
                       },*/
                       success: function (data) {
                           if (data) {
                               _self.showToast("success", "删除成功！");
                               _self.getPageCount();
                           } else {

                           }
                       },
                       error: function(XMLHttpRequest, textStatus, errorThrown) {
                           console.log(XMLHttpRequest.status);
                           console.log(XMLHttpRequest.readyState);
                           console.log(textStatus);
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
               },
               computed:{
               }
           },

              watch:{
                  //监视数据数组，以便控制全选的选中与不选中
                  'checkIDs': {
                      handler: function (val, oldVal) {

                          if (this.checkIDs.length === this.listspcially.length) {
                              this.checkedone=true;
                          }else{
                              this.checkedone=false;
                          }
                      },
                      deep: true
                  }
              }

        })

      </script>

      <script>
      	$(function() {
          CompTree.init();
        });
      	$(function() {
          UiTables.init();

        });
      	$(document).ready(function() {
          $("#treetable .qiehxg").click(function() {

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
    </body>
    
    </html>