package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.hiddentrouble.model.Htdetail;
import cn.com.kingc.hiddentrouble.service.HtdetailService;
import cn.com.kingc.risk.dao.RiskcontrolanalyzeitemDao;
import cn.com.kingc.risk.service.RiskcontrolanalyzeitemService;
import cn.com.kingc.risk.model.Riskcontrolanalyzeitem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
*
*Riskcontrolanalyzeitem Service实现层
*/
@Service("riskcontrolanalyzeitemService")
public class RiskcontrolanalyzeitemServiceImpl implements RiskcontrolanalyzeitemService{
    @Autowired
    private RiskcontrolanalyzeitemDao riskcontrolanalyzeitemDao;

    @Autowired
    private HtdetailService htdetailService;

    //新增一个Riskcontrolanalyzeitem
    @SystemServiceLog(description = "新增一个Riskcontrolanalyzeitem")
    @Override
    public Boolean addRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem){
        Integer countRiskcontrol=riskcontrolanalyzeitemDao.addRiskcontrolanalyzeitem(riskcontrolanalyzeitem);
        return countRiskcontrol>0;
    }

    //根据主键删除Riskcontrolanalyzeitem
    @SystemServiceLog(description = "根据主键删除Riskcontrolanalyzeitem")
    @Override
    public Boolean deleteRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem){
        return riskcontrolanalyzeitemDao.deleteRiskcontrolanalyzeitem(riskcontrolanalyzeitem)>0;
    }

    @Override
    public Boolean deleteitemByAnalyzeID(Integer AnalyzeID) {
        return riskcontrolanalyzeitemDao.deleteitemByAnalyzeID(AnalyzeID);
    }

    //根据主键删除Riskcontrolanalyzeitem，参数是主键
    @SystemServiceLog(description = "根据主键删除Riskcontrolanalyzeitem,参数是主键")
    @Override
    public Boolean deleteRiskcontrolanalyzeitemByID(Integer lostcontrolItem,String framework){
        return riskcontrolanalyzeitemDao.deleteRiskcontrolanalyzeitemByID(lostcontrolItem)>0;
    }


    //根据主键更新Riskcontrolanalyzeitem
    @SystemServiceLog(description = "根据主键更新Riskcontrolanalyzeitem")
    @Override
    public Boolean updateRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem){
        //如果是措施或者重新修订等级
        //可以直接把失控的关闭掉
        if(riskcontrolanalyzeitem.getoHiddenTroubleID()==null || riskcontrolanalyzeitem.getoHiddenTroubleID()<=0){
            riskcontrolanalyzeitemDao.updateOutofControlStatusISover(
                    riskcontrolanalyzeitem.getFrameWorkID(),
                    riskcontrolanalyzeitem.getLostControlItemID());
        }else{
            //如果是隐患
            Htdetail htdetail=htdetailService.getHtdetail(riskcontrolanalyzeitem.getoHiddenTroubleID());
            if(htdetail.getCurrentStep()!=null){
                //当班处理或者隐患销号了
                if(htdetail.getFDangBanChuLi() || htdetail.getCurrentStep().getFStepName().contains("AUDIT")){
                    riskcontrolanalyzeitemDao.updateOutofControlStatusISover(
                            riskcontrolanalyzeitem.getFrameWorkID(),
                            riskcontrolanalyzeitem.getLostControlItemID());
                }
            }
        }

        return riskcontrolanalyzeitemDao.updateRiskcontrolanalyzeitem(riskcontrolanalyzeitem)>0;
    }

    //根据主键获取Riskcontrolanalyzeitem
    @SystemServiceLog(description = "根据主键获取Riskcontrolanalyzeitem")
    @Override
    public Riskcontrolanalyzeitem getRiskcontrolanalyzeitem(Integer itemID){
        return riskcontrolanalyzeitemDao.getRiskcontrolanalyzeitem(itemID);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Riskcontrolanalyzeitem总条数")
    @Override
    public Integer getRiskcontrolanalyzeitemCount(){
        return riskcontrolanalyzeitemDao.getRiskcontrolanalyzeitemCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Riskcontrolanalyzeitem数据")
    @Override
    public List<Riskcontrolanalyzeitem> getRiskcontrolanalyzeitemByPage(int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return riskcontrolanalyzeitemDao.getRiskcontrolanalyzeitemByPage(pageBegin,pageEnd);
    }

    //获取总条数，参数是Riskcontrolanalyzeitem 对象
    @SystemServiceLog(description = "分页获取Riskcontrolanalyzeitem数据,参数是Riskcontrolanalyzeitem 对象")
    @Override
    public Integer getRiskcontrolanalyzeitemCountByRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem){
         return riskcontrolanalyzeitemDao.getRiskcontrolanalyzeitemCountByRiskcontrolanalyzeitem(riskcontrolanalyzeitem);
    }

    //分页获取数据，参数是Riskcontrolanalyzeitem 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Riskcontrolanalyzeitem数据，参数是Riskcontrolanalyzeitem 对象和页面大小和页码")
    @Override
    public List<Riskcontrolanalyzeitem> getRiskcontrolanalyzeitemByPageAndRiskcontrolanalyzeitem(Riskcontrolanalyzeitem riskcontrolanalyzeitem){
        Integer pageBegin=(riskcontrolanalyzeitem.getPage()-1)*riskcontrolanalyzeitem.getPagesize();
        Integer pageEnd=riskcontrolanalyzeitem.getPagesize();
        return riskcontrolanalyzeitemDao.getRiskcontrolanalyzeitemByPageAndRiskcontrolanalyzeitem(riskcontrolanalyzeitem,pageBegin,pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskcontrolanalyzeitem数据")
    @Override
    public List<Riskcontrolanalyzeitem>  getRiskcontrolanalyzeitemData(Riskcontrolanalyzeitem riskcontrolanalyzeitem){
        return riskcontrolanalyzeitemDao.getRiskcontrolanalyzeitemData(riskcontrolanalyzeitem);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据现场检查情况生成Riskcontrolanalyzeitem数据")
    @Override
    public List<Riskcontrolanalyzeitem> getItemByCheck(String frameWorkID, Integer checkYear, Integer checkMonth, String MajorType) {
        return riskcontrolanalyzeitemDao.getItemByCheck(
                frameWorkID,
                checkYear,
                checkMonth,
                MajorType);
    }



    @SystemServiceLog(description = "更新失控状态")
    @Override
    public Boolean changeOutofControlStatusISover(
            Boolean status,
            Integer lostControlItemID,
            String frameWorkID) {
        return riskcontrolanalyzeitemDao.changeOutofControlStatusISover(status, lostControlItemID,frameWorkID);
    }

    @SystemServiceLog(description = "根据分析结果更新失控状态updateOutofControlStatusISover")
    @Override
    public Boolean updateOutofControlStatusISover(String frameWorkID, Integer lostControlItemID) {
        return riskcontrolanalyzeitemDao.updateOutofControlStatusISover(
                frameWorkID,lostControlItemID)>0;
    }

    @SystemServiceLog(description = "根据隐患ID分析结果更新失控状态updateOutofControlStatusISoverByHiddentroubleID")
    @Override
    public Boolean updateOutofControlStatusISoverByHiddentroubleID(String frameWorkID, Integer oHiddenTroubleID) {
        return riskcontrolanalyzeitemDao.updateOutofControlStatusISoverByHiddentroubleID(
                frameWorkID,oHiddenTroubleID)>0;
    }
}