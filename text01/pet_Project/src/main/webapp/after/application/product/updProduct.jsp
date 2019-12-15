<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/10/10
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <base href="<%=request.getContextPath() +"/"%>"/>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link href="after/css/H-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="after/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
    <link href="after/lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
    <link href="after/lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
    <title>编辑产品</title>
</head>
<body>
<body>
<div class="pd-20">
    <form action="" method="post" class="form form-horizontal" id="form-admin-add" enctype="multipart/form-data">
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>产品名：</label>
            <div class="formControls col-5">
                <input type="hidden" name="pid" value="${product.pid}">
                <input value="${product.pname}" type="text"  class="input-text" value=""
                       placeholder="" id="pname"
                       name="pname"
                       datatype="*" nullmsg="产品名不能为空">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3">
                <span class="c-red">*</span>
                产品图片：
            </label>
            <div class="formControls col-5">
                <input type="file" name="file" placeholder="图片"
                       autocomplete="off" class="input-text"
                       datatype="*"
                       nullmsg="图片不能为空！"
                >
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3">
                <span class="c-red">*</span>
                价格：
            </label>
            <div class="formControls col-5">
                <input type="number" placeholder="价格"
                       name="pprice"
                       autocomplete="off" value="${product.pprice}"
                       class="input-text"
                       datatype="*"
                       nullmsg="价格不能为空！"
                >
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3">
                <span class="c-red">*</span>
                产品介绍：
            </label>
            <div class="formControls col-5">
                <input type="text" class="input-text"
                       value="${product.pdesc}"
                       name="pdesc"
                       datatype="*" nullmsg="请输入产品介绍！">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>技术规格：</label>
            <div class="formControls col-5">
                <input value="${product.specifications}" type="text"  class="input-text"
                       placeholder=""
                       name="specifications"
                       datatype="*" nullmsg="技术规格不能为空">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>适用范围：</label>
            <div class="formControls col-5">
                <input value="${product.scope}" type="text"  class="input-text"
                       placeholder=""
                       name="scope"
                       datatype="*" nullmsg="适用范围不能为空">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>注意事项：</label>
            <div class="formControls col-5">
                <input value="${product.attention}" type="text"  class="input-text"
                       placeholder=""
                       name="attention"
                       datatype="*" nullmsg="注意事项不能为空">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>说明书：</label>
            <div class="formControls col-5">
                <input value="${product.instructions}" type="text"  class="input-text"
                       placeholder=""
                       name="instructions"
                       datatype="*" nullmsg="说明书不能为空">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>产品类型：</label>
            <div class="formControls col-5"> <span class="select-box" style="width:150px;">
				<select class="select" name="tid" size="1">
                    <option value="">请选择</option>
                    <c:forEach items="${types}" var="type">
                    <option <c:if test="${type.tid eq product.tid }">selected="selected"</c:if> value="${type.tid}">${type.tname}</option>
                    </c:forEach>

				</select>
				</span> </div>
        </div>

        <div class="col-4"> </div>

        <div class="row cl">
            <div class="col-9 col-offset-3">
                <input id="add" class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
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
<script type="text/javascript" src="after/js/user-util.js"></script>
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
            //回调方法，表单验证通过后才会调用
            //添加用户，使用ajax来传值
            callback:function(form){

                //这个是一个jQuery的对象 ，form[0]就是把jQuery对象转换成js对象
                var formData = new FormData(form[0]);
                $.ajax({
                    type : "POST",
                    url : "product/updProduct",
                    data : formData,
                    //  async: false,//(默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
                    cache: false, //cache设置为false，上传文件不需要缓存。
                    contentType: false,  //ajax中的data参数为FormData类型时，contentType就不要设置成application/json了
                    processData: false,//processData设置为false。因为data值是FormData对象，不需要对数据做处理。
                    success:function(result) {
                        response_user(result)
                    }
                })
                return false;//表单检验成功这个方法如果没有返回或者返回true就会自动提交表单，使用ajax需要关闭自动提交表单
            }
        });
    });
</script>
</body>
</html>
