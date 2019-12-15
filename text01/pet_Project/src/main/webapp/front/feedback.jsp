
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <base href="<%=request.getContextPath()+"/"%>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="Author" content="">
    <meta content=" shop116703760.taobao.com/index.htm" name="design">
    <title>上海汉维生物医药科技有限公司</title>
    <link rel="stylesheet" type="text/css" href="front/css/css_whir.css"/>
    <script type="text/javascript" src="front/scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="front/scripts/jquery.SuperSlide.2.1.1.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="front/scripts/html5shiv.v3.72.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .Toper{ background:url(front/images/navon_bg.png) no-repeat 1052px top;}
    </style>
</head>

<body>
<!--top-->
<header class="header2">
    <section class="Toper Toper2">
        <a href="front/index.jsp" class="logo"><img src="front/images/logo.png"/></a>
        <section class="welcome">
            <c:if test="${not empty user.name }"><em>欢迎${user.name}登录</em><a href="frontUser/loginOut">[退出]</a></c:if>
            <c:if  test="${empty user.name }"><a href="front/userLogin.jsp"> 请登录</a></c:if>
        </section>
        <nav class="MainNav">
            <ul>
                <li><a class="navA" href="front/index.jsp"><span>首页</span><em>MemberCenter</em></a></li>
                <li><a class="navA" href="front/feedback.jsp"><span>意见反馈</span><em>Feedback</em></a></li>
            </ul>
        </nav>
    </section>
</header>

<!--top End-->
<section class="Contain">
    <section class="Content">
        <div class="feedback">
            <div class="title"><span>意见反馈/</span><em>Feedback </em></div>
            <textarea placeholder="请输入您的意见" class="feed"></textarea>
            <a class="tip">还可以输入300字</a>
            <a class="submit" href="">提交反馈</a>
        </div>
    </section>
    <div class="clear"></div>
</section>
<!--bottom-->
<footer class="Bottom Bottom_memberbox">
    <section class="Bottom_member">
        <nav class="Bottomlinks2">
            <ul>
                <li><a href="">站长统计</a></li><em>|</em>
                <li><a href="">法律声明</a></li><em>|</em>
                <li><a href="">网站地图</a></li><em>|</em>
                <li><a href="links.html">合作伙伴</a></li>
            </ul>
        </nav>
        <div class="clear"></div>
        <section class="CopyRight">
            Copyright© 2015  上海汉维生物医药科技有限公司  粤ICP备99999999号
            Designed by <a href="http://shop116703760.taobao.com/">我的虚拟世界店铺</a>
        </section>
    </section>
</footer>

<script type="text/javascript">
    //整站无图处理
    jQuery.each(jQuery("img"), function (i, n) { jQuery(n).error(function () { n.src = 'front/uploadfiles/nopic.jpg'; }); n.src = n.src; });
</script>
<!--bottom End-->
</body>
</html>
