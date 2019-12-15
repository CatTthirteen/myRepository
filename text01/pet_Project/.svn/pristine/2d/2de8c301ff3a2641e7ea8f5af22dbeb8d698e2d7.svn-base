package com.qf.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Data;

@Data
@TableName("t_product")
public class Product {
    @TableId(type = IdType.AUTO)
    private Integer pid;//产品id
    private String pname;//产品名称
    private String pimage;//产品图片
    private String pdesc;//产品描述
    private Float pprice;//产品价格
    private Integer tid;//产品类型
    private String specifications;//技术规格
    private String scope;//使用范围
    private String scope_english;//英文版使用范围
    private String attention;//注意事项
    private String instructions;//说明书

    @TableField(exist = false)
    private Integer pnumber=0;
    @TableField(exist = false)
    private  float pnumberPrice=0;

    private  Integer repertory;//库存

    private String specification;//规格

    private  String pack;//包装
}
