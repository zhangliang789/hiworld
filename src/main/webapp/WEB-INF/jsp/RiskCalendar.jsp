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
      <title>风险日历</title>
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
      <link href="../css/bootstrap-treeview.css" rel="stylesheet"></head>
      <link rel="stylesheet" type="text/css" href="../iview/iview.css">
    <body>
      <div id="page-content" style="min-height: 794px;">
        <!-- Table Styles Header -->
        <div class="content-header">
          <div class="row">
            <div class="col-sm-6">
              <div class="header-section">
                <h1>风险日历</h1></div>
            </div>
          </div>
        </div>
        <!-- END Table Styles Header -->
        <!-- Table Styles Block -->
        <div class="block full">
          <div class="row">
            <div class="col-md-3 col-md-push-9 col-lg-2 col-lg-push-10">
              <div class="block-section">
                <!-- Add event functionality (initialized in js/pages/compCalendar.js) -->
                <form>
                  <div class="input-group">
                    <input type="text" id="add-event" name="add-event" class="form-control" placeholder="What to do?">
                    <div class="input-group-btn">
                      <button type="submit" id="add-event-btn" class="btn btn-effect-ripple btn-primary">Add</button></div>
                  </div>
                </form>
              </div>
              <div class="block-section">
                <ul class="calendar-events">
                  <li class="themed-background-warning">
                    <i class="fa fa-calendar"></i>Admin Template</li>
                  <li class="themed-background-dark">
                    <i class="fa fa-calendar"></i>Lunch</li>
                  <li class="themed-background-info">
                    <i class="fa fa-calendar"></i>TV Shows</li>
                  <li class="themed-background-danger">
                    <i class="fa fa-calendar"></i>Go to the gym</li>
                  <li>
                    <i class="fa fa-calendar"></i>Work meeting</li>
                  <li class="themed-background-info">
                    <i class="fa fa-calendar"></i>Trip to Tokyo</li>
                  <li class="themed-background-success">
                    <i class="fa fa-calendar"></i>Go for a walk</li>
                </ul>
                <div class="block-section text-center text-muted">
                  <small>
                    <i class="fa fa-arrows"></i>Drag and Drop Events</small>
                </div>
              </div>
            </div>
            <div class="col-md-9 col-md-pull-3 col-lg-10 col-lg-pull-2">
              <!-- FullCalendar (initialized in js/pages/compCalendar.js), for more info and examples you can check out http://arshaw.com/fullcalendar/ -->
              <div id="calendar"></div>
            </div>
          </div>
        </div>
      </div>
      <script src="../js/vendor/jquery-2.2.4.min.js"></script>
      <script src="../js/vendor/bootstrap.min.js"></script>
      <script src="../js/plugins.js"></script>
      <script src="../js/app.js"></script>
      <script src="../js/pages/compCalendar.js"></script>
      <script>$(function() {
          CompCalendar.init();
        });</script>
    </body>
    
    </html>