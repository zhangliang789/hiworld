package cn.com.kingc.risk.dao;

import org.apache.ibatis.annotations.Param;
import cn.com.kingc.risk.model.Risksiteoutofcontrolattachment;
import java.util.List;
/**
* RisksiteoutofcontrolattachmentDao层
* 对应数据库的 risksiteoutofcontrolattachment表
*/
public interface RisksiteoutofcontrolattachmentDao{

    //新增一个Risksiteoutofcontrolattachment
    Integer addRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment);

    //批量新增Risksiteoutofcontrolattachment，参数是Risksiteoutofcontrolattachment集合
    void addRisksiteoutofcontrolattachmentList(List<Risksiteoutofcontrolattachment> risksiteoutofcontrolattachmentList);

    //根据主键删除Risksiteoutofcontrolattachment，参数是一个对象
    Integer deleteRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment);

    //根据主键删除Risksiteoutofcontrolattachment，参数是主键
    Integer deleteRisksiteoutofcontrolattachmentByID(Integer attchID);
    Integer deleteRisksiteoutofcontrolattachmentByItemID(Integer ItemID);

    //根据主键更新Risksiteoutofcontrolattachment
    Integer updateRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment);

    //根据主键获取Risksiteoutofcontrolattachment
    Risksiteoutofcontrolattachment getRisksiteoutofcontrolattachment(Integer checkRecordID);

    //获取总条数
    Integer getRisksiteoutofcontrolattachmentCount();

    //分页获取数据
    List<Risksiteoutofcontrolattachment> getRisksiteoutofcontrolattachmentByPage(@Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //获取总条数，参数是Risksiteoutofcontrolattachment 对象
    Integer getRisksiteoutofcontrolattachmentCountByRisksiteoutofcontrolattachment(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment);

    //分页获取数据，参数是Risksiteoutofcontrolattachment 对象 和开始页，结束页
    List<Risksiteoutofcontrolattachment> getRisksiteoutofcontrolattachmentByPageAndRisksiteoutofcontrolattachment(@Param("risksiteoutofcontrolattachment") Risksiteoutofcontrolattachment risksiteoutofcontrolattachment, @Param("pageBegin") Integer pageBegin, @Param("pageEnd") Integer pageEnd);

    //根据条件查询数据
    List<Risksiteoutofcontrolattachment> getRisksiteoutofcontrolattachmentList(Risksiteoutofcontrolattachment risksiteoutofcontrolattachment);

}