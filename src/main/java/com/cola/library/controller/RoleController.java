package com.cola.library.controller;


import com.cola.library.common.ApiResponse;
import com.cola.library.entity.Role;
import com.cola.library.model.dto.RoleMenuDTO;
import com.cola.library.model.query.RoleModel;
import com.cola.library.service.itf.IRoleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Liq
 * @since 2020-09-09
 */
@RestController
@RequestMapping("/role")
@Api(tags = "角色管理")
public class RoleController {



    @Autowired
    IRoleService roleService;

    @GetMapping("/menu/tree")
    @ApiOperation("查询角色")
    public ApiResponse listTreeRoleMenu() {
        List<RoleMenuDTO> roleMenuDTOS = roleService.listTreeRoleMenu();
        return ApiResponse.ofSuccess(roleMenuDTOS);
    }

    @DeleteMapping("/rights/{roleId}/{rightId}")
    @ApiOperation("删除角色权限")
    public ApiResponse deleteRights(@PathVariable Integer roleId, @PathVariable Integer rightId){
        roleService.deleteRights(roleId,rightId);
        return ApiResponse.ofSuccess();
    }

    @DeleteMapping("/{roleId}")
    @ApiOperation("删除角色")
    public ApiResponse deleteRole(@PathVariable Integer roleId) {
        roleService.deleteRole(roleId);
        return ApiResponse.ofSuccess();
    }

    @GetMapping("/{roleId}")
    @ApiOperation("获取角色")
    public ApiResponse getOne(@PathVariable Integer roleId) {
        Role byId = roleService.getById(roleId);
        return ApiResponse.ofSuccess(byId);
    }


    @PostMapping("/add")
    @ApiOperation("添加角色")
    public ApiResponse saveOne(@RequestBody RoleModel model) {
        roleService.saveOne(model);
        return ApiResponse.ofSuccess();

    }

}

