package com.cola.library.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author Liq
 * @since 2020-09-09
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("user")
public class User extends BaseEntity implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键id 自增
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 姓名
     */
    @TableField("name")
    private String name;

    /**
     * 邮箱
     */
    @TableField("email")
    private String email;

    /**
     * 注册时间
     */
    @TableField("register_time")
    private LocalDateTime registerTime;

    /**
     * 状态0 正常 1禁用
     */
    @TableField("status")
    private Integer status;


    /**
     * 系统用户名
     */
    @TableField("user_name")
    private String userName;

    /**
     * 系统密码
     */
    @TableField("user_password")
    private String userPassword;


    /**
     * 手机号码
     */
    @TableField("phone")
    private String phone;



}
