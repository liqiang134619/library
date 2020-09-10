package com.cola.library.service.impl;

import cn.hutool.core.lang.UUID;
import cn.hutool.core.util.IdUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.cola.library.entity.Role;
import com.cola.library.entity.RoleMenu;
import com.cola.library.entity.SysMenu;
import com.cola.library.exeption.CommonException;
import com.cola.library.mapper.RoleMapper;
import com.cola.library.model.dto.MenuDTO;
import com.cola.library.model.dto.RoleMenuDTO;
import com.cola.library.model.query.RoleModel;
import com.cola.library.service.itf.IRoleMenuService;
import com.cola.library.service.itf.IRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.jws.WebParam;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Liq
 * @since 2020-09-09
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements IRoleService {



    @Autowired
    IRoleMenuService roleMenuService;

    @Override
    public List<RoleMenuDTO> listTreeRoleMenu() {

        // 查询所有的角色
        List<Role> list = this.list();
        ArrayList<RoleMenuDTO> roleMenuDTOS = new ArrayList<>();
        RoleMenuDTO roleMenuDTO;
        for (Role role : list) {
            roleMenuDTO = new RoleMenuDTO();
            Integer roleId = role.getId();
            List<MenuDTO> roleId1 = roleMenuService.listAllMenu(roleId);
            List<MenuDTO> build = build(roleId1);
            roleMenuDTO.setRoleName(role.getRoleName());
            roleMenuDTO.setId(roleId);
            roleMenuDTO.setRoleDesc(role.getRoleDesc());
            roleMenuDTO.setChildren(build);
            roleMenuDTOS.add(roleMenuDTO);
        }

        return roleMenuDTOS;
    }


    @Override
    public void deleteRights(Integer roleId, Integer rightId) {
        roleMenuService.remove(new QueryWrapper<RoleMenu>().eq("role_id",roleId).eq("menu_id",rightId));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteRole(Integer roleId) {
        this.removeById(roleId);
    }

    @Override
    public void saveOne(RoleModel model) {
        Role role = new Role();
        Role oneRole = this.getOne(new QueryWrapper<Role>().eq("role_name", model.getRoleName()));
        if (oneRole != null) {
            throw new CommonException("姓名重复");
        }
        role.setRoleDesc(model.getRoleDesc()).setRoleName(model.getRoleName())
                .setRoleCode(IdUtil.fastSimpleUUID());
        this.save(role);
    }


    private List<MenuDTO> build(List<MenuDTO> treeNodes) {
        List<MenuDTO> trees = new ArrayList<MenuDTO>();


        for (MenuDTO treeNode : treeNodes) {

            if (treeNode.getPid() == 0) {
                trees.add(treeNode);
            }

            // TODO 双层循环在优化
            for (MenuDTO it : treeNodes) {
                if(it.getPid() != null) {
                    if (it.getPid().equals(treeNode.getId())) {
                        if (treeNode.getChildren() == null) {
                            treeNode.setChildren(new ArrayList<MenuDTO>());
                        }
                        treeNode.getChildren().add(it);
                    }
                }

            }
        }
        return trees;
    }
}
