package com.qf.service;

import com.qf.entity.Order;
import com.baomidou.mybatisplus.plugins.Page;
import com.qf.base.service.BaseService;

import java.util.List;

public interface IOrderService extends BaseService<Order>{
    void getOrderPage(Page<Order> page, Order order);

    void orderDel(List<Integer> ids);

    void orderDelOne(Integer id);


    List<Order> getOrderByuid(Integer uid);

}
