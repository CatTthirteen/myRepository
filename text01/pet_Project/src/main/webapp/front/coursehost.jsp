
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

    <script type="text/javascript" src="after/lib/layer/1.9.3/layer.js"></script>
    <script type="text/javascript" src="after/lib/laypage/1.2/laypage.js"></script>
    <script type="text/javascript" src="after/lib/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="front/js/H-ui.js"></script>
    <script type="text/javascript" src="front/js/H-ui.admin.js"></script>

    <script type="text/javascript"  src="front/js/product.js"></script>
    <script type="text/javascript" src="front/js/client.js"></script>
    <script type="text/javascript" src="front/scripts/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript" src="front/scripts/html5shiv.v3.72.min.js"></script>
    <script type="text/javascript">
        var menuID = "2";
        var liID = "1";
    </script>
    <style type="text/css">
        .Toper{ background:url(front/images/navon_bg.png) no-repeat 855px bottom;}
    </style>

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
                                <dt><a href="javascript:void(0)">公司介绍<em>Company Profile</em></a></dt>
                                <dt><a href="javascript:void(0)">品牌故事<em>Brand Story</em></a></dt>
                                <dt><a href="javascript:void(0)">企业文化<em>Enterprise Culture</em></a></dt>
                                <dt><a href="javascript:void(0)">大事记<em>Memorabilia</em></a></dt>
                            </dl>
                            <img src="front/uploadfiles/image/subnav.jpg" />
                        </div>
                        <div class="navbot"></div>
                    </div>
                </li>
                <!--鼠标移动事件onmouseover-->
                <li id="nav3"  <%--onmouseout="cleanContext()"--%>>
                    <a class="navA"  onmouseover="getProdutName()"  href="product/getProductList/1" name="汉维产品"><span>汉维产品</span><em>Our Products</em> </a>
                    <div class="subnav">
                        <div class="navtop" id="">
                            <dl id="product_name">
                                <%-- <dl >
                                    &lt;%&ndash; <dt><a href="">&lt;%&ndash;<em> Trolevis</em>&ndash;%&gt;</a></dt>&ndash;%&gt;
                                 </dl>--%>
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
                                <dt><a href="javascript:void(0)">汉维动态<em>Hanvet Press</em></a></dt>
                                <dt><a href="javascript:void(0)">优惠活动<em>Promotion</em></a></dt>
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
                                <dt><a href="javascript:void(0)">皮肤病<em>Dermatosis</em></a></dt>
                                <dt><a href="javascript:void(0)">口腔疾病<em>Oral Diseases</em></a></dt>
                                <dt><a href="javascript:void(0)">呼吸系统疾病<em>Respiratory Disease</em></a></dt>
                                <dt><a href="javascript:void(0)">胃肠道疾病<em>Gastrointestinal disease</em></a></dt>
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
                    <a class="navA"  href="javaScript:void (0);" name="关于汉维"><span>联系我们</span><em>Contact Us</em> </a>
                    <div class="subnav">
                        <div class="navtop">
                            <dl>
                                <dt><a href="javaScript:void (0);" onclick="showClient()" >人工客服<em>Server</em></a></dt>
                                <dt><a href="javaScript:void (0);" onclick="showClientQuick()" >快速回复<em>Quick Reply</em></a></dt>
                            </dl>
                            <img src="front/uploadfiles/image/subnav.jpg" />
                        </div>
                        <div class="navbot"></div>
                    </div>
                </li>
            </ul>
            <div class="clear"></div>
        </nav>
        <div class="clear"></div>
        <section class="fixed">
            <a href="front/userLogin.jsp" class="where"><b>登陆</b><br /><em> log in </em></a>
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
<aside class="Banner" style="background:url(front/uploadfiles/banner/course_ban.jpg) no-repeat center top">
</aside>
<section class="Contain">
    <aside class="SildeBar">
        <nav class="MenuList">
            <div class="slide">
                <div class="left"></div>
                <ul>
                    <li id="menu1"><a href="javascript:void(0)">宠物医生   </a></li>
                    <li id="menu2"><a href="front/coursehost.jsp"> 宠物主人</a></li>
                </ul>
                <div class="right"></div>
            </div>
        </nav>
        <div class="clear"></div>
        <script type="text/javascript">
            //导航选中
            $("#menu" + menuID).addClass("on");
            var num=$(".MenuList li").size();
            var width=num*146+38;
            $(".MenuList .slide").width(width);
        </script>
    </aside>
    <section class="Content">
        <div class="course">
            <div class="menu_course">
                <div class="Clips"><img src="front/images/course_bg5.png"></div>
                <div class="item">
                    <ul>
                        <li class="li1">
                            <a href="javascript:void(0)">
                                <div class="info">
                                    <img src="front/images/course01.png">
                                    <div class="tit"><span>皮肤病</span><br /><em>Skin Disease</em></div>
                                </div>
                            </a>
                        </li>
                        <li class="li2">
                            <a href="javascript:void(0)">
                                <div class="info">
                                    <img src="front/images/course02.png">
                                    <div class="tit"><span>口腔疾病</span><br /><em>Oral Diseases</em></div>
                                </div>
                            </a>
                        </li>
                        <li class="li3">
                            <a href="javascript:void(0)">
                                <div class="info">
                                    <img src="front/images/course03.png">
                                    <div class="tit"><span>呼吸系统疾病</span><br /><em>Respiratory Diseases</em></div>
                                </div>
                            </a>
                        </li>
                        <li class="li4">
                            <a href="javascript:void(0)">
                                <div class="info">
                                    <img src="front/images/course04.png">
                                    <div class="tit"><span>胃肠道疾病</span><br /><em>Gastrointestinal Diseases</em></div>
                                </div>
                            </a>
                        </li>
                        <li class="li5">
                            <a href="javascript:void(0)">
                                <div class="info">
                                    <img src="front/images/course05.png">
                                    <div class="tit"><span>心血管疾病 </span><br /><em>Cardiovascular Disease</em></div>
                                </div>
                            </a>
                        </li>
                        <li class="li6">
                            <a href="javascript:void(0)">
                                <div class="info">
                                    <img src="front/images/course06.png">
                                    <div class="tit"><span>泌尿系统疾病 </span><br /><em>Urinary System Diseases</em></div>
                                </div>
                            </a>
                        </li>
                        <li class="li7">
                            <a href="javascript:void(0)">
                                <div class="info">
                                    <img src="front/images/course07.png">
                                    <div class="tit"><span>骨关节疾病</span><br /><em>Bone And Joint Diseases</em></div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="cat"><img src="front/images/course_bg6.png"></div>
                <script type="text/javascript">
                    $(".li" + liID).addClass("on");
                </script>
            </div>
            <script type="text/javascript">
                $(window).load(function () {
                    $(".item ul li").each(function () {
                        //设置和获取一些变量
                        var thumbnail = {
                            imgIncrease: 30, /* 增加图像像素（变焦） */
                            effectDuration: 400, /* 效果的持续时间（变焦和标题） */
                            imgWidth: $(this).find('img').width(),
                            imgHeight: $(this).find('img').height()
                        };
                        $(this).css({
                            'width': thumbnail.imgWidth,
                            'height': thumbnail.imgHeight
                        });
                        $(this).hover(function () {
                            $(this).find('img').stop().animate({
                                /* 变焦效果，提高图像的宽度 */
                                width: parseInt(thumbnail.imgWidth) + thumbnail.imgIncrease,
                                height: parseInt(thumbnail.imgHeight) + thumbnail.imgIncrease,
                                /* 我们需要改变的左侧和顶部的位置，才能有放大效应，因此我们将它们移动到一个负占据一半的img增加 */
                                left: thumbnail.imgIncrease / 2 * (-1),
                                top: thumbnail.imgIncrease / 2 * (-1)

                            }, {
                                "duration": thumbnail.effectDuration,
                                "queue": false
                            });
                            //当鼠标离开...
                        }, function () {
                            $(this).find('img').animate({
                                width: thumbnail.imgWidth,
                                height: thumbnail.imgHeight,
                                left: 0,
                                top: 0
                            }, thumbnail.effectDuration);
                        });
                    });
                });
            </script>

            <div class="Courselist">
                <ul>
                    <li><span>2015-05-25</span><a href="javascript:void(0)">拒食和拒绝饮水，不思运动。猫巴贝氏虫病则由猫巴贝氏虫（B.cati）致病所致，症状如犬。</a></li>
                    <li><span>2015-05-25</span><a href="javascript:void(0)">现有治疗巴贝氏虫病药为imidocarb，疗效佳。欧洲已研制出有效的抗巴贝氏虫病疫苗</a></li>
                    <li><span>2015-05-25</span><a href="javascript:void(0)">但是仅能保护同源性犬类巴贝氏虫病，应用范围局限。</a></li>
                    <li><span>2015-05-25</span><a href="javascript:void(0)">大多数猫和犬携带一种蜱。城市内最常见的为六角硕蜱和蓖子硬蜱，后者更多见于犬</a></li>
                    <li><span>2015-05-25</span><a href="javascript:void(0)">而传播媒介昆虫往往是旅行动物传染异地寄生虫的主要原因。</a></li>
                    <li><span>2015-05-25</span><a href="javascript:void(0)">巴贝氏虫病（Babesiosis） 犬巴贝氏虫病由犬巴贝氏虫（Babesia canis / Bgibson）感染引起。</a></li>
                    <li><span>2015-05-25</span><a href="javascript:void(0)">由媒介扇头蜱叮咬传播，犬发病率较高。巴贝氏虫可侵入犬红细胞内，犬感染后可表现高热</a></li>
                </ul>

            </div>
            <!--Pages-->
            <div class='Pages_course'>
            <span>
                <em>
                <Numeric>
                   <%-- <a href='{$PageUrl}' class='{$PageNumClass}' id='pageNum{$PageNum}'>1</a>
                    <a href='{$PageUrl}' class='{$PageNumClass}' id='pageNum{$PageNum}'>2</a>
                    <a href='{$PageUrl}' class='{$PageNumClass}' id='pageNum{$PageNum}'>3</a>--%>
                </Numeric>
                </em>
                <a href="javaScript:void (0);" class='a_next'><img src="front/images/course_bg3.jpg"></a>
            </span>
            </div>
            <!--Pages-->
        </div>
    </section>
    <div class="clear"></div>
</section>

<!--bottom-->
<footer class="Bottom">
    <div class="Bottom1">
        <nav class="BottomNav">
            <ul>
                <li>
                    <a class="navB"  href="javascript:void(0)"><span>关于汉维</span><em>About Us</em></a>
                    <dl>
                        <dt><a href="javascript:void(0)">公司介绍<em>Company Profile</em></a></dt>
                        <dt><a href="javascript:void(0)">品牌故事<em>Brand Story</em></a></dt>
                        <dt><a href="javascript:void(0)">企业文化<em>Enterprise Culture</em></a></dt>
                        <dt><a href="javascript:void(0)">大事记<em>Memorabilia</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href="javascript:void(0)"><span>新闻活动</span><em>Latest News</em></a>
                    <dl>
                        <dt><a href="javascript:void(0)">汉维动态<em>Hanvet Press</em></a></dt>
                        <dt><a href="javascript:void(0)">优惠活动<em>Promotion</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href="javascript:void(0)"><span>汉维产品</span><em>Our Products</em></a>
                    <dl>
                        <dt><a href="javascript:void(0)">宠立维<em> Trolevis</em></a></dt>
                        <dt><a href="javascript:void(0)">美昔<em>Melocam</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href="javascript:void(0)"><span>汉维课堂</span><em>Hanvet Classroom</em></a>
                    <dl>
                        <dt><a href="javascript:void(0)">皮肤病<em>Dermatosis</em></a></dt>
                        <dt><a href="javascript:void(0)">口腔疾病<em>Oral Diseases</em></a></dt>
                        <dt><a href="javascript:void(0)">呼吸系统疾病<em>Respiratory Disease</em></a></dt>
                        <dt><a href="javascript:void(0)">胃肠道疾病<em>Gastrointestinal disease</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href="javascript:void(0)"><span>职业发展</span><em>Careers</em></a>
                    <dl>
                        <dt><a href="javascript:void(0)">职业发展<em> Careers</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href="javascript:void(0)"><span>联系我们</span><em>Contact Us</em></a>
                    <dl>
                        <dt><a href="javascript:void(0)">联系我们<em> Contact Us</em></a></dt>
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
                <li><a href="javascript:void(0)">流量统计</a></li><em>|</em>
                <li><a href="javascript:void(0)">法律声明</a></li><em>|</em>
                <li><a href="javascript:void(0)">网站地图</a></li><em>|</em>
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

<script type="text/javascript">
    //整站无图处理
    jQuery.each(jQuery("img"), function (i, n) { jQuery(n).error(function () { n.src = 'front/uploadfiles/nopic.jpg'; }); n.src = n.src; });
</script>
<!--bottom End-->
</body>
</html>