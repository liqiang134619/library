package com.cola.library.mapper;

import com.cola.library.entity.RoleMenu;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cola.library.entity.SysMenu;
import com.cola.library.model.dto.MenuDTO;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Liq
 * @since 2020-09-10
 */
public interface RoleMenuMapper extends BaseMapper<RoleMenu> {

    List<MenuDTO> listAllMenu(Integer roleId);
}
