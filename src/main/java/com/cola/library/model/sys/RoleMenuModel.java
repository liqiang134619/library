package com.cola.library.model.sys;

import lombok.Data;
import sun.font.CCompositeGlyphMapper;

import java.util.List;

/**
 * @author liq
 * @date 2020/9/10
 */
@Data
public class RoleMenuModel {

    private Integer id;

    private String menuName;

    private List<RoleMenuModel> children;
}
