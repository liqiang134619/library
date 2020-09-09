package com.cola.library.model.dto;

import lombok.Data;

import java.time.LocalDateTime;

/**
 * @author liq
 * @date 2020/9/8
 */
@Data
public class BorrowDTO {

    private Integer id;

    private String userName;

    private String bookName;

    private LocalDateTime borrowTime;

    private LocalDateTime returnTime;

    private Integer status;

    private String opBy;

}
