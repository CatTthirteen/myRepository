package com.qf.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("t_shop")
public class Shop {

    @TableId(type = IdType.AUTO)
    private Integer sid;

    private Integer pid;

    private Integer cid;

    private  String sname;

    private  Integer sphone;

    private  String saddress;

    private  String sdate;

    private  String simage;
}
