package com.qf.contorller;

import com.qf.entity.*;
import com.qf.service.ICartService;
import com.qf.service.IOrderDetailService;
import com.qf.service.IOrderService;
import com.qf.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/productFront")
public class ProductFrontController {

    @Autowired
    IProductService productService;

    @Autowired
    ICartService icartServiceimpl;

    @Autowired
    IOrderService iOrderServiceimpl;

    @Autowired
    IOrderDetailService iOrderDetailServiceimpl;


    //支付   修改订单状态
    @RequestMapping("/pay")
    @ResponseBody
    public String pay(Integer pid,HttpServletRequest request){
        Order order=new Order();
        order.setOstatus(1);
        iOrderServiceimpl.update(order);
        //清空购物车
        User user=(User) request.getSession().getAttribute("user");
        icartServiceimpl.deleteByUid(user.getId());
        //返回订单展示
        return "1";
    }

    //取消订单
    @ResponseBody
    @RequestMapping("/calcal")
    public String calcal(Integer pid){
        iOrderServiceimpl.deleteById(pid);
        //返回订单展示
        return "1";
    }

    /**
     * 查询要下单的商品
     * @param
     * @return
     */
    @RequestMapping("/getFrontProduct")
    public String getFrontProduct(ModelMap map,HttpServletRequest request){
        User user=(User) request.getSession().getAttribute("user");
        //查商品表
        List<Product> list = productService.getList();
        //查出购物车值多少钱
       float pcount= icartServiceimpl.getcountPrice(user.getId());

       //查出购物车里有多少条记录
        Integer mnumber=icartServiceimpl.getMNumber(user.getId());
        if (mnumber==null){
            mnumber=0;
        }
        map.put("list",list);
        map.put("mnumber",mnumber);
        map.put("pcount",pcount);

        return "front/onlineorder";

    }//getProductByPidSid

    @RequestMapping("/getProductByPid")
    @ResponseBody
    public  Product getProductByPid(@RequestParam("pid")Integer pid,HttpServletRequest request){


        Product product = productService.selectById(pid);
        //根据用户id 和商品id 查购物车中有没有
        User user=(User) request.getSession().getAttribute("user");
        List<Cart> cartList = icartServiceimpl.seletOne(pid, user.getId());

        if (cartList.size()>0){
            Cart cart = cartList.get(0);

            //把价格放入
            product.setPnumberPrice(cart.getPnumberPrice());
            //把数量放入
            product.setPnumber(cart.getPnumber());
        }

        return product;
    }

    @RequestMapping("/getProductByPidSid")
    @ResponseBody
    public  Product getProductByPidSid(@RequestParam("pid")Integer pid,@RequestParam("sid")Integer sid,HttpServletRequest request){


        Product product = productService.selectById(pid);
        //根据用户id 和商品id 查购物车中有没有
        User user=(User) request.getSession().getAttribute("user");
        List<Cart> cartList = icartServiceimpl.seletOneBySid( pid,user.getId(),sid);

        product.setPprice(product.getPprice()*2);
        if (cartList.size()>0){
            Cart cart = cartList.get(0);
            //把价格放入,这个的规格的价格是默认规格价格的2倍

            product.setPnumberPrice(cart.getPnumberPrice());
            //把数量放入
            product.setPnumber(cart.getPnumber());
        }

        return product;
    }

    /**
     * 添加购物车操作
     * @param pid
     * @return
     */
    @RequestMapping("/addCart")
    @ResponseBody
    public  ResultEntity<String> addCart(@RequestParam("pid")Integer pid,@RequestParam("sid")Integer sid,HttpServletRequest request){
        //根据pid 查出定该商品是否存在购物车中
        //没有就查找产品表  添加一条
        Product product = productService.selectById(pid);
        List<Cart> cartList=null;
        User user=(User) request.getSession().getAttribute("user");
        if (sid==1){
              cartList=icartServiceimpl.seletOneBySid(pid,user.getId(),sid);
        }else {
            cartList=icartServiceimpl.seletOne(pid,user.getId());
        }

        Cart cart=null;
         if(cartList.size()<=0){
             cart=new Cart();
             if (sid==1){
                 //如果是加大规格则设置规格字段
                 cart.setSpecification(1);
             }else{
                 cart.setSpecification(0);
             }
             cart.setPid(product.getPid());
             cart.setUid(user.getId());
             cart.setPnumber(1);

             if (sid==1){
                 cart.setPnumberPrice(product.getPprice()*2);
             }else {
                 cart.setPnumberPrice(product.getPprice());
             }
             cart.setPname(product.getPname());
             cart.setUname(user.getName());
             cart.setCountPrice(cart.getCountPrice()+product.getPprice());
             icartServiceimpl.insert(cart);
         }else {
             cart=cartList.get(0);
             //如果有就数量+1 修改价格
             //数量加1
             cart.setPnumber(cart.getPnumber()+1);
             //价格加


             if (sid==1){
                 cart.setPnumberPrice(cart.getPnumberPrice()+product.getPprice()*2);

             }else {
                 cart.setPnumberPrice(cart.getPnumberPrice()+product.getPprice());

             }
             //总价格添加
             icartServiceimpl.update(cart);
         }



        return ResultEntity.success_msg("添加成功");
    }

    /**
     * 添加购物车操作
     * @param pid  产品id
     *  @param sid  规格id   1代表加大规格  0 代表默认规格
     * @return
     */
    @RequestMapping("/reduceCart")
    @ResponseBody
    public  ResultEntity<String> reduceCart(@RequestParam("pid")Integer pid,@RequestParam("sid")Integer sid,HttpServletRequest request){
        Product product = productService.selectById(pid);

        User user=(User) request.getSession().getAttribute("user");
        List<Cart> cartlist=null;
        if (sid==1){
            cartlist=icartServiceimpl.seletOneBySid(pid,user.getId(),sid);
        }else {
            cartlist=icartServiceimpl.seletOne(pid,user.getId());
        }
        if(cartlist.size()>=0){
            Cart cart=cartlist.get(0);
            //如果只有一条   直接删除即可
            if (cart.getPnumber()==1){
                icartServiceimpl.deleteById(cart.getId());

            }else {

                cart.setPnumber(cart.getPnumber()-1);
                //1代表非默认规格 价格翻倍
                if (sid==1){
                    cart.setPnumberPrice(cart.getPnumberPrice()-product.getPprice()*2);
                }else{
                    cart.setPnumberPrice(cart.getPnumberPrice()-product.getPprice());
                }
                icartServiceimpl.update(cart);
            }

            return ResultEntity.success_msg("删除成功");

        }
        return  ResultEntity.success_msg("删没了");

    }

    @RequestMapping("/makeOrder")
    public String makeOrder(HttpServletRequest request,ModelMap map){
        //总价格
        //订单编号
        String name= UUID.randomUUID().toString().replace("-","");
        float count=0;

        User user=(User) request.getSession().getAttribute("user");

        //根据用户生成订单
   List<OrderDetail> odlist=new ArrayList<>();
        //根据用户id查出他的购物车
      List<Cart> carts= icartServiceimpl.seletListByUid(user.getId());
        OrderDetail orderDetail=null;
      for (Cart c:carts){
          orderDetail=new OrderDetail();
          //获得单个商品的价格
          orderDetail.setPid(c.getPid());

          //获得数量
          orderDetail.setPnumber(c.getPnumber());

          //获得商品名
          orderDetail.setPname(c.getPname());

          //获得单个商品总价
          orderDetail.setPprice(c.getPnumberPrice());
          //加入集合
          orderDetail.setOstatus(0);
          orderDetail.setIsDiscuss(0);
          odlist.add(orderDetail);
          //获得总价格,用在订单表
          count= count+c.getPnumberPrice();
      }

      //生成订单
        Order order=new Order();
        //订单总价
        order.setOprice(count);
        //订单名
        order.setOname(name);
        //订单日期
        Date date=new Date();
        order.setCreate_time(date);
        //订单地址
        String adress=user.getAddress();
        order.setAid(adress);
        //伪删除
        order.setIsdelete(0);
        //状态
        order.setOstatus(0);
        //用户id
        order.setUid(user.getId());
        //插入数据库
        iOrderServiceimpl.insert(order);
        //生成订单详情
        for(OrderDetail od:odlist){
            od.setOid(order.getOid());
            iOrderDetailServiceimpl.insert(od);
        }
        //将订单展示给用户
        order.setUname(user.getName());
        order.setAddress(user.getAddress());
        map.put("order",order);
        return "front/showPay";
    }
}
