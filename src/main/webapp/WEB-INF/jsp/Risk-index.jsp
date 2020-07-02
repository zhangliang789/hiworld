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
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/plugins.css">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/themes.css">
    <script src="../js/vendor/modernizr-3.3.1.min.js"></script>
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
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/ImportOffLineData.do">导入线下辨识结果</a>
                            </li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/HazardIdentification.do">风险辨识</a></li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskAssessment.do">风险评估</a></li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskControlMeasure.do">管控措施制定</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskDetailedList.do">风险管控清单</a>
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
                                   href="<%=request.getContextPath() %>/menu/RiskIdentificationByYear.do">年度辨识</a></li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath()%>/menu/RiskIdentificationBySpecially.do">专项辨识</a>
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
                                   href="<%=request.getContextPath() %>/menu/RiskControlPlaneByMonth.do">安全风险管控计划</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskCheckResult.do">现场检查结果管理</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskControlAnalyze.do">管控效果分析</a>
                            </li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/gotoFullcalendar.do">风险日历</a>\
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath() %>/menu/RiskControlhistory.do">历史管控情况</a>
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
                                   href="<%=request.getContextPath() %>/menu/RiskSiteSearch.do">风险查询</a></li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath() %>/menu/RiskStatisticalAndAnalysis.do">管控情况分析</a>
                            </li>

                        </ul>
                    </li>
                    <li>
                        <a href="#" class="sidebar-nav-menu">
                            <i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
                            <i class="gi gi-inbox sidebar-nav-icon"></i>
                            <span class="sidebar-nav-mini-hide">教育培训</span></a>
                        <ul>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath()%>/menu/RiskSiteAboutMe.do">我管控的风险</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath()%>/menu/RiskSiteMap.do">风险地图</a></li>
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
                                   href="<%=request.getContextPath()%>/menu/SystemAttributeDevelop.do">风险属性设置</a></li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath()%>/menu/AssessmentMethods.do">评估方法管理</a>
                            </li>
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
                                   href="<%=request.getContextPath()%>/menu/SynSetting.do">上报设置</a></li>
                            <li>
                            <li>
                                <a target="mainFrame"
                                   href="<%=request.getContextPath()%>/menu/SynYearRisk.do">年度辨识上报</a></li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath()%>/menu/SynSpecialEvaluate.do">专项辨识上报</a>
                            </li>
                            <li>
                                <a target="mainFrame" href="<%=request.getContextPath()%>/menu/SynRisk.do">风险信息上报</a>
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

                <li class="dropdown">

                    <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
                        <span style="margin-right: 10px;">冯智威</span>
                        <img src="../img/placeholders/avatars/avatar9.jpg" alt="avatar">
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
                                    <span class="app-icon-img"><img src="../img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">管理中心</span>
                                </a>
                            </li>
                            <li>
                                <a href="隐患排查计划-index.html">
                                    <span class="app-icon-img"><img src="../img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">隐患排查计划</span>
                                </a>
                            </li>
                            <li>
                                <a href="风险分级管控-index.html">
                                    <span class="app-icon-img"><img src="../img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">风险分级管控</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="app-icon-img"><img src="../img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">签到统计</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="app-icon-img"><img src="../img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">签到统计</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="app-icon-img"><img src="../img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">签到统计</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="app-icon-img"><img src="../img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">签到统计</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="app-icon-img"><img src="../img/10243.png"></span>
                                    <span class="app-icon-txt app-icon-margin" style="white-space:nowrap;">签到统计</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="app-icon-img"><img src="../img/10243.png"></span>
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
</div>
<script src="../js/vendor/jquery-2.2.4.min.js"></script>
<script src="../js/vendor/bootstrap.min.js"></script>
<script src="../js/plugins.js"></script>
<script src="../js/app.js"></script>
<script src="../js/pages/readyDashboard.js"></script>
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

</body>

</html>