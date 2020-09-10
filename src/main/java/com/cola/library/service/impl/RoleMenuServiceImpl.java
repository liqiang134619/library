package com.cola.library.service.impl;

import com.cola.library.entity.RoleMenu;
import com.cola.library.entity.SysMenu;
import com.cola.library.mapper.RoleMenuMapper;
import com.cola.library.model.dto.MenuDTO;
import com.cola.library.service.itf.IRoleMenuService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Liq
 * @since 2020-09-10
 */
@Service
public class RoleMenuServiceImpl extends ServiceImpl<RoleMenuMapper, RoleMenu> implements IRoleMenuService {

    @Override
    public List<MenuDTO> listAllMenu(Integer roleId) {
        return this.baseMapper.listAllMenu(roleId);
    }
}
