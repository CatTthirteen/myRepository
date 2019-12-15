<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <label class="form-label col-3"><span class="c-red">*</span>用户名：</label>
            <div class="formControls col-5">
                <input type="hidden" name="id" value="${user.id}">
                <input type="text" class="input-text" value="${user.name}" placeholder="" id="name" name="name" datatype="*2-16" nullmsg="用户名不能为空">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>密码：</label>
            <div class="formControls col-5">
                <input type="password" placeholder="密码" autocomplete="off" name="password" value="${user.password}" class="input-text" datatype="*6-20" nullmsg="密码不能为空">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>省：</label>
            <div class="formControls col-5">
                <select name="pid" id="pid">
                    <option>&nbsp;&nbsp;请选择省份&nbsp;&nbsp;</option>

                    <c:forEach items="${pidList}" var="p">
                    <option <c:if test="${p.pid eq user.pid}">selected="selected"</c:if> value="${p.pid}">${p.pname}</option>
                    </c:forEach>

                </select>
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>市：</label>
            <div class="formControls col-5">
                <select name="cid" id="city" >

                </select>
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>收获地址：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" placeholder="addreess" name="address" value="${user.address}" id="address" nullmsg="请输入收获地址！">
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-3"><span class="c-red">*</span>联系电话：</label>
            <div class="formControls col-5">
                <input type="text" class="input-text" placeholder="phoneNumber" name="phone" value="${user.phone}" id="phone" nullmsg="请输入联系电话！">
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
            $("#city").append("<option value='"+"${user.cid}"+"'>" + "${city.cname}"
                + "</option>" )

        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });

        $("#form-admin-add").Validform({
            tiptype:2,
            callback:function(form){ // 表单全部验证通过后调用
                submit("afterUser/updateUser",form);
                return false; // 不让表单自动提交
            }
        });
    });

    $("#pid").change(function(){

        var pid=$(this).children('option:selected').val();
        console.info(pid);

        $.ajax({
            url:'afterUser/selcityByPid',
            type: "post",
            data:{"pid":pid},
            success: function(result) {

//                var json=eval('('+result+')');
//                var j=JSON.parse(result);
                console.info(result);

                if(result!=null){

                    //alert(result);
                    $("#city").empty();//首先清空城市下拉框
                    $("#city").append(

                        "<option>&nbsp;&nbsp;请选择城市&nbsp;&nbsp;<option>")

        $.each(result, function(i, d) {//获取出集合里面的所有元素，追加到城市下拉框下面

                        $("#city").append(
                            "<option value='"+d.cid+"'>" + d.cname
                            + "</option>"  );
                    });

                }else{
                    alert("操作有误");
                }
            }
        });

    })

</script>
</body>
</html>
