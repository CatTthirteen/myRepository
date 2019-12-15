package com.qf.dao;

import com.qf.entity.City;
import com.qf.entity.Province;
import com.qf.entity.Shop;
import com.qf.entity.User;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IUserDao extends BaseMapper<User>{

    Integer getUserCount();

    List<User> getUserPage(@Param("index") Integer index, @Param("size") Integer pageSize);

    List<Province> getPidList();

    List<City> selcityByPid(String pid);

    User login(@Param("name")String name,@Param("password") String password);

    User getUserById(@Param("id") int id);

    City selectUserCity(Integer cid);

    List<Shop> selShop(@Param("pid") Integer pid, @Param("cid") Integer cid);
}
