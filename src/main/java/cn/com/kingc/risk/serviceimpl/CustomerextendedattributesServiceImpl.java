package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.CustomerextendedattributesDao;
import cn.com.kingc.risk.service.CustomerextendedattributesService;
import cn.com.kingc.risk.model.Customerextendedattributes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;
import java.util.List;

/**
*
*Customerextendedattributes Service实现层
*/
@Service
public class CustomerextendedattributesServiceImpl implements CustomerextendedattributesService{
    @Autowired
    private CustomerextendedattributesDao customerextendedattributesDao;

    //新增一个Customerextendedattributes
    @SystemServiceLog(description = "新增一个Customerextendedattributes")
    @Override
    public Boolean addCustomerextendedattributes(Customerextendedattributes customerextendedattributes){
        return customerextendedattributesDao.addCustomerextendedattributes(customerextendedattributes)>0;
    }

    //批量新增Customerextendedattributes，参数是Customerextendedattributes集合
    @Override
    public void addCustomerextendedattributesList(List<Customerextendedattributes> customerextendedattributesList){
        customerextendedattributesDao.addCustomerextendedattributesList(customerextendedattributesList);
    }

    //根据主键删除Customerextendedattributes
    @SystemServiceLog(description = "根据主键删除Customerextendedattributes")
    @Override
    public Boolean deleteCustomerextendedattributes(Customerextendedattributes customerextendedattributes){
        return customerextendedattributesDao.deleteCustomerextendedattributes(customerextendedattributes)>0;
    }

    //根据主键删除Customerextendedattributes，参数是主键
    @SystemServiceLog(description = "根据主键删除Customerextendedattributes,参数是主键")
    @Override
    public Boolean deleteCustomerextendedattributesByID(Integer classPropertyID){
        return customerextendedattributesDao.deleteCustomerextendedattributesByID(classPropertyID)>0;
    }


    //根据主键更新Customerextendedattributes
    @SystemServiceLog(description = "根据主键更新Customerextendedattributes")
    @Override
    public Boolean updateCustomerextendedattributes(Customerextendedattributes customerextendedattributes){
        return customerextendedattributesDao.updateCustomerextendedattributes(customerextendedattributes)>0;
    }

    //根据主键获取Customerextendedattributes
    @SystemServiceLog(description = "根据主键获取Customerextendedattributes")
    @Override
    public Customerextendedattributes getCustomerextendedattributes(Integer classPropertyID){
        return customerextendedattributesDao.getCustomerextendedattributes(classPropertyID);
    }

    //获取总条数
    @SystemServiceLog(description = "获取Customerextendedattributes总条数")
    @Override
    public Integer getCustomerextendedattributesCount(){
        return customerextendedattributesDao.getCustomerextendedattributesCount();
    }

    //分页获取数据
    @SystemServiceLog(description = "分页获取Customerextendedattributes数据")
    @Override
    public List<Customerextendedattributes> getCustomerextendedattributesByPage(int pagesize,int page){
        Integer pageBegin=(page-1)*pagesize;
        Integer pageEnd=pagesize;
        return customerextendedattributesDao.getCustomerextendedattributesByPage(pageBegin,pageEnd);
    }

    //获取总条数，参数是Customerextendedattributes 对象
    @SystemServiceLog(description = "分页获取Customerextendedattributes数据,参数是Customerextendedattributes 对象")
    @Override
    public Integer getCustomerextendedattributesCountByCustomerextendedattributes(Customerextendedattributes customerextendedattributes){
         return customerextendedattributesDao.getCustomerextendedattributesCountByCustomerextendedattributes(customerextendedattributes);
    }

    //分页获取数据，参数是Customerextendedattributes 对象和页面大小和页码
    @SystemServiceLog(description = "分页获取Customerextendedattributes数据，参数是Customerextendedattributes 对象和页面大小和页码")
    @Override
    public List<Customerextendedattributes> getCustomerextendedattributesByPageAndCustomerextendedattributes(Customerextendedattributes customerextendedattributes){
        Integer pageBegin=(customerextendedattributes.getPage()-1)*customerextendedattributes.getPagesize();
        Integer pageEnd=customerextendedattributes.getPagesize();
        return customerextendedattributesDao.getCustomerextendedattributesByPageAndCustomerextendedattributes(customerextendedattributes,pageBegin,pageEnd);
    }

    //根据条件查询数据
    @SystemServiceLog(description = "根据条件查询数据Customerextendedattributes数据")
    @Override
    public List<Customerextendedattributes>  getCustomerextendedattributesData(Customerextendedattributes customerextendedattributes){
        return customerextendedattributesDao.getCustomerextendedattributesData(customerextendedattributes);
    }
}