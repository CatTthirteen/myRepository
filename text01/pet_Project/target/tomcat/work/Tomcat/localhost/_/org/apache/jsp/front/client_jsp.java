/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2019-10-21 07:58:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.front;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class client_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <base href=\"");
      out.print(request.getContextPath()+"/");
      out.write("\">\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n");
      out.write("\r\n");
      out.write("    <title>Document</title>\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("        body{\r\n");
      out.write("            background-image: url(\"front/images/bg.png\");\r\n");
      out.write("            background-size: 100%;\r\n");
      out.write("        }\r\n");
      out.write("        .talk_con{\r\n");
      out.write("            background-image: url(\"front/images/bg.png\");\r\n");
      out.write("            width:600px;\r\n");
      out.write("            height:500px;\r\n");
      out.write("            border:1px solid #666;\r\n");
      out.write("            margin:50px auto 0;\r\n");
      out.write("            background-size: 100%;\r\n");
      out.write("            /*background:#f9f9f9;*/\r\n");
      out.write("        }\r\n");
      out.write("        .talk_show{\r\n");
      out.write("            background-image: url(\"front/images/bg.png\");\r\n");
      out.write("            width:580px;\r\n");
      out.write("            height:420px;\r\n");
      out.write("            border:1px solid #666;\r\n");
      out.write("           /* background:#fff;*/\r\n");
      out.write("            margin:10px auto 0;\r\n");
      out.write("            overflow:auto;\r\n");
      out.write("            background-size: 100%;\r\n");
      out.write("        }\r\n");
      out.write("        .talk_input{\r\n");
      out.write("            width:580px;\r\n");
      out.write("            margin:10px auto 0;\r\n");
      out.write("        }\r\n");
      out.write("        .whotalk{\r\n");
      out.write("            width:80px;\r\n");
      out.write("            height:30px;\r\n");
      out.write("            float:left;\r\n");
      out.write("            outline:none;\r\n");
      out.write("        }\r\n");
      out.write("        .talk_word{\r\n");
      out.write("            width:420px;\r\n");
      out.write("            height:26px;\r\n");
      out.write("            padding:0px;\r\n");
      out.write("            float:left;\r\n");
      out.write("            margin-left:10px;\r\n");
      out.write("            outline:none;\r\n");
      out.write("            text-indent:10px;\r\n");
      out.write("        }\r\n");
      out.write("        .talk_sub{\r\n");
      out.write("            width:56px;\r\n");
      out.write("            height:30px;\r\n");
      out.write("            float:left;\r\n");
      out.write("            margin-left:10px;\r\n");
      out.write("        }\r\n");
      out.write("        .atalk{\r\n");
      out.write("            margin:10px;\r\n");
      out.write("        }\r\n");
      out.write("        .atalk span{\r\n");
      out.write("            display:inline-block;\r\n");
      out.write("            background:#0181cc;\r\n");
      out.write("            border-radius:10px;\r\n");
      out.write("            color:#fff;\r\n");
      out.write("            padding:5px 10px;\r\n");
      out.write("        }\r\n");
      out.write("        .btalk{\r\n");
      out.write("            margin:10px;\r\n");
      out.write("            text-align:right;\r\n");
      out.write("        }\r\n");
      out.write("        .btalk span{\r\n");
      out.write("            display:inline-block;\r\n");
      out.write("            background:#ef8201;\r\n");
      out.write("            border-radius:10px;\r\n");
      out.write("            color:#fff;\r\n");
      out.write("            padding:5px 10px;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"talk_con\">\r\n");
      out.write("    <div class=\"talk_show\" id=\"words\">\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"talk_input\">\r\n");
      out.write("    <select class=\"whotalk\" id=\"who\">\r\n");
      out.write("          <option value=\"用户");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("说:\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.name}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("：</option>\r\n");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("        <input type=\"text\" class=\"talk_word\" id=\"talkwords\">\r\n");
      out.write("        <input type=\"button\" value=\"发送\" class=\"talk_sub\" id=\"talksub\">\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<script type=\"text/javascript\" src=\"front/scripts/jquery-1.9.1.min.js\"></script>\r\n");
      out.write("<<script type=\"text/javascript\" src=\"after/lib/layer/1.9.3/layer.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"after/lib/laypage/1.2/laypage.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"after/lib/My97DatePicker/WdatePicker.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"front/js/H-ui.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"front/js/H-ui.admin.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("//页面加载\r\n");
      out.write("    $(function () {\r\n");
      out.write("        $(\"#talksub\").click(function () {\r\n");
      out.write("            //判断是否登录\r\n");
      out.write("\r\n");
      out.write("            //获取到聊天内容\r\n");
      out.write("            var content1=$(\"#talkwords\").val();\r\n");
      out.write("            var who=$(\"#who\").val();\r\n");
      out.write("            var content=who+content1;\r\n");
      out.write("            console.info(\"content1:\"+content1)\r\n");
      out.write("            if (content1==null||content1==\"\"){\r\n");
      out.write("                layer.msg(\"发送的消息不能为空哦\",{ico: 2,time:1000},function () {\r\n");
      out.write("                });\r\n");
      out.write("                return;\r\n");
      out.write("            }\r\n");
      out.write("            $(\"#words\").append(\"<div class=\\\"atalk\\\"><span id=\\\"asay\\\">\"+content+\"</span></div>\")\r\n");
      out.write("            //使用ajax发送数据到后台\r\n");
      out.write("            $.ajax({\r\n");
      out.write("                url:\"http://10.20.151.32:8080/server/getClientContent\",\r\n");
      out.write("                type:\"get\",\r\n");
      out.write("                data:{\"content\":content},\r\n");
      out.write("                dataType:'jsonp',\r\n");
      out.write("                //contentType:'application/json; charset=utf-8',\r\n");
      out.write("                contentType: \"application/x-www-form-urlencoded; charset=utf-8\",\r\n");
      out.write("\r\n");
      out.write("                //scriptCharset: 'utf-8',\r\n");
      out.write("                jsonp:'callback',\r\n");
      out.write("                //jsonpCallback:\"msg\",\r\n");
      out.write("                success:function (data) {\r\n");
      out.write("                    console.info(\"data:\"+data)\r\n");
      out.write("\r\n");
      out.write("                    $.each(data,function (i,obj){\r\n");
      out.write("\r\n");
      out.write("                     $(\"#words\").append(\r\n");
      out.write("                        \"<div class=\\\"btalk\\\"><span id=\\\"bsay\\\">\"+obj+\"</span></div>\"\r\n");
      out.write("                     )\r\n");
      out.write("                    })\r\n");
      out.write("                }\r\n");
      out.write("            })\r\n");
      out.write("        })\r\n");
      out.write("    })\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
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
