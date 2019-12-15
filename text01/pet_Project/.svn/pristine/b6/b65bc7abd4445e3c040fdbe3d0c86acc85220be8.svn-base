function allBatchDel(checkObj,url) {
    //创建一个数组来接受被选择的id
    var idArray=new Array();

    //获取被选择的对象id，装到数组里面
    checkObj.each(function (index,obj) {
        idArray.push($(obj).val())
    });
    //把获取到的id值传到后台（把数组装到对象里面再传过去）
    var param=new Object();
    param.ids=idArray;

    $.post(url,param,function (data) {
        if (data.state=='SUCCESS'){
            layer.msg(data.msg,{ico: 1,time:1000},function () {
                var index = parent.layer.getFrameIndex(window.name);
                parent.$('.btn-refresh').click();
                parent.layer.close(index);
                location.reload();//刷新页面
            });

        }else {
            layer.msg(data.msg,{ico: 2,time:1000},function () {
                var index = parent.layer.getFrameIndex(window.name);
                parent.$('.btn-refresh').click();
                parent.layer.close(index);
            });
        }
    })
}