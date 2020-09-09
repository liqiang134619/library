package com.cola.library.model;

import lombok.Data;

/**
 * @author liq
 * @date 2020/9/8
 */
@Data
public class BorrowBookModel {

    /**
     * 借阅人身份证号码
     */
    private String idCard;

    /**
     * 书籍id主键
     */
    private Integer bookId;
}
