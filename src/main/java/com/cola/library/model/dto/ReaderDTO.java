package com.cola.library.model.dto;

import lombok.Data;

import java.time.LocalDateTime;

/**
 * @author liq
 * @date 2020/8/15
 */
@Data
public class ReaderDTO {

    private Integer id;

    private String name;

    private String idCard;

    private String phone;

    private LocalDateTime registerTime;

    private Integer type;

    private Integer status;

    private Boolean state;


    public Boolean getState() {
        return status != 1;
    }
}
