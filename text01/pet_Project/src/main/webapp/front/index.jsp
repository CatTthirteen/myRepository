<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/10/17
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>

<head>
    <base href="<%=request.getContextPath()+"/"%>">
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
    <!--[if lt IE 9]>
    <script type="text/javascript" src="front/scripts/html5shiv.v3.72.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .Toper{ background:url(front/images/navon_bg.png) no-repeat 420px bottom;}
    </style>
</head>
<script src="front/scripts/html5media/1.1.8/html5media.min.js"></script>
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
                            </dl>x
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

        <%--<c:if test="${ not empty user.name}">--%>
            <section class="fixed">
                <a href="front/userLogin.jsp" class="where"><b>登陆</b><br /><em> log in </em></a>
                 <a href="frontUser/getUserById" class="Pet"><b>个人消息</b><br /><em>Personal message</em></a>
            </section>
        <%--</c:if>--%>
        <%--<section class="fixed">--%>
            <%--<a href="front/userLogin.jsp" class="Pet"><b>登陆</b><br /><em> log in </em></a>--%>
            <%--&lt;%&ndash;<c:if test="${empty user.name }"><a href="front/userLogin.jsp" class="where"><b>登陆</b><br /><em> log in </em></a></c:if>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="front/userLogin.jsp" class="where"><b>登陆</b><br /><em> log in </em></a>&ndash;%&gt;--%>
            <%--<a href="frontUser/getUserById" class="Where"><b>个人消息</b><br /><em>Personal message</em></a>--%>
        <%--</section>--%>

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


    /*
    鼠标移出事件

     */
    /*function cleanContext() {
        $("#product_name").empty();
    }
*/
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
<aside class="HomeBan">
    <div class="BanList">
        <ul>
            <li style="background:url(front/uploadfiles/banner/178ec85d2a8cea1077ee7599aad052c6.jpg) no-repeat center top"></li>
            <li style="background:url(front/uploadfiles/banner/HomeBan03.jpg) no-repeat center top"></li>
            <li style="background:url(front/uploadfiles/banner/HomeBan02.jpg) no-repeat center top"></li>
            <li style="background:url(front/uploadfiles/banner/HomeBan01.jpg) no-repeat center top"></li>
        </ul>
    </div>
    <div class="Tabbox"><div class="Tab"><div class="TabList"><ul><li></li></ul></div></div></div>
</aside>
<script type="text/javascript">
    jQuery(".HomeBan").slide({titCell:".TabList ul",mainCell: ".BanList ul", autoPage: true, effect: "leftLoop", autoPlay: true});
</script>
<section class="Contain">
    <!--关于汉维-->
    <section class="HomeBox1">
        <div class="HomeAbout">
            <div class="left"><img src="front/uploadfiles/image/homeabout1.png" width="372" height="549"></div>
            <div class="right">
                <div class="H_title"><span>关于汉维</span><em>About Us</em></div>
                <div class="info">
                    <P>上海汉维生物医药科技有限公司成立于2008年，位于上海市国家级高新技术园区——张江高科技园区。公司致力于为国内外宠物
                        提供规范、安全、有效的新型宠物专用药品和专业化服务，在抗感染药、止痛药、心血管药、抗寄生虫药等领域相继开发出多个
                        宠物专用国家新兽药，并不断追求创建中国最优秀的国际化专业宠物健康领先品牌。</P>
                    <p>Shanghai Hanvet Bio-Pharm Co.,Ltd.<br />
                        Located in Zhangjiang high-tech park (shanghai, China), Shanghai Hanvet Bio-Pharm Co.,Ltd. was founded in 2008, engaging in providing regulated, safe and effective companion animal healthcare medicines and professional technical services for domestic and foreign companion animal healthcare markets. Hanvet has developed and been approved several new veterinary medicines for pets in the therapic areas of Anti-infectives, Analgesics, Antiparasitics, Cardiovascular drugs, etc.</p>
                    <a  href="javaScript:void (0)" class="more"><img src="front/images/H_more.png"></a>
                </div>
                <div class="infolist">
                    <ul>
                        <li>
                            <figure><img src="front/images/Homeabout2.jpg"></figure>
                            <figcaption>
                                <div class="title"><span>规范</span><em>Compliance</em></div>
                                <div>中国第一家按照欧洲GLP管理规范设计和运行的专业动物药品实验室。</div>
                                <div>Found the first professional R&D and testing laboratory for veterinary medicines in China, which is designed and operated according to GLP(European standards)</div>
                            </figcaption>
                        </li>
                        <li class="li2">
                            <figure><img src="front/images/Homeabout3.jpg"></figure>
                            <figcaption>
                                <div class="title"><span>安全</span><em>Safety</em></div>
                                <div>严谨的药学、毒理学和药效学试验，成功获得中国新兽药证书和批准文号。</div>
                                <div>Precisely operate pharmacological,toxicological and pharmacodynamic tests. Successfully obtain new veterinary drugs certificates and Drug Approval Numbers in China.</div>
                            </figcaption>
                        </li>
                        <li class="li3">
                            <figure><img src="front/images/Homeabout4.jpg"></figure>
                            <figcaption>
                                <div class="title"><span>有效</span><em>Efficacy</em></div>
                                <div>产品通过大量病例样本的临床试验，证明具有良好的治疗效果。专业包装设计，使用方便，依从性高</div>
                                <div>Though a large sample size clinic trial, the products were proved effective. Professional packaging design, convenient to use led to high compliance</div>
                            </figcaption>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!--关于汉维-->
    <!--汉维产品-->
    <section class="HomeBox2">
        <section class="HomeProduct">
            <div class="H_title"><span>汉维产品</span><em>Our Products</em></div>
            <div class="ProBox1">
                <div class="box" style="background:url(front/uploadfiles/image/HomePro01.png) no-repeat left 25px;">
                    <div class="right">
                        <div class="title1">宠立维 ®，最适合宠物口服吸收的抗生素</div>
                        <div class="info1">1. 吸收快，口服80%的药量在胃肠前部吸收，肠吸收率高<br />
                            2. 渗透性强，可歼灭组织深部的顽固细菌<br />
                            3. 利用度高，是尿道感染和皮肤炎症的理想选择<br />
                            4. 副作用极少，动物耐受度高，可长期用药。<br />
                            5. 宠物专用，适口性好。</div>
                        <div class="title2">Trolevis, the best antibiotic for oral absorption.</div>
                        <div class="info2">(1) Rapid uptake with high intestinal absorption as 80% of the drug is absorbed in the anterior<br />
                            part of the intestinal tract.<br />
                            (2) Good tissue penetration to kill persistent bacteria in deep tissue.<br />
                            (3) High bioavailability: ideal for urinary tract and skin infection.<br />
                            (4) Mild side effects and good tolerance during long-term use.<br />
                            (5) Formulation designed for pets with good palatability.</div>
                        <a href="javaScript:void (0)"><img src="front/images/H_more.png"></a>
                        <ul>
                            <li><a href="javascript:void(0)" class="story">
                                <figure></figure>
                                <figcaption>产品故事</figcaption>
                            </a>
                            </li>
                            <li><a href="javaScript:void (0)" class="pdf">
                                <figure></figure>
                                <figcaption>说明书</figcaption>
                            </a></li>
                        </ul>
                        <div class="Bideo">
                            <div class="media">
                                <video controls poster="front/images/poster.jpg" preload="auto" width="270px" height="180px">
                                    <source src="front/media/video.mp4"></source>
                                    <source src="front/media/video.ogv"></source>
                                </video>
                                <a href="javascript:void(0)" class="close"><img src="front/images/job_bg5.png"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ProBox2" style="background:url(front/uploadfiles/image/HomePro02.png) no-repeat right 10px">
                <div class="title1"><span>选择更好的术后止痛和关节炎治疗方案？</span><em>美昔 ®给你五大理由</em></div>
                <div class="info1">1.  给药精确，提供专用给药器计量。<br />
                    2.  给药方便，液体制剂可拌食或直接口服。<br />
                    3.  新型烯醇酰胺类非甾体抗炎药（NSAIDs），胃肠道刺激性小，<br />
                    可长期用药，6周龄以上犬即可使用。<br />
                    4.  蜜香甜口味，适口性好<br />
                    5.  消炎镇痛起效快、持效长</div>
                <div class="title2">Still puzzled for the therapy of postoperative analgesia<br /> and arthritis?<br />Melocam, 5 Best Reasons for your choice.</div>
                <div class="info2">
                    (1) Precise recommended dosage measured with calibrated syringe by bodyweight <br />
                    provided in package.<br />
                    (2) Easy administration by applying to your dog’s food or directly into the dog’s mouth as liquid formulation.<br />
                    (3) New type of NSAID with mild gastrointestinal irritation for long-term use and safe for dogs over 6 weeks.<br />
                    (4) Rapid and long-lasting anti-inflammatory and analgesic effect.<br />
                    (5) Good palatability with sweet, honey flavour.
                </div>
                <a href="javaScript:void (0)"><img src="front/images/H_more.png"></a>
                <ul>
                    <li><a href="javascript:void(0)" class="story">
                        <figure></figure>
                        <figcaption>产品故事</figcaption>
                    </a></li>
                    <li><a href="javaScript:void (0)" class="pdf">
                        <figure></figure>
                        <figcaption>说明书</figcaption>
                    </a></li>
                </ul>
                <div class="Bideo">
                    <div class="media">
                        <video controls poster="front/images/poster.jpg" preload="auto" width="270px" height="180px">
                            <source src="front/media/video.mp4"></source>
                            <source src="front/media/video.ogv"></source>
                        </video>
                        <a href="javascript:void(0)" class="close"><img src="front/images/job_bg5.png"></a>
                    </div>
                </div>
            </div>
        </section>
    </section>
    <!--汉维产品-->
    <script type="text/javascript">
        $(".ProBox1 ul .story").click(function(){
            $(this).parents(".ProBox1").find(".Bideo").show();
        })
        $(".ProBox2 ul .story").click(function(){
            $(this).parents(".ProBox2").find(".Bideo").show();
        })
        $(".Bideo .close").click(function(){
            $(".Bideo").hide();
        })

    </script>
    <!--汉维课堂-->
    <section class="HomeBox3">
        <section class="HomeCourse">
            <div class="H_title"><span>汉维课堂</span><em>Hanvet Classroom</em></div>
            <div class="info">
                <div class="left">
                    <a href="javascript:void(0)"><img src="front/images/HomeCourse_bg1.png"></a>
                    <a href="javascript:void(0)"><img src="front/images/HomeCourse_bg2.png"></a>
                </div>
                <div class="right">
                    <div class="box box1">
                        <div class="item">
                            <ul>
                                <li class="li1">
                                    <a href="javaScript:void (0)">
                                        <div class="info">
                                            <img src="front/images/course01.png">
                                            <div class="tit"><span>皮肤病</span><br /><em>Skin Disease</em></div>
                                        </div>
                                    </a>
                                </li>
                                <li class="li2">
                                    <a href="javaScript:void (0)">
                                        <div class="info">
                                            <img src="front/images/course02.png">
                                            <div class="tit"><span>口腔疾病</span><br /><em>Oral Diseases</em></div>
                                        </div>
                                    </a>
                                </li>
                                <li class="li3">
                                    <a href="javaScript:void (0)">
                                        <div class="info">
                                            <img src="front/images/course03.png">
                                            <div class="tit"><span>呼吸系统疾病</span><br /><em>Respiratory Diseases</em></div>
                                        </div>
                                    </a>
                                </li>
                                <li class="li4">
                                    <a href="javaScript:void (0)">
                                        <div class="info">
                                            <img src="front/images/course04.png">
                                            <div class="tit"><span>胃肠道疾病</span><br /><em>Gastrointestinal Diseases</em></div>
                                        </div>
                                    </a>
                                </li>
                                <li class="li5">
                                    <a href="javaScript:void (0)">
                                        <div class="info">
                                            <img src="front/images/course05.png">
                                            <div class="tit"><span>心血管疾病 </span><br /><em>Cardiovascular Disease</em></div>
                                        </div>
                                    </a>
                                </li>
                                <li class="li6">
                                    <a href="javaScript:void (0)">
                                        <div class="info">
                                            <img src="front/images/course06.png">
                                            <div class="tit"><span>泌尿系统疾病 </span><br /><em>Urinary System Diseases</em></div>
                                        </div>
                                    </a>
                                </li>
                                <li class="li7">
                                    <a href="javaScript:void (0)">
                                        <div class="info">
                                            <img src="front/images/course07.png">
                                            <div class="tit"><span>骨关节疾病</span><br /><em>Bone And Joint Diseases</em></div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="iteminfo">
                            <div style=" font-size:1.5em;">宠物医生</div>
                            <p style="">巴贝氏虫病（Babesiosis） 犬巴贝氏虫病由犬巴贝氏虫（Babesia canis / Bgibson）感染引起。由媒介扇头蜱叮咬传播，犬发病率较高。巴贝氏虫可侵入犬红细胞内，犬感染后可表现高热，拒食和拒绝饮水，不思运动。猫巴贝氏虫病则由猫巴贝氏虫（B.cati）致病所致，症状如犬。
                            </p>
                            <p>现有治疗巴贝氏虫病药为imidocarb，疗效佳。欧洲已研制出有效的抗巴贝氏虫病疫苗，但是仅能
                                保护同源性犬类巴贝氏虫病，应用范围局限。</p>
                            <a href="javaScript:void (0);"><img src="front/images/H_more2.jpg" /></a>
                        </div>
                    </div>
                    <div class="box box2">
                        <div class="item">
                            <ul>
                                <li class="li1">
                                    <a href="javaScript:void (0)">
                                        <div class="info">
                                            <img src="front/images/course05.png">
                                            <div class="tit"><span>品种介绍</span><br /><em>Varieties</em></div>
                                        </div>
                                    </a>
                                </li>
                                <li class="li2">
                                    <a href="javaScript:void (0)">
                                        <div class="info">
                                            <img src="front/images/course02.png">
                                            <div class="tit"><span>爱宠养护指南</span><br /><em>Dotes Conservation Guide</em></div>
                                        </div>
                                    </a>
                                </li>
                                <li class="li3">
                                    <a href="javaScript:void (0)">
                                        <div class="info">
                                            <img src="front/images/course07.png">
                                            <div class="tit"><span>疾病与健康</span><br /><em>Diseases and Health</em></div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="iteminfo">
                            <div style=" font-size:1.5em;">宠物主人</div>
                            <p style="">巴贝氏虫病（Babesiosis） 犬巴贝氏虫病由犬巴贝氏虫（Babesia canis / Bgibson）感染引起。由媒介扇头蜱叮咬传播，犬发病率较高。巴贝氏虫可侵入犬红细胞内，犬感染后可表现高热，拒食和拒绝饮水，不思运动。猫巴贝氏虫病则由猫巴贝氏虫（B.cati）致病所致，症状如犬。
                            </p>
                            <p>现有治疗巴贝氏虫病药为imidocarb，疗效佳。欧洲已研制出有效的抗巴贝氏虫病疫苗，但是仅能
                                保护同源性犬类巴贝氏虫病，应用范围局限。</p>
                            <a href="javaScript:void (0)"><img src="front/images/H_more2.jpg" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                //内容切换
                $(".HomeCourse .right .box").hide().first().show();
                $(".HomeCourse .left a").each(function(i){
                    $(this).click(function(){
                        $(".HomeCourse .right .box").hide();
                        $(".HomeCourse .right .box").eq(i).show();
                    })
                })

                //图片放大
                $(window).load(function () {
                    $(".item ul li").each(function () {
                        //设置和获取一些变量
                        var thumbnail = {
                            imgIncrease: 20, /* 增加图像像素（变焦） */
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

        </section>
    </section>
    <!--汉维课堂-->
    <!--新闻活动-->
    <section class="HomeBox4">
        <section class="HomeNews">
            <div class="H_title"><span>新闻活动</span><em>Latest News</em></div>
            <div class="info">
                <div class="left">
                    <a class="prev" href="javascript:void(0)"></a>
                    <a class="next" href="javascript:void(0)"></a>
                    <div class="ImgList">
                        <ul>
                            <li>
                                <a href="javaScript:void (0)" class="img"><img src="front/uploadfiles/image/HomeNews.jpg" width="340" height="160"></a>
                                <time><span>22</span><em>/2015-05</em></time>
                                <div class="desc">
                                    <a href="">用销售技巧，组织销售专员完成销售任务</a>
                                    <div>欧洲已研制出有效的抗巴贝氏虫病疫苗，但是仅能保护同源性犬类巴贝氏虫病，应用范围局限。</div>
                                </div>
                            </li>
                            <li>
                                <a href="javaScript:void (0)" class="img"><img src="front/uploadfiles/image/HomeNews.jpg" width="340" height="160"></a>
                                <time><span>22</span><em>/2015-05</em></time>
                                <div class="desc">
                                    <a href="">用销售技巧，组织销售专员完成销售任务</a>
                                    <div>欧洲已研制出有效的抗巴贝氏虫病疫苗，但是仅能保护同源性犬类巴贝氏虫病，应用范围局限。</div>
                                </div>
                            </li>
                            <li>
                                <a href="javaScript:void (0)" class="img"><img src="front/uploadfiles/image/HomeNews.jpg" width="340" height="160"></a>
                                <time><span>22</span><em>/2015-05</em></time>
                                <div class="desc">
                                    <a href="">用销售技巧，组织销售专员完成销售任务</a>
                                    <div>欧洲已研制出有效的抗巴贝氏虫病疫苗，但是仅能保护同源性犬类巴贝氏虫病，应用范围局限。</div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="right">
                    <ul>
                        <li>
                            <time><span>18</span><em>2015-05</em></time>
                            <div class="item">
                                <a href="javaScript:void (0)">客户服务和终端管理来达成相关业绩目标</a>
                                <div>在制剂研发，新药注册得到国内外专家及政府认可的基础上，上海汉维始终坚定不移的以打造国际化、专业化、规范化的宠物健康产品品牌为目标。</div>
                            </div>
                        </li>
                        <li>
                            <time><span>18</span><em>2015-05</em></time>
                            <div class="item">
                                <a href="javaScript:void (0)">客户服务和终端管理来达成相关业绩目标</a>
                                <div>在制剂研发，新药注册得到国内外专家及政府认可的基础上，上海汉维始终坚定不移的以打造国际化、专业化、规范化的宠物健康产品品牌为目标。</div>
                            </div>
                        </li>
                        <li>
                            <time><span>18</span><em>2015-05</em></time>
                            <div class="item">
                                <a href="javaScript:void (0)">客户服务和终端管理来达成相关业绩目标</a>
                                <div>在制剂研发，新药注册得到国内外专家及政府认可的基础上，上海汉维始终坚定不移的以打造国际化、专业化、规范化的宠物健康产品品牌为目标。</div>
                            </div>
                        </li>
                    </ul>
                    <div class="clear"></div>
                    <a href="javaScript:void (0)"><img src="front/images/H_more.png"></a>
                </div>
            </div>
        </section>
    </section>
    <script type="text/javascript">
        jQuery(".HomeBox4 .left").slide({mainCell: ".ImgList ul", autoPage: true, effect: "left", autoPlay: true})
    </script>
    <!--新闻活动-->
</section>
<!--bottom-->
<footer class="Bottom">
    <div class="Bottom1">
        <nav class="BottomNav">
            <ul>
                <li>
                    <a class="navB"  href="javaScript:void (0)"><span>关于汉维</span><em>About Us</em></a>
                    <dl>
                        <dt><a href="javaScript:void (0)">公司介绍<em>Company Profile</em></a></dt>
                        <dt><a href="javaScript:void (0)">品牌故事<em>Brand Story</em></a></dt>
                        <dt><a href="javaScript:void (0)">企业文化<em>Enterprise Culture</em></a></dt>
                        <dt><a href="javaScript:void (0)">大事记<em>Memorabilia</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href="javaScript:void (0)"><span>新闻活动</span><em>Latest News</em></a>
                    <dl>
                        <dt><a href="javaScript:void (0)">汉维动态<em>Hanvet Press</em></a></dt>
                        <dt><a href="javaScript:void (0)">优惠活动<em>Promotion</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href="javaScript:void (0)"><span>汉维产品</span><em>Our Products</em></a>
                    <dl>
                        <dt><a href="javaScript:void (0)">宠立维<em> Trolevis</em></a></dt>
                        <dt><a href="javaScript:void (0)">美昔<em>Melocam</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href="javaScript:void (0)"><span>汉维课堂</span><em>Hanvet Classroom</em></a>
                    <dl>
                        <dt><a href="javaScript:void (0)">皮肤病<em>Dermatosis</em></a></dt>
                        <dt><a href="javaScript:void (0)">口腔疾病<em>Oral Diseases</em></a></dt>
                        <dt><a href="javaScript:void (0)">呼吸系统疾病<em>Respiratory Disease</em></a></dt>
                        <dt><a href="javaScript:void (0)">胃肠道疾病<em>Gastrointestinal disease</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href="javaScript:void (0)"><span>职业发展</span><em>Careers</em></a>
                    <dl>
                        <dt><a href="javaScript:void (0)">职业发展<em> Careers</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB"  href="javaScript:void (0)"><span>联系我们</span><em>Contact Us</em></a>
                    <dl>
                        <dt><a href="javaScript:void (0)">联系我们<em> Contact Us</em></a></dt>
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
                <li><a href="javaScript:void (0)">流量统计</a></li><em>|</em>
                <li><a href="javaScript:void (0)">法律声明</a></li><em>|</em>
                <li><a href="javaScript:void (0)">网站地图</a></li><em>|</em>
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
</body>
</html>
