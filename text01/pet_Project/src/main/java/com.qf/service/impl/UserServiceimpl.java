package com.qf.service.impl;

import com.qf.dao.IUserDao;
import com.qf.entity.City;
import com.qf.entity.Province;
import com.qf.entity.Shop;
import com.qf.entity.User;
import com.qf.service.IUserService;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.qf.base.service.impl.BaseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceimpl extends BaseServiceImpl<User> implements IUserService {

    @Autowired
    IUserDao userDao;

    @Override
    public BaseMapper<User> getMapper() {
        return userDao;
    }

    @Override
    public void getPage(Page<User> page, User user) {
        Integer totalCount = userDao.getUserCount();

        Integer pageSize = page.getSize();

        Integer index = (page.getCurrent()-1)*pageSize;

        List<User> userList = userDao.getUserPage(index,pageSize);

        page.setTotal(totalCount);
        page.setRecords(userList);
    }

    @Override
    public void batchDel(List<Integer> ids) {
        userDao.deleteBatchIds(ids);
    }

    @Override
    public List<Province> getPidList() {
        return userDao.getPidList();
    }

    @Override
    public List<City> selcityByPid(String pid) {
        return userDao.selcityByPid(pid);
    }

    @Override
    public User login(String name, String password) {
        return userDao.login(name,password);
    }

    @Override
    public User getUserById(int id) {
        return userDao.getUserById(id);
    }

    @Override
    public City selectUserCity(Integer cid) {
        return userDao.selectUserCity(cid);
    }

    @Override
    public List<Shop> selShop(Integer pid, Integer cid) {
        return userDao.selShop(pid,cid);
    }

}
