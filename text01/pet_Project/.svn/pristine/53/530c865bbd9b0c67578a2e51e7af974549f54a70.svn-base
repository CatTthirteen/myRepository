<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <base href="<%=request.getContextPath()+"/"%>">
    <LINK rel="Bookmark" href="/favicon.ico" >
    <LINK rel="Shortcut Icon" href="/favicon.ico" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="after/lib/html5.js"></script>
    <script type="text/javascript" src="after/lib/respond.min.js"></script>
    <script type="text/javascript" src="after/lib/PIE_IE678.js"></script>
    <![endif]-->
    <link href="after/css/H-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="after/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
    <link href="after/css/style.css" rel="stylesheet" type="text/css" />
    <link href="after/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 管理员管理 <span class="c-gray en">&gt;</span> 管理员列表 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">

    <div class="cl pd-5 bg-1 bk-gray mt-20">
        <span class="l">
            <a href="javascript:;" onclick="batchDel()" class="btn btn-danger radius">
            <i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>

            <a href="javascript:;" onclick="admin_add('添加用户','afterUser/addUserInfo','800','500')" class="btn btn-primary radius">
                <i class="Hui-iconfont">&#xe600;</i> 添加用户</a>

    </div>

    <table class="table table-border table-bordered table-bg">
        <thead>
        <tr>
            <th scope="col" colspan="9">用户列表</th>
        </tr>
        <tr class="text-c">
            <th width="25"><input type="checkbox" name="" value=""></th>
            <th width="40">ID</th>
            <th width="150">用户名</th>
            <th width="100">密码</th>
            <th width="100">省</th>
            <th width="100">市</th>
            <th width="150">收获地址</th>
            <th width="150">联系电话</th>
            <th width="100">操作</th>
        </tr>
        </thead>
        <tbody>
    <c:forEach items="${page.records}" var="user">
        <tr class="text-c">
            <td><input type="checkbox"  class="user_id_batch" value="${user.id}" name=""></td>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.password}</td>
            <td>${user.pname}</td>
            <td>${user.cname}</td>
            <td>${user.address}</td>
            <td>${user.phone}</td>
            <td class="td-manage">

                <a title="编辑" href="javascript:;" onclick="admin_edit('用户编辑','afterUser/getUserById/${user.id}','1','800','500')" class="ml-5" style="text-decoration:none">
                    <i class="Hui-iconfont">&#xe6df;</i></a>

                <a title="删除" href="javascript:;" onclick="admin_del(this,${user.id})" class="ml-5" style="text-decoration:none">
                <i class="Hui-iconfont">&#xe6e2;</i></a>

            </td>
        </tr>
    </c:forEach>
        </tbody>
    </table>
    <jsp:include page="/after/common/page.jsp"/>

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

//            console.info(id);
            $.post("afterUser/delOne",{"id":id},function(data){

               if(data.state=="SUCCESS"){
                   layer.msg(data.msg,{icon:1,time:1000},function () {
                       location.reload();
                   });
               }else{
                   layer.msg(data.msg,{icon:2,time:1000},function () {
                       location.reload();
                   });
               }
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

    function batchDel() {

        var param = new Object();

        // 1.先获取用户选择的id
        var idArray = new Array();
        $(".user_id_batch:checked").each(function(index,item){
            idArray.push($(item).val());
        });
        // 2.异步发送数据

        param.ids = idArray; // 把数组放到对象中
        param.name="admin";

        $.post("afterUser/batchDel",param,function(){
            layer.msg("批量删除成功", {icon: 1,time:1000},function(){
            location.reload();
            });
        });
    }
</script>
</body>
</html>
