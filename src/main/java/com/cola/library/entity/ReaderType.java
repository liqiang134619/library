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
 * @since 2020-08-16
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("reader_type")
public class ReaderType extends BaseEntity implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键
     */
    @TableId("id")
    private Integer id;

    @TableField("type")
    private Integer type;

    /**
     * 可借天数
     */
    @TableField("borrow_day")
    private Integer borrowDay;

    /**
     * 可借本数
     */
    @TableField("borrow_book")
    private Integer borrowBook;

    @TableField("type_name")
    private String typeName;


}
