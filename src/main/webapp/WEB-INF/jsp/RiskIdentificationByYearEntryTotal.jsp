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
      <title>风险辨识与评估-年度辨识维护页面-补充辨识</title>
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
      <link rel="stylesheet" href="../css/bootstrap.min.css">
      <!-- Related styles of various icon packs and plugins -->
      <link rel="stylesheet" href="../css/plugins.css">
      <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
      <link rel="stylesheet" href="../css/main.css">
      <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->
      <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
      <link rel="stylesheet" href="../css/themes.css">
      <link rel="stylesheet" type="text/css" href="../iview/iview.css">
      <!-- END Stylesheets -->
      <!-- Modernizr (browser feature detection library) -->
      <script src="../js/vendor/modernizr-3.3.1.min.js"></script>
      <style>.table { margin-bottom: 0; }</style></head>
    
    <body>
      <div id="page-content" style="min-height: 794px;">
        <!-- Table Styles Header -->
        <div class="content-header">
          <div class="row">
            <div class="col-sm-6">
              <div class="header-section">
                <h1>风险辨识与评估-年度辨识</h1></div>
            </div>
          </div>
        </div>
        <!-- END Table Styles Header -->
        <!-- Table Styles Block -->
        <div class="block full">
          <div class="row">
            <div class="col-sm-6">
              <!-- Classic Chart Block -->
              <div class="block full">
                <!-- Classic Chart Title -->
                <div class="block-title">
                  <h2>Classic</h2></div>
                <!-- END Classic Chart Title -->
                <!-- Classic Chart Content -->
                <!-- Flot Charts (initialized in js/pages/compCharts.js), for more examples you can check out http://www.flotcharts.org/ -->
                <div id="chart-classic" style="height: 380px;"></div>
                <!-- END Classic Chart Content --></div>
              <!-- END Classic Chart Block --></div>
            <div class="col-sm-6">
              <!-- Stacked Chart Block -->
              <div class="block full">
                <!-- Stacked Chart Title -->
                <div class="block-title">
                  <h2>Stacked</h2></div>
                <!-- END Stacked Chart Title -->
                <!-- Stacked Chart Content -->
                <!-- Flot Charts (initialized in js/pages/compCharts.js), for more examples you can check out http://www.flotcharts.org/ -->
                <div id="chart-stacked" style="height: 380px;"></div>
                <!-- END Stacked Chart Content --></div>
              <!-- END Stacked Chart Block --></div>
          </div>
          <div class="table-responsive">
            <div class="table-responsive">
              <div id="example-datatable_wrapper" class="dataTables_wrapper form-inline no-footer">
                <div class="row" style="background-color: #fff;">
                  <div class="col-sm-12" style="padding: 0;">
                    <div id="" class="">
                      <form method="post" class="form-inline" onsubmit="return false;">
                        <div class="form-group">
                          <label class="" for="example-if-password">年度辨识评估范围</label>
                          <div class="form-control" style="border: 0;"></div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
                <table id="general-table" class="table table-striped table-bordered table-vcenter table-hover">
                  <thead>
                    <tr>
                      <th class="text-center">序号</th>
                      <th class="text-center">风险点</th>
                      <th class="text-center">风险数量</th>
                      <th class="text-center">措施数量</th>
                      <th class="text-center">管控失效次数</th>
                      <th class="text-center">操作</th></tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td class="text-center">1</td>
                      <td class="text-center"></td>
                      <td class="text-center"></td>
                      <td class="text-center"></td>
                      <td class="text-center"></td>
                      <td class="text-center">
                        <a href="javascript:void(0)" data-toggle="tooltip" class="btn btn-effect-ripple btn-sm btn-success" title="修改">
                          <i class="fa fa-pencil"></i>
                        </a>
                        <a href="javascript:void(0)" data-toggle="tooltip" class="btn btn-effect-ripple btn-sm btn-danger" title="删除">
                          <i class="fa fa-times"></i>
                        </a>
                      </td>
                  </tbody>
                </table>
                <div class="row">
                  <div class="col-sm-7 col-xs-12 clearfix">
                    <div class="dataTables_paginate paging_bootstrap" id="example-datatable_paginate">
                      <ul class="pagination pagination-sm remove-margin">
                        <li class="prev disabled">
                          <a href="javascript:void(0)">
                            <i class="fa fa-chevron-left"></i>
                          </a>
                        </li>
                        <li class="active">
                          <a href="javascript:void(0)">1</a></li>
                        <li>
                          <a href="javascript:void(0)">2</a></li>
                        <li>
                          <a href="javascript:void(0)">3</a></li>
                        <li class="next">
                          <a href="javascript:void(0)">
                            <i class="fa fa-chevron-right"></i>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- END Page Content -->
      <!-- 添加 -->
      <!--<div id="modal-regular" class="modal" tabindex="-1" role="dialog" aria-hidden="true" style="display: block;">
      <div class="modal-dialog">
      <div class="modal-content">
      <div class="modal-body">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      <div class="block-title">
      <h4>添加信息</h4></div>
      <form method="post" class="form-horizontal" onsubmit="return false;">
      <div class="form-group">
      <label class="col-sm-3 control-label" for="example-input-small">上级机构</label>
      <div class="col-sm-6">
      <div id="" class="">
      <label style="width: 100%;">
      <div class="input-group">
      <div class="input-group-btn"style="width: 100%;">
      <input data-toggle="dropdown" type="text" id="" name="example-input3-group3 dropdown-toggle" class="form-control" placeholder="">
      <ul class="dropdown-menu dropdown-menu-right">
      <div class="chosen-search">
      <input type="text"></div>
      <div id="easy-tree1">
      <ul>
      <li class="isFolder isExpanded">山东省总公司
      <ul>
      <li>公司领导</li>
      <li>综合部</li>
      <li>市场部</li>
      <li>市场部</li>
      <li class="isFolder ">山东分公司
      <ul>
      <li>公司领导</li>
      <li>综合部</li>
      <li>市场部</li>
      <li>市场部</li></ul></li>
      </ul>
      </li>
      </ul>
      </div>
      </ul>
      </div>
      <button class="input-group-addon" style="padding: 9px 12px;">
      <i class="fa fa-search"></i></button>
      </div>
      </label>
      </div>
      </div>
      </div>
      <div class="form-group">
      <label class="col-sm-3 control-label" for="example-input-small">顺序号</label>
      <div class="col-sm-6">
      <input id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="" type="text"></div>
      </div>
      <div class="form-group">
      <label class="col-sm-3 control-label" for="example-input-small">机构名称</label>
      <div class="col-sm-6">
      <input id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="" type="text"></div>
      </div>
      <div class="form-group">
      <label class="col-sm-3 control-label" for="example-input-small">机构编码</label>
      <div class="col-sm-6">
      <input id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="" type="text"></div>
      </div>
      <div class="form-group">
      <label class="col-md-3 control-label" for="example-select">主要负责人</label>
      <div class="col-md-6">
      <div id="" class="">
      <label style="width: 100%;">
      <div class="input-group">
      <div class="input-group-btn"style="width: 100%;">
      <input data-toggle="dropdown" type="text" id="" name="example-input3-group3 dropdown-toggle" class="form-control" placeholder="">
      <ul class="dropdown-menu dropdown-menu-right">
      <div class="chosen-search">
      <input type="text"></div>
      <div id="easy-tree2">
      <ul>
      <li class="isFolder isExpanded">山东省总公司
      <ul>
      <li>公司领导</li>
      <li>综合部</li>
      <li>市场部</li>
      <li>市场部</li>
      <li class="isFolder ">山东分公司
      <ul>
      <li>公司领导</li>
      <li>综合部</li>
      <li>市场部</li>
      <li>市场部</li></ul></li>
      </ul>
      </li>
      </ul>
      </div>
      </ul>
      </div>
      <button class="input-group-addon" style="padding: 9px 12px;">
      <i class="fa fa-search"></i></button>
      </div>
      </label>
      </div>
      </div>
      </div>
      <div class="form-group">
      <label class="col-sm-3 control-label" for="example-input-small">联系电话</label>
      <div class="col-sm-6">
      <input id="example-input-small" name="example-input-small" class="form-control input-sm" placeholder="" type="text"></div>
      </div>
      <div class="form-group">
      <label class="col-md-3 control-label" for="example-textarea-input">备注</label>
      <div class="col-md-6">
      <textarea id="example-textarea-input" name="example-textarea-input" rows="7" class="form-control" placeholder="内容.."></textarea></div>
      </div>
      </form>
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-effect-ripple btn-primary">提交</button>
      <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">关闭</button></div></div>
      </div>
      </div>-->
      <script src="../js/vendor/jquery-2.2.4.min.js"></script>
      <script src="../js/vendor/bootstrap.min.js"></script>
      <script src="../js/plugins.js"></script>
      <script src="../js/app.js"></script>
      <!-- Load and execute javascript code used only in this page -->
      <script src="../js/pages/compCharts.js"></script>
      <script>$(function() {
          CompCharts.init();
        });</script>
    </body>
    
    </html>