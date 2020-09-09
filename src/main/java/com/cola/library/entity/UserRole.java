package com.cola.library.entity;

import com.baomidou.mybatisplus.annotation.TableName;
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
@TableName("user_role")
public class UserRole extends BaseEntity implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键，自增
     */
    @TableId("id")
    private Integer id;

    /**
     * 角色id
     */
    @TableField("role_id")
    private Integer roleId;

    /**
     * 用户id
     */
    @TableField("user_id")
    private Integer userId;


}
