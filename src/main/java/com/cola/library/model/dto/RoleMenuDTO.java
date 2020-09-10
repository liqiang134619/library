package com.cola.library.model.dto;

import com.cola.library.model.sys.RoleMenuModel;
import lombok.Data;

import java.util.List;

/**
 * @author liq
 * @date 2020/9/10
 */
@Data
public class RoleMenuDTO {

    private Integer id;

    private String roleName;

    private String roleDesc;

    private String roleCode;

    private List<MenuDTO> children;
}
