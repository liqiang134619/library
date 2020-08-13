package com.cola.library.controller;


import com.cola.library.common.ApiResponse;
import com.cola.library.model.MenuModel;
import com.cola.library.service.itf.ISysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Liq
 * @since 2020-08-11
 */
@RestController
@RequestMapping("/sysMenu")
public class SysMenuController {

    @Autowired
    ISysMenuService sysMenuService;

    @GetMapping("")
    public ApiResponse getMenu() {
        List<MenuModel> menu = sysMenuService.getMenu();
        return ApiResponse.ofSuccess(menu);
    }
}

