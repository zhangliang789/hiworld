<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<body>
<div id="app">
    <button @click="getRiskSiteByID">GET方法</button>
    <br>
    <button @click="addRiskSite">POST方法</button>
    <br>
    <button @click="updateRiskSite">PUT方法</button>
    <br>
    <button @click="deleteRiskSite">DELETE方法</button>
</div>
</body>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/vue.js"></script>
<script type="text/javascript">
    var projectName = '<%=request.getContextPath() %>';
    /**
     * Created by txianwei on 2017/9/11
     */
    var vueApp = new Vue({
        el: "#app",
        data: {
            riskSite: null,
            updatedRiskSite: null
        },
        created: function () {
            var _self = this;
            _self.getNewRiskSite();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            //获取一个空的RiskSite对象，方便操作
            getNewRiskSite: function () {
                var _self = this;
                $.get(projectName + "/demo/newRiskSite", function (data) {
                    _self.riskSite = data;
                });
            },
            //根据id获取RiskSite  GET 方法
            getRiskSiteByID: function () {
                var _self = this;
                $.get(projectName + "/restful/Risk/10", function (data) {
                    console.log(data);
                    _self.updatedRiskSite = data;
                });
            },
            //新增RiskSite POST 方法
            addRiskSite: function () {
                var _self = this;
                //console.log(_self.riskSite);
                $.ajax({
                    type: "POST",
                    url: projectName + "/restful/Risk/add",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskSite),
                    success: function (data) {
                        console.log(data);
                    }
                });
            },
            //更新RiskSite
            updateRiskSite: function () {
                var _self = this;

                $.get(projectName + "/restful/Risk/19", function (data) {
                    console.log(data);

                    $.ajax({
                        type: "PUT",
                        url: projectName + "/restful/Risk/update",
                        dataType: "json",
                        contentType: "application/json",
                        data: JSON.stringify(data),
                        success: function (data) {
                            console.log(data);
                        }
                    });
                });
            },
            deleteRiskSite: function () {
                var _self = this;
                $.ajax({
                    type: "DELETE",
                    url: projectName + "/restful/Risk/11",
                    dataType: "json",
                    success: function (data) {
                        console.log(data);
                    }
                });
            }
        },
        computed: {}
    })
</script>

</html>
