package com.cola.library.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.common.ApiResponse;
import com.cola.library.model.dto.UserDTO;
import com.cola.library.model.query.UserQuery;
import com.cola.library.service.itf.IUserRoleService;
import com.cola.library.service.itf.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Liq
 * @since 2020-09-09
 */
@RestController
@RequestMapping("/user")
public class UserController {


    @Autowired
    IUserService userService;


    @GetMapping("")
    public ApiResponse listUser(UserQuery query) {
        Page<UserDTO> dtoPage = userService.listUser(query);
        return ApiResponse.ofSuccess(dtoPage.getRecords(),dtoPage.getTotal());
    }

    @DeleteMapping("/{userId}")
    public ApiResponse deleteUser(@PathVariable Integer userId) {
        userService.removeById(userId);
        return ApiResponse.ofSuccess();
    }

}

