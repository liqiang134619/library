package com.cola.library.mapper;

import com.cola.library.entity.Role;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cola.library.model.dto.RoleMenuDTO;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Liq
 * @since 2020-09-09
 */
public interface RoleMapper extends BaseMapper<Role> {

    /**
     * 查询所有角色的菜单
     */
    List<RoleMenuDTO> listTreeRoleMenu();
}
