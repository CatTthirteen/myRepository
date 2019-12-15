<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <base href="<%=request.getContextPath()+"/"%>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="renderer" content="webkit">
    <meta name="csrf-param" content="_homeCSRF">
    <meta name="csrf-token" content="US8trxg8MyecpdWg28I1qnQn4SxtVsmQ-KJtZ5l_x8tQeRON1_0sTy94MMpXo5NURtTA-LVAZQmJ_VHWzNSnnQ==">
    <title>去哪买</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="/favicon.ico" rel="shortcut icon">
    <link href="/favicon.ico" rel="bookmark">

    <link href="front/css/css_whir2.css" rel="stylesheet">
    <link href="front/js/iconfont.css" rel="stylesheet">
    <!--[if lte IE 9]>
    <script src="front/scripts/html5shiv.min.js"></script>
    <![endif]-->
    <!--[if lte IE 9]>
    <script src="/assets/1d9afffe/respond.min.js?v=1530096770"></script>
    <script type="text/javascript" src="after/lib/layer/1.9.3/layer.js"></script>
    <script type="text/javascript" src="after/lib/laypage/1.2/laypage.js"></script>
    <script type="text/javascript" src="after/lib/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" src="front/js/H-ui.js"></script>
    <script type="text/javascript" src="front/js/H-ui.admin.js"></script>
    <script type="text/javascript"  src="front/js/product.js"></script>


    <![endif]-->    </head>
<body>

<style>
    #nav1>a{color:#fff;}
    #nav1>a em{color:#fff;}

</style>
<!--页面头部-->
<div class="line">
    <section class="Toper">
        <a href="front/index.jsp" class="logo"><img src="front/images/logo.png"></a>
        <nav class="MainNav">
            <ul>
                <li id="nav2"><a class="navA" href="front/index.jsp"><span>首页</span><em>Home</em></a></li>
                <li id="nav3">
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
                <li id="nav4"  <%--onmouseout="cleanContext()"--%>>
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
                <li id="nav5">

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
                <li id="nav6">

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
                <li id="nav7">
                    <a class="navA" href="front/job.jsp" name="职业发展"><span>职业发展</span><em>Careers</em> </a>

                </li>
                <li id="nav8">
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
        </nav><div class="clear"></div>
        <section class="fixed">
            <a href="front/userLogin.jsp" class="where"><b>登陆</b><br /><em> log in </em></a>
            <a href="frontUser/getUserById" class="Pet"><b>个人消息</b><br /><em>Personal message</em></a>
        </section>
    </section>
</div>
<!--页面头部-->
<style>
    #nav1>a{color:#fff;}
    #nav1>a em{color:#fff;}
    .line{
        background: url(front/images/bottom_bg.jpg) no-repeat center bottom;
    }
    .Buy .tips{
        margin-bottom: 55px;
        text-align: center;
    }
    .Contain{
        margin-top: 40px;
    }
    .Buy .select em{
        width: 80px;
    }
    .Buy .select{
        padding-left: 0;
    }
    .Buy .select em{
        font-size: 16px;
        font-weight: bolder;
    }
    .Buy .select span{
        margin-right: 0;
    }
    .Buy .store-list{
        margin-bottom: 70px;
        margin-right: -20px;
        overflow: hidden;
    }
    .Buy .store-list >li{
        float: left;
        width: 540px;
        height: 245px;
        margin: 0 20px 20px 0;
        background: #fff;
        border-radius: 5px;
    }
    .Buy .store-list .store-content{
        height: 195px;
        border-bottom:1px solid #e4e4e4;
    }
    .Buy .store-list .store-content .store-img{
        float: left;
        width: 215px;
        text-align: center;
    }
    .Buy .store-list .store-content .store-info{
        float: left;
        width: 320px;
    }
    .Buy .store-list .store-content .store-info h3{
        font-size: 24px;
    }
    .Buy .store-list .store-content .store-info p{
        font-size: 16px;
        line-height: 20px;
    }
    .Buy .store-list .store-content .store-info p,
    .Buy .store-list .store-content .store-info h3{
        overflow: hidden;
        text-overflow:ellipsis;
        white-space: nowrap;
    }
    .Buy .store-list .store-content .store-img >img{
        max-width: 180px;
        max-height: 155px;
        margin-top: 20px;
    }
    .Buy .store-list .store-tag li{
        float: left;
        margin: 10px 0 0 20px;
        padding: 0 10px;
        border: 2px solid #cad520;
        border-radius: 15px;
    }
    .Buy .store-list .iconfont{
        margin-right: 10px;
    }
    .nothings{
        text-align: center;
        font-size: 24px;
    }
</style>
<section class="Contain">
    <section class="Content">
        <div class="Buy">

            <div class="title"><span>去哪儿买/</span><em>Where to buy</em></div>
            <div class="tips"><img src="front/images/tips_wheretobuy.png"></div>
            <div class="select" id="" style="margin-left: 100px">
                <form action="shop/getShop" id="js-form">
                    <span>
                            <em><i class="iconfont icon-address"></i>省 份</em>
                            <div class="SelectBox SelectBox_Up">
                                <select name="pid" id="pid" class="prov SelectText">
                                    <option>&nbsp;&nbsp;请选择省份&nbsp;&nbsp;</option>

                                 <c:forEach items="${pidList}" var="p">
                                        <option value="${p.pid}">${p.pname}</option>
                                 </c:forEach>

                                </select>
                            </div>
                    </span>
                    <span>
                            <em>市</em>
                            <div class="SelectBox SelectBox_Up">
                                <select name="cid" id="city" class="city SelectText" >

                                </select>
                            </div>
                    </span>
                </form>
            </div>
            <div class="clear"></div>
            <ul class="store-list">

            </ul>
            <div class="Pages_course Pages_news">
                <ul id="pages">

                </ul>
            </div>
        </div>
    </section>
    <div class="clear"></div>
</section>


<!--页面底部-->
<footer class="Bottom">
    <div class="Bottom1">
        <nav class="BottomNav">
            <ul>
                <li>
                    <a class="navB" href="/category_187.html" name="关于汉维"><span>关于汉维</span><em>About Us</em></a>
                    <dl>
                        <dt><a href="/category_187.html">公司介绍<em>Company Profile</em></a></dt>
                        <dt><a href="/category_188.html">品牌故事<em>Brand Story</em></a></dt>
                        <dt><a href="/category_189.html">品牌理念<em>Brand Ideal</em></a></dt>
                        <dt><a href="/category_221.html">大事记<em>Memorabillia</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB" href="/category_193.html" name="汉维产品"><span>汉维产品</span><em>Our Products</em></a>
                    <dl>
                        <dt><a href="/category_193.html">药品<em>Medicine</em></a></dt>
                        <dt><a href="/nutrition.html">保健品<em>Nutrition</em></a></dt>
                        <dt><a href="/category_234.html">护理品<em>Care products</em></a></dt>
                        <dt><a href="http://www.highwong.com">掌上APP<em>Hanvet APP</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB" href="/category_199.html" name="新闻活动"><span>新闻活动</span><em>Lastest News</em></a>
                    <dl>
                        <dt><a href="/category_199.html">汉维动态<em>Hanvet Press</em></a></dt>
                        <dt><a href="/category_200.html">优惠活动<em></em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB" href="/category_203.html" name="汉维课堂"><span>汉维课堂</span><em>Hanvet Classroom</em></a>
                    <dl>
                        <dt><a href="/category_203.html">宠物医生<em>For Vets</em></a></dt>
                        <dt><a href="/category_210.html">宠物主人<em>For Pet Owners</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB" href="/category_225.html" name="研发和生产"><span>研发和生产</span><em>R&D/Production</em></a>
                    <dl>
                        <dt><a href="/category_225.html"> 研发<em>R&D</em></a></dt>
                        <dt><a href="/category_226.html">生产<em>Production</em></a></dt>
                        <dt><a href="/category_233.html">质量<em>Quality</em></a></dt>
                        <dt><a href="/category_227.html">药政注册<em>Regulatory Affairs</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB" href="/category_230.html" name="市场营销"><span>市场营销</span><em>Marketing</em></a>
                    <dl>
                        <dt><a href="/category_230.html">国内营销<em>Domestic Marketing</em></a></dt>
                        <dt><a href="/category_231.html">国际合作<em>Global Cooperation</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB" href="/category_213.html" name="职业发展"><span>职业发展</span><em>Careers</em></a>
                    <dl>
                        <dt><a href="/category_213.html">职业发展<em>Careers</em></a></dt>
                    </dl>
                </li>
                <li>
                    <a class="navB" href="/contactus.html" name="联系我们"><span>联系我们</span><em>Contact Us</em></a>
                    <dl>
                        <dt><a href="/contactus.html">联系我们<em>Contact Us</em></a></dt>
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

<!--页面底部-->
<script type="text/javascript" src="front/js/client.js"></script>
<script src="front/scripts/jquery-1.9.1.min.js"></script>
<script src="front/scripts/jquery.min.js"></script>
<script src="front/scripts/jquery.SuperSlide.2.1.1.js"></script>
<script src="front/scripts/html5media/1.1.8/html5media.min.js"></script>
<script src="front/js/jquery.cityselect.js"></script>

<script type="text/javascript">
    $("#pid").change(function(){

    var pid=$(this).children('option:selected').val();
    console.info(pid);

    $.ajax({
        url:'shop/selcityByPid',
        type: "post",
        data:{"pid":pid},
        success: function(result) {

//                var json=eval('('+result+')');
//                var j=JSON.parse(result);
            console.info(result);

            if(result!=null){

                //alert(result);
                $("#city").empty();//首先清空城市下拉框
                $("#city").append("<option value=''>&nbsp;&nbsp;请选择城市&nbsp;&nbsp;<option>")
                $.each(result, function(i, d) {//获取出集合里面的所有元素，追加到城市下拉框下面

                    $("#city").append(
                        "<option value='"+d.cid+"' style=\"visibility: '';display: ''\">" + d.cname
                        + "</option>");
                });

            }else{
                alert("操作有误");
            }
        }
    });

})
</script>

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

});</script><script type="text/javascript">
    $(function(){
        $("#city").citySelect({
            //nodata:"none",
            required:false
        });
        $('#js-form select').on('change',function(){
            loadMoreStore();
        })
        $('#pages').on('click','li a',function(event){
            event.preventDefault();
            $url = $(this).attr('href');
            loadMoreStorePage($url);
        });
        defaultTags();

    });

    function loadMoreStore() {
        $form = $("#js-form");
        $url = $form.attr('action');
        $.ajax({
            url: $url,
            type: 'post',
            data: $form.serialize(),
            success: function(data){

              var $box = $('.store-list');
                debugger
                //var size=data.size;
                $box.empty();
                if (data!=''){

                    $.each(data,function (i,obj) {


                        $html = '                <li>' +
                            '                    <div class="store-content">' +
                            '                        <div class="store-img">' +
                            '                            <img src="'+obj.simage+'">' +
                                
                            '                        </div>' +
                            '                        <div class="store-info">' +
                            '                            <h3>'+obj.sname+'</h3>' +
                            '                            <p title="'+obj.saddress+'"><i class="iconfont icon-address"></i>'+obj.saddress+'</p>' +
                            '                            <p><i class="iconfont icon-dianhua"></i>'+obj.sphone+'</p>' +
                            '                            <p><i class="iconfont icon-shijian"></i>'+obj.sdate+'</p>' +
                            '                        </div>' +
                            '                    </div>' +
                            '                    <div class="store-tag">' +
                            '                        <ul>'+
                            '                        </ul>' +
                            '                    </div>' +
                            '                </li>';
                $box.append($html);
                })
                    }else {
                    $box.html('<p class="nothings">没有符合的结果</p>');

                }

            }
        });


    }


//    function loadMoreStorePage($url) {
//        $form = $("#js-form");
//        $defaulturl = $form.attr('action');
//        $.ajax({
//            url: $url,
//            type: 'GET',
//            success: function(data){
//
//               /* var $jason = data;
//                var $storelist = $jason['data']['responses'];
//                var $pageindex = $jason['data']['pageIndex'];
//                var $totalRecord = $jason['data']['totalRecord'];
//                var $pageSize = $jason['data']['pageSize'];
//                var $totalpage = Math.ceil(parseInt($totalRecord)/parseInt($pageSize));
//                var $count = getJsonObjLength($storelist);
//                var $box = $('.store-list');
//                var $pagebox = $('#pages');
//                var $provinceval = $form.find('select[name=province]').val();
//                var $cityval = $form.find('select[name=city]').val();
//                //var $districtval = $form.find('select[name=district]').val();
//                var $tagval = $form.find('select[name=tag]').val();
//                if($count > 0){
//                    $box.html('');
//                    $pagebox.html('');
//                    for(var city in $storelist){
//                        var $tags = $storelist[city]['tags'].split(',');
//                        var $taghtml = '';
//                        for(var tag in $tags){
//                            $taghtml += '<li>'+$tags[tag]+'</li>';
//                        }*/
//                        $html = '                <li>' +
//                            '                    <div class="store-content">' +
//                            '                        <div class="store-img">' +
//                            '                            <img src="/images/store_list.jpg">' +
//                            '                        </div>' +
//                            '                        <div class="store-info">' +
//                            '                            <h3>'+$storelist[city]['name']+'</h3>' +
//                            '                            <p><i class="iconfont icon-address"></i>'+$storelist[city]['storeAddress']+'</p>' +
//                            '                            <p><i class="iconfont icon-dianhua"></i>'+$storelist[city]['contactPhone']+'</p>' +
//                            '                            <p><i class="iconfont icon-shijian"></i>'+$storelist[city]['businessTime']+'</p>' +
//                            '                        </div>' +
//                            '                    </div>' +
//                            '                    <div class="store-tag">' +
//                            '                        <ul>'+ $taghtml+
//                            '                        </ul>' +
//                            '                    </div>' +
//                            '                </li>';
//                        $box.append($html);
//                    }
////                    $page = '';
////                    for(var i = 1;i <= parseInt($totalpage);i++){
////                        if(parseInt($pageindex) == i){
////                            $page += '<li class="a_num a_cur"><a href="'+$defaulturl+'?province='+$provinceval+'&city='+$cityval+'&tag='+$tagval+'&pageIndex='+i+'" data-page="'+i+'">'+i+'</a></li>';
////                        }else{
////                            $page += '<li class="a_num "><a href="'+$defaulturl+'?province='+$provinceval+'&city='+$cityval+'&tag='+$tagval+'&pageIndex='+i+'" data-page="'+i+'">'+i+'</a></li>';
////                        }
////
////                    }
//                    $pagebox.html($page);
//                }else{
//                    $pagebox.html('');
//                    $box.html('<p class="nothings">没有符合的结果</p>');
//                }
//            }
//        });


    //}

    function getJsonObjLength(jsonObj) {
        var Length = 0;
        for (var item in jsonObj) {
            Length++;
        }
        return Length;
    }

    function defaultTags(){
        $url = 'http://app.highwong.com/common/getStoreTags';
        $selecbox = $('#tag');
        $.get($url,function(data){
            var $json = data;
            var $tags = $json['data'];
            var $options = '<option value="">全部</option>';
            if(getJsonObjLength($tags) > 0){
                for(var tag in $tags){
                    $options += '<option value="'+$tags[tag]['value']+'">'+$tags[tag]['description']+'</option>';
                }
                $selecbox.html($options);
            }
        })
    }
</script>
</body>
</html>
