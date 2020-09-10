package com.cola.library.model.dto;

import lombok.Data;

import java.util.List;

/**
 * @author liq
 * @date 2020/9/11
 */
@Data
public class MenuDTO {

    private Integer id;

    private String menuName;

    private Integer pid;

    private Integer orderBy;


    private List<MenuDTO> children;


}
