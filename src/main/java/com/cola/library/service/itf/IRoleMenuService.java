package com.cola.library.service.itf;

import com.cola.library.entity.RoleMenu;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cola.library.entity.SysMenu;
import com.cola.library.model.dto.MenuDTO;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Liq
 * @since 2020-09-10
 */
public interface IRoleMenuService extends IService<RoleMenu> {


    List<MenuDTO> listAllMenu(Integer roleId);
}
