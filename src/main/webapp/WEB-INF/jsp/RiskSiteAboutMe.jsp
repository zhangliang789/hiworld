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
    <title>与我相关的风险</title>
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
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../iview/iview.css">
    <style>
        .ivu-btn-primary{
            margin:0 2px;
        }

    </style>
</head>

<body>

<div id="app" class="inner-sidebar-left" style="min-height: 794px;height: 100%;padding:0px;">
    <div>
        <!-- Table Styles Header -->
        <div class="content-header" style="overflow: hidden;width:100%">
            <div class="col-sm-12" style="padding-top: 30px">
                <div class="header-section">
                    <h1 style="float: left;">与我相关的风险</h1>
                    <div class="form-group" style="float: right; position: relative;right: 19px">
                        <template>
                            <%--<i-button type="primary" @click="batchControl">批量管控</i-button>--%>
                            <i-button type="primary" @click="modal1 = true">设置筛选条件</i-button>
                            <i-button type="primary" @click="exportExecl">导出</i-button>
                            <Modal
                                    v-model="modal1"
                                    title="筛选"
                                    @on-ok="ok"
                                    @on-cancel="cancel">
                                <div>
                                    <form method="post" class="form-horizontal" onsubmit="return false;">
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">管控对象名称</label>
                                            <div class="col-sm-8">
                                                <i-input placeholder="请输入管控对象名称" type="text"
                                                         v-model="riskObj"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">风险名称</label>
                                            <div class="col-sm-8">
                                                <i-input placeholder="请输入风险名称" type="text"
                                                         v-model="hazardName"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">灾害类型</label>
                                            <div class="col-sm-8">
                                                <i-select v-model="riskDamageType" placeholder="请选择灾害类型" filterable
                                                          clearable>
                                                    <i-option v-for="(mydamage,index) in damageList"
                                                              v-bind:value="mydamage.fData_Name"
                                                              v-bind:label="mydamage.fData_Name"
                                                              :key="index">
                                                        <span v-text="mydamage.fData_Name"></span>
                                                        <span style="float:right;color:#ccc"
                                                              v-text="mydamage.fData_Name_Shorthand"></span>
                                                    </i-option>
                                                </i-select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">专业类型</label>
                                            <div class="col-sm-8">
                                                <i-select v-model="category" placeholder="请选择专业类型" filterable clearable>
                                                    <i-option v-for="(mycategory,index) in categoryList"
                                                              v-bind:value="mycategory.fData_Name"
                                                              v-bind:label="mycategory.fData_Name"
                                                              :key="index">
                                                        <span v-text="mycategory.fData_Name"></span>
                                                        <span style="float:right;color:#ccc"
                                                              v-text="mycategory.fData_Name_Shorthand"></span>
                                                    </i-option>
                                                </i-select>

                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">管控时间</label>
                                            <div class="col-sm-4">
                                                <input placeholder="请选择管控周期（始）" class="form-control input-sm"
                                                       type="text"
                                                       id="istartTime"/>
                                            </div>
                                            <div class="col-sm-4">
                                                <input placeholder="请选择管控周期（终）" class="form-control input-sm"
                                                       type="text"
                                                       id="iendTime"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label">清空筛选条件</label>
                                            <div class="col-sm-8">
                                                <i-button type="primary" shape="circle" icon="ios-trash-outline"
                                                          @click="clearhd">清空
                                                </i-button>
                                            </div>

                                        </div>
                                    </form>
                                </div>
                            </Modal>
                        </template>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="padding:10px;width:100%;">
        <template>
            <Row>
                <i-col span="24">
                    <Tabs active-key="key1" @on-click="ontabs">
                        <Tab-pane label="我的风险" key="key1">
                            <i-table border :columns="columns1" :data="detailedList"
                                     ref="table1"></i-table>
                            <div style="margin: 10px;overflow: hidden">
                                <div style="float: right;" id="myPage" >
                                    <template>
                                        <Page  :total="detailedListAll.length" :current.sync="nowpage"
                                              @on-change="changePage" :page-size="pagesize" style="display: none"></Page>
                                    </template>
                                </div>
                            </div>
                        </Tab-pane>
                        <Tab-pane label="全部风险" key="key2">

                            <i-table border :columns="columns1" :data="detailedList2"
                                     ref="table2"></i-table>
                            <div style="margin: 10px;overflow: hidden">
                                <div style="float: right;">
                                    <template>
                                        <Page :total="detailedListAll2.length" :current.sync="nowpage2"
                                              @on-change="changePage2" :page-size="pagesize2"></Page>
                                    </template>
                                </div>
                            </div>
                        </Tab-pane>
                    </Tabs>
                </i-col>
            </Row>
        </template>
        <form id="getExcell" action="<%=request.getContextPath()%>/Templatehazard/getExcell2ByXinAn" method="post">
            <input id="ExcellID" name="ExcellID" type="hidden"/>
            <input id="ExcellName" name="ExcellName" type="hidden"/>
            <input id="RiskName" name="RiskName" type="hidden"/>
            <input id="departmentName" name="departmentName" type="hidden"/>
            <input id="RoleName" name="RoleName" type="hidden"/>
            <input id="Category" name="Category" type="hidden"/>
            <input id="DamageType" name="DamageType" type="hidden"/>
            <input id="hazardName" name="hazardName" type="hidden"/>
            <input id="riskObj" name="riskObj" type="hidden"/>
            <input id="startTime" name="startTime" type="hidden"/>
            <input id="endTime" name="endTime" type="hidden"/>
        </form>
    </div>

</div>

<script src="../js/vendor/jquery-2.2.4.min.js"></script>
<script src="../js/vendor/bootstrap.min.js"></script>
<script src="../js/bootstrap-treeview.js"></script>
<script src="../js/treeview-demo.min.js"></script>
<script src="../js/plugins.js"></script>
<script src="../js/app.js"></script>
<script src="../js/pages/uiTables.js"></script>
<script src="../js/pages/compTree.js"></script>
<script src="../js/plugins/layer/layer.min.js"></script>
<script src="../js/bootstrap-paginator.min.js"></script>
<script src="../js/plugins/toastr/toastr.min.js"></script>
<script src="../js/plugins/laydate/laydate.js"></script>
<script src="../js/vue.js"></script>
<script src="../iview/iview.js"></script>
<script>
    var idepartmentName = "${idepartmentName}";
    var iRoleNames = "${iRoleName}";
    var frameWorkID = "${frameWorkID}";
    var iRoleNameArray = [];


    $(() => {

        laydate.render({
        elem: "#istartTime"
        , trigger: 'click'
        , type: 'date'
        , theme: '#3188f2'
    });
    laydate.render({
        elem: "#iendTime"
        , trigger: 'click'
        , type: 'date'
        , theme: '#3188f2'
    });
    });

    var vueApp = new Vue({
        el: "#app",
        data: {
            modal2: false,
            columns1: [
                {
                    type: 'selection',
                    width: 60,
                    fixed: 'left',
                    align: 'center'
                },
                {
                    title: '序号',
                    type: 'index',
                    width: 80,
                    align: 'center',
                    fixed: 'left',
                },
                {
                    title: '风险点',
                    key: 'TopName',
                    width: 120,
                    fixed: 'left',
                },
                {
                    title: '等级',
                    key: 'RiskLevel',
                    width: 100,

                },
                {
                    title: '预警程度',
                    key: 'RiskColor',
                    width: 100,
                    render: (h, params) => {
                    return h('div', {
                        style: {
                            height: '25px',
                            width: '70px',
                            backgroundColor: params.row.RiskColor
                        }
                    });
    }
    },
    {
        title: '管控对象名称',
            key: 'ChildName',
        width: 140,
    },
    {
        title: '风险',
            key: 'HazardName',
        width: 140,
    },
    {
        title: '风险描述',
            key: 'HazardDesc',
        width: 160,
    },
    {
        title: '专业',
            key: 'HazardMajorType',
        width: 100,
    },
    {
        title: '灾害类型',
            key: 'HazardDamageType',
        width: 100,
    },
    {
        title: '管控周期（始）',
            key: 'ControlRangeStartDay',
        width: 140,
    },
    {
        title: '管控周期（终）',
            key: 'ControlRangeEndDay',
        width: 140,
    },
    {
        title: '矿级管控',
            key: 'KJControlRang',
        width: 140,
    },
    {
        title: '专业级管控',
            key: 'ZYControlRang',
        width: 140,
    },
    {
        title: '职能部室级管控',
            key: 'QDControlRang',
        width: 140,
    },
    {
        title: '区队级管控',
            key: 'BZControlRang',
        width: 140,
    },
    {
        title: '班组个人级管控',
            key: 'GRControlRang',
        width: 140,
    }
    ],
    detailedList: [],
        detailedListAll: [],
        pagesize: 10,
        nowpage: 1,
        detailedList2: [],
        detailedListAll2: [],
        pagesize2: 10,
        nowpage2: 1,
        // 筛选条件
        modal1: false,
        riskObj: "",
        hazardName: "",
        riskDamageType: "",
        damageList: [],
        category: "",
        categoryList: [],
        // 当前选项卡
        tabs: 0,
    },
    created() {
        this.getEnterprise_data_dictionaryListForOrg();
        if (iRoleNames != "") {
            if (iRoleNames.includes(";")) {
                iRoleNameArray = iRoleNames.split(";");
                var items = new Set(iRoleNameArray);
                iRoleNameArray = Array.from(items);
                console.log("角色去重结果" + iRoleNameArray);
            } else {
                iRoleNameArray.push(iRoleNames);
            }
        }

        this.initOurData();
        this.initData(null, null);

    },
    mounted() {
        $(".ivu-table-title").remove();

    }
    ,
    methods: {
        // 多岗位处理
        initOurData() {
            var _self = this;
            var data = [];
            var dataHazardID = new Set();
            for (var i = 0; i < iRoleNameArray.length; i++) {
                if (iRoleNameArray[i] != "") {
                    var arr = this.initData(idepartmentName, iRoleNameArray[i]);
                    arr.forEach(a => {
                        // 去重
                        if(!dataHazardID.has(a.HazardID)){
                        data.push(a);
                    }
                    dataHazardID.add(a.HazardID);
                });
                }
            }
            _self.detailedList = [];
            _self.detailedListAll = data;
            for (var i = 0; i < _self.detailedListAll.length; i++) {
                if (i < _self.pagesize) {
                    _self.detailedList.push(_self.detailedListAll[i]);
                }
            }
        },
        getEnterprise_data_dictionaryListForOrg() {
            var _self = this;
            $.ajax({
                url: "../PlatForm/getEnterprise_data_dictionaryListForOrg", //发送请求的地址。
                type: "POST", //(默认: "GET") 请求方式 ("POST" 或 "GET")， 默认为 "GET"。注意：其它 HTTP 请求方法，如 PUT 和 DELETE 也可以使用，但仅部分浏览器支持。
                data: {
                    "orgID": "00000000",
                    "data_TypeOrName": null,
                },
                dataType: "json",
                success: function (data) {
                    _self.damageList = data.灾害类型;
                    _self.categoryList = data.专业类型;
                },
            });
        },
        initData(departmentName, RoleName) {
            var _self = this;
            var result = [];
            $.ajax({
                url: "../Templatehazard/getRiskByPlace",
                type: "POST",
                data: {
                    "departmentName": departmentName,
                    "RoleName": RoleName,
                    "Category": _self.category,
                    "DamageType": _self.riskDamageType,
                    "hazardName": _self.hazardName,
                    "riskObj": _self.riskObj,
                    "startTime": $("#istartTime").val(),
                    "endTime": $("#iendTime").val()
                },
                dataType: "json",
                async: false,
                success: function (data) {
                    if (departmentName != null) {
                        result = data;
                    } else {
                        $("#myPage").remove();
                        _self.detailedList2 = [];
                        _self.detailedListAll2 = data;
                        for (var i = 0; i < _self.detailedListAll2.length; i++) {
                            if (i < _self.pagesize2) {
                                _self.detailedList2.push(_self.detailedListAll2[i]);
                            }
                        }
                    }
                },
            });
            return result;
        },
        changePage(val) {
            var _self = this;
            _self.detailedList = [];
            _self.nowpage = 1;
            for (var i = (val - 1) * _self.pagesize; i < _self.detailedListAll.length; i++) {
                if (i < val * _self.pagesize) {
                    _self.detailedList.push(_self.detailedListAll[i]);
                }

            }
            _self.nowpage = val;
        },
        changePage2(val) {
            var _self = this;
            _self.detailedList2 = [];
            _self.nowpage2 = 1;
            for (var i = (val - 1) * _self.pagesize2; i < _self.detailedListAll2.length; i++) {
                if (i < val * _self.pagesize2) {
                    _self.detailedList2.push(_self.detailedListAll2[i]);
                }

            }
            _self.nowpage2 = val;
        },
        // 批量管控
        batchControl() {
            //vueApp.$refs.table2.objData[0]._isChecked
            var objs = new Object;
            var objArray = [];
            var keys = [];
            objs = this.tabs == 0 ? this.$refs.table1.objData : this.$refs.table2.objData;
            keys = Object.keys(objs);
            for (var i = 0; i < keys.length; i++) {
                objArray.push(objs[i]);
            }
            objArray = objArray.filter(obj => obj._isChecked);
            console.log(objArray);
            var riskSiteID = "";
            objArray.forEach(obj => {
                riskSiteID = riskSiteID + obj.HazardID + ",";
        });
            if (riskSiteID.length > 0) {
                riskSiteID.substring(0, riskSiteID.length - 1);
            }
            $.post("../RiskSiteAboutMe/addRiskSportControl/" + frameWorkID + "/" + riskSiteID, function (data) {
                window.location.href = "../menu/RiskSpotControl.action"
            });
        },
        jumpRiskControlHistoryDetail(HazardID,hazardName){
            console.log("bbbbbbbbbbb");
        },
        // 导出
        exportExecl() {
            var _self = this;
            var edepartmentName = null;
            var eRoleName = null;
            var ExcellName = "全部风险.xls";
            if (this.tabs == 0) {
                // 我的风险
                edepartmentName = idepartmentName;
                eRoleName = iRoleNames;
                ExcellName = "我的风险.xls";
            }
            $("#ExcellID").val("1");
            $("#ExcellName").val(ExcellName);
            $("#RiskName").val(null);
            $("#departmentName").val(edepartmentName);
            $("#RoleName").val(eRoleName);
            $("#Category").val(_self.category);
            $("#DamageType").val(_self.riskDamageType);
            $("#hazardName").val(_self.hazardName);
            $("#riskObj").val(_self.riskObj);
            $("#startTime").val($("#istartTime").val());
            $("#endTime").val($("#iendTime").val());
            $("#getExcell").submit();
        },
        // 筛选
        ok() {
            if (this.tabs == 0) {
                // 我的风险
                this.initOurData();
            } else {
                this.initData(null, null);
            }
        },
        cancel() {

        },
        clearhd() {
            // 清空筛选条件
            this.riskObj = "";
            this.hazardName = "";
            this.riskDamageType = "";
            this.category = "";
            $("#istartTime").val("");
            $("#iendTime").val("");
        },
        // 切换tab页
        ontabs(name) {
            this.tabs = name;
        }
    }
    });
</script>
</body>
</html>