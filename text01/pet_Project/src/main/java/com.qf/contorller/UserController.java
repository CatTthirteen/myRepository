package com.qf.contorller;

import com.qf.entity.City;
import com.qf.entity.Province;
import com.qf.entity.ResultEntity;
import com.qf.entity.User;
import com.qf.service.IUserService;
import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(value = "/afterUser")
public class UserController {

    @Autowired
    private IUserService userService;

    /**
     * 后台登录功能
     * @param user
     * @return
     */
    @RequestMapping(value = "/login")
    public String adminLogin(User user){
//        System.out.println(user);
        if(user.getName().equals("admin") && user.getPassword().equals("123")){
            return "after/index";
        }else{
            return "after/adminLogin";
        }
    }

    /**
     * 查询用户列表
     * @param page
     * @param map
     * @param user
     * @return
     */
    @RequestMapping(value = "/getPage")
    public String getPageBySel(Page<User> page, ModelMap map, User user) {
//        System.out.println(user);
        userService.getPage(page, user);
        map.put("page", page);
        map.put("url", "afterUser/getPage");
        return "after/application/user/userList";
    }

    /**
     * 查询省份信息并跳转到添加界面
     * @param map
     * @return
     */
    @RequestMapping(value = "/addUserInfo")
    public String addUserInfo(ModelMap map) {

        List<Province> pidList=userService.getPidList();
//        System.out.println(pidList.size());
        map.put("pidList",pidList);
        return "after/application/user/addUser";
    }

    /**
     *  根据省份id查询城市
     * @param pid
     * @param map
     * @return
     */
    @RequestMapping(value = "/selcityByPid")
    @ResponseBody
    public List<City> selcityByPid(String pid,ModelMap map) {
         System.out.println(pid);

        //通过省份查询城市
        List<City> cityList = userService.selcityByPid(pid);


        //遍历集合
        //把集合转换成json字符串，传到前台
        return cityList;
    }

    /**
     *  添加用户
     * @param user
     * @return
     */
    @RequestMapping(value = "/addUser")
    @ResponseBody
    public ResultEntity<String> addUser(User user) {
//        System.out.println(user);

        int insert = userService.insert(user);
        if (insert > 0) {
            return ResultEntity.success_msg("添加用户成功");
        } else {
            return ResultEntity.failed_msg("添加失败");
        }
    }

    /**
     * 获取单个用户信息并发送到修改页面
     * @param id
     * @param map
     * @return
     */
    @RequestMapping(value = "/getUserById/{id}")
    public String getUserById(@PathVariable Integer id, ModelMap map) {
//        System.out.println(id);
        List<Province> pidList=userService.getPidList();
        User user = userService.selectById(id);

        for(Province p :pidList){
            System.out.println(p);
        }

        map.put("user", user);
        map.put("pidList",pidList);
        return "after/application/user/updateUser";
    }

    /**
     * 修改用户
     * @param user
     * @return
     */
    @RequestMapping(value = "/updateUser")
    @ResponseBody
    public ResultEntity<String> updateUser(User user) {
        System.out.println(user);
        int update = userService.update(user);
        if (update > 0) {
            return ResultEntity.success_msg("修改成功");
        } else {
            return ResultEntity.failed_msg("修改失败");
        }
    }

    /**
     * 批量删除用户
     * @param ids
     * @param name
     */
    @RequestMapping(value = "/batchDel")
    @ResponseBody
    public void batchDel(@RequestParam("ids[]") List<Integer> ids, String name) {
        userService.batchDel(ids);
    }

    /**
     * 单个删除用户
     * @param id
     * @return
     */
    @RequestMapping(value = "/delOne")
    @ResponseBody
    public ResultEntity<String> delOne(@RequestParam("id") Integer id) {
        System.out.println(id);
        int delOne = userService.deleteById(id);
        if (delOne > 0) {
            return ResultEntity.success_msg("删除成功");
        } else {
            return ResultEntity.failed_msg("删除失败");
        }
    }

}
