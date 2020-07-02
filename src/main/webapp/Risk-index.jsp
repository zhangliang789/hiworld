<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--[if IE 9]>
<html class="no-js lt-ie10" lang="en">
<![endif]-->
<!--[if gt IE 9]>
<!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <title>kingc</title>
    <meta name="description"
          content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
    <meta name="author" content="pixelcave">
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/plugins.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/themes.css">
    <link rel="stylesheet" href="css/style1.css"/>
    <link rel="stylesheet" href="js/vendor/toastr/toastr.min.css">
    <link rel="stylesheet" href="js/vendor/uploader/webuploader.css">
    <link href="css/jquery.treegrid.css" rel="stylesheet"/>
    <link href="js/vendor/validator/bootstrapValidator.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/zTree.v3/3.5.29/css/zTreeStyle/zTreeStyle.min.css" rel="stylesheet">
    <script src="js/vendor/modernizr-3.3.1.min.js"></script>
    <style>
        .navbar-fixed-top {
            position: fixed !important;
            height: 70px !important;
        }

        body {
            overflow-y: hidden;
        }

        .if-page {
            width: 100%;
            border: 0;
            padding: 70px 0 0 0 !important;
        }

        .navbar-nav-custom .niss {
            padding: 0 20px;
        }

        .navbar-nav-custom .niss > a {
            color: #fff;
            margin: 0;
            float: left;
            height: 70px;
            line-height: 70px;
            font-size: 14px;
            display: block;
            width: 100%;
            text-align: center;
        }

        .navbar-nav-custom .niss > a:hover {
            background-color: #0B8DE5 !important;
        }

        .navbar-nav-custom .niss > a:hover span {
            border-bottom: 2px solid #fff;
            display: inline-block;
            height: 50px;
        }

        .navbar-nav-custom .niss > a .active {
            border-bottom: 2px solid #fff;
            display: block;
            height: 50px;
        }

        .gzt:hover i {
            transform: rotate(180deg);
            -webkit-transform: rotate(180deg);
            -moz-transform: rotate(180deg);
            -o-transform: rotate(180deg);
            -mis-transform: rotate(180deg);
        }

        .niss {
            position: relative;
        }

        .tcck {
            display: none;
            position: absolute;
            width: 343px;
            top: 70px;
            z-index: 10;
            background-color: #fff;
            border: 0;
            box-shadow: 0 0 12px 0 rgba(0, 0, 0, 0.20);
            box-sizing: border-box;
            padding: 10px;
            left: -112px;
        }

        .tcck ul {
            margin: 0 !important;
            padding: 0 !important;
        }

        .tcck ul li {
            list-style: none;
            margin: 14px 0;
            width: 80px;
            height: 69px;
            float: left;
        }

        .tcck ul li a {
            text-decoration: none;
        }

        .tcck ul li a:hover span {
            color: #333
        }

        .app-icon-img {
            display: block;
            height: 48px;
            width: 48px;
            margin: 0 auto;
        }

        .app-icon-img img {
            vertical-align: top;
            width: 100%;
            height: 100%;
            margin: 0;
            border-radius: 8px;
        }

        .app-icon-txt {
            margin-top: 5px;
            padding: 0;
            height: 16px;
            line-height: 16px;
            width: 100%;
            text-align: center;
            display: block;
            color: #9a9a9a;
            font-weight: normal;
            font-size: 12px;
        }</style>
</head>

<body>
<div id="page-wrapper" class="page-loading">
    <h3 class="text-primary visible-lt-ie10">
        <strong>Loading..</strong></h3>
</div>
<div id="page-container" class="header-fixed-top sidebar-visible-lg-full sidebar-light">
    <div id="sidebar">
        <div id="sidebar-brand" class="themed-background">
            <a href="index.html" class="sidebar-title">
                <i class="fa fa-cube"></i>
                <span class="sidebar-nav-mini-hide">
                <strong>KINGC</strong>平台</span></a>
        </div>
        <div id="sidebar-scroll" style="border-right: 1px solid #dae0e8">
            <div class="sidebar-content">
                <ul class="sidebar-nav">
                    <li>
                        <a target="mainFrame" class="sidebar-nav-menu">
                            <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                            <i class="hi hi-th-list sidebar-nav-icon"></i>
                            <span class="sidebar-nav-mini-hide">安全风险辨识评估</span></a>
                        <ul>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskSubmit.do"
                                   @click="initurl('/menu/RiskSubmit.do')">xxxxxxx</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/ImportOffLineData.do"
                                   @click="initurl('/menu/ImportOffLineData.do')">导入线下辨识结果</a>
                            </li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/HazardIdentification.do"
                                   @click="initurl('/menu/HazardIdentification.do')">风险辨识</a></li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/HazardIdentificationByLiangJia.do"
                                   @click="initurl('/menu/HazardIdentificationByLiangJia.do')">风险辨识(梁家)</a></li>
                            <li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/HazardIdentificationByXinAn.do"
                                   @click="initurl('/menu/HazardIdentificationByXinAn.do')">重点管控对象</a>
                            </li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/HazardIdentificationByHuangling.do"
                                   @click="initurl('/menu/HazardIdentificationByHuangling.do')">黄陵二矿重点管控对象</a>
                            </li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskDetailedListByXinAn.do"
                                   @click="initurl('/menu/RiskDetailedListByXinAn.do')">风险分级查看</a></li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskAssessment.do"
                                   @click="initurl('/menu/RiskAssessment.do')">风险评估</a></li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskControlMeasure.do"
                                   @click="initurl('/menu/RiskControlMeasure.do')">管控措施制定</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskDetailedList.do"
                                   @click="initurl('/menu/RiskDetailedList.do')">风险管控清单</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskDetailedListByLiangJia.do"
                                   @click="initurl('/menu/RiskDetailedListByLiangJia.do')">风险管控清单(梁家)</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskHazardFactorBankByLiangJia.do"
                                   @click="initurl('/menu/RiskHazardFactorBankByLiangJia.do')">危害因素库(梁家)</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskHazardReviewByLiangJia.do"
                                   @click="initurl('/menu/RiskHazardReviewByLiangJia.do')">风险审核(梁家)</a>
                            </li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskDetailedListToXinAn.do"
                                   @click="initurl('/menu/RiskDetailedListToXinAn.do')">风险管控清单(辛)</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RisksiteParameter.do"
                                   @click="initurl('/menu/RisksiteParameter.do')">风险点台账</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskAboutMeByXinAn.do"
                                   @click="initurl('/menu/RiskAboutMeByXinAn.do')">与我相关的风险</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a target="mainFrame" class="sidebar-nav-menu">
                            <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                            <i class="gi gi-airplane sidebar-nav-icon"></i>
                            <span class="sidebar-nav-mini-hide">补充辨识</span></a>
                        <ul>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskIdentificationByYear.do"
                                   @click="initurl('/menu/RiskIdentificationByYear.do')">年度辨识</a>
                            </li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskIdentificationBySpecially.do"
                                   @click="initurl('/menu/RiskIdentificationBySpecially.do')">专项辨识</a>
                            </li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskIdentificationByYearByHL.do"
                                   @click="initurl('/menu/RiskIdentificationByYearByHL.do')">黄陵二矿年度辨识</a>
                            </li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskIdentificationBySpeciallyByHL.do"
                                   @click="initurl('/menu/RiskIdentificationBySpeciallyByHL.do')">黄陵二矿专项辨识</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a target="mainFrame" class="sidebar-nav-menu">
                            <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                            <i class="gi gi-more_items sidebar-nav-icon"></i>
                            <span class="sidebar-nav-mini-hide">安全风险管控</span></a>
                        <ul>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskControlPlaneByMonth.do"
                                   @click="initurl('/menu/RiskControlPlaneByMonth.do')">安全风险管控计划</a>
                            </li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskControlPlaneByMonthByMangLai.do"
                                   @click="initurl('/menu/RiskControlPlaneByMonthByMangLai.do')">安全风险管控计划(芒来煤矿)</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskControlSchemeManagement.do"
                                   @click="initurl('/menu/RiskControlSchemeManagement.do')">管控方案管理</a>
                            </li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskControlPlaneByMonthByHL.do"
                                   @click="initurl('/menu/RiskControlPlaneByMonthByHL.do')">黄陵二矿安全风险管控计划</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskCheckResult.do"
                                   @click="initurl('/menu/RiskCheckResult.do')">现场检查结果管理</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskControlAnalyze.do"
                                   @click="initurl('/menu/RiskControlAnalyze.do')">管控效果分析</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskControlAnalyzeByPingMei.do"
                                   @click="initurl('/menu/RiskControlAnalyze.do')">管控效果分析(平煤12矿)</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskControlAnalyzeByMangLai.do"
                                   @click="initurl('/menu/RiskControlAnalyzeByMangLai.do')">管控效果分析(芒来煤矿)</a>
                            </li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/gotoFullcalendar.do"
                                   @click="initurl('/menu/HazardIdentification.do')">风险日历</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/Riskcontrolhistory.do">历史管控情况</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="sidebar-nav-menu">
                            <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                            <i class="fa fa-gift sidebar-nav-icon"></i>
                            <span class="sidebar-nav-mini-hide">统计分析</span></a>
                        <ul>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskSiteSearch.do"
                                   @click="initurl('/menu/RiskSiteSearch.do')">风险查询</a></li>
                            <li>
                            <%--<li>--%>
                                <%--<a target="mainFrame"--%>
                                   <%--href="<%=request.getContextPath() %>/menu/RiskSiteSearchByHuangling.do"--%>
                                   <%--@click="initurl('/menu/RiskSiteSearchByHuangling.do')">黄陵二矿风险查询</a></li>--%>
                            <%--<li>--%>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskSiteSearchByHuangLing.do"
                                   @click="initurl('/menu/RiskSiteSearchByHuangLing.do')">风险查询(黄陵)</a></li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskStatisticalAndAnalysis.do"
                                   @click="initurl('/menu/RiskStatisticalAndAnalysis.do')">管控情况分析</a>
                            </li>
                            <%--<li>--%>
                            <%--<a target="mainFrame" href="">达标情况分析</a></li>--%>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="sidebar-nav-menu">
                            <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                            <i class="gi gi-inbox sidebar-nav-icon"></i>
                            <span class="sidebar-nav-mini-hide">教育培训</span></a>
                        <ul>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskSiteAboutMe.do"
                                   @click="initurl('/menu/RiskSiteAboutMe.do')">我管控的风险</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath()%>/menu/RiskSiteMap.do"
                                   @click="initurl('/menu/RiskSiteMap.do')">风险地图</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="sidebar-nav-menu">
                            <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                            <i class="gi gi-leaf sidebar-nav-icon"></i>
                            <span class="sidebar-nav-mini-hide">应用设置</span></a>
                        <ul>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath()%>/menu/SystemAttributeDevelop.do"
                                   @click="initurl('/menu/SystemAttributeDevelop.do')">风险属性设置</a></li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath()%>/menu/AssessmentMethods.do"
                                   @click="initurl('/menu/AssessmentMethods.do')">评估方法管理</a>
                            </li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath()%>/menu/UpdateTrineDataVersion.do"
                                   @click="initurl('/menu/UpdateTrineDataVersion.do')">更新风险数据版本</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="sidebar-nav-menu">
                            <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                            <i class="gi gi-share sidebar-nav-icon"></i>
                            <span class="sidebar-nav-mini-hide">煤监局双重预防数据上报</span></a>
                        <ul>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath()%>/menu/SynSetting.do"
                                   @click="initurl('/menu/SynSetting.do')">上报设置</a></li>
                            <li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath()%>/menu/SynYearRisk.do"
                                   @click="initurl('/menu/SynYearRisk.do')">年度辨识上报</a></li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath()%>/menu/SynSpecialEvaluate.do"
                                   @click="initurl('/menu/SynSpecialEvaluate.do')">专项辨识上报</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath()%>/menu/SynRisk.do"
                                   @click="initurl('/menu/SynRisk.do')">风险信息上报</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath()%>/menu/RiskSubmit.do"
                                   @click="initurl('/menu/RiskSubmit.do')">风险上报</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath()%>/menu/UpdateReport.do"
                                   @click="initurl('/menu/UpdateReport.do')">数据更新</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath()%>/menu/wechat.do"
                                   @click="initurl('/menu/wechat.do')">短信微信提醒</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="main-container">
        <header class="navbar navbar-inverse navbar-fixed-top">


            <ul class="nav navbar-nav-custom pull-right">

                <li>
                    <a href="javascript:void(0)" @click="initMenu_Help">
                        <span style="margin-right: 5px;">帮助</span>
                    </a>
                </li>

                <li class="dropdown">

                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
                        <span style="margin-right: 10px;">admin</span>
                        <img src="img/placeholders/avatars/avatar9.jpg" alt="avatar">
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li class="">

                            <a href="page_ready_login2.html">
                                <i class="fa fa-power-off fa-fw pull-right"></i>退出
                            </a>
                        </li>

                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav-custom pull-right" style="width: 60%;">
                <li class="冬季四防 ">
                    <a class="active" target="mainFrame" href="消息.html"><span>消息</span></a>
                </li>
                <li class="niss">
                    <a target="mainFrame" href="通讯录.html"><span>通讯录</span></a>
                </li>
                <li class="niss gzt1">
                    <a class="gzt" target="mainFrame" href="工作台.html"><span>工作台</span><i
                            class="fa fa-caret-down fa-fw"></i></a>
                    <div class="tcck">
                        <ul>
                            <li>
                                <a href="管理中心-index.html">
                                    <span class="app-icon-img"><img src="img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">管理中心</span>
                                </a>
                            </li>
                            <li>
                                <a href="隐患排查计划-index.html">
                                    <span class="app-icon-img"><img src="img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">隐患排查计划</span>
                                </a>
                            </li>
                            <li>
                                <a href="风险分级管控-index.html">
                                    <span class="app-icon-img"><img src="img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">风险分级管控</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="app-icon-img"><img src="img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">签到统计</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="app-icon-img"><img src="img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">签到统计</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="app-icon-img"><img src="img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">签到统计</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="app-icon-img"><img src="img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">签到统计</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="app-icon-img"><img src="img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">签到统计</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="app-icon-img"><img src="img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">签到统计</span>
                                </a>
                            </li>


                        </ul>
                    </div>
                </li>
                <li class="niss">
                    <a target="mainFrame"><span>风险分级管控</span></a>
                </li>
            </ul>
        </header>
        <iframe id="page-content" class="if-page" name="mainFrame" src="导入线下辨识结果123.html"></iframe>
    </div>

    <!--帮助菜单显示-->
    <div id="menuhelp_display" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" style="width: 87%;height:auto">
            <div class="modal-content" >
                <div class="modal-body" >
                    <button style="margin-top: -12px;" type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;
                    </button>
                    <div>
                        <h4 id="title"><b>操作帮助</b></h4>
                    </div>
                    <div style="width: 30%;float:left">
                        <div class="tb" style="padding: 10px;">
                            <table id="general-table" class="table table-striped table-bordered table-vcenter">
                                <thead>
                                <tr>
                                    <th class="text-center">操作名称</th>
                                    <th class="text-center">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr v-for="(result,index) in menu_helpList">
                                    <td class="text-center" style="width: 50%">{{result.fFunction_Name}}</td>

                                    <td class="text-center" style="width: 50%">

                                        <button type="button" class="btn btn-success btn-sm" @click="browseMenuHelp(result)">浏览
                                        </button>

                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <%--预览GIF--%>
                    <div id="gifId" style="width: 70%;float:left">
                        <div class="form-group" style="height: 20%">
                            <div class="col-sm-8" style="width: 100%;"><b>操作名称</b>
                                <input style="float: left;text-align: center" class="form-control input-sm"
                                       type="text" v-model="fFunction_Name" disabled>
                            </div>
                        </div>
                        <div style="text-align: center;height: 50%;float:left;border:solid 10px #CCCCCC">
                            <img id="fFunction_HelpGif_url" style="text-align: center;width:100%" src="">
                        </div>
                        <div class="form-group" style="height: 30%">
                            <div class="col-sm-8" style="width: 100%;"><b>操作描述</b>
                                <textarea style="float: left;text-align: center" class="form-control input-sm"
                                          type="text" v-model="fFunction_Describe" disabled></textarea>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="modal-footer"></div>
            </div>
        </div>
    </div>

</div>
<script src="js/vendor/jquery-2.2.4.min.js"></script>
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/bootstrap-paginator.min.js"></script>
<script src="js/vendor/toastr/toastr.min.js"></script>
<script src="js/vue.js"></script>
<script src="js/jquery.treegrid.min.js"></script>
<script src="js/jquery.treegrid.bootstrap3.js"></script>
<script src="js/jquery.treegrid.extension.js"></script>
<script src="js/vendor/jquery.ztree.all.min.js"></script>
<script src="js/vendor/validator/bootstrapValidator.js"></script>
<script src="js/plugins.js"></script>
<script src="js/app.js"></script>
<script src="js/pages/readyDashboard.js"></script>

<script>jQuery(document).ready(function () {

    $(".sidebar-nav a").click(function () {
        $(this).toggleClass("active");
        $(".sidebar-nav a").not(this).removeClass("active");

    });
    $(".gzt1").hover(function () {
        $(".tcck").toggle();

    });

});
$(function () {
    ReadyDashboard.init();
});
</script>

<script>
    var projectName = '/' + window.location.pathname.split('/')[1];
    var vueApp = new Vue({
        el: "#page-container",
        data: {
            //菜单url
            menu_url: "",
            //菜单帮助列表
            menu_helpList: "",
            fFunction_Describe:"",
            fFunction_Name:"",
            //通过服务读取配置文件中的运维系统的虚拟目录
            platform:""

        },

        watch: {},

        created: function () {
            $("#gifId").hide();
        },
        mounted: function () {

        },
        methods: {
            //初始化菜单url
            initurl: function (url) {
                var _self = this;
                _self.menu_url = url;
                $("#gifId").hide();
            },

            //帮助点击事件，根据菜单url返回对应的操作
            initMenu_Help: function () {
                var _self = this;
                if(_self.menu_url==null||_self.menu_url==""){
                    _self.showToast("info", "不是功能点，无帮助数据.....");
                }else{

                    //自定义“帮助”模态框显示位置
                    $('#menuhelp_display').on('shown.bs.modal', function () {

                        var modalHeight=$(window).height()/13;
                        $(this).find('.modal-dialog').css({
                            'margin-top': modalHeight
                        });

                    });

                    $("#menuhelp_display").modal("show");
                    $.get(projectName + "/MenuHelp/help", {MenuUrl: _self.menu_url}, function (data) {
                        console.log(data);
                        _self.menu_helpList = data.menuhelp;
                        _self.platform=data.platform;
                    });
                }
            },

            //浏览操作
            browseMenuHelp:function(result){
                var _self=this;
                $("#gifId").show();
                _self.fFunction_Describe=result.fFunction_Describe;
                _self.fFunction_Name=result.fFunction_Name;
                $("#fFunction_HelpGif_url").attr("src",_self.platform+result.fFunction_HelpGif_url);
            },


            //消息提示
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
        }
    })
</script>

</body>

</html>