package com.cola.library.model.dto;

import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author liq
 * @date 2020/8/27
 */
@Data
@Accessors(chain = true)
public class ReaderBorrowDTO {
    private String name;

    private String idCard;

    private String phone;

    private Integer bookNum;

    private Integer dayNum;
}
