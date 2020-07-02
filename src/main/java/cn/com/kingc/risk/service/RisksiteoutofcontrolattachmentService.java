package cn.com.kingc.risk.service;

import cn.com.kingc.risk.model.Risksiteoutofcontrolattachment;
import java.util.List;

/**
*
*  Risksiteoutofcontrolattachment Service层
*
*/
public interface RisksiteoutofcontrolattachmentService {
    //新增一个Risksiteoutofcontrolattachment
    Boolean addRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment);

    //批量新增Risksiteoutofcontrolattachment，参数是Risksiteoutofcontrolattachment集合
    void addRisksiteoutofcontrolattachmentList(List<Risksiteoutofcontrolattachment> risksiteoutofcontrolattachmentList);

    //根据主键删除Risksiteoutofcontrolattachment,参数是对象
    Boolean deleteRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment);

    //根据主键删除Risksiteoutofcontrolattachment，参数是主键
    Boolean deleteRisksiteoutofcontrolattachmentByID(Integer attchID);

    //根据主键更新Risksiteoutofcontrolattachment
    Boolean updateRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment);

    //根据主键获取Risksiteoutofcontrolattachment
    Risksiteoutofcontrolattachment getRisksiteoutofcontrolattachment(Integer checkRecordID);

    //获取总条数
    Integer getRisksiteoutofcontrolattachmentCount();

    //分页获取数据
    List<Risksiteoutofcontrolattachment> getRisksiteoutofcontrolattachmentByPage(int pagesize, int page);

    //获取总条数，参数是Risksiteoutofcontrolattachment 对象
    Integer getRisksiteoutofcontrolattachmentCountByRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment);

    //分页获取数据，参数是Risksiteoutofcontrolattachment 对象
    List<Risksiteoutofcontrolattachment> getRisksiteoutofcontrolattachmentByPageAndRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment);

    //根据条件查询数据
    List<Risksiteoutofcontrolattachment>  getRisksiteoutofcontrolattachmentList(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment);
}