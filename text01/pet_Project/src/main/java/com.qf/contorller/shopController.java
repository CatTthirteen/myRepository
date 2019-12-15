package com.qf.contorller;

import com.qf.entity.City;
import com.qf.entity.Province;
import com.qf.entity.Shop;
import com.qf.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("shop")
public class shopController {

    @Autowired
    private IUserService userService;

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
        return "front/entityShop";
    }

    /**
     *  根据省份id查询城市
     * @param pid
     * @param map
     * @return
     */
    @RequestMapping(value = "/selcityByPid")
    @ResponseBody
    public List<City> selcityByPid(String pid, ModelMap map) {
        System.out.println(pid);

        //通过省份查询城市
        List<City> cityList = userService.selcityByPid(pid);
//        for(City c:cityList ){
//            System.out.println(c);
//        }

        //遍历集合
        //把集合转换成json字符串，传到前台
        return cityList;
    }

    /**
     *  查询实体店
     * @param pid
     * @param map
     * @return
     */
    @RequestMapping(value = "/getShop")
    @ResponseBody
    public List<Shop> getShop(Integer pid,Integer cid,ModelMap map) {
        //System.out.println(pid);
        //System.out.println(cid);

        //通过省份查询城市
        List<Shop> shopList = userService.selShop(pid,cid);
//        for(Shop s:shopList ){
//            System.out.println(s);
//        }

        //遍历集合
        //把集合转换成json字符串，传到前台
        return shopList;
    }


}
