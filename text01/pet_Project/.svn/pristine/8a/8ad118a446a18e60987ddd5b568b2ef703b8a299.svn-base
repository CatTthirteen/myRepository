package com.qf.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResultEntity<T>{

    private static final String SUCCESS="SUCCESS";// 处理成功
    private static final String FAILED="FAILED";// 处理失败
    private static final String NO_MSG="NO_MSG";// 没有提示信息

    private String state; // 操作状态 成功/失败
    private String msg; // 提示信息
    private T t; // 返回的数据

    /**
     * 成功有消息
     * @param <T>
     * @return
     */
    public static <T> ResultEntity<T> success_msg(String msg){
        return new ResultEntity<T>(SUCCESS,msg,null);
    }

    public static <T> ResultEntity<T> failed_msg(String msg){
        return new ResultEntity<T>(FAILED,msg,null);
    }
}
