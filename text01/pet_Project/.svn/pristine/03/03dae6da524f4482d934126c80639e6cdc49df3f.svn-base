<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

	<title>Insert title here</title>
	<base href="<%=request.getContextPath()+"/"%>">
	<link href="after/css/login2.css" rel="stylesheet" type="text/css">
	<style type="text/css">
	
	label{
		color:red;
		font-size:20px;
	}

</style>
<script>
	function name_of(obj){
		obj.value='';
	}
	
	function name_ob(obj){
		if(obj.value==''){
			obj.value='用户名';
		}
	}
	
	function span_pass(obj){  
		obj.style.display='none';
		document.getElementById('userPass').style.display='block';
	}

	function pass_ob(obj){ 
		if(obj.value==''){
			document.getElementById('password_text').style.display='block';
			obj.style.display='none';
		}
	}
</script>
</head>
<body>
<div class="login_box">
     <div class="login_l_img"><img src="after/images/login-img.png"></div>
     <div class="login">
         <div class="login_logo"><img src="after/images/login_logo.png"></div>
         <div class="login_name"><p>后台管理系统</p></div>
         
     <form action="afterUser/login" method="post">
	 	<input name="name" type="text" id="name" value='用户名'  onfocus="name_of(this)" onblur="name_ob(this)"/>
        <span id="password_text" onclick="span_pass(this)" >密码</span>
		<input name="password" type="password" id="userPass" style="display:none" onblur="pass_ob(this)"/>
		   
       	  <%--验证码: <img id="c_img" alt="点击图片刷新" src="code.do" onclick="reflashImg()">--%>
       	  <%--<input type="text" name="code" /> <br />--%>
			 <%--<label>${errorMsg}</label><br /> --%>
			 <input type="submit" value="登录">
     </form>
     </div>
</div>
</body>

<%--<script type="text/javascript">--%>
	<%--function reflashImg() {--%>
		<%--document.getElementById("c_img").src = "code.do?time="+ new Date().getTime();--%>
	<%--}
</script>--%>

</html>