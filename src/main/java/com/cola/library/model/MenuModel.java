package com.cola.library.model;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Liq
 * @date 2020/8/11
 */
@Data
public class MenuModel {

    private Integer id;
    private String menuName;
    private String path;
    private List<MenuModel> children = new ArrayList<>();
}
