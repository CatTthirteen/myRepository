<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="Author" content="">
    <meta content=" shop116703760.taobao.com/index.htm" name="design">
    <title>上海汉维生物医药科技有限公司</title>
    <base href="<%=request.getContextPath()+"/"%>">
    <link rel="stylesheet" type="text/css" href="front/css/css_whir.css"/>
    <script type="text/javascript" src="front/scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="after/lib/layer/1.9.3/layer.js"></script>
    <script type="text/javascript" src="after/lib/laypage/1.2/laypage.js"></script>
    <script type="text/javascript" src="front/scripts/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript" src="front/scripts/html5shiv.v3.72.min.js"></script>
    <script type="text/javascript" src="after/lib/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="after/js/H-ui.js"></script>
    <script type="text/javascript" src="after/js/H-ui.admin.js"></script>
    <script type="text/javascript" src="after/lib/html5.js"></script>
    <script type="text/javascript" src="after/lib/respond.min.js"></script>
    <script>
        function name_of(obj){
            obj.value='';
        }

        function name_ob(obj){
            if(obj.value==''){
                obj.value='用户名  Username';
            }
        }
        function pass_of(obj){
            obj.value='';
        }

        function pass_ob(obj){
            if(obj.value==''){
                obj.value='密码  Password';
            }
        }
    </script>
</head>

<body>
<!--top-->
<header class="header2">
    <section class="Toper Toper2">
        <a href="front/index.jsp" class="logo"><img src="front/images/logo.png"/></a>
        <section class="welcome"><em>
            <c:if test="${not empty user.name }"><em>欢迎${user.name}登录</em><a href="frontUser/loginOut">[退出]</a></c:if>
            <c:if  test="${empty user.name }"><a href="front/userLogin.jsp"> 请登录</a></c:if></em>
            </section>
        <nav class="MainNav">
            <ul>
                <li><a class="navA" href="front/index.jsp"><span>首页</span><em>Home</em></a></li>
                <li><a class="navA" href="shop/getProvince"><span>去哪买</span><em>Where to buy</em></a></li>
            </ul>

        </nav>
    </section>
</header>

<!--top End-->
<section class="Contain">
    <section class="Content">
        <div class="login">
            <div class="title"><span>会员登录/</span><em>Login</em></div>
            <div class="table">
                <table>
                    <tr>
                        <td><input type="text" class="text" name="name" id="name" value="" onfocus="name_of(this)" onblur="name_ob(this)"></td>
                    </tr>
                    <tr>
                        <td><input type="password" class="text text2" name="password" id="password" value="" onfocus="pass_of(this)" onblur="pass_ob(this)"></td>
                    </tr>
                    <tr style="height: 80px">
                        <td>
                            <a href="javascript:void(0)" class="btn" onclick="login()">登 录  Login </a>
                        </td>
                    </tr>
                    <tr style="height: 80px">
                        <td>
                            <a href="after/adminLogin.jsp" class="btn" >进入后台登录</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="last"><span>忘记密码？   还没有账户<a href="frontUser/getProvince"> 现在注册</a></span></td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
    <div class="clear"></div>
</section>

<!--bottom-->
<footer class="Bottom Bottom_memberbox">
    <section class="Bottom_member">
        <nav class="Bottomlinks2">
            <ul>
                <li><a href="#">站长统计</a></li><em>|</em>
                <li><a href="#">法律声明</a></li><em>|</em>
                <li><a href="#">网站地图</a></li><em>|</em>
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

    $(function () {

            var mes=decodeURI(GetQueryString("msg"), "utf-8");
            if(mes==""||mes=='null'||mes==null){
                return ;
            }else {
                layer.msg(mes,{ico: 2,time:1000},function () {
                });
            }
        //console.info("msg"+mes);
    })

    /**
     * 处理乱码问题
     * @param name
     * @returns {string|null}
     * @constructor
     */
    function GetQueryString(name)
    {
        var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if(r!=null)return  unescape(r[2]); return null;
    }

    function login() {
        var name =$("#name").val();
        var password =$("#password").val();
        console.info(name); console.info(password);

        $.post("frontUser/login",{"name":name,"password":password},function(data){
            console.info(data);
            if(data.state=="SUCCESS"){
                layer.msg(data.msg, {icon: 1,time:1000},function(){
                    location.href="front/index.jsp";
                });
            }else{
                layer.msg(data.msg, {icon: 2,time:1000},function(){
                    location.href="front/userLogin.jsp"
                });
            }

        });
    }

    //整站无图处理
    jQuery.each(jQuery("img"), function (i, n) { jQuery(n).error(function () { n.src = 'front/uploadfiles/nopic.jpg'; }); n.src = n.src; });
</script>
<!--bottom End-->
</body>
</html>
