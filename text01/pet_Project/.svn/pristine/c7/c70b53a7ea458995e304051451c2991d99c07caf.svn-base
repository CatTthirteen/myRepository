package com.qf.dao;

import com.qf.entity.OrderDetail;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IOrderDetailDao extends BaseMapper<OrderDetail>{

    List<OrderDetail> getListOrderDetail(Integer id);

    List<OrderDetail> getFrontOrderDetailListByUid(Integer uid);

    int qianshou(@Param("oid") Integer oid,@Param("pid") Integer pid);
}
