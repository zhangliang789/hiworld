package cn.com.kingc.risk.serviceimpl;

import cn.com.kingc.risk.dao.TrinedataversionDao;
import cn.com.kingc.risk.service.TrinedataversionService;
import cn.com.kingc.risk.model.Trinedataversion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mkaq.core.aop.SystemServiceLog;

import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Title:
 * Copyright: Copyright (c) 2017 山东精诚电子科技有限公司
 * Company: 山东精诚电子科技有限公司
 * Description:Trinedataversion Service实现层
 * @date 2018-06-28 09:25:27 中国标准时间
 * @author
 * @version
 */

@Service
public class TrinedataversionServiceImpl implements TrinedataversionService{
    @Autowired
    private TrinedataversionDao trinedataversionDao;

    /**
     * 新增一个Trinedataversion
     * @param trinedataversion  Trinedataversion对象
     * @return 是否新增成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean addTrinedataversion(Trinedataversion trinedataversion){
        return trinedataversionDao.addTrinedataversion(trinedataversion)>0;
    }

    /**
     * 批量新增Trinedataversion
     * @param trinedataversionList  Trinedataversion集合
     */
    @Override
    public void addTrinedataversionList(List<Trinedataversion> trinedataversionList){
        trinedataversionDao.addTrinedataversionList(trinedataversionList);
    }

    /**
     * 删除Trinedataversion对象
     * @param trinedataversion Trinedataversion对象
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean deleteTrinedataversion(Trinedataversion trinedataversion){
        return trinedataversionDao.deleteTrinedataversion(trinedataversion)>0;
    }

    /**
     * 根据主键删除Trinedataversion
     * @param frameWorkID  Trinedataversion主键
     * @return 是否删除成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean deleteTrinedataversionByID(String frameWorkID){
        return trinedataversionDao.deleteTrinedataversionByID(frameWorkID)>0;
    }

    /**
     * 批量删除Trinedataversion
     * @param trinedataversionList  Trinedataversion集合
     *
     */
    @Override
    public void deleteTrinedataversionList(List<Trinedataversion> trinedataversionList){
        trinedataversionDao.deleteTrinedataversionList(trinedataversionList);
    }

    /**
     * 根据主键更新Trinedataversion
     * @param  trinedataversion  Trinedataversion对象
     * @return 是否更新成功 成功返回ture 失败返回false
     */
    @Override
    public Boolean updateTrinedataversion(Trinedataversion trinedataversion){
        return trinedataversionDao.updateTrinedataversion(trinedataversion)>0;
    }

    /**
     * 根据主键获取Trinedataversion
     * @param  frameWorkID  Trinedataversion对象主键
     * @return  Trinedataversion对象
     */
    @Override
    public Trinedataversion getTrinedataversion(String frameWorkID){
        return trinedataversionDao.getTrinedataversion(frameWorkID);
    }



    /**
     * 获取共有多少条记录，参数是Trinedataversion 对象
     * @param trinedataversion Trinedataversion 对象
     * @return 记录数
     */
    @Override
    public Integer getTrinedataversionCount(Trinedataversion trinedataversion){
        return trinedataversionDao.getTrinedataversionCount(trinedataversion);
    }

    /**
     * 分页获取数据，参数是Trinedataversion 对象
     * @param trinedataversion Trinedataversion 对象
     * @return Trinedataversion集合
     */
    @Override
    public List<Trinedataversion> getTrinedataversionByPage(Trinedataversion trinedataversion){
        Integer pageBegin=(trinedataversion.getPage()-1)*trinedataversion.getPagesize();
        Integer pageEnd=trinedataversion.getPagesize();
        return trinedataversionDao.getTrinedataversionByPage(trinedataversion,pageBegin,pageEnd);
    }

    /**
     * 根据传入的Trinedataversion 对象查询数据
     * @param trinedataversion Trinedataversion 对象
     * @return Trinedataversion集合
     */
    @Override
    public List<Trinedataversion>  getTrinedataversionList(Trinedataversion trinedataversion){
        return trinedataversionDao.getTrinedataversionList(trinedataversion);
    }

    /**
     * 获取一个数据的不重复集合
     * @param attribute 对象属性名称
     * @return List<String>
     */
    @Override
    public List<String> getDistinctItemList(String attribute){
        return trinedataversionDao.getDistinctItemList(attribute);
    }

    /**
     * 判断对象是否已经存在
     * @param trinedataversion Trinedataversion 对象
     * @return 存在返回true 否则返回false
     */
    @Override
    public Boolean  trinedataversionIsExist(Trinedataversion trinedataversion){
        return trinedataversionDao.trinedataversionIsExist(trinedataversion)>0;
    }

    /**
     * 根据传入的对象获取一个唯一对象
     *
     * @param trinedataversion
     * @return trinedataversion 对象
     */
    @Override
    public Trinedataversion getTrinedataversionUnique(Trinedataversion trinedataversion) {
        List<Trinedataversion> trinedataversionList = trinedataversionDao.getTrinedataversionUnique(trinedataversion);
        assert trinedataversionList!=null&&trinedataversionList.size()==1;
        return trinedataversionList.get(0);
    }
}