
/*
鼠标移进事件
获取部分产品的产品名称
 */
function getProdutName() {
    //alert("move")
    $.post(
        "product/getProdutType",
        "",function (data){
            console.info(data);
            if (data!=null){

                $("#product_name").empty();
                $.each(data, function(i, d) {
                    //获取出集合里面的所有元素
                    $("#product_name").append(
                        " <dt> <a href='product/getProductList/"+d.tid+"'> <em>"+d.tname
                        + "</em> </a></dt>");
                });
                /*$("#product_name").empty();//每一次都需要清空*/
            }
        }
    );
}