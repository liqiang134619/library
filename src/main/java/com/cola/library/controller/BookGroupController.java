package com.cola.library.controller;


import com.cola.library.common.ApiResponse;
import com.cola.library.entity.BookGroup;
import com.cola.library.service.itf.IBookGroupService;
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
 * @since 2020-08-14
 */
@RestController
@RequestMapping("/bookGroup")
public class BookGroupController {

    @Autowired
    IBookGroupService bookGroupService;

    @GetMapping("")
    public ApiResponse getBookGroupList() {
        List<BookGroup> list = bookGroupService.list();
        return ApiResponse.ofSuccess(list);
    }


}

