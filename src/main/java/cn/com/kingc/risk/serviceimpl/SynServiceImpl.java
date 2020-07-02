package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.*;
import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.SynService;
import cn.com.kingc.risk.util.AsyncClient;
import com.google.gson.Gson;
import com.mkaq.core.aop.SystemServiceLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by admistrator on 2018-01-08.
 */
@Service("synService")
public class SynServiceImpl implements SynService {

    @Autowired
    SynDao synDao;

    @Autowired
    SynsettingDao synsettingDao;

    @Autowired
    SyncyearhistoryDao syncyearhistoryDao;

    @Autowired
    SyncspecialhistoryDao syncspecialhistoryDao;

    @Autowired
    SyncriskhistoryDao syncriskhistoryDao;

    @Override
    public List<Map<String,Object>> getSyncyearhistoryList(Syncyearhistory syncyearhistory){
        return syncyearhistoryDao.getSyncyearhistoryList(syncyearhistory);
    };


    @SystemServiceLog(description = "判断对象是否已经存在")
    @Override
    public Integer synsettingIsExist(Synsetting synsetting) {
        return synsettingDao.synsettingIsExist(synsetting);
    }

    @SystemServiceLog(description = "新增一个Synsetting")
    @Override
    public Integer addSynsetting(Synsetting synsetting) {
        return synsettingDao.addSynsetting(synsetting);
    }

    @SystemServiceLog(description = "根据主键更新Synsetting")
    @Override
    public Integer updateSynsetting(Synsetting synsetting) {
        return synsettingDao.updateSynsetting(synsetting);
    }

    @SystemServiceLog(description = "根据主键更新Synsetting")
    @Override
    public Synsetting getSynsetting(String frameWorkID) {
        return synsettingDao.getSynsetting(frameWorkID);
    }

    @SystemServiceLog(description = "获取待上传风险清单信息")
    @Override
    public List<Map<String, Object>> getWaittingForSynByRiskHistory(String frameWorkID,String showMajor) {
        return synDao.getWaittingForSynByRiskHistory(frameWorkID,showMajor);
    }

    @SystemServiceLog(description = "获取待上传重大风险信息")
    @Override
    public List<Map<String, Object>> getWaittingForSynByRiskHazardHistory(String frameWorkID) {
        return synDao.getWaittingForSynByRiskHazardHistory(frameWorkID);
    }

    @SystemServiceLog(description = "根据选择风险点获取待上传风险信息")
    @Override
    public List<Map<String, Object>> getHazardInfoBySelectRisk(String frameWorkID, String riskFullNumber) {
        return synDao.getHazardInfoBySelectRisk(frameWorkID, riskFullNumber);
    }

    @SystemServiceLog(description = "选择已上报风险信息")
    @Override
    public List<Map<String,Object>> getReportedHazardInfo(String frameWorkID, String riskFullNumber){
        return synDao.getReportedHazardInfo(frameWorkID,riskFullNumber);
    }

    @SystemServiceLog(description = "获取待上传年度辨识里的风险信息")
    @Override
    public List<Synreportmajoryearrisk> getWaittingForSynByYearHistory(String frameWorkID, String year, String month, String Name) {
        return synDao.getWaittingForSynByYearHistory(frameWorkID, year, month, Name);
    }

    @SystemServiceLog(description = "获取待上传专项辨识的信息")
    @Override
    public List<SynSpecialevaluatereport> getWaittingForSynBySpeciallyHistory(String frameWorkID, String year, String month) {
        List<SynSpecialevaluatereport> list = synDao.getWaittingForSynBySpeciallyHistory(frameWorkID, year, month);
        return list;
    }

    @SystemServiceLog(description = "调用待上传风险清单信息")
    @Override
    public Boolean SynRiskData(
            final String frameWorkID,
            final Integer posterID,
            final String posterName,
            final List<Map<String, Object>> HardazIDs) {

        Synsetting synsetting = synsettingDao.getSynsetting(frameWorkID);
        if (synsetting == null) {
            return false;
        }

        if (HardazIDs == null || HardazIDs.size() == 0) {
            return false;
        }

        String strHardazIDs = "";

        for (Map<String, Object> map : HardazIDs) {
            if (map.containsKey("HazardID")) {
                String hazardID = map.get("HazardID").toString();
                strHardazIDs += hazardID + ",";
            }
        }

        strHardazIDs = strHardazIDs.substring(0, strHardazIDs.length() - 1);

        if (strHardazIDs.trim().length() > 0) {
            //一级风险点 风险点
            Boolean synAddressResult = SynAddress(synsetting, frameWorkID, posterID, posterName, strHardazIDs);
            //二级风险点 同一类危险源
            Boolean synHazardResult = Synhazard(synsetting, frameWorkID, posterID, posterName, strHardazIDs);
            //风险点与部门的关系
            Boolean synAddressdepartrelResult = Synaddressdepartrel(synsetting, frameWorkID, posterID, posterName, strHardazIDs);
            //上报危险源 同风险
            Synreportmajoryearrisk(synsetting, frameWorkID, posterID, posterName, strHardazIDs);
        }
        return true;
    }

    //风险点上报
    private boolean SynAddress(
            Synsetting synsetting,
            final String frameWorkID,
            final Integer posterID,
            final String posterName,
            String HardazIDs) {
        String url = synsetting.getSynServiceBaseAddress() + "/scyf/api/address/synAddress.do";
        String[] args = {"mineCode", "token", "reportContent"};
        final Gson gson = new Gson();
        List<Synaddress> lst = synDao.repairSynAddress(frameWorkID, HardazIDs);
        try {
            if (lst != null && lst.size() > 0) {
                String[] argValues = {
                        synsetting.getSynMineCode(),
                        synsetting.getSynToken(),
                        gson.toJson(lst)};

                String reponse = AsyncClient.DoPostMethod(url, args, argValues);
                if (reponse != null) {
                    SynReponse synReponse = gson.fromJson(reponse, SynReponse.class);
                    System.out.println("风险点同步结果：" + synReponse.toString());
                    if (synReponse.getCode().equals("200")) {
                        return true;
                    } else {
                        return false;
                    }
                } else {
                    System.out.println("同步风险点信息失败！");
                    return false;
                }
            } else {
                return true;
            }
        } catch (Exception ex) {
            return false;
        }
    }


    private boolean Synhazard(
            Synsetting synsetting,
            final String frameWorkID,
            final Integer posterID,
            final String posterName,
            String HardazIDs) {
        String url = synsetting.getSynServiceBaseAddress() + "/scyf/api/hazard/synHazard.do";
        String[] args = {"mineCode", "token", "reportContent"};
        final Gson gson = new Gson();
        List<Synhazard> lst = synDao.repairSynHazard(frameWorkID, HardazIDs);

        if (lst != null && lst.size() > 0) {

            String[] argValues = {
                    synsetting.getSynMineCode(),
                    synsetting.getSynToken(),
                    gson.toJson(lst)};

            String reponse = AsyncClient.DoPostMethod(url, args, argValues);

            if (reponse != null) {
                SynReponse synReponse = gson.fromJson(reponse, SynReponse.class);
                System.out.println("二级风险点同步返回结果：" + synReponse.toString());
                if (synReponse.getCode().equals("200")) {
                    return true;
                } else {
                    return false;
                }
            } else {
                System.out.println("同步二级风险点信息失败！");
                return false;
            }
        } else {
            return true;
        }

    }


    private boolean Synaddressdepartrel(
            Synsetting synsetting,
            final String frameWorkID,
            final Integer posterID,
            final String posterName,
            String HardazIDs) {
        String url = synsetting.getSynServiceBaseAddress() + "/scyf/api/address/synAddressDepartRel.do";
        String[] args = {"mineCode", "token", "reportContent"};
        final Gson gson = new Gson();
        List<Synaddressdepartrel> lst = synDao.repairSynAddressdepartrel(frameWorkID, HardazIDs);

        if (lst != null && lst.size() > 0) {
            String[] argValues = {
                    synsetting.getSynMineCode(),
                    synsetting.getSynToken(),
                    gson.toJson(lst)};

            String reponse = AsyncClient.DoPostMethod(url, args, argValues);
            if (reponse != null) {
                SynReponse synReponse = gson.fromJson(reponse, SynReponse.class);
                System.out.println("同步部门信息结果：" + synReponse.toString());
                if (synReponse.getCode().equals("200")) {
                    return true;
                } else {
                    return false;
                }
            } else {
                System.out.println("同步部门信息失败！");
                return false;
            }
        } else {
            return true;
        }
    }

    private boolean Synreportmajoryearrisk(
            Synsetting synsetting,
            final String frameWorkID,
            final Integer posterID,
            final String posterName,
            String HardazIDs) {
        boolean result = true;
        String url = synsetting.getSynServiceBaseAddress() + "/scyf/risk/reportMajorYearRisk.do";
        String[] args = {"mineCode", "token", "reportContent"};
        final Gson gson = new Gson();
        List<Synreportmajoryearrisk> lst = synDao.repairSynReportmajoryearrisk(frameWorkID, HardazIDs);
        if (lst != null && lst.size() > 0) {

            String[] argValues = {
                    synsetting.getSynMineCode(),
                    synsetting.getSynToken(),
                    gson.toJson(lst)};

            String reponse = AsyncClient.DoPostMethod(url, args, argValues);
            if (reponse != null) {
                SynReponse synReponse = gson.fromJson(reponse, SynReponse.class);
                System.out.println("风险信息上报结果：" + synReponse.toString());
                if (synReponse.getCode().equals("200")) {
                    result = true;
                } else {
                    result = false;
                }
            } else {
                System.out.println("风险信息上报失败！");
                result = false;
            }
        }
        if (result) {
            if (lst != null && lst.size() > 0) {
                for (Synreportmajoryearrisk risk : lst) {
                    Syncriskhistory syncriskhistory = new Syncriskhistory();
                    syncriskhistory.setHazardID(risk.getHazardID());
                    syncriskhistory.setFSynEmpName(posterName);
                    syncriskhistory.setFSynEmpID(posterID);
                    syncriskhistory.setFrameWorkID(frameWorkID);
                    syncriskhistory.setFSynResultCode("200");
                    syncriskhistory.setFSynStatus(true);
                    syncriskhistory.setHazardUUID(risk.getId());
                    syncriskhistory.setRiskSiteID(risk.getRiskSiteID());
                     //存入历史记录
                    if (syncriskhistoryDao.addSyncriskhistory(syncriskhistory) > 0) {
                        System.out.println(risk.getId() + risk.getYeMhazardDesc() + "Success");
                    }
                }
            }
        }
        return result;
    }


    @SystemServiceLog(description = "调用上传重大风险信息")
    @Override
    public Boolean SynRRiskHazardData(List<Map<String, Object>> WaittingForSynByRisk) {
        return null;
    }

    @SystemServiceLog(description = "调用待上传年度辨识里的风险信息")
    @Override
    public boolean SynYearData(
            final String frameWorkID,
            final Integer posterID,
            final String posterName,
            List<Synreportmajoryearrisk> lst) {
        boolean result = true;
        Synsetting synsetting = synsettingDao.getSynsetting(frameWorkID);
        if (synsetting == null) {
            return false;
        }
        String url = synsetting.getSynServiceBaseAddress() + "/scyf/risk/reportYearRisk.do";
        String[] args = {"mineCode", "token", "reportContent"};

        final Gson gson = new Gson();

        if (lst != null && lst.size() > 0) {
            for (Synreportmajoryearrisk synreportmajoryearrisk : lst) {
                synreportmajoryearrisk.setYeAccident("8");
                if (synreportmajoryearrisk.getYeAccident() != null) {
                    switch (synreportmajoryearrisk.getYeAccident()) {
                        case "顶板":
                            synreportmajoryearrisk.setYeAccident("1");
                            break;
                        case "瓦斯":
                            synreportmajoryearrisk.setYeAccident("2");
                            break;
                        case "机电":
                            synreportmajoryearrisk.setYeAccident("3");
                            break;
                        case "运输":
                            synreportmajoryearrisk.setYeAccident("4");
                            break;
                        case "放炮":
                            synreportmajoryearrisk.setYeAccident("5");
                            break;
                        case "水害":
                            synreportmajoryearrisk.setYeAccident("6");
                            break;
                        case "火灾":
                            synreportmajoryearrisk.setYeAccident("7");
                            break;
                        case "其他":
                            synreportmajoryearrisk.setYeAccident("8");
                            break;
                        default:
                            synreportmajoryearrisk.setYeAccident("8");
                            break;
                    }
                }

                synreportmajoryearrisk.setYeHazardCate("5");
                if (synreportmajoryearrisk.getYeHazardCate() != null) {
                    switch (synreportmajoryearrisk.getYeHazardCate()) {
                        case "人":
                            synreportmajoryearrisk.setYeHazardCate("1");
                            break;
                        case "机":
                            synreportmajoryearrisk.setYeHazardCate("2");
                            break;
                        case "环":
                            synreportmajoryearrisk.setYeHazardCate("3");
                            break;
                        case "管":
                            synreportmajoryearrisk.setYeHazardCate("4");
                            break;
                        case "技":
                            synreportmajoryearrisk.setYeHazardCate("5");
                            break;
                        default:
                            synreportmajoryearrisk.setYeHazardCate("5");
                            break;
                    }
                }

                synreportmajoryearrisk.setYeProfession("6");
                if (synreportmajoryearrisk.getYeProfession() != null) {
                    switch (synreportmajoryearrisk.getYeProfession()) {
                        case "采煤":
                            synreportmajoryearrisk.setYeProfession("1");
                            break;
                        case "掘进":
                            synreportmajoryearrisk.setYeProfession("2");
                            break;
                        case "机电":
                            synreportmajoryearrisk.setYeProfession("3");
                            break;
                        case "运输":
                            synreportmajoryearrisk.setYeProfession("4");
                            break;
                        case "通风":
                            synreportmajoryearrisk.setYeProfession("5");
                            break;
                        case "其他":
                            synreportmajoryearrisk.setYeProfession("6");
                            break;
                        default:
                            synreportmajoryearrisk.setYeProfession("6");
                            break;
                    }
                }

                if (synreportmajoryearrisk.getYeRiskGrade() != null) {
                    switch (synreportmajoryearrisk.getYeRiskGrade()) {
                        case "重大风险":
                            synreportmajoryearrisk.setYeRiskGrade("1");
                            break;
                        case "较大风险":
                            synreportmajoryearrisk.setYeRiskGrade("2");
                            break;
                        case "一般风险":
                            synreportmajoryearrisk.setYeRiskGrade("3");
                            break;
                        case "低风险":
                            synreportmajoryearrisk.setYeRiskGrade("4");
                            break;
                        default:
                            synreportmajoryearrisk.setYeRiskGrade("4");
                            break;
                    }
                }

            }
            String[] argValues = {
                    synsetting.getSynMineCode(),
                    synsetting.getSynToken(),
                    gson.toJson(lst)};

            String reponse = AsyncClient.DoPostMethod(url, args, argValues);
            if (reponse != null) {
                SynReponse synReponse = gson.fromJson(reponse, SynReponse.class);
                System.out.println("风险年度辨识信息上报结果：" + synReponse.toString());
                if (synReponse.getCode().equals("200")) {
                    result = true;
                } else {
                    result = false;
                }
            } else {
                System.out.println("风险年度辨识信息上报失败！");
                result = false;
            }
        }
        if (result) {
            if (lst != null && lst.size() > 0) {
                for (Synreportmajoryearrisk synreportmajoryearrisk : lst) {
                    Syncyearhistory syncyearhistory = new Syncyearhistory();
                    syncyearhistory.setCoalMineName("");
                    syncyearhistory.setFrameWorkID(frameWorkID);
                    syncyearhistory.setFSynEmpID(posterID);
                    syncyearhistory.setFSynEmpName(posterName);
                    syncyearhistory.setFSynResultCode("200");
                    syncyearhistory.setRiskIdentificationYearID(synreportmajoryearrisk.getId());
                    syncyearhistory.setFSynStatus(true);
                    syncyearhistoryDao.addSyncyearhistory(syncyearhistory);
                }
            }
        }

        return result;
    }

    @SystemServiceLog(description = "调用待上传专项辨识的信息")
    @Override
    public boolean SynSpeciallyData(final String frameWorkID, final Integer posterID, final String posterName, List<SynSpecialevaluatereport> WaittingForSynByRisk) {
        boolean result = true;
        Synsetting synsetting = synsettingDao.getSynsetting(frameWorkID);
        if (synsetting == null) {
            return false;
        }
        String url = synsetting.getSynServiceBaseAddress() + "/scyf/risk/specialEvaluateReport.do";
        String[] args = {"mineCode", "token", "reportContent"};

        final Gson gson = new Gson();

        if (WaittingForSynByRisk != null && WaittingForSynByRisk.size() > 0) {

            String[] argValues = {
                    synsetting.getSynMineCode(),
                    synsetting.getSynToken(),
                    gson.toJson(WaittingForSynByRisk)};

            String reponse = AsyncClient.DoPostMethod(url, args, argValues);
            if (reponse != null) {
                SynReponse synReponse = gson.fromJson(reponse, SynReponse.class);
                System.out.println("专项辨识信息上报结果：" + synReponse.toString());
                if (synReponse.getCode().equals("200")) {
                    result = true;
                } else {
                    result = false;
                }
            } else {
                System.out.println("专项辨识信息上报失败！");
                result = false;
            }
        }
        if (result) {
            if (WaittingForSynByRisk != null && WaittingForSynByRisk.size() > 0) {
                for (SynSpecialevaluatereport synSpecialevaluatereport : WaittingForSynByRisk) {
                    Syncspecialhistory special = new Syncspecialhistory();
                    special.setFrameWorkID(frameWorkID);
                    special.setFSynEmpID(posterID);
                    special.setFSynEmpName(posterName);
                    special.setFSynResultCode("200");
                    special.setRiskIdentificationSpeciallyID(synSpecialevaluatereport.getId());
                    special.setFSynStatus(true);
                    syncspecialhistoryDao.addSyncspecialhistory(special);
                }
            }
        }
        return result;
    }
}
