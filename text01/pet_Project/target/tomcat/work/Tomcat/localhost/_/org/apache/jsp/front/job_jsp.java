/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-10-21 06:19:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.front;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class job_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html lang=\"zh-cn\">\r\n");
      out.write("<head>\r\n");
      out.write("    <base href=\"");
      out.print(request.getContextPath()+"/");
      out.write("\">\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\" />\r\n");
      out.write("    <meta name=\"Author\" content=\"\">\r\n");
      out.write("    <meta content=\" shop116703760.taobao.com/index.htm\" name=\"design\">\r\n");
      out.write("    <title>上海汉维生物医药科技有限公司</title>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"front/css/css_whir.css\"/>\r\n");
      out.write("    <script type=\"text/javascript\"  src=\"front/js/product.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"front/scripts/jquery-1.9.1.min.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"after/lib/layer/1.9.3/layer.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"after/lib/laypage/1.2/laypage.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"after/lib/My97DatePicker/WdatePicker.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"front/js/H-ui.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"front/js/H-ui.admin.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <script type=\"text/javascript\"  src=\"front/js/product.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"front/js/client.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"front/scripts/jquery.SuperSlide.2.1.1.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"front/scripts/html5shiv.v3.72.min.js\"></script>\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("        .Toper{ background:url(front/images/navon_bg.png) no-repeat 970px bottom;}\r\n");
      out.write("    </style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<!--top-->\r\n");
      out.write("<header>\r\n");
      out.write("    <section class=\"Toper\">\r\n");
      out.write("        <a href=\"front/index.jsp\" class=\"logo\"><img src=\"front/images/logo.png\"/></a>\r\n");
      out.write("        <section class=\"Search\">\r\n");
      out.write("            <a href=\"javascript:void(0)\" onclick=\"return GoSearchUrl();\" class=\"sreach_btn\"></a>\r\n");
      out.write("            <input name=\"\" type=\"text\" class=\"sreach_ipu\" id=\"key\" value=\"请输入关键字\" onblur=\"if(this.value=='')this.value='请输入关键字';\" onfocus=\"if(this.value=='请输入关键字')this.value='';\" onkeydown=\"entersearch()\"/>\r\n");
      out.write("\r\n");
      out.write("        </section>\r\n");
      out.write("        <nav class=\"MainNav\">\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li id=\"nav1\"><a class=\"navA\" href=\"front/index.jsp\"><span>首页</span><em>Home</em></a></li>\r\n");
      out.write("                <li id=\"nav2\">\r\n");
      out.write("                    <a class=\"navA\" href=\"front/about.jsp\" name=\"关于汉维\"><span>关于维汉</span><em>About Us</em> </a>\r\n");
      out.write("                    <div class=\"subnav\">\r\n");
      out.write("                        <div class=\"navtop\">\r\n");
      out.write("                            <dl>\r\n");
      out.write("                                <dt><a href=\"javascript:void(0)\">公司介绍<em>Company Profile</em></a></dt>\r\n");
      out.write("                                <dt><a href=\"javascript:void(0)\">品牌故事<em>Brand Story</em></a></dt>\r\n");
      out.write("                                <dt><a href=\"javascript:void(0)\">企业文化<em>Enterprise Culture</em></a></dt>\r\n");
      out.write("                                <dt><a href=\"javascript:void(0)\">大事记<em>Memorabilia</em></a></dt>\r\n");
      out.write("                            </dl>\r\n");
      out.write("                            <img src=\"front/uploadfiles/image/subnav.jpg\" />\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"navbot\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("                <!--鼠标移动事件onmouseover-->\r\n");
      out.write("                <li id=\"nav3\"  ");
      out.write(">\r\n");
      out.write("                    <a class=\"navA\"  onmouseover=\"getProdutName()\"  href=\"product/getProductList/1\" name=\"汉维产品\"><span>汉维产品</span><em>Our Products</em> </a>\r\n");
      out.write("                    <div class=\"subnav\">\r\n");
      out.write("                        <div class=\"navtop\" id=\"\">\r\n");
      out.write("                            <dl id=\"product_name\">\r\n");
      out.write("                                ");
      out.write("\r\n");
      out.write("                            </dl>\r\n");
      out.write("                            <img src=\"front/uploadfiles/image/subnav.jpg\" />\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"navbot\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li id=\"nav4\">\r\n");
      out.write("                    <a class=\"navA\" href=\"front/newslist.jsp\" name=\"新闻活动\"><span>新闻活动</span><em>Latest News</em> </a>\r\n");
      out.write("                    <div class=\"subnav\">\r\n");
      out.write("                        <div class=\"navtop\">\r\n");
      out.write("                            <dl>\r\n");
      out.write("                                <dt><a href=\"javascript:void(0)\">汉维动态<em>Hanvet Press</em></a></dt>\r\n");
      out.write("                                <dt><a href=\"javascript:void(0)\">优惠活动<em>Promotion</em></a></dt>\r\n");
      out.write("                            </dl>\r\n");
      out.write("                            <img src=\"front/uploadfiles/image/subnav.jpg\" />\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"navbot\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li id=\"nav5\">\r\n");
      out.write("                    <a class=\"navA\" href=\"front/coursehost.jsp\" name=\"汉维课堂\"><span>汉维课堂</span><em>Hanvet Classroom</em> </a>\r\n");
      out.write("                    <div class=\"subnav\">\r\n");
      out.write("                        <div class=\"navtop\">\r\n");
      out.write("                            <dl>\r\n");
      out.write("                                <dt><a href=\"javascript:void(0)\">皮肤病<em>Dermatosis</em></a></dt>\r\n");
      out.write("                                <dt><a href=\"javascript:void(0)\">口腔疾病<em>Oral Diseases</em></a></dt>\r\n");
      out.write("                                <dt><a href=\"javascript:void(0)\">呼吸系统疾病<em>Respiratory Disease</em></a></dt>\r\n");
      out.write("                                <dt><a href=\"javascript:void(0)\">胃肠道疾病<em>Gastrointestinal disease</em></a></dt>\r\n");
      out.write("                            </dl>\r\n");
      out.write("                            <img src=\"front/uploadfiles/image/subnav.jpg\" />\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"navbot\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li id=\"nav6\">\r\n");
      out.write("                    <a class=\"navA\" href=\"front/job.jsp\" name=\"职业发展\"><span>职业发展</span><em>Careers</em> </a>\r\n");
      out.write("\r\n");
      out.write("                </li>\r\n");
      out.write("                <li id=\"nav7\">\r\n");
      out.write("                    <input type=\"hidden\" id=\"user\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\">\r\n");
      out.write("                    <a class=\"navA\"  href=\"javaScript:void (0);\" name=\"关于汉维\"><span>联系我们</span><em>Contact Us</em> </a>\r\n");
      out.write("                    <div class=\"subnav\">\r\n");
      out.write("                        <div class=\"navtop\">\r\n");
      out.write("                            <dl>\r\n");
      out.write("                                <dt><a href=\"javaScript:void (0);\" onclick=\"showClient()\" >人工客服<em>Server</em></a></dt>\r\n");
      out.write("                                <dt><a href=\"javaScript:void (0);\" onclick=\"showClientQuick()\" >快速回复<em>Quick Reply</em></a></dt>\r\n");
      out.write("                            </dl>\r\n");
      out.write("                            <img src=\"front/uploadfiles/image/subnav.jpg\" />\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"navbot\"></div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            <div class=\"clear\"></div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <div class=\"clear\"></div>\r\n");
      out.write("        <section class=\"fixed\">\r\n");
      out.write("            <a href=\"front/userLogin.jsp\" class=\"where\"><b>登陆</b><br /><em> log in </em></a>\r\n");
      out.write("            <a href=\"frontUser/getUserById\" class=\"Pet\"><b>个人消息</b><br /><em>Personal message</em></a>\r\n");
      out.write("        </section>\r\n");
      out.write("    </section>\r\n");
      out.write("</header>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    //导航选中\r\n");
      out.write("\r\n");
      out.write("    $(\".MainNav li\").each(function(){\r\n");
      out.write("        $(this).hover(function(){\r\n");
      out.write("\r\n");
      out.write("            $(this).find(\".subnav\").stop().slideToggle();\r\n");
      out.write("        })\r\n");
      out.write("    })\r\n");
      out.write("    //搜索\r\n");
      out.write("    $(\".Search\").hover(function(){\r\n");
      out.write("        $(this).find(\".sreach_ipu\").toggle(\"slow\");\r\n");
      out.write("    })\r\n");
      out.write("</script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    //this function do not use jquery for honner page?\r\n");
      out.write("    function GoSearchUrl() {\r\n");
      out.write("        var searchinput = document.getElementById(\"key\");\r\n");
      out.write("        if (searchinput.value == \"\" || searchinput.value == \"请输入关键字\") {\r\n");
      out.write("            alert(\"请输入关键字！\");\r\n");
      out.write("            searchinput.focus();\r\n");
      out.write("            return false;\r\n");
      out.write("        }\r\n");
      out.write("        if (searchinput.value.length > 50) {\r\n");
      out.write("            alert(\"输入的关键字字数不要过多！\");\r\n");
      out.write("            searchinput.focus();\r\n");
      out.write("            return false;\r\n");
      out.write("        }\r\n");
      out.write("        CheckString(searchinput.value);\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    function GoSreach(rs) {\r\n");
      out.write("        window.location = \"{$syspath}search/search.aspx?key=\" + escape(rs);\r\n");
      out.write("        return true;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    function entersearch() {\r\n");
      out.write("        //alert(dd);\r\n");
      out.write("        var event = window.event || arguments.callee.caller.arguments[0];\r\n");
      out.write("        if (event.keyCode == 13) {\r\n");
      out.write("            GoSearchUrl();\r\n");
      out.write("        }\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    function CheckString(s) {\r\n");
      out.write("        var pattern = new RegExp(\"[`~!@#$^&*()=|{}':;',\\\\[\\\\].<>/?~！@#￥……&*（）—|{}【】‘；：”“'。，、？]\")\r\n");
      out.write("        var rs = \"\";\r\n");
      out.write("        for (var i = 0; i < s.length; i++) {\r\n");
      out.write("            rs = rs + s.substr(i, 1).replace(pattern, '');\r\n");
      out.write("        }\r\n");
      out.write("        if (rs == \"\") {\r\n");
      out.write("            alert(\"不能输入特殊字符！\");\r\n");
      out.write("            return false;\r\n");
      out.write("        }\r\n");
      out.write("        else {\r\n");
      out.write("            GoSreach(rs);\r\n");
      out.write("        }\r\n");
      out.write("    }\r\n");
      out.write("</script>\r\n");
      out.write("<!--top End-->\r\n");
      out.write("<aside class=\"Banner\" style=\"background:url(front/uploadfiles/banner/job_ban.jpg) no-repeat center top\">\r\n");
      out.write("</aside>\r\n");
      out.write("<section class=\"Contain\">\r\n");
      out.write("    <section class=\"Content\">\r\n");
      out.write("        <div class=\"Job\">\r\n");
      out.write("            <div class=\"img\"><img src=\"front/uploadfiles/image/job.jpg\"></div>\r\n");
      out.write("            <div class=\"title\">\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li class=\"li1\">职位名称</li>\r\n");
      out.write("                    <li class=\"li2\">招聘人数 </li>\r\n");
      out.write("                    <li class=\"li3\">工作地点</li>\r\n");
      out.write("                    <li class=\"li4\">开始日期 </li>\r\n");
      out.write("                    <li class=\"li5\">截至日期</li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"joblist\">\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li class=\"li1\"><a href=\"javascript:void(0)\">信息化主管</a></li>\r\n");
      out.write("                    <li class=\"li2\">2</li>\r\n");
      out.write("                    <li class=\"li3\">广州，深圳，上海</li>\r\n");
      out.write("                    <li class=\"li4\">2015-03-24</li>\r\n");
      out.write("                    <li class=\"li5\">2015-06-24</li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li class=\"li1\"><a href=\"javascript:void(0)\">网站策划/网站售前咨询</a></li>\r\n");
      out.write("                    <li class=\"li2\">2</li>\r\n");
      out.write("                    <li class=\"li3\">广州，深圳，上海</li>\r\n");
      out.write("                    <li class=\"li4\">2015-03-24</li>\r\n");
      out.write("                    <li class=\"li5\">2015-06-24</li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li class=\"li1\"><a href=\"javascript:void(0)\">急聘客户经理/销售工程师/销售代表</a></li>\r\n");
      out.write("                    <li class=\"li2\">2</li>\r\n");
      out.write("                    <li class=\"li3\">广州，深圳，上海</li>\r\n");
      out.write("                    <li class=\"li4\">2015-03-24</li>\r\n");
      out.write("                    <li class=\"li5\">2015-06-24</li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li class=\"li1\"><a href=\"javascript:void(0)\">急聘OA项目经理</a></li>\r\n");
      out.write("                    <li class=\"li2\">2</li>\r\n");
      out.write("                    <li class=\"li3\">广州，深圳，上海</li>\r\n");
      out.write("                    <li class=\"li4\">2015-03-24</li>\r\n");
      out.write("                    <li class=\"li5\">2015-06-24</li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li class=\"li1\"><a href=\"javascript:void(0)\">信息化主管</a></li>\r\n");
      out.write("                    <li class=\"li2\">2</li>\r\n");
      out.write("                    <li class=\"li3\">广州，深圳，上海</li>\r\n");
      out.write("                    <li class=\"li4\">2015-03-24</li>\r\n");
      out.write("                    <li class=\"li5\">2015-06-24</li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li class=\"li1\"><a href=\"javascript:void(0)\">信息化主管</a></li>\r\n");
      out.write("                    <li class=\"li2\">2</li>\r\n");
      out.write("                    <li class=\"li3\">广州，深圳，上海</li>\r\n");
      out.write("                    <li class=\"li4\">2015-03-24</li>\r\n");
      out.write("                    <li class=\"li5\">2015-06-24</li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"clear\"></div>\r\n");
      out.write("            <!--Pages-->\r\n");
      out.write("            <div class='Pages'>\r\n");
      out.write("              ");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <!--Pages-->\r\n");
      out.write("            <div class=\"jobinfo description\">\r\n");
      out.write("                <div class=\"box\">\r\n");
      out.write("                    <a href=\"javascript:void(0)\" class=\"close\"></a>\r\n");
      out.write("                    <div class=\"item\">\r\n");
      out.write("                        <div class=\"jobname\">信息化主管</div>\r\n");
      out.write("                        <div class=\"Claim\">\r\n");
      out.write("                            工资待遇：面议 <br />\r\n");
      out.write("                            详细说明：<br />\r\n");
      out.write("                            职位描述： <br />\r\n");
      out.write("                            1)从事网站建设产品及服务的顾问式销售工作（非电话销售，公司提供客户线索）；<br />\r\n");
      out.write("                            2)能够独立开拓客户、需求沟通、业务公关、商务谈判工作；<br />\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"Claim\">\r\n");
      out.write("                            职位要求： <br />\r\n");
      out.write("                            1、大专及以上学历，一年以上网站或软件行业产品销售经验；<br />\r\n");
      out.write("                            2、优秀的沟通与协调能力，有一定的客户资源，能独立开发客户；<br />\r\n");
      out.write("                            3、自信、果断、独立思考及解决问题能力强，有团队意识；\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"Claim\">\r\n");
      out.write("                            薪酬及福利：<br />\r\n");
      out.write("                            1、收入构成：工资+提成+年终提成奖励+补贴；<br />\r\n");
      out.write("                            2、享受国家规定的福利政策（各类保险）；<br />\r\n");
      out.write("                            3、餐补、电话、交通及各类补助；<br />\r\n");
      out.write("                            4、双休、带薪年假、带薪病假、婚假、产假；<br />\r\n");
      out.write("                            5、生日关怀。\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("    <div class=\"clear\"></div>\r\n");
      out.write("</section>\r\n");
      out.write("<!--bottom-->\r\n");
      out.write("<footer class=\"Bottom\">\r\n");
      out.write("    <div class=\"Bottom1\">\r\n");
      out.write("        <nav class=\"BottomNav\">\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a class=\"navB\"  href=\"\"><span>关于汉维</span><em>About Us</em></a>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">公司介绍<em>Company Profile</em></a></dt>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">品牌故事<em>Brand Story</em></a></dt>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">企业文化<em>Enterprise Culture</em></a></dt>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">大事记<em>Memorabilia</em></a></dt>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a class=\"navB\"  href=\"javascript:void(0)\"><span>新闻活动</span><em>Latest News</em></a>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">汉维动态<em>Hanvet Press</em></a></dt>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">优惠活动<em>Promotion</em></a></dt>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a class=\"navB\"  href=\"javascript:void(0)\"><span>汉维产品</span><em>Our Products</em></a>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">宠立维<em> Trolevis</em></a></dt>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">美昔<em>Melocam</em></a></dt>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a class=\"navB\"  href=\"javascript:void(0)\"><span>汉维课堂</span><em>Hanvet Classroom</em></a>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">皮肤病<em>Dermatosis</em></a></dt>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">口腔疾病<em>Oral Diseases</em></a></dt>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">呼吸系统疾病<em>Respiratory Disease</em></a></dt>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">胃肠道疾病<em>Gastrointestinal disease</em></a></dt>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a class=\"navB\"  href=\"javascript:void(0)\"><span>职业发展</span><em>Careers</em></a>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">职业发展<em> Careers</em></a></dt>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <a class=\"navB\"  href=\"javascript:void(0)\"><span>联系我们</span><em>Contact Us</em></a>\r\n");
      out.write("                    <dl>\r\n");
      out.write("                        <dt><a href=\"javascript:void(0)\">联系我们<em> Contact Us</em></a></dt>\r\n");
      out.write("                    </dl>\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <div class=\"right1\">\r\n");
      out.write("            <div class=\"HotLine\">\r\n");
      out.write("                <span>热线电话：<br />Hotline</span>\r\n");
      out.write("                <em>400-400-2222</em>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"Wei\">\r\n");
      out.write("                <div class=\"img\"><img src=\"front/uploadfiles/image/weixin.jpg\" width=\"106\" height=\"105\" /></div>\r\n");
      out.write("                <span><b>关注微博</b><br /><em>扫描二维码,关注官方微博</em></span>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"clear\"></div>\r\n");
      out.write("    <div class=\"Bottom2\">\r\n");
      out.write("        <nav class=\"Bottomlinks\">\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li><a href=\"javascript:void(0)\">流量统计</a></li><em>|</em>\r\n");
      out.write("                <li><a href=\"javascript:void(0)\">法律声明</a></li><em>|</em>\r\n");
      out.write("                <li><a href=\"javascript:void(0)\">网站地图</a></li><em>|</em>\r\n");
      out.write("                <li><a href=\"links.html\">合作伙伴</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <div class=\"clear\"></div>\r\n");
      out.write("        <section class=\"Bottomright\">\r\n");
      out.write("            Copyright© 2015  上海汉维生物医药科技有限公司  粤ICP备99999999号\r\n");
      out.write("            Designed by <a href=\"http://shop116703760.taobao.com/\">我的虚拟世界店铺</a>\r\n");
      out.write("        </section>\r\n");
      out.write("    </div>\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    //整站无图处理\r\n");
      out.write("    jQuery.each(jQuery(\"img\"), function (i, n) { jQuery(n).error(function () { n.src = 'front/uploadfiles/nopic.jpg'; }); n.src = n.src; });\r\n");
      out.write("</script>\r\n");
      out.write("<!--bottom End-->\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    $(\".joblist ul:odd\").addClass(\"odd\");\r\n");
      out.write("    var height=$(document).height();\r\n");
      out.write("    $(\".jobinfo\").height(height);\r\n");
      out.write("    $(\".joblist .li1 a\").click(function(){\r\n");
      out.write("        $(\".description\").show();\r\n");
      out.write("    })\r\n");
      out.write("    $(\".jobinfo .close\").click(function(){\r\n");
      out.write("        $(\".jobinfo\").hide();\r\n");
      out.write("    })\r\n");
      out.write("</script>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
