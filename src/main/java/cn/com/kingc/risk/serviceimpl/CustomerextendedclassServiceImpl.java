package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.CustomerextendedclassDao;
import cn.com.kingc.risk.service.CustomerextendedclassService;
import cn.com.kingc.risk.model.Customerextendedclass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
*
*Customerextendedclass Service实现层
*/
@Service("customerextendedclassService")
public class CustomerextendedclassServiceImpl implements CustomerextendedclassService{
    @Autowired
    private CustomerextendedclassDao customerextendedclassDao;

    //新增一个Customerextendedclass
    @SystemServiceLog(description = "新增一个Customerextendedclass")
    @Override
    public Boolean addCustomerextendedclass(Customerextendedclass customerextendedclass){
        return customerextendedclassDao.addCustomerextendedclass(customerextendedclass)>0;
    }

    //根据主键删除Customerextendedclass
    @SystemServiceLog(description = "根据主键删除Customerextendedclass")
    @Override
    public Boolean deleteCustomerextendedclass(Customerextendedclass customerextendedclass){
        return customerextendedclassDao.deleteCustomerextendedclass(customerextendedclass)>0;
    }

    //根据主键删除Customerextendedclass，参数是主键
    @SystemServiceLog(description = "根据主键删除Customerextendedclass,参数是主键")
    @Override
    public Boolean deleteCustomerextendedclassByID(Integer classID){
        return customerextendedclassDao.deleteCustomerextendedclassByID(classID)>0;
    }


    //根据主键更新Customerextendedclass
    @SystemServiceLog(description = "根据主键更新Customerextendedclass")
    @Override
    public Boolean updateCustomerextendedclass(Customerextendedclass customerextendedclass){
        return customerextendedclassDao.updateCustomerextendedclass(customerextendedclass)>0;
    }

    //根据主键获取Customerextendedclass
    @SystemServiceLog(description = "根据主键获取Customerextendedclass")
    @Override
    public Customerextendedclass getCustomerextendedclass(Integer classID){
        return customerextendedclassDao.getCustomerextendedclass(classID);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Customerextendedclass总条数")
    @Override
    public Integer getCustomerextendedclassCount(){
        return customerextendedclassDao.getCustomerextendedclassCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Customerextendedclass数据")
    @Override
    public List<Customerextendedclass> getCustomerextendedclassByPage(int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return customerextendedclassDao.getCustomerextendedclassByPage(pageBegin,pageEnd);
    }

    //获取总条数，参数是Customerextendedclass 对象
    @SystemServiceLog(description = "分页获取Customerextendedclass数据,参数是Customerextendedclass 对象")
    @Override
    public Integer getCustomerextendedclassCountByCustomerextendedclass(Customerextendedclass customerextendedclass){
         return customerextendedclassDao.getCustomerextendedclassCountByCustomerextendedclass(customerextendedclass);
    }

    //分页获取数据，参数是Customerextendedclass 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Customerextendedclass数据，参数是Customerextendedclass 对象和页面大小和页码")
    @Override
    public List<Customerextendedclass> getCustomerextendedclassByPageAndCustomerextendedclass(Customerextendedclass customerextendedclass){
        Integer pageBegin=(customerextendedclass.getPage()-1)*customerextendedclass.getPagesize();
        Integer pageEnd=customerextendedclass.getPagesize();
        return customerextendedclassDao.getCustomerextendedclassByPageAndCustomerextendedclass(customerextendedclass,pageBegin,pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Customerextendedclass数据")
    @Override
    public List<Customerextendedclass>  getCustomerextendedclassData(Customerextendedclass customerextendedclass){
        return customerextendedclassDao.getCustomerextendedclassData(customerextendedclass);
    }


    @Override
    public Integer initializeaCustomerextendedclass(String coalMineName, String frameWorkID) {
        return customerextendedclassDao.initializeaCustomerextendedclass(coalMineName,frameWorkID);
    }
}