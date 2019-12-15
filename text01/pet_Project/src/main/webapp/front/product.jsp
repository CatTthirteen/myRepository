<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看产品</title>
    <base href="<%=request.getContextPath()+"/"%>">

    <link rel="stylesheet" type="text/css" href="front/css/css_whir2.css"/>

    <script src="front/js/product.js"></script>
    <script type="text/javascript" src="front/scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="after/lib/layer/1.9.3/layer.js"></script>
    <script type="text/javascript" src="after/lib/laypage/1.2/laypage.js"></script>
    <script type="text/javascript" src="after/lib/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="front/js/H-ui.js"></script>
    <script type="text/javascript" src="front/js/H-ui.admin.js"></script>

    <script src="front/scripts/ttScrollBar.js"></script>
    <script src="front/scripts/html5media/1.1.8/html5media.min.js"></script>
    <script src="front/scripts/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript">
        var menuID = "1";
    </script>
    <style type="text/css">
        .Toper{ background:url(front/images/navon_bg.png) no-repeat 613px bottom;}
    </style>

    <script type="text/javascript">
        //滚动条
        $(window).load(function () {
            var oList = document.getElementById('GDT');
            var ScroolH = $(oList).height();
            if (ScroolH <= 380) {
                $(".scrollBar").hide();
            }
            else {
                var t3 = new ttScrollBar({
                    container: oList, //要加滚动条的对象
                    isBuffer: true, 			//是否开启缓冲效果
                    isMouseWheel: true,   		//是否开启鼠标滚动
                    isOpenKeyEvent: true, //是否支持键盘按键
                    rollScale: 150, 			//缓冲最小单位值
                    focusObj: 'scroll', 		//鼠标滚轮焦点对象 可选 document,scroll,scrollBar
                    scrollEventType: 'mousedown', //mousedown,mouseover 两种类型
                    scrollBarClass: 'scrollBar',  //class
                    scrollUpClass: 'scrollUp',
                    scrollHandleClass: 'scrollHandle',
                    scrollDownClass: 'scrollDown',
                    scrollDValue: 0  	//滚动的差值,上下的和
                })
            }
        })
    </script>

</head>
<body>
<!--top-->
<header>
    <section class="Toper">
        <a href="front/index.jsp" class="logo"><img src="front/images/logo.png"/></a>
        <section class="Search">
            <a href="javascript:void(0)" onclick="return GoSearchUrl();" class="sreach_btn"></a>
            <input name="" type="text" class="sreach_ipu" id="key" value="请输入关键字" onblur="if(this.value=='')this.value='请输入关键字';" onfocus="if(this.value=='请输入关键字')this.value='';" onkeydown="entersearch()"/>

        </section>
        <nav class="MainNav">
            <ul>
                <li id="nav1"><a class="navA" href="front/index.jsp"><span>首页</span><em>Home</em></a></li>
                <li id="nav2">
                    <a class="navA" href="front/about.jsp" name="关于汉维"><span>关于维汉</span><em>About Us</em> </a>
                    <div class="subnav">
                        <div class="navtop">
                            <dl>
                                <dt><a href="">公司介绍<em>Company Profile</em></a></dt>
                                <dt><a href="">品牌故事<em>Brand Story</em></a></dt>
                                <dt><a href="">企业文化<em>Enterprise Culture</em></a></dt>
                                <dt><a href="">大事记<em>Memorabilia</em></a></dt>
                            </dl>
                            <img src="front/uploadfiles/image/subnav.jpg" />
                        </div>
                        <div class="navbot"></div>
                    </div>
                </li>
                <li id="nav3">
                    <a class="navA" onmouseover="getProdutName()"  href="product/getProductList/1"  name="汉维产品"><span>汉维产品</span><em>Our Products</em> </a>
                    <div class="subnav">
                        <div class="navtop">
                            <dl id="product_name">

                            </dl>
                            <img src="front/uploadfiles/image/subnav.jpg" />
                        </div>
                        <div class="navbot"></div>
                    </div>
                </li>
                <li id="nav4">
                    <a class="navA" href="front/newslist.jsp" name="新闻活动"><span>新闻活动</span><em>Latest News</em> </a>
                    <div class="subnav">
                        <div class="navtop">
                            <dl>
                                <dt><a href="">汉维动态<em>Hanvet Press</em></a></dt>
                                <dt><a href="">优惠活动<em>Promotion</em></a></dt>
                            </dl>
                            <img src="front/uploadfiles/image/subnav.jpg" />
                        </div>
                        <div class="navbot"></div>
                    </div>
                </li>
                <li id="nav5">
                    <a class="navA" href="front/coursehost.jsp" name="汉维课堂"><span>汉维课堂</span><em>Hanvet Classroom</em> </a>
                    <div class="subnav">
                        <div class="navtop">
                            <dl>
                                <dt><a href="">皮肤病<em>Dermatosis</em></a></dt>
                                <dt><a href="">口腔疾病<em>Oral Diseases</em></a></dt>
                                <dt><a href="">呼吸系统疾病<em>Respiratory Disease</em></a></dt>
                                <dt><a href="">胃肠道疾病<em>Gastrointestinal disease</em></a></dt>
                            </dl>
                            <img src="front/uploadfiles/image/subnav.jpg" />
                        </div>
                        <div class="navbot"></div>
                    </div>
                </li>
                <li id="nav6">
                    <a class="navA" href="front/job.jsp" name="职业发展"><span>职业发展</span><em>Careers</em> </a>

                </li>
                <li id="nav7">
                    <input type="hidden" id="user" value="${user.name}">
                    <a class="navA" href="javascript:void(0)" name="关于汉维"><span>联系我们</span><em>Contact Us</em> </a>

                </li>
            </ul>
            <div class="clear"></div>
        </nav>
        <div class="clear"></div>
        <section class="fixed">
                <a href="/shop/getProvince" class="where"><b>去哪买</b><br /><em> Where to buy </em></a>
                <a href="frontUser/getUserById" class="Pet"><b>个人消息</b><br /><em>Personal message</em></a>
        </section>
    </section>
</header>
<script type="text/javascript">
    //导航选中

    $(".MainNav li").each(function(){
        $(this).hover(function(){

            $(this).find(".subnav").stop().slideToggle();
        })
    })
    //搜索
    $(".Search").hover(function(){
        $(this).find(".sreach_ipu").toggle("slow");
    })
</script>
<script type="text/javascript">
    //this function do not use jquery for honner page?
    function GoSearchUrl() {
        var searchinput = document.getElementById("key");
        if (searchinput.value == "" || searchinput.value == "请输入关键字") {
            alert("请输入关键字！");
            searchinput.focus();
            return false;
        }
        if (searchinput.value.length > 50) {
            alert("输入的关键字字数不要过多！");
            searchinput.focus();
            return false;
        }
        CheckString(searchinput.value);
    }

    function GoSreach(rs) {
        window.location = "{$syspath}search/search.aspx?key=" + escape(rs);
        return true;
    }

    function entersearch() {
        //alert(dd);
        var event = window.event || arguments.callee.caller.arguments[0];
        if (event.keyCode == 13) {
            GoSearchUrl();
        }
    }

    function CheckString(s) {
        var pattern = new RegExp("[`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）—|{}【】‘；：”“'。，、？]")
        var rs = "";
        for (var i = 0; i < s.length; i++) {
            rs = rs + s.substr(i, 1).replace(pattern, '');
        }
        if (rs == "") {
            alert("不能输入特殊字符！");
            return false;
        }
        else {
            GoSreach(rs);
        }
    }
</script>
<!--top End-->
<aside class="Banner" style="background:url(front/uploadfiles/banner/product_ban.jpg) no-repeat center top">
</aside>
<section class="Contain">
    <aside class="SildeBar">
        <nav class="MenuList">
            <div class="slide">
                <div class="left"></div>
                <ul class="product-menu">
                    <li id="menu1">
                        <a href="/product/getProductList/1">
                            <div class="left2"></div>
                            <div class="center">口服<span>oral</span></div>
                            <div class="right2"></div>
                        </a>
                    </li>
                    <li id="menu2">
                        <a href="/product/getProductList/2">
                            <div class="left2"></div>
                            <div class="center">喷雾<span>spray</span></div>
                            <div class="right2"></div>
                        </a>
                    </li>
                    <li id="menu3" >
                        <a href="/product/getProductList/3">
                            <div class="left2"></div>
                            <div class="center">外用<span>For external use only</span></div>
                            <div class="right2"></div>
                        </a>
                    </li>
                    <li id="menu4" >
                        <a href="/product/getProductList/4">
                            <div class="left2"></div>
                            <div class="center">注射<span>The injection</span></div>
                            <div class="right2"></div>
                        </a>
                    </li>
                </ul>
                <div class="right"></div>
            </div>
        </nav>
        <div class="clear"></div>
    </aside>
    <section class="Content">
        <h3 class="product-title">汉维药品</h3>
        <c:forEach items="${products}" var="product">
            <div class="product-list">
                <div class="product-item">
                    <div class="product-img">
                        <a href="#"><img src="${product.pimage}"></a>
                    </div>
                    <div class="product-content right">

                        <h4 class="title">${product.pname}</h4>
                        <p class="description">
                                ${product.scope} </p>
                        <p class="en-description">
                                ${product.scope_english}</p>
                        <a class="more-botton" href="product/getProductDetails/${product.pid}" style="background: url(front/images/H_more.png) no-repeat top center;"></a>
                        <a class="more-botton" href="javascript:;" onclick="admin_edit('查看评价','product/getDiscuss/${product.pid}','1','800','500')"
                           style="width: 65px;height: 25px; margin-top: 20px;margin-left:14px;
                        background-color: #009191;text-align: center;color: white;border-radius:6px 6px 6px 6px;">客户反馈</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </section>
    <div class="clear"></div>
</section>

<script type="text/javascript">
    $(".TabList li").first().addClass("on");
    $(".InfoList .GDTBox").hide().first().show();
    $(".TabList li").each(function(i){
        $(this).click(function(){
            $(".TabList li").removeClass("on");
            $(this).addClass("on");
            $(".InfoList .GDTBox").hide();
            $(".InfoList .GDTBox").eq(i).show();
        })
    })
</script>

<footer class="Bottom">
    <div class="Bottom1">
        <nav class="BottomNav">
            <ul>
                <li>
                    <a class="navB"  href=""><span>关于汉维</span><em>About Us</em></a>
                    <dl>
                        <dt><a href="">公司介绍<em>Company Profile</em></a></dt>
                        <dt><a href="">品牌故事<em>Brand Story</em></a></dt>
                        <dt><a href="">企业文化<em>Enterprise Culture</em></a></dt>
                        <dt><a href="">大事记<em>Memorabilia</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href=""><span>新闻活动</span><em>Latest News</em></a>
                    <dl>
                        <dt><a href="">汉维动态<em>Hanvet Press</em></a></dt>
                        <dt><a href="">优惠活动<em>Promotion</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href=""><span>汉维产品</span><em>Our Products</em></a>
                    <dl>
                        <dt><a href="">宠立维<em> Trolevis</em></a></dt>
                        <dt><a href="">美昔<em>Melocam</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href=""><span>汉维课堂</span><em>Hanvet Classroom</em></a>
                    <dl>
                        <dt><a href="">皮肤病<em>Dermatosis</em></a></dt>
                        <dt><a href="">口腔疾病<em>Oral Diseases</em></a></dt>
                        <dt><a href="">呼吸系统疾病<em>Respiratory Disease</em></a></dt>
                        <dt><a href="">胃肠道疾病<em>Gastrointestinal disease</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href=""><span>职业发展</span><em>Careers</em></a>
                    <dl>
                        <dt><a href="">职业发展<em> Careers</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href=""><span>联系我们</span><em>Contact Us</em></a>
                    <dl>
                        <dt><a href="">联系我们<em> Contact Us</em></a></dt>
                    </dl>
                </li>
            </ul>
        </nav>
        <div class="right1">
            <div class="HotLine">
                <span>热线电话：<br />Hotline</span>
                <em>400-400-2222</em>
            </div>
            <div class="Wei">
                <div class="img"><img src="front/uploadfiles/image/weixin.jpg" width="106" height="105" /></div>
                <span><b>关注微博</b><br /><em>扫描二维码,关注官方微博</em></span>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <div class="Bottom2">
        <nav class="Bottomlinks">
            <ul>
                <li><a href="">流量统计</a></li><em>|</em>
                <li><a href="">法律声明</a></li><em>|</em>
                <li><a href="">网站地图</a></li><em>|</em>
                <li><a href="links.html">合作伙伴</a></li>
            </ul>
        </nav>
        <div class="clear"></div>
        <section class="Bottomright">
            Copyright© 2015  上海汉维生物医药科技有限公司  粤ICP备99999999号
            Designed by <a href="http://shop116703760.taobao.com/">我的虚拟世界店铺</a>
        </section>
    </div>
</footer>

<script type="text/javascript">jQuery(document).ready(function () {

    $(".MainNav li").each(function(){
        $(this).hover(function(){

            $(this).find(".subnav").stop().slideToggle();
        })
    })
    //搜索
    $(".Search").hover(function(){
        $(this).find(".sreach_ipu").stop().toggle("slow");
    })

    $(function () {
        //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失
        $(function () {
            $(window).scroll(function () {
                if ($(window).scrollTop() >100) {
                    $(".ReturnTop").fadeIn(1500);
                }
                else {
                    $(".ReturnTop").fadeOut(1500);
                }
            });

            //当点击跳转链接后，回到页面顶部位置

            $(".ReturnTop").click(function () {
                $("body,html").animate({ scrollTop: 0 }, 1000);
                return false;
            });
        });
    });

});</script>
<script type="text/javascript">
    function admin_edit(title,url,id,w,h){
        layer_show(title,url,w,h);
    }
    //整站无图处理
//    jQuery.each(jQuery("img"), function (i, n) { jQuery(n).error(function () { n.src = 'front/uploadfiles/nopic.jpg'; }); n.src = n.src; });
</script>
<!--bottom End-->
</body>
</html>
