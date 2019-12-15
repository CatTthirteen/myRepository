package com.qf.contorller;

import com.qf.entity.City;
import com.qf.entity.Province;
import com.qf.entity.ResultEntity;
import com.qf.entity.User;
import com.qf.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/frontUser")
public class UserFrontController {
    @Autowired
    private IUserService userService;

    /**
     * 前台登录功能
     * @param user
     * @return
     */
    @RequestMapping(value = "/login")
    @ResponseBody
    public ResultEntity<String> adminLogin(User user, HttpServletRequest request){
        //首先判断用户是否登录
        User sessionuser = (User) request.getSession().getAttribute("user");
        if (null!=sessionuser){

            //当前登录用户是否已经登录
            if (sessionuser.getName().equals(user.getName())){
                return ResultEntity.failed_msg("您已经登录了，无需重复操作");
        }

        }

        User userInfo = userService.login(user.getName(),user.getPassword());

        if(null!=userInfo){
            request.getSession().setAttribute("user",userInfo);
            return ResultEntity.success_msg("登录成功");
        }else{
            return ResultEntity.failed_msg("登录失败");
        }


    }

    /**
     * 查询省份信息并跳转到注册界面
     * @param map
     * @return
     */
    @RequestMapping(value = "/getProvince")
    public String getProvince(ModelMap map) {

        List<Province> pidList=userService.getPidList();

//        for(Province p:pidList){
//            System.out.println(p);
//        }

        map.put("pidList",pidList);
        return "front/register";
    }

    /**
     *  注册用户
     * @param user
     * @return
     */
    @RequestMapping(value = "/register")
    @ResponseBody
    public ResultEntity<String> register(User user) {
//        System.out.println(user);

        int insert = userService.insert(user);
        if (insert > 0) {
            return ResultEntity.success_msg("注册成功");
        } else {
            return ResultEntity.failed_msg("注册失败");
        }
    }

    /**
     * 注销
     * @param session
     * @return
     */
    @RequestMapping("loginOut")
    public String loginOut(HttpSession session){
        session.removeAttribute("user");
        return "front/userLogin";
    }

    /**
     * 从Sessionq取到用户并查询
     * @param request
     * @param map
     * @return
     */
    @RequestMapping(value = "/getUserById")
    public String getUserById(HttpServletRequest request,ModelMap map) {
        User user1 = (User) request.getSession().getAttribute("user");
//        System.out.println("11111"+user1);
        User user2 = userService.getUserById(user1.getId());
//        System.out.println("22222"+user2);

        map.put("user", user2);
        return "front/membercenter";
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
        //查询城市
//        List<City> cities = userService.selcityByPid(user.getPid().toString());
        City city=userService.selectUserCity(user.getCid());
        map.put("user", user);
        map.put("pidList",pidList);
        map.put("city",city);
        return "front/updateUser";
    }

    /**
     * 修改用户
     * @param user
     * @return
     */
    @RequestMapping(value = "/updateUser")
    @ResponseBody
    public ResultEntity<String> updateUser(User user) {
        //System.out.println(user);

        int update = userService.update(user);
        if (update > 0) {
            return ResultEntity.success_msg("修改成功");
        } else {
            return ResultEntity.failed_msg("修改失败");
        }

    }
}
