package com.qf.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

@Data
@TableName("t_discuss")
public class Discuss {

        @TableId(type = IdType.AUTO)
        private Integer did;//评价id
        private Integer uid;//用户id
        private Integer pid;//产品id
        private Integer oid;//订单品id
        private String content;//评价内容
        private String image;//评价图片

        @TableField(exist = false)
        private  String pname;//商品名

        @TableField(exist = false)
        private  String name;//用户名
}
