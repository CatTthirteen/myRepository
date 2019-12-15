function showClient() {
    var is = isLogin();
    if (!is) {
        return;
    }
    layer_show("人工客服","front/client.jsp",700,700);
}
function showClientQuick() {
    var is = isLogin();
    if (!is) {
        return;
    }
    layer_show("快速回复","front/clientQuick.jsp",700,700);
}


function isLogin() {
    //判断是否登录
    var user= $("#user").val();
    if (user==null||user==''){
        msg="请先登录";
        location.href="front/userLogin.jsp?msg="+encodeURI(encodeURI(msg));
        return false;
    }else {
        return true;
    }
}