<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script type="text/javascript" src="front/scripts/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript" src="after/lib/layer/1.9.3/layer.js"></script>
    <script type="text/javascript" src="front/scripts/html5shiv.v3.72.min.js"></script>

</head>

<body>
<!--top-->
<header class="header2">
    <section class="Toper Toper2">
        <a href="front/index.jsp" class="logo"><img src="front/images/logo.png"/></a>
        <section class="welcome">欢迎：<em>刘先生！</em><a href="">[退出]</a></section>
        <nav class="MainNav">
            <ul>
                <li><a class="navA" href="front/index.jsp"><span>首页</span><em>Home</em></a></li>
                <li><a class="navA" href="front/feedback.jsp"><span>意见反馈</span><em>Feedback</em></a></li>
            </ul>
        </nav>
    </section>
</header>

<!--top End-->
<section class="Contain">
    <section class="Content">
        <div class="register">
            <%--<form action="frontUser/register" method="post" class="form form-horizontal" id="form-admin-add">--%>
            <div class="title"><span>会员注册/</span><em>Registered </em></div>
            <div class="table">
                <table>
                    <tr>
                        <td class="left">用户名：</td>
                        <td><input type="text" class="text" name="name" id="name"></td>
                    </tr>
                    <tr>
                        <td class="left">密码：</td>
                        <td><input type="text" class="text" name="password" id="password"></td>
                    </tr>

                    <tr>
                        <td class="left">地址：</td>
                        <td>

                        <select name="pid" id="pid">

                            <option>&nbsp;&nbsp;请选择省份&nbsp;&nbsp;</option>

                            <c:forEach items="${pidList}" var="p">
                                <option value="${p.pid}">${p.pname}</option>
                            </c:forEach>

                        </select>

                        <select name="cid" id="city" class="cid" >
                            <option>&nbsp;&nbsp;请选择城市&nbsp;&nbsp;</option>
                        </select>

                        </td>
                    </tr>
                    <tr>
                        <td class="left">详细地址</td>
                        <td><input type="text" class="text text2" name="address" id="address"></td>
                    </tr>
                    <tr>
                        <td class="left">联系电话：</td>
                        <td><input type="text" class="text text2" name="phone" id="phone"></td>
                    </tr>

                </table>
            </div>
            <a href="javascript:void(0)" class="btn" onclick="register()">注册  Registered </a>
                <%--<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;注册  Registered&nbsp;&nbsp;">--%>
            <div class="register2">已有账户 <a href="front/userLogin.jsp">登录</a></div>
            <%--</form>--%>
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
<script type="text/javascript">
    //模拟单选按钮
    $(".register .ticket span em").first().addClass("on");
    $(".register .ticket span").each( function(){
        $(this).click(function(){
            $(".register .ticket span em").removeClass("on");
            $(this).find("em").addClass("on");
        })
    })

    //模拟下拉
    $(".SelectBox").each(function () {    //同一个页面允许多次使用
        $(this).find(".SelectText").click(function () {  //点击展开下拉菜单
            var SelectListStatis = $(this).next(".SelectList").css("display");
            if (SelectListStatis == "none") {    //判断下拉菜单是否展开
                $(this).next(".SelectList").show();
            }
            else {
                $(this).next(".SelectList").hide();
            }
        });
        //下拉菜单选项点击事件
        $(this).find(".SelectList").children("dt").click(function () {
            var Value = $(this).find("a").text();  //点击获取值
            //赋值
            $(this).parents(".SelectList").prev(".SelectText").text(Value)
            $(this).parents(".SelectList").hide();
            $(this).mouseleave(function () { $(this).find(".SelectList").hide(); });
        });
    });

    $("#pid").change(function(){

        var pid=$(this).children('option:selected').val();


        $.ajax({
            url:'afterUser/selcityByPid',
            type: "post",
            data:{"pid":pid},
            success: function(result) {


                if(result!=null){

                    $("#city").empty();//首先清空城市下拉框
                    $("#city").append("<option>&nbsp;&nbsp;请选择城市&nbsp;&nbsp;<option>")
                    $.each(result, function(i, d) {//获取出集合里面的所有元素，追加到城市下拉框下面

                        $("#city").append(//添加节点
                            "<option value='"+d.cid+"'>" + d.cname
                            + "</option>");
                    });

                }else{
                    alert("操作有误");
                }
            }
        });

    })

    function register() {
        var name=$("#name").val();
        var password=$("#password").val();
        var pid=$("#pid").val();
        var cid=$(".cid").val();
        var address=$("#address").val();
        var phone=$("#phone").val();

        var param={"name":name,"password":password,"pid":pid,"cid":cid,"address":address,"phone":phone};
//        console.info(name);console.info(password);
//        console.info(pid);console.info(cid);
//        console.info(address);console.info(phone);
        $.post("frontUser/register",param,function(data){

            // 1.先判断是否操作成功
            if(data.state=="SUCCESS"){
                layer.msg(data.msg, {icon: 1,time:1000},function(){
                    location.href="front/userLogin.jsp";
                });
            }else{
                layer.msg(data.msg, {icon: 2,time:1000},function(){
                    location.href="front/register.jsp";
                });
            }
        });

    }
</script>