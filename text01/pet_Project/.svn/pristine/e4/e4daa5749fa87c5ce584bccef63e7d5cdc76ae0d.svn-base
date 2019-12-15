package com.qf.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.qf.dao.IOrderDao;
import com.qf.entity.Order;
import com.qf.service.IOrderService;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.qf.base.service.impl.BaseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class OrderServiceimpl extends BaseServiceImpl<Order> implements IOrderService {
    @Autowired
    IOrderDao oderDao;
    @Override
    public BaseMapper<Order> getMapper() {
        return oderDao;
    }

    @Override
    public void getOrderPage(Page<Order> page, Order order) {
        //获得页面尺寸
        Integer pageSize=page.getSize();
        //获得总页数
       Integer totleCount= oderDao.getOrderall(order.getOname(),order.getUname());

       //
        Integer index=(page.getCurrent()-1)*pageSize;

       List<Order> orderList= oderDao.getorderList(index,pageSize,order.getOname(),order.getUname());

        page.setRecords(orderList);

        page.setTotal(totleCount);


    }

    @Override
    public void orderDel(List<Integer> ids) {

        for(Integer id:ids){
            oderDao.orderDel(id);
        }



    }

    @Override
    public void orderDelOne(Integer id) {
        oderDao.orderDel(id);
    }

    @Override
    public List<Order> getOrderByuid(Integer uid) {
        EntityWrapper<Order> entityWrapper=new EntityWrapper<>();
        entityWrapper.eq("uid",uid);
        return oderDao.selectList(entityWrapper);
    }
}
