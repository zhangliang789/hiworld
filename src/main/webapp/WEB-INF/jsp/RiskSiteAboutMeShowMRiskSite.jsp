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
		<title>培训教育-与我相关的风险</title>
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
		<link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="../iview/iview.css">
		<style>
			.control-label {
				float: left;
			}
			
			.col-sm-hh {
				float: left;
				width: 19%;
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
				width: 88%;
				margin-left: 5px;
			}
			.input-group-addon, .input-group-btn {
    width: 1% !important;
    white-space: nowrap;
    vertical-align: middle;
}
	.table {
				margin-bottom: 0;
			}
			
.table-striped>tbody>tr:nth-of-type(odd) {
    background-color: #fff !important;
}
			table >thead > tr:nth-of-type(2) {
				background: #f9f9f9;
			}
/*.btys{
	display: inline-block;
	padding: 8px 20px;
	background-color: #ff0000;
	    vertical-align: sub;
}*/
			.btys {
				display: inline-block;
				padding: 10px 40px;
				vertical-align: sub;
			}
				.fa-caret-right {
				transform: rotate(45deg);
				-ms-transform: rotate(45deg);
				-moz-transform: rotate(45deg);
				-webkit-transform: rotate(45deg);
				-o-transform: rotate(45deg);
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
				overflow-y:scroll ;

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

		</style>
	</head>

	<body>
		<div id="page-content" style="min-height: 794px;">
			<!-- Table Styles Header -->
			<div class="content-header">
				<div class="row">
					<div class="col-sm-12">
						<div class="header-section">
							<h1 style="float: left;">与我相关的风险</h1>
							<div class="form-group" style="float: right; position: relative;right: 19px">
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END Table Styles Header -->
			<!-- Table Styles Block -->

			<div class="block full" style="padding-top: 0;">

					<div class="">
						<div>
							<ol class="breadcrumb">
								<li><a href="<%=request.getContextPath()%>/menu/RiskSiteAboutMe.do"><%=request.getSession().getAttribute("position")%></a></li>
								<li> <a href="<%=request.getContextPath()%>/menu/RiskSiteAboutMe.do" class="btn btn-effect-ripple btn-primary">返回</a></li>
							</ol>

						</div>
						<div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
							<table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
								<thead>
									<tr>
										<%--<th style="width: 80px;" class="text-center"><label class="csscheckbox csscheckbox-primary"><input type="checkbox"><span></span></label></th>--%>
											<th style="position: relative" class="text-center tcrk" >
                                                <span class="dj">序号
											<i id="itcys" class="fa fa-chevron-down fa-fw"></i></span>
												<ul class="tcys" id="tcys" >
													<div class="" style="padding: 10px; ">
														<li v-for="arrt in attributes" style="width: 150px">
															<label class="csscheckbox csscheckbox-primary">
																<input type="checkbox" v-model="propertys"
																	   v-bind:value="arrt.classpropertyName|upCaseFilter">
																<span></span>
															</label>
															<span class="el-checkbox__label" v-text="arrt.classpropertyTitle"></span>
														</li>
													</div>
													<div class="el-table-filter__bottom">
														<button class="confirmChose">取消</button>
														<button @click="confirmShowOrNot" class="confirmChose">确定</button>
													</div>

												</ul>
											</th>
											<th class="text-center" rowspan="2">
												<%--v-show="showOrNot('Name')"--%>
												<%--{{'Name'|titleFilter('风险点')}}--%>
												危险源
											</th>
											<th class="text-center" rowspan="2" >
												<%--v-show="showOrNot('RiskDescription')"--%>
												<%--{{'RiskDescription'|titleFilter('风险点描述')}}--%>
												危险源描述
											</th>
										<th class="text-center" rowspan="2" v-show="showOrNot('RiskDamageType')">
												{{'RiskDamageType'|titleFilter('灾害类型')}}
										</th>
										<th class="text-center" rowspan="2">事故类型</th>

										<%--<th class="text-center"  v-show="showOrNot('RiskSiteType')">{{'RiskSiteType'|titleFilter('风险点类型')}}</th>--%>
										<%--<th class="text-center"  v-show="showOrNot('RiskMajorType')">{{'RiskMajorType'|titleFilter('专业类型')}}专业类型</th>--%>


										<th class="text-center"  v-show="showOrNot('riskLevel')">{{'riskLevel'|titleFilter('等级')}}</th>
										<th class="text-center"  v-show="showOrNot('RiskColor')">{{'RiskColor'|titleFilter('预警程度')}}</th>
										<th class="text-center"  >措施数量</th>

										<th class="text-center"  v-show="showOrNot('RiskControlTier')">
												{{'RiskControlTier'|titleFilter('管控层次')}}
										</th>
										<th class="text-center"  v-show="showOrNot('managerUnitName')">
												{{'managerUnitName'|titleFilter('责任部门')}}
										</th>
										<th class="text-center"  v-show="showOrNot('managerName')">
												{{'managerName'|titleFilter('责任人')}}
										</th>
										<th class="text-center"  v-show="showOrNot('riskSupervisor')">
												{{'riskSupervisor'|titleFilter('监管部门')}}
										</th>

										<%--<th class="text-center"   v-show="showOrNot('managerName')">{{'managerName'|titleFilter('责任人')}}</th>--%>
										<%--<th class="text-center"  v-show="showOrNot('RiskSupervisor')">监管人</th>--%>
										<%--<th class="text-center"  v-show="showOrNot('RiskControlCycle')">监控周期</th>--%>
										<%--<th class="text-center"  v-show="showOrNot('RiskFrequency')">监控频次</th>--%>

									</tr>
								</thead>
								<tbody v-for="(risk,riskIndex) in detailedList ">
									<tr>
										<%--<td class="text-center"><label class="csscheckbox csscheckbox-primary"><input type="checkbox"><span></span></label></td>--%>
										<td class="text-center" v-text="pagesize*(nowpage-1)+riskIndex+1"></td>
										<td v-show="showOrNot('Name')"><a
												v-text="risk.name+'('+risk.mhazards.length+')'"
												@click="showChild(risk)"></a></td>
										<td  v-text="risk.riskDescription"></td>
										<td v-text="risk.riskDamageType" v-show="showOrNot('riskDamageType')"></td>
										<td v-text="risk.riskAccident"></td>

										<%--<td  v-text="risk.riskSiteType" v-show="showOrNot('riskSiteType')"></td>--%>
										<%--<td  v-text="risk.riskMajorType" v-show="showOrNot('riskMajorType')"></td>--%>
										<td  v-text="risk.riskLevel" v-show="showOrNot('riskLevel')"></td>
										<td class="text-center" v-show="showOrNot('RiskColor')"><span v-show="showOrNot('RiskColor')"
																		   v-bind:style="'background-color:'+risk.riskColor"
																		   class="btys"></span></td>
										<td  :id="'measure'+''+riskIndex" ><%--{{risk.mriskControlMeasure.length}}--%></td>

										<td v-text="risk.riskControlTier" v-show="showOrNot('riskControlTier')"></td>
										<td v-text="risk.managerUnitName" v-show="showOrNot('managerUnitName')"></td>
										<td v-text="risk.managerName" v-show="showOrNot('managerName')"></td>
										<td v-text="risk.riskSupervisor" v-show="showOrNot('riskSupervisor')"></td>


										<%--<td  v-text="risk.managerName" v-show="showOrNot('managerName')"></td>--%>
										<%--<td  v-text="risk.riskSupervisor" v-show="showOrNot('riskSupervisor')"></td>--%>
										<%--<td  v-text="risk.riskControlCycle" v-show="showOrNot('riskControlCycle')"></td>--%>
										<%--<td  v-text="risk.riskFrequency" v-show="showOrNot('riskFrequency')"></td>--%>
									</tr>

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
		<!--筛选-->
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
            var pageVarme = "ywxglist";//页面唯一变量标识，每个页面不能重复
            var attrArray = null;
			/**
			 * Created by Administrator on 2017/9/25
			 */
			var vueApp=new Vue({
			   el:"#page-content",
			   data:{
			       pagesize:3,
			       nowpage:1,
				   RiskaboutMe:"",
                   detailedList: null,
                   attributes: "",
                   propertys: new Array(),
                   guankongList:"",
                   damageList:"",
                   categoryList:"",
               },
			   created:function(){
			        var _self=this;
					_self.getNewRiskSite();
                   _self.getRiskAttributes();
                   _self.getEnterprise_data_dictionaryListForOrg();

               },
			   mounted: function () {
			   },
			   updated: function () {
			   },
			   methods:{

                   //获取辅助资料
                   getEnterprise_data_dictionaryListForOrg: function () {
                       var _self = this;
                       $.ajax({
                           url: projectName + "/PlatForm/getEnterprise_data_dictionaryListForOrg", //发送请求的地址。
                           type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                           data: {
                               "orgID": "00000000",
                               "data_TypeOrName": null,
                           },//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                           dataType: "json",//预期服务器返回的数据类型。
                           async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                           success: function (data) {
                               //请求成功后的回调函数
                               _self.guankongList = data.管控层级;
                               _self.damageList=data.灾害类型;
                               _self.categoryList=data.专业类型;
                           },
                       });
                   },
                   getRiskAttributes: function () {
                       var _self = this;
                       $.get(projectName + "/SystemAttributeDevelop/classAttributes", {name: 'Risksite'}, function (data) {
                           if (data != null && data != "") {
                               _self.attributes = data;
                               _self.propertys = data.map(function (item) {
                                   return item.classpropertyName.toUpperCase();
                               });
                               _self.getShowState();
                           }
                       });
                   },
                   //从localStorage获取某列的状态反显到checkbox
                   getShowState: function () {
                       var _self = this;
                       for (var i = 0; i < _self.attributes.length; i++) {
                           if (localStorage.getItem((pageVarme + _self.attributes[i].classpropertyName).toUpperCase()) == null || localStorage.getItem((pageVarme + _self.attributes[i].classpropertyName).toUpperCase()) == "true") {
                           } else {
                               _self.propertys.splice(i, 1);
                           }
                       }

                   },
                   //从localStorage取值决定是否显示某一列
                   showOrNot: function (column) {
                       var _self = this;
                       if (localStorage.getItem((pageVarme + column).toUpperCase()) == null || localStorage.getItem((pageVarme + column).toUpperCase()) == "true") {
                           return true;
                       } else {
                           return false;
                       }
                   },
                   //设置是否显示某一列,将结果写入localStorage
                   confirmShowOrNot: function () {
                       var _self = this;
                       for (var i = 0; i < _self.attributes.length; i++) {
                           localStorage.setItem((pageVarme + _self.attributes[i].classpropertyName).toUpperCase(), false);
                       }
                       for (var i = 0; i < _self.propertys.length; i++) {
                           localStorage.setItem((pageVarme + _self.propertys[i]).toUpperCase(), true);
                       }

                       _self.getDataByPage(_self.nowpage);
                   },

                   showChild: function (risk) {
                       var _self = this;
                       var riskSiteID = risk.riskSiteID;
                       var firstName = risk.name;
                       var position = firstName;
                       $.post(projectName + "/RiskControlMeasureControl/gotothree/" + riskSiteID + "/" + position, function (data) {
                           if (data) {
                               window.location.href = "<%=request.getContextPath()%>/menu/RiskSiteAboutMe1.action";
                           }
                       });
                   }
                   ,
				   getNewRiskSite: function () {
                       var _self = this;
                       //加载层
                       // layer.load();
                       $.get(projectName + "/RiskSiteAboutMe/newRiskSite", function (data) {
                           _self.RiskaboutMe = data;
                           _self.RiskaboutMe.riskSiteID=<%=request.getSession().getAttribute("riskSiteID")%>
                           _self.getPageCount();
                       });
                   },

                   //分页展示查询出总条数
                   getPageCount: function () {
                       var _self = this;
                       _self.RiskaboutMe.pagesize = _self.pagesize;
                       $.ajax({
                           type: "POST",
                           url: projectName + "/RiskSiteAboutMe/PageCount",
                           dataType: "json",
                           contentType: "application/json",
                           data: JSON.stringify(_self.RiskaboutMe),
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
                                   _self.showToast("info", "没有查询到我管控的风险数据");
                                   _self.detailedList = "";
                               }
                           }
                       });
                   },
                   //分页展示查询出内容
                   getDataByPage: function (page) {
                       var _self = this;
                       _self.RiskaboutMe.page = page;
                       $.ajax({
                           type: "POST",
                           url: projectName + "/RiskSiteAboutMe/Page",
                           dataType: "json",
                           contentType: "application/json",
                           data: JSON.stringify(_self.RiskaboutMe),
                           success: function (data) {
                               console.log(data);
                               _self.detailedList = data[0].mchildRiskSite;
                               //layer.closeAll('loading');
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
			   computed:{
			   },
				watch:{
                    'detailedList':function(){
                        this.$nextTick(function(){
                            var _self =this;
                            var riskSiteFullNumber="";
                            for(var i=0;i<_self.detailedList.length;i++){
                                riskSiteFullNumber = _self.detailedList[i].fullNumber;
                                $.ajax({
                                    url:projectName +"/RiskControlMeasureControl/getMRiskSiteMeasure/"+riskSiteFullNumber+"/", //发送请求的地址。
                                    type:"POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                    data:{},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                    contentType: "application/json",
                                    dataType:"json",//预期服务器返回的数据类型。
                                    async:false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                    success: function(data){
                                        if(data!=null && data!=""){
                                            $("#measure"+i).text(data.length);
                                        }else{
                                            $("#measure"+i).text(0);
                                        }
                                    },
                                });
                            }
                        })
                    }
				},
                filters: {
                    upCaseFilter: function (val) {
                        return val.toUpperCase();
                    },
                    titleFilter: function (val,defaultName) {
                        var _self = this;
                        console.log(val);
                        console.log(defaultName);
                        var result=defaultName;
                        if (attrArray == null) {
                            $.ajax({
                                url: projectName + "/SystemAttributeDevelop/classAttributes", //发送请求的地址。
                                type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                                data: {name: 'Risksite'},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                                dataType: "json",//预期服务器返回的数据类型。
                                async: "false",//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                                success: function (data) {
                                    attrArray = data;
                                    for (var i = 0; i < attrArray.length; i++) {
                                        if (val.toLowerCase() == attrArray[i].classpropertyName.toLowerCase()) {
                                            result= attrArray[i].classpropertyTitle;
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
                                    result= attrArray[i].classpropertyTitle;
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


		<script>
			$(function() {
				CompTree.init();
			});
		</script>
		<script>
			$(function() {
				UiTables.init();

			});
		</script>
		<script>
			$(document).ready(function() {
				$("#treetable .qiehxg").click(function() {

					var b = $(this).parent().siblings("ul").css("display");
					$(this).parent().siblings("ul").toggle(300);

					if(b == 'none') {
						$(this).siblings("i").addClass("fa fa-caret-down").removeClass("a fa-caret-right");
					} else {
						$(this).siblings("i").addClass("a fa-caret-right").removeClass("a fa-caret-down");
					}
					//     

				});
			});
		</script>
		<script>
            $(function () {
                CompTree.init();
            });
            $(function () {
                UiTables.init();

            });
            $(document).ready(function () {
                $(".tcrk .dj").click(function () {

                    var b = $(this).siblings("ul").css("display");
                    $(this).siblings("ul").toggle(300);

                    if (b == 'none') {
                        $(this).children("i").addClass("fa fa-chevron-up").removeClass("a fa-chevron-down");
                    } else {
                        $(this).children("i").addClass("a fa-chevron-down").removeClass("a fa-chevron-up");
                    }
                });
                $(".confirmChose").click(function () {
                    var b = $("#itcys").css("display");
                    $("#tcys").toggle(300);
                    if (b == 'none') {
                        $(this).children("i").addClass("fa fa-chevron-up").removeClass("a fa-chevron-down");
                    } else {
                        $(this).children("i").addClass("a fa-chevron-down").removeClass("a fa-chevron-up");
                    }
                });
            });
		</script>

	</body>

</html>