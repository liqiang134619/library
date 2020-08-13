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
 * @since 2020-08-11
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_menu")
public class SysMenu  extends  BaseEntity implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键id，自增
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 菜单名称
     */
    @TableField("menu_name")
    private String menuName;

    /**
     * 菜单描述
     */
    @TableField("menu_desc")
    private String menuDesc;

    /**
     * 请求路径
     */
    @TableField("path")
    private String path;

    /**
     * 路由路径
     */
    @TableField("router")
    private String router;


    /**
     * 路由路径
     */
    @TableField("order_by")
    private Integer orderBy;

    /**
     * 图标
     */
    @TableField("icon")
    private String icon;

    /**
     * 父id
     */
    @TableField("parent_id")
    private Integer parentId;




}
