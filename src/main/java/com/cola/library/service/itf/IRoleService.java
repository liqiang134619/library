package com.cola.library.service.itf;

import com.cola.library.entity.Role;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cola.library.model.dto.RoleMenuDTO;
import com.cola.library.model.query.RoleModel;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Liq
 * @since 2020-09-09
 */
public interface IRoleService extends IService<Role> {

    /**
     * 查询角色拥有的菜单
     */
    List<RoleMenuDTO> listTreeRoleMenu();

    /**
     * 删除角色对应的菜单权限
     * @param roleId
     * @param rightId
     */
    void deleteRights(Integer roleId, Integer rightId);

    void deleteRole(Integer roleId);

    void saveOne(RoleModel model);
}
