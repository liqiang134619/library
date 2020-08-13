package com.cola.library.service.itf;

import com.cola.library.entity.SysMenu;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cola.library.model.MenuModel;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Liq
 * @since 2020-08-11
 */
public interface ISysMenuService extends IService<SysMenu> {

    /**
     * 菜单
     */
    List<MenuModel> getMenu();
}
