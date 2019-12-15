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
    <table class="table table-border table-bordered table-bg">
        <tr>
            <th>订单名</th>
            <th>用户名</th>
            <th>总价格</th>
            <th>订单状态</th>
            <th>下单时间</th>
            <th>收货地址</th>
        </tr>

            <tr class="text-c">
                <td>${order.oname}</td>
                <td>${order.uname}</td>
                <td>${order.oprice}</td>
                <td>${order.ostatus ==0? "未支付":"已支付"}</td>
                <td><fmt:formatDate value="${order.create_time}"  pattern="yyyy-MM-dd "/></td>
                <td>${order.address}</td>
            </tr>

    </table>
    <%--<form method="post" action="product/getDiscussImage">--%>
        <input type="hidden" name="id" id="id" value="${id}">
        <div class="row cl">
            <div class="cl pd-5">
                <button type="submit" onclick="pay()" style="margin-top: 0px;margin-left: 0px"
                        class="btn btn-success radius" id="" name="">
                    <i class="Hui-iconfont">&#xe659;</i> 支付
                </button>

                <button type="button"
                        onclick="calcal()" style="margin-top: 0px;margin-left: 0px"
                        class="btn btn-success radius" name="">
                    <i class="Hui-iconfont">&#xe66b;</i> 取消订单
                </button>
            </div>
        </div>

</div>
<script type="text/javascript" src="after/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="after/lib/icheck/jquery.icheck.min.js"></script>
<script type="text/javascript" src="after/lib/Validform/5.3.2/Validform.min.js"></script>
<script type="text/javascript" src="after/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="after/js/batch-util.js"></script>
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
       //支付
        function pay() {

            var param=new Object();

            param.oid=${order.oid};

            $.post("productFront/pay", param, function (data) {

                var index = parent.layer.getFrameIndex(window.name);

                // 关闭弹出框
                parent.layer.close(index);

                 location.href="orderFront/getFrontOrderDetailListByUid";

            });
        }
        //取消订单
        function calcal() {
            var param=new Object();

            param.oid=${order.oid};

            $.post("productFront/calcal", param, function (data) {


                location.href="productFront/getFrontProduct";
            });

        }




</script>
</body>
</html>
