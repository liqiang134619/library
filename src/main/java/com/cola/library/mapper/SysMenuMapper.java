package com.cola.library.mapper;

import com.cola.library.entity.SysMenu;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cola.library.model.MenuModel;
import org.hibernate.validator.constraints.URL;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Liq
 * @since 2020-08-11
 */
public interface SysMenuMapper extends BaseMapper<SysMenu> {

    /**
     * 菜单列表
     */
    List<MenuModel> getMenu();

}
