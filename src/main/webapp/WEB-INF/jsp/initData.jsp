<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/16
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>风控初始化数据页面</title>
</head>
<body>
<h1>风控初始化页面</h1>
<button id="initData">初始化数据</button><br>
结果：<span id="result" style="color: red"></span><br>
<span id="result2" style="color: red"></span>
<button id="initVersionData">初始化风险数据版本</button><br>
结果：<span id="result3" style="color: red"></span><br>
<script src="../js/vendor/jquery-2.2.4.min.js"></script>
<script>
    $(document).ready(function () {
        var projectName = '/' + window.location.pathname.split('/')[1];
        $("#initData").click(function () {
            $("#initData").attr("disabled","disabled");
            $("#result").text("初始化中，请稍后...");
            $.ajax({
                url: projectName + "/AssessmentMethods/autoInitializeaRiskLevelSetting", //发送请求的地址。
                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                dataType: "json",//预期服务器返回的数据类型。
                async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                success: function (data) {
                    if (data) {
                        console.log("风控流程设置保存成功！");
                        $("#result").text("风控流程设置保存成功");
                    } else {
                        console.log("流程设置保存失败！");
                        $("#result").text("流程设置保存失败");
                    }
                    ;
                },
            });
            $.ajax({
                url: projectName + "/SystemAttributeDevelop/AttributesClasses", //发送请求的地址。
                type: "GET", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                data: {},//发送到服务器的数据。将自动转换为请求字符串格式。GET 请求中将附加在 URL 后。
                dataType: "json",//预期服务器返回的数据类型。
                async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                success: function (data) {
                    if (data) {
                        console.log("初始化风控属性数据成功");
                        $("#result2").text("初始化风控属性数据成功");
                    } else {
                        console.log("初始化风控属性数据失败！");
                        $("#result2").text("初始化风控属性数据失败");
                    }
                },
            });
            $("#initVersionData").attr("disabled","");
        });
        $("#initVersionData").click(function(){
            $("#initVersionData").attr("disabled","disabled");
            $("#result3").text("正在初始化，请稍后...");
            $.ajax({
                url:projectName+"/Trinedataversion/initVersionData",
                type:"POST",
                data:{},
                dataType:"json",
                ansyn:false,
                contentType:"application/json",
                success:function(data){
                    if(data){
                        $("#result3").text("初始化风险数据版本成功");
                    }else{
                        $("#result3").text("初始化风险数据版本失败");
                    }
                    $("#initVersionData").attr("disabled","");
                }
            })
        })
    })
</script>
</body>
</html>
