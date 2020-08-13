package com.cola.library.service.impl;

import com.cola.library.entity.SysMenu;
import com.cola.library.mapper.SysMenuMapper;
import com.cola.library.model.MenuModel;
import com.cola.library.service.itf.ISysMenuService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Liq
 * @since 2020-08-11
 */
@Service
public class SysMenuServiceImpl extends ServiceImpl<SysMenuMapper, SysMenu> implements ISysMenuService {

    /**
     * 菜单
     */
    @Override
    public List<MenuModel> getMenu() {
        return baseMapper.getMenu();
    }
}
