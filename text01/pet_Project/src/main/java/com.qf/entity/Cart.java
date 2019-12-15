package com.qf.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("t_cart")
public class Cart  {

    @TableId(type = IdType.AUTO)
    private Integer id;

    private  Integer pid;

    private  Integer pnumber;
    @TableField(value = "pnumb_price")
    private  Float pnumberPrice;

    private  Integer uid;


    @TableField(exist = false)
    private  float countPrice=0;//总价格
    @TableField(exist = false)
    private  String  pname;//产品名称
    @TableField(exist = false)
    private  String uname;//用户名称

    private Integer specification;//规格






}
