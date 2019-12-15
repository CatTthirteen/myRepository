package com.qf.contorller;

import com.qf.entity.OrderDetail;
import com.qf.entity.ResultEntity;
import com.qf.entity.User;
import com.qf.service.IOrderDetailService;
import com.qf.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@RequestMapping("/orderFront")
@Controller
public class OrderFrontController {
    @Autowired
    IOrderService oderServiceimpl;


    @Autowired
    IOrderDetailService iOrderDetailService;


    @RequestMapping("/getFrontOrderDetailListByUid")
    public  String getFrontOrderDetailListByUid(ModelMap map, HttpServletRequest request){
        //到时候从seccen里拿uid
        User user=(User)request.getSession().getAttribute("user");
        List<OrderDetail> odList=iOrderDetailService.getFrontOrderDetailListByUid(user.getId());
        map.put("odList",odList);
        return "front/Historicalorders";

    }

    @RequestMapping("qianShou")
    @ResponseBody
    public ResultEntity<String> qianShou(Integer oid,Integer pid, ModelMap map){
        System.out.println(oid);
        System.out.println(pid);
        int update=iOrderDetailService.qianShou(oid,pid);
        if (update >0){
            return ResultEntity.success_msg("签收成功");

        }else {
            return ResultEntity.failed_msg("签收失败");

        }
    }


}
