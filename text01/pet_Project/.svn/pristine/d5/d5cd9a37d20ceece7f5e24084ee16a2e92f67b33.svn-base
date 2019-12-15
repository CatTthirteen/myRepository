<%--
  Created by IntelliJ IDEA.
  User: 14122
  Date: 2019/10/16 0016
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order</title>
    <base href= "<%=request.getContextPath()+"/"%>">
    <LINK rel="Bookmark" href="/favicon.ico" >
    <LINK rel="Shortcut Icon" href="/favicon.ico" />
    <%@  taglib   prefix= "c" uri= "http://java.sun.com/jsp/jstl/core" %>
    <%@  taglib   prefix= "fmt" uri= "http://java.sun.com/jsp/jstl/fmt" %>
    <%@  taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
    <link href="after/css/H-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="after/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
    <link href="after/css/style.css" rel="stylesheet" type="text/css" />
    <link href="after/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet">
</head>
<body>
<div class="pd-20">

        <span class="r"><strong></strong> </span>
        <table class="table table-border table-bordered table-bg">
            <tbody>
                    <h3>${product.pname}</h3>
                    <h4>${product.instructions}</h4>
            </tbody>
        </table>

</div>
<script type="text/javascript" src="after/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="after/lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="after/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="after/lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="after/js/H-ui.js"></script>
<script type="text/javascript" src="after/js/H-ui.admin.js"></script>
<script type="text/javascript">
    /*
        参数解释：
        title	标题
        url		请求的url
        id		需要操作的数据id
        w		弹出层宽度（缺省调默认值）
        h		弹出层高度（缺省调默认值）
    */
    /*管理员-增加*/
    function admin_add(title,url,w,h){
        layer_show(title,url,w,h);
    }
    /*管理员-删除*/
    function admin_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            //此处请求后台程序，下方是成功后的前台处理……

            var par=new Object();
            par.id=id;
            debugger

            $.post("order/orderDelOne",par,function () {

                $(obj).parents("tr").remove();
                layer.msg('已删除!',{icon:1,time:1000});

            });
        });
    }
    /*管理员-编辑*/
    function admin_edit(title,url,id,w,h){
        layer_show(title,url,w,h);
    }
    /*管理员-停用*/
    function admin_stop(obj,id){
        layer.confirm('确认要停用吗？',function(index){
            //此处请求后台程序，下方是成功后的前台处理……

            $(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_start(this,id)" href="javascript:;" title="启用" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已禁用</span>');
            $(obj).remove();
            layer.msg('已停用!',{icon: 5,time:1000});
        });
    }

    /*管理员-启用*/
    function admin_start(obj,id){
        layer.confirm('确认要启用吗？',function(index){
            //此处请求后台程序，下方是成功后的前台处理……


            $(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_stop(this,id)" href="javascript:;" title="停用" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
            $(obj).remove();
            layer.msg('已启用!', {icon: 6,time:1000});
        });
    }

    function datadel() {

        var param=new Object();
        debugger

        var idarry=new Array();

        $(".order_id_batch:checked").each(function (index,item) {
            idarry.push($(item).val());

        });

        param.ids=idarry;

        $.post("order/orderDel",param,function () {

            location.reload();

        });
    }

</script>
</body>
</html>
