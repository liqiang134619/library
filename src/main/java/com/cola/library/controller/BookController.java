package com.cola.library.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.common.ApiResponse;
import com.cola.library.entity.Book;
import com.cola.library.model.MenuModel;
import com.cola.library.model.req.BaseReq;
import com.cola.library.model.req.BookReq;
import com.cola.library.service.itf.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p> 前端控制器
 * </p>
 *
 * @author Liq
 * @since 2020-08-12
 */
@RestController
@RequestMapping("/book")
public class BookController {


    @Autowired
    IBookService bookService;


    @GetMapping("/list")
    public ApiResponse listBook(BookReq bookReq) {
        Page<Book> bookPage = bookService.listBook(bookReq);
        return ApiResponse.ofSuccess(bookPage.getRecords(),bookPage.getTotal());
    }




}

