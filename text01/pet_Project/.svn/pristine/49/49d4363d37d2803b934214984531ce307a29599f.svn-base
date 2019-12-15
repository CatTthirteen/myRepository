package com.qf.service.impl;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.qf.base.service.impl.BaseServiceImpl;
import com.qf.dao.CartDao;
import com.qf.entity.Cart;
import com.qf.service.ICartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarServiceimpl extends BaseServiceImpl<Cart> implements ICartService {

    @Autowired
    CartDao cartDao;



    @Override
    public BaseMapper<Cart> getMapper() {
        return cartDao;
    }

    @Override
    public List<Cart> seletOne(Integer uid, Integer pid) {



        return cartDao.seletOneByid(uid,pid);
    }

    @Override
    public List<Cart> seletListByUid(Integer uid) {
        return cartDao.seletListByUid(uid);
    }

    @Override
    public void deleteall() {

    }

    @Override
    public void deleteByUid(int id) {

        cartDao.deleteByUid(id);

    }

    @Override
    public float getcountPrice(int id) {
        if (null==cartDao.getcountPrice(id)){
            return 0;
        }
        return cartDao.getcountPrice(id);
    }

    @Override
    public Integer getMNumber(int id) {
        return cartDao.getMNumber(id);
    }

    @Override
    public List<Cart> seletOneBySid(Integer pid, int id, Integer sid) {
        return cartDao.seletOneBySid(pid,id,sid);
    }


}
