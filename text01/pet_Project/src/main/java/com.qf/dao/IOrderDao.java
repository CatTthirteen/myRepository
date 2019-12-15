package com.qf.dao;

import com.qf.entity.Order;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IOrderDao extends BaseMapper<Order>{

    Integer getOrderall(@Param("oname")String oname, @Param("uname")String uname);

    List<Order> getorderList(@Param("index") Integer index, @Param("size") Integer pageSize, @Param("oname")String oname, @Param("uname")String uname);

    void orderDel(Integer id);
}
