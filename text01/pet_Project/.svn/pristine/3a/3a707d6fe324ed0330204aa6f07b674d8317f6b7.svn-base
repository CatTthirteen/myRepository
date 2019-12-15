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
    <link href="after/lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
    <link href="after/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="pd-20">

    <span class="r"><strong></strong> </span>
    <table class="table table-border table-bordered table-bg">
        <tbody>
        <form action="" method="post" class="form form-horizontal" id="form-admin-add" enctype="multipart/form-data">
        <input type="hidden" value="${product.pid}" name="pid" id="pid">
            <input type="hidden" value="${oid}" name="oid" id="oid">
            <h3>商品名：${product.pname}</h3>
            <h4>评价内容</h4>
            <textarea input-text rows="10" cols="40" name="content" id="content"></textarea><br><br>

            <div class="formControls col-5">
                <input type="file" name="file" placeholder="图片"
                       autocomplete="off" class="input-text"
                >
            </div>
            <br><br>

            <div class="col-9 col-offset-3">
                <input id="add" class="btn btn-primary radius" type="submit" value="评价">
            </div>

        </form>
        </tbody>
    </table>

</div>
<script type="text/javascript" src="after/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="after/lib/icheck/jquery.icheck.min.js"></script>
<script type="text/javascript" src="after/lib/Validform/5.3.2/Validform.min.js"></script>
<script type="text/javascript" src="after/lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="after/js/H-ui.js"></script>
<script type="text/javascript" src="after/js/H-ui.admin.js"></script>
<script type="text/javascript" src="after/js/user-util.js"></script>
<script type="text/javascript" src="after/js/form_utils.js"></script>
<script type="text/javascript">

        $("#form-admin-add").Validform({
            tiptype: 2,
            //回调方法，表单验证通过后才会调用
            //添加用户，使用ajax来传值
            callback: function (form) {

                //这个是一个jQuery的对象 ，form[0]就是把jQuery对象转换成js对象
                var formData = new FormData(form[0]);
                $.ajax({
                    type: "POST",
                    url: "product/addDiscuss",
                    data: formData,
                    //  async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    cache: false, //cache设置为false，上传文件不需要缓存。
                    contentType: false,  //ajax中的data参数为FormData类型时，contentType就不要设置成application/json了
                    processData: false,//processData设置为false。因为data值是FormData对象，不需要对数据做处理。
                    success: function (result) {
                        response_user(result)
                    }
                })
                return false;//表单检验成功这个方法如果没有返回或者返回true就会自动提交表单，使用ajax需要关闭自动提交表单
            }
        });

        /*
            参数解释：
            title	标题
            url		请求的url
            id		需要操作的数据id
            w		弹出层宽度（缺省调默认值）
            h		弹出层高度（缺省调默认值）
        */

        /*管理员-增加*/
        function admin_add(title, url, w, h) {
            layer_show(title, url, w, h);
        }

        /*管理员-删除*/
        function admin_del(obj, id) {
            layer.confirm('确认要删除吗？', function (index) {
                //此处请求后台程序，下方是成功后的前台处理……

                var par = new Object();
                par.id = id;
                debugger

                $.post("order/orderDelOne", par, function () {

                    $(obj).parents("tr").remove();
                    layer.msg('已删除!', {icon: 1, time: 1000});

                });
            });
        }

        /*管理员-编辑*/
        function admin_edit(title, url, id, w, h) {
            layer_show(title, url, w, h);
        }

        /*管理员-停用*/
        function admin_stop(obj, id) {
            layer.confirm('确认要停用吗？', function (index) {
                //此处请求后台程序，下方是成功后的前台处理……

                $(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_start(this,id)" href="javascript:;" title="启用" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
                $(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已禁用</span>');
                $(obj).remove();
                layer.msg('已停用!', {icon: 5, time: 1000});
            });
        }

        /*管理员-启用*/
        function admin_start(obj, id) {
            layer.confirm('确认要启用吗？', function (index) {
                //此处请求后台程序，下方是成功后的前台处理……


                $(obj).parents("tr").find(".td-manage").prepend('<a onClick="admin_stop(this,id)" href="javascript:;" title="停用" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
                $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
                $(obj).remove();
                layer.msg('已启用!', {icon: 6, time: 1000});
            });
        }

        function datadel() {

            var param = new Object();
            debugger

            var idarry = new Array();

            $(".order_id_batch:checked").each(function (index, item) {
                idarry.push($(item).val());

            });

            param.ids = idarry;

            $.post("order/orderDel", param, function () {

                location.reload();

            });
        }

</script>
</body>
</html>
