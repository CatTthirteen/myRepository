/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-10-21 02:56:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.after;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <base href=\"");
      out.print(request.getContextPath()+"/");
      out.write("\">\n");
      out.write("    <LINK rel=\"Bookmark\" href=\"../favicon.ico\" >\n");
      out.write("    <LINK rel=\"Shortcut Icon\" href=\"../favicon.ico\" />\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("    <script type=\"text/javascript\" src=\"after/lib/html5.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"after/lib/respond.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"after/lib/PIE_IE678.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("    <link href=\"after/skin/default/skin.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link href=\"after/css/H-ui.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link href=\"after/css/H-ui.admin.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link href=\"after/lib/Hui-iconfont/1.0.1/iconfont.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link href=\"after/css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<header class=\"Hui-header cl\"> <a class=\"Hui-logo l\" title=\"H-ui.admin v2.3\" href=\"/\">H-ui.admin</a> <a class=\"Hui-logo-m l\" href=\"/\" title=\"H-ui.admin\">H-ui</a> <span class=\"Hui-subtitle l\">V2.3</span>\n");
      out.write("    <nav class=\"mainnav cl\" id=\"Hui-nav\">\n");
      out.write("        <ul>\n");
      out.write("            <li class=\"dropDown dropDown_click\"><a href=\"javascript:;\" class=\"dropDown_A\"><i class=\"Hui-iconfont\">&#xe600;</i> 新增 <i class=\"Hui-iconfont\">&#xe6d5;</i></a>\n");
      out.write("                <ul class=\"dropDown-menu radius box-shadow\">\n");
      out.write("                    <li><a href=\"javascript:;\" onclick=\"article_add('添加资讯','article-add.html')\"><i class=\"Hui-iconfont\">&#xe616;</i> 资讯</a></li>\n");
      out.write("                    <li><a href=\"javascript:;\" onclick=\"picture_add('添加资讯','picture-add.html')\"><i class=\"Hui-iconfont\">&#xe613;</i> 图片</a></li>\n");
      out.write("                    <li><a href=\"javascript:;\" onclick=\"product_add('添加资讯','product-add.html')\"><i class=\"Hui-iconfont\">&#xe620;</i> 产品</a></li>\n");
      out.write("                    <li><a href=\"javascript:;\" onclick=\"member_add('添加用户','member-add.html','','510')\"><i class=\"Hui-iconfont\">&#xe60d;</i> 用户</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </li>\n");
      out.write("        </ul>\n");
      out.write("    </nav>\n");
      out.write("    <ul class=\"Hui-userbar\">\n");
      out.write("        <li>超级管理员</li>\n");
      out.write("        <li class=\"dropDown dropDown_hover\"><a href=\"#\" class=\"dropDown_A\">\n");
      out.write("\n");
      out.write("            <i class=\"Hui-iconfont\">&#xe6d5;</i></a>\n");
      out.write("            <ul class=\"dropDown-menu radius box-shadow\">\n");
      out.write("                <li><a href=\"#\">个人信息</a></li>\n");
      out.write("                <li><a href=\"#\">切换账户</a></li>\n");
      out.write("                <li><a href=\"mylogout\">退出</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
      out.write("        <li id=\"Hui-msg\"> <a href=\"#\" title=\"消息\"><span class=\"badge badge-danger\">1</span><i class=\"Hui-iconfont\" style=\"font-size:18px\">&#xe68a;</i></a> </li>\n");
      out.write("        <li id=\"Hui-skin\" class=\"dropDown right dropDown_hover\"><a href=\"javascript:;\" title=\"换肤\"><i class=\"Hui-iconfont\" style=\"font-size:18px\">&#xe62a;</i></a>\n");
      out.write("            <ul class=\"dropDown-menu radius box-shadow\">\n");
      out.write("                <li><a href=\"javascript:;\" data-val=\"default\" title=\"默认（黑色）\">默认（黑色）</a></li>\n");
      out.write("                <li><a href=\"javascript:;\" data-val=\"blue\" title=\"蓝色\">蓝色</a></li>\n");
      out.write("                <li><a href=\"javascript:;\" data-val=\"green\" title=\"绿色\">绿色</a></li>\n");
      out.write("                <li><a href=\"javascript:;\" data-val=\"red\" title=\"红色\">红色</a></li>\n");
      out.write("                <li><a href=\"javascript:;\" data-val=\"yellow\" title=\"黄色\">黄色</a></li>\n");
      out.write("                <li><a href=\"javascript:;\" data-val=\"orange\" title=\"绿色\">橙色</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
      out.write("    </ul>\n");
      out.write("    <a aria-hidden=\"false\" class=\"Hui-nav-toggle\" href=\"#\"></a> </header>\n");
      out.write("<aside class=\"Hui-aside\">\n");
      out.write("    <input runat=\"server\" id=\"divScrollValue\" type=\"hidden\" value=\"\" />\n");
      out.write("    <div class=\"menu_dropdown bk_2\">\n");
      out.write("        <dl id=\"menu-article\">\n");
      out.write("            <dt><i class=\"Hui-iconfont\">&#xe616;</i> 后台管理<i class=\"Hui-iconfont menu_dropdown-arrow\">&#xe6d5;</i></dt>\n");
      out.write("            <dd>\n");
      out.write("\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a _href=\"afterUser/getPage\" href=\"javascript:void(0)\">用户管理</a></li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a _href=\"product/getPage\" href=\"javascript:void(0)\">产品管理</a></li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a _href=\"order/getOderPage\" href=\"javascript:void(0)\">订单管理</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                <ul>\n");
      out.write("                    <li><a _href=\"front/index.jsp\" href=\"javascript:void(0)\">前往前台首页</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </dd>\n");
      out.write("        </dl>\n");
      out.write("    </div>\n");
      out.write("</aside>\n");
      out.write("<div class=\"dislpayArrow\"><a class=\"pngfix\" href=\"javascript:void(0);\" onClick=\"displaynavbar(this)\"></a></div>\n");
      out.write("<section class=\"Hui-article-box\">\n");
      out.write("    <div id=\"Hui-tabNav\" class=\"Hui-tabNav\">\n");
      out.write("        <div class=\"Hui-tabNav-wp\">\n");
      out.write("            <ul id=\"min_title_list\" class=\"acrossTab cl\">\n");
      out.write("                <li class=\"active\"><span title=\"我的桌面\" data-href=\"welcome.html\">我的桌面</span><em></em></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"Hui-tabNav-more btn-group\"><a id=\"js-tabNav-prev\" class=\"btn radius btn-default size-S\" href=\"javascript:;\"><i class=\"Hui-iconfont\">&#xe6d4;</i></a><a id=\"js-tabNav-next\" class=\"btn radius btn-default size-S\" href=\"javascript:;\"><i class=\"Hui-iconfont\">&#xe6d7;</i></a></div>\n");
      out.write("    </div>\n");
      out.write("    <div id=\"iframe_box\" class=\"Hui-article\">\n");
      out.write("        <div class=\"show_iframe\">\n");
      out.write("            <div style=\"display:none\" class=\"loading\"></div>\n");
      out.write("            <iframe scrolling=\"yes\" frameborder=\"0\" src=\"after/images/apple.jpg\"></iframe>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("<script type=\"text/javascript\" src=\"after/lib/jquery/1.9.1/jquery.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"after/lib/layer/layer.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"after/js/H-ui.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"after/js/H-ui.admin.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    /*资讯-添加*/\n");
      out.write("    function article_add(title,url){\n");
      out.write("        var index = layer.open({\n");
      out.write("            type: 2,\n");
      out.write("            title: title,\n");
      out.write("            content: url\n");
      out.write("        });\n");
      out.write("        layer.full(index);\n");
      out.write("    }\n");
      out.write("    /*图片-添加*/\n");
      out.write("    function picture_add(title,url){\n");
      out.write("        var index = layer.open({\n");
      out.write("            type: 2,\n");
      out.write("            title: title,\n");
      out.write("            content: url\n");
      out.write("        });\n");
      out.write("        layer.full(index);\n");
      out.write("    }\n");
      out.write("    /*产品-添加*/\n");
      out.write("    function product_add(title,url){\n");
      out.write("        var index = layer.open({\n");
      out.write("            type: 2,\n");
      out.write("            title: title,\n");
      out.write("            content: url\n");
      out.write("        });\n");
      out.write("        layer.full(index);\n");
      out.write("    }\n");
      out.write("    /*用户-添加*/\n");
      out.write("    function member_add(title,url,w,h){\n");
      out.write("        layer_show(title,url,w,h);\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    var _hmt = _hmt || [];\n");
      out.write("    (function() {\n");
      out.write("        var hm = document.createElement(\"script\");\n");
      out.write("        hm.src = \"//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911\";\n");
      out.write("        var s = document.getElementsByTagName(\"script\")[0];\n");
      out.write("        s.parentNode.insertBefore(hm, s)})();\n");
      out.write("    var _bdhmProtocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");\n");
      out.write("    document.write(unescape(\"%3Cscript src='\" + _bdhmProtocol + \"hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E\"));\n");
      out.write("</script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
