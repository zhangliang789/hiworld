<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<body>
<div id="app">
    <div>
        <h5>------------------------------新增-------------------------------------</h5>
        <label>煤矿名称：</label>
        <input type="text" v-model="riskSite.coalMineName">
        <label>风险：</label>
        <input type="text" v-model="riskSite.name">
        <br>
        <label> 专 业 ：</label>
        <input type="text" v-model="riskSite.riskSiteType">
        <label> 等 级 ：</label>
        <input type="text" v-model="riskSite.riskLevel">
        <div v-for="attribute in attributes">
            <label v-text="attribute.classPropertyTitle"> </label>
            <input type="text" v-model="attribute.classPropertyValue">
        </div>

        <br>
        <button @click="saveRiskSite">确定</button>
        <h5>-------------------------------------------------------------------------</h5>
    </div>
    <div>
        <h5>-----------------------------------------表格-------------------------</h5>
        <h4>点击表头字段进行隐藏</h4>
        <button @click="noHide">取消隐藏字段</button>
        <table border="1">
            <thead>
            <th @click="hideColumn('coalMineName')" v-show="showOrNot('coalMineName')">煤矿名称</th>
            <th @click="hideColumn('name')" v-show="showOrNot('name')">风险</th>
            <th @click="hideColumn('riskSiteType')" v-show="showOrNot('riskSiteType')">类型</th>
            <th @click="hideColumn('riskLevel')" v-show="showOrNot('riskLevel')">等级</th>
            <th @click="hideColumn('riskDescription')" v-show="showOrNot('riskDescription')">描述</th>
            <th v-for="attr in attributes" v-text="attr.classPropertyTitle"
                @click="hideColumn(attr.classpropertyName)" v-show="showOrNot(attr.classpropertyName)"></th>
            <td class="ztjc">操作</td>
            </thead>
            <tbody>
            <tr v-for="risksite in risksites">
                <td v-text="risksite.coalMineName" v-show="showOrNot('coalMineName')"></td>
                <td v-text="risksite.name" v-show="showOrNot('name')"></td>
                <td v-text="risksite.riskSiteType" v-show="showOrNot('riskSiteType')"></td>
                <td v-text="risksite.riskLevel" v-show="showOrNot('riskLevel')"></td>
                <td v-text="risksite.riskDescription" v-show="showOrNot('riskDescription')"></td>
                <td v-for="attr in risksite.extendedAttributesJson" v-text="attr.classPropertyValue"
                    v-show="showOrNot(attr.classpropertyName)"></td>
                <td>
                    <a href="#" @click="modifyRiskSite(risksite.riskSiteID)">修改</a>
                    <a href="#" @click="deleteRiskSite(risksite.riskSiteID)">删除</a>
                </td>
            </tr>
            </tbody>
        </table>
        <h5>----------------------------------------------------------------</h5>
    </div>

    <div>
        <h5>------------------------------修改-------------------------------------</h5>
        <label>煤矿名称：</label>
        <input type="text" v-model="editRiskSite.coalMineName">
        <label>风险：</label>
        <input type="text" v-model="editRiskSite.name">
        <br>
        <label> 专 业 ：</label>
        <input type="text" v-model="editRiskSite.riskSiteType">
        <label> 等 级 ：</label>
        <input type="text" v-model="editRiskSite.riskLevel">
        <div v-for="attribute in editAttributes">
            <label v-text="attribute.classPropertyTitle"> </label>
            <input type="text" v-model="attribute.classPropertyValue">
        </div>

        <br>
        <button @click="updateRiskSite">确定</button>
        <h5>-------------------------------------------------------------------------</h5>
    </div>
</div>
</body>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/vue.js"></script>
<script type="text/javascript">
    var projectName = '<%=request.getContextPath() %>';
    /**
     * Created by txianwei on 2017/9/7
     */
    Vue.filter('filterRisk', function (value) {
        //return  JSON.parse(value.extendedAttributesJsonString);
        console.log("11111");
        return JSON.parse(value);
    });

    var vueApp = new Vue({
        el: "#app",
        data: {
            riskSite: "",
            risksites: "",
            attributes: "",
            riskAttrs: "",
            editRiskSite: "",
            editAttributes: "",
            extendedAttributesJsonString: ""
        },
        created: function () {
            var _self = this;
            _self.getNewRiskSite();
            _self.getRisksites();
            _self.getRisksiteCustomerextendedattributes();
        },
        mounted: function () {
        },
        updated: function () {
        },
        methods: {
            //获取一个空的危险源对象
            getNewRiskSite: function () {
                var _self = this;
                $.get(projectName + "/demo/newRiskSite", function (data) {
                    _self.riskSite = data;
                });

                /* $.get(projectName + "/RiskAssessment/getRiskhazard/522", function (data) {
                 console.log(data);
                 delete data.handler;

                 $.ajax({
                 type: "PUT",
                 url: projectName + "/RiskAssessment/assessmentHazardLevel",
                 dataType: "json",
                 contentType: "application/json",
                 data: JSON.stringify(data),
                 success: function (data) {
                 console.log(data);
                 }
                 });

                 });*/

                var teet = {
                    "measureID": 0,
                    "measureUUID": "string",
                    "risksiteID": 0,
                    "hazardID": 0,
                    "measureContent": "string",
                    "measureName": "string",
                    "measureType": "string",
                    "measureURL": "string",
                    "frameworkID": "string",
                    "coalmineName": "string",
                    "pagesize": 0,
                    "page": 0
                };

                $.ajax({
                    type: "POST",
                    url: projectName + "/RiskControlMeasureControl/addMeasure",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(teet) ,
                    success: function (data) {
                        console.log(data);
                    }
                });
            },
            getRisksites: function () {
                var _self = this;
                $.get(projectName + "/demo/getRisksiteTabledata", function (data) {
                    if (data.length > 0) {
                        for (var i = 0; i < data.length; i++) {
                            data[i].extendedAttributesJson = JSON.parse(data[i].extendedAttributesJsonString);
                        }
                    }
                    _self.risksites = data;
                });
            },
            //获取危险源的自定义属性
            getRisksiteCustomerextendedattributes: function () {
                var _self = this;
                $.get(projectName + "/demo/getRisksiteCustomerextendedattributes", function (data) {
                    _self.attributes = data;
                });
            },
            //保存
            saveRiskSite: function () {
                var _self = this;
                _self.riskSite.extendedAttributesJsonString = JSON.stringify(_self.attributes);
                $.ajax({
                    type: "POST",
                    url: projectName + "/demo/saveRiskSite",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.riskSite),
                    success: function (data) {
                        if (data) {
                            alert("保存成功");
                            _self.getRisksites();
                        } else {
                            alert("保存失败");
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        console.log(XMLHttpRequest.status);
                        console.log(XMLHttpRequest.readyState);
                        console.log(textStatus);
                    }

                });
            },
            //删除
            deleteRiskSite: function (id) {
                var _self = this;
                $.get(projectName + "/demo/deleteRisksite", {id: id}, function (data) {
                    if (data) {
                        alert("删除成功");
                        _self.getRisksites();
                    } else {
                        alert("删除失败");
                    }
                });
            },
            modifyRiskSite: function (id) {
                var _self = this;
                $.get(projectName + "/demo/getRiskSiteByID", {id: id}, function (data) {
                    _self.editRiskSite = data;
                    _self.editAttributes = JSON.parse(data.extendedAttributesJsonString);
                });
            },
            updateRiskSite: function () {
                var _self = this;
                $.ajax({
                    type: "POST",
                    url: projectName + "/demo/updateRiskSite",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.editRiskSite),
                    success: function (data) {
                        if (data) {
                            alert("更新成功");
                        } else {
                            alert("更新失败");
                        }
                    }
                });
            },
            hideColumn: function (column) {
                var _self = this;
                // console.log(column);
                //false不显示 true显示
                localStorage.setItem(column, false);
                _self.getRisksites();
            },
            showOrNot: function (column) {
                var _self = this;
                // console.log(column);
                // console.log(localStorage.getItem(column));
                if (localStorage.getItem(column) == null || localStorage.getItem(column) == "true") {
                    return true;
                } else {
                    return false;
                }
            },
            noHide: function () {
                var _self = this;
                localStorage.clear();
                _self.getRisksites();
            }
        }
    })
</script>
</html>
