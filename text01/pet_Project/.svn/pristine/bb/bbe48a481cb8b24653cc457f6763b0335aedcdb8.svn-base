package com.qf.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("t_order")
public class Order {


    @TableId(type = IdType.AUTO)
    private Integer oid;

    private  String oname;//订单名

    private  float oprice;//订单价格

    private  Integer uid;//用户id

    private  String  aid;//用户id


    private Date create_time;//创建时间

    private  Integer ostatus;//订单状态


    private  Integer isdelete;//伪删除

    @TableField(exist = false)
    private  String  uname;//用户id

    @TableField(exist = false)
    private  String  address;//地址




}
