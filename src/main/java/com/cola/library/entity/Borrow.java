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
 * @since 2020-08-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("borrow")
public class Borrow extends BaseEntity implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键，自增
     */
    @TableId(value = "id",type = IdType.AUTO)
    private Integer id;

    /**
     * 读者主键
     */
    @TableField("reader_id")
    private Integer readerId;

    /**
     * 图书主键
     */
    @TableField("book_id")
    private Integer bookId;

    /**
     * 借阅时间
     */
    @TableField("borrow_time")
    private LocalDateTime borrowTime;

    /**
     * 归还时间
     */
    @TableField("return_time")
    private LocalDateTime returnTime;

    /**
     * 归还状态 1 借出状态，0已归还
     */
    @TableField("status")
    private Integer status;

    /**
     * 借阅天数
     */
    @TableField("borrow_day")
    private Integer borrowDay;

    /**
     * 续借时间
     */
    @TableField("reborrow_time")
    private LocalDateTime reborrowTime;


    /**
     * 操作人
     */
    @TableField("op_by")
    private String opBy;


}
