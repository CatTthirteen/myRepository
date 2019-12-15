package com.qf.service;

import com.qf.base.service.BaseService;
import com.qf.entity.Cart;

import java.util.List;

public interface ICartService extends BaseService<Cart>{
    List<Cart> seletOne(Integer uid, Integer pid);

    List<Cart> seletListByUid(Integer uid);

    void deleteall();

    void deleteByUid(int id);

    float getcountPrice(int id);

    Integer getMNumber(int id);

    List<Cart> seletOneBySid(Integer pid, int id, Integer sid);
}
