package com.cola.library.model.dto;

import lombok.Data;

import java.math.BigDecimal;

/**
 * @author Liq
 * @date 2020/8/14
 */
@Data
public class BookDTO {

    private Integer id;

    private String name;

    private String press;

    private String publishTime;

    private BigDecimal price;

    private String author;

    private String binding;

    private String isbn;

    private Integer inventory;

    private String category;
}
