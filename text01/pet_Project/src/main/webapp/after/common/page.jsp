<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <!-- 不会参考当前路径， -->
 <base href="<%=request.getContextPath()+"/" %>"/>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Insert title here</title>
 <!--  1.引入样式文件 -->
 <link rel="stylesheet" href="after/lib/layer/ui/css/layui.css" media="all">
</head>
<body>

<!-- 用来放分页导航条 -->
<div id="test1"></div>

<!-- 2.引入分页插件的js包 -->
<script src="after/lib/layer/ui/layui.js"></script>
<script>

// 3.初始化分页导航条
layui.use('laypage', function(){

  // 获取前端的分页对象
  var laypage = layui.laypage;

  //执行一个laypage实例
  laypage.render({ // 渲染
      elem: 'test1' //注意，这里的 test1 是 ID，不用加 # 号
      ,count: "${page.total}" //数据总数，从服务端得到
      ,limit: "${page.size}" // 每页显示条
      ,curr:"${page.current}"
      ,layout: ['prev', 'page', 'next', 'limit','count']
      ,limits:[5,10,20,30]
      ,jump: function(obj, first){ // 切换页面的函数

          //首次不执行
          if(!first){

              location.href="${url}?current="+obj.curr+"&size="+obj.limit
          }
      }
  });
});
</script>
</body>
</html>