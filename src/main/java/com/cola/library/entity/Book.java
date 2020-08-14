package com.cola.library.entity;

import java.math.BigDecimal;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import java.time.LocalDate;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * <p>
 * 
 * </p>
 *
 * @author Liq
 * @since 2020-08-12
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("book")
public class Book implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 书名
     */
    @TableField("name")
    private String name;

    /**
     * 出版社
     */
    @TableField("press")
    private String press;

    /**
     * 出版时间
     */
    @TableField("publish_time")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private String publishTime;

    /**
     * 定价
     */
    @TableField("price")
    private BigDecimal price;

    @TableField("author")
    private String author;

    /**
     * 装帧
     */
    @TableField("binding")
    private String binding;

    /**
     * 丛书系列
     */
    @TableField("series")
    private String series;

    @TableField("isbn")
    private String isbn;

    @TableField("pages")
    private Integer pages;

    @TableField("img")
    private String img;

    @TableField("create_time")
    private LocalDateTime createTime;

    @TableField("update_time")
    private LocalDateTime updateTime;

    @TableField("deleted")
    private Integer deleted;

    private Integer inventory;

    private Integer category;



}
