<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/10/11
  Time: 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <base href="<%=request.getContextPath()+"/"%>">
    <link href="after/css/H-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="after/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
    <link href="after/lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
    <link href="after/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="pd-20">
    <form action="" method="post" class="form form-horizontal" id="form-admin-add">
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>订单名</label>
            <div class="formControls col-5">
                <input type="hidden" name="oid" value="${order.oid}">
                <input type="text" class="input-text" value="${order.oname}" placeholder="" id="name" name="oname">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>订单价格：</label>
            <div class="formControls col-5">

                <input type="text" class="input-text" value="${order.oprice}" placeholder="" id="name" name="oprice" >
            </div>
            <div class="col-4"> </div>
        </div>



  <%--      <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>创建时间：</label>
            <div class="formControls col-5">

                <input type="text" class="input-text" value="${order.create_time}" placeholder="" id="name" name="name" datatype="*2-16" nullmsg="用户名不能为空">
            </div>
            <div class="col-4"> </div>
        </div>--%>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>状态：</label>
            <div class="formControls col-5">

                <input type="text" class="input-text" value="${order.ostatus}" placeholder="" id="name" name="ostatus" >
            </div>
            <div class="col-4"> </div>
        </div>









        <div class="row cl">
            <div class="col-9 col-offset-3">
                <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;修改&nbsp;&nbsp;">
            </div>
        </div>
    </form>
</div>
<script type="text/javascript" src="after/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="after/lib/icheck/jquery.icheck.min.js"></script>
<script type="text/javascript" src="after/lib/Validform/5.3.2/Validform.min.js"></script>
<script type="text/javascript" src="after/lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="after/js/H-ui.js"></script>
<script type="text/javascript" src="after/js/H-ui.admin.js"></script>
<script type="text/javascript" src="after/js/form_utils.js"></script>

<script type="text/javascript">
    $(function(){

        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });

        $("#form-admin-add").Validform({
            tiptype:2,
            callback:function(form){ // 表单全部验证通过后调用
                submit("order/updateOrder",form);
                return false; // 不让表单自动提交
            }
        });
    });
</script>
</body>
</html>
