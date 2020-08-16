package com.cola.library.entity;

import com.baomidou.mybatisplus.annotation.*;

import java.time.LocalDateTime;
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
 * @since 2020-08-15
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("reader")
public class Reader extends BaseEntity implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 姓名
     */
    @TableField("name")
    private String name;

    /**
     * 身份证号码
     */
    @TableField("id_card")
    private String idCard;

    /**
     * 电话号码
     */
    @TableField("phone")
    private String phone;

    /**
     * 注册时间
     */
    @TableField(value = "register_time")
    private LocalDateTime registerTime = LocalDateTime.now();

    /**
     * 类型
     */
    @TableField("type")
    private String type;

    /**
     * 借书状态
     */
    @TableField("status")
    private Integer status;




}
