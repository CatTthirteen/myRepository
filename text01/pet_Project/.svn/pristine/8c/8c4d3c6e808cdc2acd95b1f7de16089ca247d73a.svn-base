package com.qf.contorller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("client")
public class ClientController {

    @RequestMapping("getClientContent")
    @ResponseBody
    public List<String> getClientContent(String content, HttpServletRequest request){
        ServletContext application = request.getSession().getServletContext();
        System.out.println(content);
        List<String> list=new ArrayList<>();
        //list.add(content);
        String server="";
        if (content.contains("快递")){
            server="客服自动回复：默认使用中通快递";
            list.add(server);
        }else if (content.contains("发货")){
            server="客服自动回复：按照订单顺序发货哦，我们承诺不超过72小时哦";
            list.add(server);
        }else if (content.contains("药品推荐")){
            server="客服自动回复：<a href='product/getProductList/1'>推荐药品...请点击</a>";
            list.add(server);
        }else {
            server="客服自动回复：请稍等哦...客服不在线";
            list.add(server);
        }

        return list;
    }
}
