package com.cola.library.model.dto;

import lombok.Data;

import java.time.LocalDateTime;

/**
 * @author liq
 * @date 2020/9/9
 */
@Data
public class UserDTO {

    private Integer id;

    private String name;

    private String userName;

    private String email;

    private Integer status;

    private String phone;

    private LocalDateTime registerTime;


}
