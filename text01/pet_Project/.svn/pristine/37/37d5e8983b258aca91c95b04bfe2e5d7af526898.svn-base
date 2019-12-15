package com.qf.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.qf.base.service.BaseService;
import com.qf.entity.Discuss;
import com.qf.entity.Product;
import com.qf.entity.Ptype;

import java.util.List;

public interface IProductService extends BaseService<Product> {
    //查询商品信息（条件，分页）
    void getProductPage(Page<Product> page, Product product);

    List<Product> getType();

    int batchDel(List<Integer> ids);

    List<Ptype> getProdutType();

    List<Product> getProductList(Integer id);

    int addDiscuss(Discuss discuss);

    int updOstatus(Discuss discuss);

    void getDiscuss(Page<Discuss> page,Integer id);

    void getDiscussImage(Page<Discuss> page,Integer id);

    Product selectBypIdSid(Integer pid, Integer sid);
}
