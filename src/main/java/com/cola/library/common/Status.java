package com.cola.library.common;

/**
 * @author Liq
 * @date 2020/8/11
 */
public enum  Status {

    /**
     * 通用状态参数
     */
    SUCCESS(200, "接口调用成功"),
    FAILED(300,"接口调用失败"),
    SERVER_ERROR(500, "服务器开小差~"),

    // token 相关
    TOKEN_EXPIRED(901,"token无效"),


    // 认证相关
    UNAUTHORIZED(401, "请先登录！"),
    ACCESS_DENIED(403, "权限不足！"),
    LOGOUT(200, "退出成功！"),
    LOGIN_FAILED(801,"登录失败"),
    LOGIN_USER_NOTFOUND(802,"用户不存在"),
    LOGIN_USER_NOPERMISSION(802,"用户无权限，无法登录。"),

    ADMIN_DEL_ERROR(701,"无法操作系统角色");



    private int code;
    private String msg;

    Status(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }


    public int getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }

}
