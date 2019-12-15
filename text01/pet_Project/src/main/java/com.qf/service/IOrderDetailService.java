package com.qf.service;

import com.qf.entity.OrderDetail;
import com.qf.base.service.BaseService;

import java.util.List;

public interface IOrderDetailService extends BaseService<OrderDetail>{
    List<OrderDetail> getListOrderDetail(Integer id);

    List<OrderDetail> getFrontOrderDetailListByUid(Integer uid);

    int qianShou(Integer oid,Integer pid);
}
