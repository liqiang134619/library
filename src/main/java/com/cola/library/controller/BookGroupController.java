package com.cola.library.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.common.ApiResponse;
import com.cola.library.entity.BookGroup;
import com.cola.library.model.req.BookReq;
import com.cola.library.service.itf.IBookGroupService;
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
 * @since 2020-08-14
 */
@RestController
@RequestMapping("/bookGroup")
public class BookGroupController {

    @Autowired
    IBookGroupService bookGroupService;

    @GetMapping("")
    public ApiResponse getBookGroupList(BookReq bookReq) {
        Page<BookGroup> page = bookReq.getPage(BookGroup.class);
        Page<BookGroup> page1 = bookGroupService.page(page);
        return ApiResponse.ofSuccess(page1.getRecords(),page1.getTotal());
    }

    @DeleteMapping("/del/{id}")
    public ApiResponse delBookGroup(@PathVariable Integer id) {
        boolean remove = bookGroupService.removeById(id);
        if(!remove) {
            return ApiResponse.ofFailed();
        }
        return ApiResponse.ofSuccess();
    }



}

