package com.qf.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qf.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


public class MyInterceptor implements HandlerInterceptor{


    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        //获取session里面是否有user（判断是否登录）
        User user = (User) httpServletRequest.getSession().getAttribute("user");
        if (null==user) {//如果没有登录就跳转到登录页面
            httpServletRequest.setAttribute("msg", "您还没有登录，请先登录");
            //request.getContextPath():获取当前路径，参考当前路径进行页面的跳转
            httpServletRequest.getRequestDispatcher(httpServletRequest.getContextPath()+"/front/userLogin.jsp").forward(httpServletRequest, httpServletResponse);
            return false;
        }else {
            return true;
        }

    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
