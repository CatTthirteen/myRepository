package com.qf.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("t_order_detail")
public class OrderDetail {
    //商品id
    private  Integer odid;
    //商品id
    private  Integer pid;
    //商品名称
    private  String  pname;
    //商品数量
    private  Integer pnumber;
    //商品价格
    private  float pprice;

    @TableField(value = "isDiscuss")
    private Integer isDiscuss;//订单是否评论


    //订单号
    private  Integer oid;

    //订单编号
    @TableField(exist = false)
    private  String  oname;



    //创建时间
    @TableField(exist = false)
    private Date creaTeime;

    //图片
    @TableField(exist = false)
    private String pimage;


    //订单状态
    private Integer ostatus;

    private String specification;//规格

}
