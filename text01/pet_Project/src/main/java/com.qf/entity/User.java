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
@TableName("t_user")
public class User {


    @TableId(type = IdType.AUTO)
    private int id;

    private  String name;

    private  String password;

    private  Integer pid;

    private  Integer cid;

    private  String address;

    private  String phone;

    @TableField(exist = false) // 该字段不在数据表中
    private String pname;//省名

    @TableField(exist = false)
    private String cname;//市名
}
