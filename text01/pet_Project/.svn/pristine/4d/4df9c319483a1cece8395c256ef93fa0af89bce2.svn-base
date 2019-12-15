/**
 * 提交表单
 */
function submit(url,from){
    debugger


    // 1.获取表单数据
    var param = fromToObject(from);

    // 2.发送请求
    $.post(url,param,function(data){

        // 1.先判断是否操作成功
        if(data.state=="SUCCESS"){
            layer.msg(data.msg, {icon: 1,time:1000},function(){
                // 获取弹出框的索引
                var index = parent.layer.getFrameIndex(window.name);

                // 关闭弹出框
                parent.layer.close(index);
            });
        }else{
            layer.msg(data.msg, {icon: 2,time:1000},function(){
                var index = parent.layer.getFrameIndex(window.name);
                parent.layer.close(index);
            });
        }
    });
}

/**
 * 获取表单数据
 */
function fromToObject(form){

    //  1.创建一个参数对象
    var param = new Object();

    // 2..获取表单元素数组
    var formArry = form.serializeArray();
    for(var i =0;i<formArry.length;i++){
        var ele = formArry[i];

        // 3.给对象中添加属性
        param[ele.name] = ele.value;
    }
    return param;
}

/**
 * 响应用户
 * @param data
 */
function  responseMsg(data){
    // 1.先判断是否操作成功
    if(data.state=="SUCCESS"){
        layer.msg(data.msg, {icon: 1,time:1000},function(){
            // 获取弹出框的索引
            var index = parent.layer.getFrameIndex(window.name);

            // 关闭弹出框
            parent.layer.close(index);
        });
    }else{
        layer.msg(data.msg, {icon: 2,time:1000},function(){
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
        });
    }
}