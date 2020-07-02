package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.RiskcontrolplanebymonthitemDao;
import cn.com.kingc.risk.service.RiskcontrolplanebymonthitemService;
import cn.com.kingc.risk.util.StringDateFormat;
import cn.com.kingc.risk.model.Event;

import cn.com.kingc.risk.model.Riskcontrolplanebymonthitem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

/**
*
*Riskcontrolplanebymonthitem Service实现层
*/
@Service
public class RiskcontrolplanebymonthitemServiceImpl implements RiskcontrolplanebymonthitemService{
    @Autowired
    private RiskcontrolplanebymonthitemDao riskcontrolplanebymonthitemDao;

    //新增一个Riskcontrolplanebymonthitem
    @SystemServiceLog(description = "新增一个Riskcontrolplanebymonthitem")
    @Override
    public Boolean addRiskcontrolplanebymonthitem(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem){
        return riskcontrolplanebymonthitemDao.addRiskcontrolplanebymonthitem(riskcontrolplanebymonthitem)>0;
    }

    //根据主键删除Riskcontrolplanebymonthitem
    @SystemServiceLog(description = "根据主键删除Riskcontrolplanebymonthitem")
    @Override
    public Boolean deleteRiskcontrolplanebymonthitem(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem){
        return riskcontrolplanebymonthitemDao.deleteRiskcontrolplanebymonthitem(riskcontrolplanebymonthitem)>0;
    }

    //根据主键删除Riskcontrolplanebymonthitem，参数是主键
    @SystemServiceLog(description = "根据主键删除Riskcontrolplanebymonthitem,参数是主键")
    @Override
    public Boolean deleteRiskcontrolplanebymonthitemByID(Integer itemID){
        return riskcontrolplanebymonthitemDao.deleteRiskcontrolplanebymonthitemByID(itemID)>0;
    }


    //根据主键更新Riskcontrolplanebymonthitem
    @SystemServiceLog(description = "根据主键更新Riskcontrolplanebymonthitem")
    @Override
    public Boolean updateRiskcontrolplanebymonthitem(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem){
        return riskcontrolplanebymonthitemDao.updateRiskcontrolplanebymonthitem(riskcontrolplanebymonthitem)>0;
    }

    //根据主键获取Riskcontrolplanebymonthitem
    @SystemServiceLog(description = "根据主键获取Riskcontrolplanebymonthitem")
    @Override
    public Riskcontrolplanebymonthitem getRiskcontrolplanebymonthitem(Integer itemID){
        return riskcontrolplanebymonthitemDao.getRiskcontrolplanebymonthitem(itemID);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Riskcontrolplanebymonthitem总条数")
    @Override
    public Integer getRiskcontrolplanebymonthitemCount(){
        return riskcontrolplanebymonthitemDao.getRiskcontrolplanebymonthitemCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Riskcontrolplanebymonthitem数据")
    @Override
    public List<Riskcontrolplanebymonthitem> getRiskcontrolplanebymonthitemByPage(int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return riskcontrolplanebymonthitemDao.getRiskcontrolplanebymonthitemByPage(pageBegin,pageEnd);
    }

    //获取总条数，参数是Riskcontrolplanebymonthitem 对象
    @SystemServiceLog(description = "分页获取Riskcontrolplanebymonthitem数据,参数是Riskcontrolplanebymonthitem 对象")
    @Override
    public Integer getRiskcontrolplanebymonthitemCountByRiskcontrolplanebymonthitem(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem){
         return riskcontrolplanebymonthitemDao.getRiskcontrolplanebymonthitemCountByRiskcontrolplanebymonthitem(riskcontrolplanebymonthitem);
    }

    //分页获取数据，参数是Riskcontrolplanebymonthitem 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Riskcontrolplanebymonthitem数据，参数是Riskcontrolplanebymonthitem 对象和页面大小和页码")
    @Override
    public List<Riskcontrolplanebymonthitem> getRiskcontrolplanebymonthitemByPageAndRiskcontrolplanebymonthitem(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem){
        Integer pageBegin=(riskcontrolplanebymonthitem.getPage()-1)*riskcontrolplanebymonthitem.getPagesize();
        Integer pageEnd=riskcontrolplanebymonthitem.getPagesize();
        return riskcontrolplanebymonthitemDao.getRiskcontrolplanebymonthitemByPageAndRiskcontrolplanebymonthitem(riskcontrolplanebymonthitem,pageBegin,pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Riskcontrolplanebymonthitem数据")
    @Override
    public List<Riskcontrolplanebymonthitem>  getRiskcontrolplanebymonthitemData(Riskcontrolplanebymonthitem riskcontrolplanebymonthitem){
        return riskcontrolplanebymonthitemDao.getRiskcontrolplanebymonthitemData(riskcontrolplanebymonthitem);
    }

    @Override
    public boolean addRiskcontrolplanebymonthitemList(List<Riskcontrolplanebymonthitem> riskcontrolplanebymonthitemS) {
        return riskcontrolplanebymonthitemDao.addRiskcontrolplanebymonthitemList(riskcontrolplanebymonthitemS)>0;
    }

    @Override
    public Integer deleteRiskcontrolplanemonthitemByMonthID(Integer monthPlaneID) {
        return riskcontrolplanebymonthitemDao.deleteRiskcontrolplanemonthitemByMonthID(monthPlaneID);
    }

	@Override
	public List<Riskcontrolplanebymonthitem> findriskcontrolplanebymonthitemAll() throws ParseException {
		//StringDateFormat stringDateFormat=new StringDateFormat();
		List<Riskcontrolplanebymonthitem> list=riskcontrolplanebymonthitemDao.findriskcontrolplanebymonthitemAll();
		/*List<Event> listE=new ArrayList();
		if(list!=null&&list.size()>0){
			
			for(Riskcontrolplanebymonthitem r:list){
				Event events=new Event();
				events.setId(r.getItemID());
				events.setTitle(r.getKeyContent());
				//long start=stringDateFormat.stringToLong(r.getPlanDate(), "yyyy-mm-dd");
				events.setStart(r.getPlanDate());
				events.setClassName("info");
				listE.add(events);
			}
			return listE;
		}else{
			return null;
		}*/
		return list;
	}
}