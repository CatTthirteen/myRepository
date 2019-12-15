
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=request.getContextPath()+"/"%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Document</title>
    <style type="text/css">
        body{
            background-image: url("front/images/bg.png");
            background-size: 100%;
        }
        .talk_con{
            background-image: url("front/images/bg.png");
            width:600px;
            height:500px;
            border:1px solid #666;
            margin:50px auto 0;
            background-size: 100%;
            /*background:#f9f9f9;*/
        }
        .talk_show{
            background-image: url("front/images/bg.png");
            width:580px;
            height:420px;
            border:1px solid #666;
           /* background:#fff;*/
            margin:10px auto 0;
            overflow:auto;
            background-size: 100%;
        }
        .talk_input{
            width:580px;
            margin:10px auto 0;
        }
        .whotalk{
            width:80px;
            height:30px;
            float:left;
            outline:none;
        }
        .talk_word{
            width:420px;
            height:26px;
            padding:0px;
            float:left;
            margin-left:10px;
            outline:none;
            text-indent:10px;
        }
        .talk_sub{
            width:56px;
            height:30px;
            float:left;
            margin-left:10px;
        }
        .atalk{
            margin:10px;
        }
        .atalk span{
            display:inline-block;
            background:#0181cc;
            border-radius:10px;
            color:#fff;
            padding:5px 10px;
        }
        .btalk{
            margin:10px;
            text-align:right;
        }
        .btalk span{
            display:inline-block;
            background:#ef8201;
            border-radius:10px;
            color:#fff;
            padding:5px 10px;
        }
    </style>

</head>
<body>
<div class="talk_con">
    <div class="talk_show" id="words">
        <%--<div class="atalk"><span id="asay">A说：吃饭了吗？</span></div>--%>
        <%--<div class="btalk"><span id="bsay">B说：还没呢，你呢？</span></div>--%>
    </div>
    <div class="talk_input">
    <select class="whotalk" id="who">
        <option value="用户${user.name}说:">用户${user.name}：</option>
<%--            <option value="1">B说：</option>--%>
<%--        </select>--%>
        <input type="text" class="talk_word" id="talkwords">
        <input type="button" value="发送" class="talk_sub" id="talksub">
    </div>
</div>
<script type="text/javascript" src="front/scripts/jquery-1.9.1.min.js"></script>
<<script type="text/javascript" src="after/lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="after/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="after/lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="front/js/H-ui.js"></script>
<script type="text/javascript" src="front/js/H-ui.admin.js"></script>
<script>

//页面加载
    $(function () {
        $("#talksub").click(function () {


            //获取到聊天内容
            var content1=$("#talkwords").val();
            var who=$("#who").val();
            var content=who+content1;
            console.info("content1:"+content1)
            if (content1==null||content1==""){
                layer.msg("发送的消息不能为空哦",{ico: 2,time:1000},function () {
                });
                return;
            }
            $("#words").append("<div class=\"atalk\"><span id=\"asay\">"+content+"</span></div>")
            //使用ajax发送数据到后台
            //使用ajax发送数据到后台
            $.ajax({
                url:"client/getClientContent",
                type:"post",
                data:{"content":content},
                success:function (data) {
                    console.info(data)
                    $.each(data,function (i,obj){

                        $("#words").append(
                            "<div class=\"btalk\"><span id=\"bsay\">"+obj+"</span></div>"
                        )
                    })
                }
            })
        })
    })
</script>
</body>

</html>
