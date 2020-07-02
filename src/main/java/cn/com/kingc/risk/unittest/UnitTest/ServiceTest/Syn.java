package cn.com.kingc.risk.unittest.UnitTest.ServiceTest;


import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.util.AsyncClient;
import com.google.gson.Gson;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import java.sql.*;
public class Syn {
    public static void main(String args[]) {


        /*try {
            Class.forName("com.mysql.jdbc.Driver");
            //连接至数据库
            String jdbc="jdbc:mysql://rm-m5e2w17710c8fmlpao.mysql.rds.aliyuncs.com:3306/hiddentrouble?useUnicode=true&characterEncoding=utf8&useSSL=true&allowMultiQueries=true";
            Connection conn=DriverManager.getConnection(jdbc, "kingcmysql", "kingc@123456");

            Statement state=conn.createStatement();//容器
            String sql="SELECT DISTINCT \n" +
                    "                    H.FHiddenTroubleUUID AS id, \n" +
                    "                    IFNULL(DATE_FORMAT(H.FWillSolutionTime,'%Y-%m-%d %H:%i:%s'),'') as bhdbiRectPeriod, \n" +
                    "                    IFNULL(H.FDutyUnitName,'') AS hdbiRectUnit, \n" +
                    "                     CASE \n" +
                    "                            WHEN INSTR(HF.FStepName ,'REVIEW') > 0 THEN 600 \n" +
                    "                            WHEN INSTR(HF.FStepName, 'COMPLETED') > 0 THEN 500 \n" +
                    "                            WHEN INSTR(HF.FStepName, 'ASSIGN') > 0 THEN 300 \n" +
                    "                            WHEN INSTR(HF.FStepName, 'NEWHT') > 0 THEN 200 \n" +
                    "                            ELSE 100 \n" +
                    "                            END  as hdbiClStatus, \n" +
                    "                    IFNULL(DATE_FORMAT(HF.FCreaterTime,'%Y-%m-%d %H:%i:%s'),'') AS hdbiReviewTime, \n" +
                    "                    CASE \n" +
                    "                            WHEN INSTR(H.FLevel ,'A级') > 0 THEN 2 \n" +
                    "                            WHEN INSTR(H.FLevel ,'B级') > 0 THEN 3 \n" +
                    "                            ELSE 4 \n" +
                    "                            END  as hdbiHdLevel , \n" +
                    "                    IFNULL(H.FLocation,'') as hdbiHdLocation, \n" +
                    "                    IFNULL(RV.ReviewPersonName,'') as hdbiReviewer, \n" +
                    "                    IFNULL(AG.FCorrectiveMeasures,'') as hdbiRectMeasures, \n" +
                    "                     IFNULL(DATE_FORMAT(CP.CompletedTime,'%Y-%m-%d %H:%i:%s'),'') as hdbiRectTagartDt, \n" +
                    "                    IFNULL(H.FDescription,'')  as hdbiDesc, \n" +
                    "                    IFNULL(RV.FCheckResult,'') as hdbiReviewReport, \n" +
                    "                    IFNULL(DATE_FORMAT(H.FDetectionTime,'%Y-%m-%d %H:%i:%s'),'') as hdbiInveDate, \n" +
                    "                    IFNULL(CP.completedPersonName,'') as hdbiRectMan, \n" +
                    "                    CASE  \n" +
                    "                                                WHEN H.FCatagories LIKE '%地测防治水%' THEN '13'  \n" +
                    "                                                WHEN H.FCatagories LIKE '%监控%' THEN '2'  \n" +
                    "                                                WHEN H.FCatagories LIKE '%掘进%' THEN '10'  \n" +
                    "                                                WHEN H.FCatagories LIKE '%通防%' THEN '3'  \n" +
                    "                                                WHEN H.FCatagories LIKE '%地质灾害防治与测量%' THEN '14'  \n" +
                    "                                                WHEN H.FCatagories LIKE '%采煤%' THEN '11'  \n" +
                    "                                                WHEN H.FCatagories LIKE '%机电%' THEN '4'  \n" +
                    "                                         WHEN H.FCatagories LIKE '%运输%' THEN '7'  \n" +
                    "                                         WHEN H.FCatagories LIKE '%职业卫生%' THEN '1'  \n" +
                    "                                         WHEN H.FCatagories LIKE '%安全培训和应急管理%' THEN '8'  \n" +
                    "                                                ELSE '9'  \n" +
                    "                                             END AS hdbiHdCate, \n" +
                    "                     IFNULL(HF.FNote,'') as hdhDealDesc, \n" +
                    "                    IFNULL(H.FDutyPersonName,'') as hdhDealUserName, \n" +
                    "                       CASE \n" +
                    "                            WHEN INSTR(HF.FStepName ,'REVIEW') > 0 THEN 600 \n" +
                    "                            WHEN INSTR(HF.FStepName, 'COMPLETED') > 0 THEN 500 \n" +
                    "                            WHEN INSTR(HF.FStepName, 'ASSIGN') > 0 THEN 300 \n" +
                    "                            WHEN INSTR(HF.FStepName, 'NEWHT') > 0 THEN 200 \n" +
                    "                            ELSE 100 \n" +
                    "                            END  as hdhDealStep, \n" +
                    "                    IFNULL(DATE_FORMAT(HF.FCreaterTime,'%Y-%m-%d %H:%i:%s'),'') as hdhDealTime \n" +
                    "                     FROM \n" +
                    "                    htdetail H \n" +
                    "                    LEFT JOIN htdetailflowinstance HF ON \n" +
                    "                    H.FFrameworkID = HF.FFrameworkID \n" +
                    "                    AND H.CurrentHtStepID = HF.FStepID \n" +
                    "                    -- 复查 \n" +
                    "                    LEFT JOIN review RV ON \n" +
                    "                    H.FFrameworkID = RV.FFrameworkID \n" +
                    "                    AND H.FHiddenTroubleUUID = RV.FHiddenTroubleUUID \n" +
                    "                    -- 下达 \n" +
                    "                    LEFT JOIN assign AG ON \n" +
                    "                    H.FFrameworkID = AG.FFrameworkID \n" +
                    "                    AND \n" +
                    "                    H.FHiddenTroubleUUID = AG.FHiddenTroubleUUID \n" +
                    "                    -- 整改 \n" +
                    "                    LEFT JOIN completed CP ON \n" +
                    "                    H.FFrameworkID = CP.FFrameworkID \n" +
                    "                    AND H.FHiddenTroubleUUID = CP.FHiddenTroubleUUID \n" +
                    "                    WHERE \n" +
                    "                    H.FLevel LIKE '%级%' \n" +
                    "                    AND \n" +
                    "                    H.FFrameworkID = '37.06.81.07.003' \n" +
                    "                    AND \n" +
                    "                    H.FDetectionTime > '2019-01-01'";//sql语句
            ResultSet rs=state.executeQuery(sql);     //将sql语句传至数据库，返回的值为一个字符集用一个变量接收

            final Gson gson = new Gson();
            JSONArray jsonArray = new JSONArray();
            String url = "http://10.212.1.37:8081/scyf/hidden/hiddenDangerReport.do";
            String[] arg = {"mineCode", "token", "reportContent"};
            while(rs.next()){
                System.out.println(rs.getRow());

                JSONArray jsonArray1 = new JSONArray();

                JSONObject json0 = new JSONObject();
                json0.put("id",rs.getString(1).toString());
                json0.put("hdbiRectPeriod",rs.getString(2).toString());
                json0.put("hdbiRectUnit",rs.getString(3).toString());
                json0.put("hdbiClStatus",rs.getString(4).toString());
                json0.put("hdbiReviewTime",rs.getString(5).toString());
                json0.put("hdbiHdLevel",rs.getString(6).toString());
                json0.put("hdbiHdLocation",rs.getString(7).toString());
                json0.put("hdbiReviewer",rs.getString(8).toString());
                json0.put("hdbiRectMeasures",rs.getString(9).toString());
                json0.put("hdbiRectTagartDt",rs.getString(10).toString());
                json0.put("hdbiDesc",rs.getString(11).toString());
                json0.put("hdbiReviewReport",rs.getString(12).toString());
                json0.put("hdbiInveDate",rs.getString(13).toString());
                json0.put("hdbiRectMan",rs.getString(14).toString());
                json0.put("hdbiHdCate",rs.getString(15).toString());

                JSONObject json1 = new JSONObject();
                json1.put("hdhDealDesc",rs.getString(16).toString());
                json1.put("hdhDealUserName",rs.getString(17).toString());
                json1.put("hdhDealStep",rs.getString(18).toString());
                json1.put("hdhDealTime",rs.getString(19).toString());
                jsonArray1.add(json1);

                json0.put("histInfo",jsonArray1);
                jsonArray.add(json0);
            }

            try {
                String[] argValues = {
                        "370681B0012000211601",
                        "GkEe1Z1NuTJuhWXhmcuMgMPEs8p1gFU4HzPrVQyUQXn5BT2Pol/j+n9WZNE8NichUPV7L6DO2X+JdZpz9XeisbPLcqhlaxh35u67m4lUmuI=",
                        gson.toJson(jsonArray)};
                System.out.println(gson.toJson(jsonArray));
                String reponse = AsyncClient.DoPostMethod(url, arg, argValues);
                if (reponse != null) {
                    SynReponse synReponse = gson.fromJson(reponse, SynReponse.class);
                    System.out.println("日常隐患同步结果：" + synReponse.toString());
                    if (synReponse.getCode().equals("200")) {
                        System.out.println("200");
                    } else {
                    }
                } else {
                    System.out.println("日常隐患信息上传失败！");
                }

            } catch (Exception ex) {
            }
        } catch (Exception e) {
            e.printStackTrace();
        }*/
    }

}
