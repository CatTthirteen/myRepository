package com.qf.contorller;

import com.qf.entity.Order;
import com.qf.entity.OrderDetail;
import com.qf.entity.ResultEntity;
import com.qf.service.IOrderDetailService;
import com.qf.service.IOrderService;
import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@RequestMapping("/order")
@Controller
public class OrderController {
    @Autowired
    IOrderService oderServiceimpl;

    @Autowired
    IOrderDetailService iOrderDetailService;

    /**
     * 进入订单修改页面
     * @param page
     * @param map
     * @return
     */
    @RequestMapping("/getOderPage")
    public String getOderPage(Page<Order> page,Order order,ModelMap map){

//        System.out.println(order);

        oderServiceimpl.getOrderPage(page,order);

        map.put("page",page);
        map.put("url","order/getOderPage");
//        System.out.println(page);
//        System.out.println(page.getRecords());
     return "after/application/order/orderList";
    }

    /**
     * 批量删除
     * @return
     */
    @ResponseBody
    @RequestMapping("/orderDel")
    public String  orderDel(@RequestParam("ids[]") List<Integer> ids){
        oderServiceimpl.orderDel(ids);
        return "1";
    }

    @ResponseBody
    @RequestMapping("/orderDelOne")
    public String orderDelOne(Integer id){
//        System.out.println("orderDelOne"+id);
        oderServiceimpl.orderDelOne(id);
       return "1";
    }

    /**
     * 根据订单id,
     * 获取订单,
     * 跳转到修改页面
     * @param id
     * @param map
     * @return
     */
    @RequestMapping("/getOrderbyId/{id}")
    public  String getOrderbyId(@PathVariable Integer id,ModelMap map){
        Order order = oderServiceimpl.selectById(id);
         map.put("order",order);

         return "after/application/order/updateOrder";
    }

    /**
     *
     * @param order 页面返回的订单信息
     * @return  操作结果(成功或失败)
     */
    @RequestMapping("/updateOrder")
    @ResponseBody
    public ResultEntity<String> updateOrder(Order order){
        int update = oderServiceimpl.update(order);
        if(update>0){
            return ResultEntity.success_msg("修改成功");
        }
            return  ResultEntity.failed_msg("修改失败");
    }

    /**
     * 根据订单id查询订单详情
     * @param id
     * @param map
     * @return
     */

    @RequestMapping("/getOrderDetileListByOid/{id}")
    public String getOrderDetileListByOid(@PathVariable Integer id,ModelMap map){
        List<OrderDetail> listOrderDetail = iOrderDetailService.getListOrderDetail(id);
        map.put("listOrderDetail",listOrderDetail);
        return "after/application/order/orderDetailList";

    }



}
