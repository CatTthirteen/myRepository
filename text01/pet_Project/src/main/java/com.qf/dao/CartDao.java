package com.qf.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.qf.entity.Cart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartDao extends BaseMapper<Cart>{
    List<Cart> seletOneByid(@Param("uid") Integer uid, @Param("pid") Integer pid);

    List<Cart> seletListByUid(Integer uid);



    void deleteByUid(int id);

    Float getcountPrice(int uid);

    Integer getMNumber(int uid);

    List<Cart> seletOneBySid(@Param("pid") Integer pid, @Param("uid")int id, @Param("sid")Integer sid);
}
