package com.qf.service;

import com.qf.entity.City;
import com.qf.entity.Province;
import com.qf.entity.Shop;
import com.qf.entity.User;
import com.baomidou.mybatisplus.plugins.Page;
import com.qf.base.service.BaseService;

import java.util.List;

public interface IUserService extends BaseService<User>{
    public void getPage(Page<User> page, User user);

    void batchDel(List<Integer> ids);

    List<Province> getPidList();

    List<City> selcityByPid(String pid);

    User login(String name, String password);

    User getUserById(int id);

    City selectUserCity(Integer cid);

    List<Shop> selShop(Integer pid, Integer cid);
}
