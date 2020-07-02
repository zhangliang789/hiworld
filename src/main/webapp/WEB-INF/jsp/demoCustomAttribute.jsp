<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<body>
<div id="app">
    <div>
        <h3></h3>
        <button @click="addSingleLineText">添加单行文本</button>
    </div>
    <div>
        <h5>-------------------表单--------------------------</h5>
        <div id="demo">
            <div v-for="(attr,index) in attrs" @click="newAttribute=attr">
                <br><label v-text="attr.classPropertyTitle">单行文本</label>
                <input readonly='readonly' placeholder=''>
                <button @click="attrRemove(index)">删除</button>
            </div>
            <button @click="saveAttributeClass">保存表单</button>
        </div>
        <h5>---------------------------------------------</h5>
    </div>

    <div>
        <h5>-------------字段属性设置--------------------------------</h5>
        <label for="proName">自定义字段名称:</label>
        <input id="proName" placeholder="请输入自定义字段名称" v-model="newAttribute.classpropertyName">
        <br>
        <label for="proTitle">自定义字段标题:</label>
        <input id="proTitle" placeholder="请输入自定义字段标题" v-model="newAttribute.classPropertyTitle">
        <h5>---------------------------------------------</h5>

    </div>
</div>
</body>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/vue.js"></script>
<script type="text/javascript">
    var projectName = '<%=request.getContextPath() %>';
    /**
     * Created by txianwei on 2017/9/4
     */
    var vueApp = new Vue({
        el: "#app",
        data: {
            newClass: "",
            newAttribute: "",
            templateRisksite: "",
            attrs: new Array()
        },
        created: function () {
            var _self = this;
            _self.getNewCustomerextendedattributes();
            _self.getNewRiskSite();
            _self.getNewCustomerextendedclass();
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
                    _self.templateRisksite = data;
                });
            },
            //获取一个空的自定义属性对象
            getNewCustomerextendedattributes: function () {
                var _self = this;
                $.get(projectName + "/demo/newCustomerextendedattributes", function (data) {
                    _self.newAttribute = data;
                });
            },
            //获取一个空的自定义属性类
            getNewCustomerextendedclass: function () {
                var _self = this;
                $.get(projectName + "/demo/newRiskSiteCustomerextendedclass", function (data) {
                    _self.newClass = data;
                });
            },
            //添加单行文本
            addSingleLineText: function () {
                var _self = this;
                //获取一个带有随机值的自定义属性对象，压入集合
                $.get(projectName + "/demo/randomAttr", function (data) {
                    _self.attrs.push(data);
                    _self.newAttribute = data;
                });
            },
            //删除一个已添加的自定义属性
            attrRemove: function (index) {
                var _self = this;
                _self.attrs.splice(index, 1);
            },
            //保存自定义属性先插入主表Customerextendedclass数据
            saveAttributeClass: function () {
                var _self = this;
                $.ajax({
                    type: "POST",
                    url: projectName + "/demo/addCustomerextendedclass",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.newClass),
                    success: function (data) {
                        if(data!=null){
                            for(var i=0;i<_self.attrs.length;i++){
                                _self.attrs[i].classID=data;
                            }
                            _self.saveAttribute();
                        }else{
                            alert("保存失败");
                        }
                    }
                });
            },
            saveAttribute: function () {
                var _self = this;
                $.ajax({
                    type: "POST",
                    url: projectName + "/demo/customerextendedattributesList",
                    dataType: "json",
                    contentType: "application/json",
                    data: JSON.stringify(_self.attrs),
                    success: function (data) {
                        if(data){
                            alert("保存成功");
                        }else{
                            alert("保存失败");
                        }
                    }
                });
            },

        },
        computed: {}
    })
</script>
</html>
