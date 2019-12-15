package com.qf.dao;

import com.qf.entity.Discuss;
import com.qf.entity.Product;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.qf.entity.Ptype;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IProductDao extends BaseMapper<Product> {

    List<Product> getType();

    List<Ptype> getProdutType();

    List<Product> getProductList(Integer id);

    int addDiscuss(@Param("uid") Integer uid, @Param("pid")Integer pid, @Param("content")String content,@Param("image") String image);

    int updOstatus(@Param("pid")Integer pid,@Param("oid") Integer oid);

    List<Discuss> getDiscuss(@Param("pid") Integer id);

    List<Discuss> getDiscussImage(@Param("pid")Integer id);

    int getTotal(@Param("pid")Integer id);

    Product selectBypIdSid(@Param("pid")Integer pid, @Param("sid")Integer sid);
}
