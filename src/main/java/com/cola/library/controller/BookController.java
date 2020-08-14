package com.cola.library.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.common.ApiResponse;
import com.cola.library.entity.Book;
import com.cola.library.model.BookDTO;
import com.cola.library.model.MenuModel;
import com.cola.library.model.req.BaseReq;
import com.cola.library.model.req.BookReq;
import com.cola.library.service.itf.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

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
        Page<BookDTO> bookPage = bookService.listBook(bookReq);
        return ApiResponse.ofSuccess(bookPage.getRecords(),bookPage.getTotal());
    }

    @PostMapping("/add")
    public ApiResponse addBook(@RequestBody Book book) {

        boolean save = bookService.addBook(book);
        if(!save) {
            return ApiResponse.ofFailed();
        }
        return ApiResponse.ofSuccess();
    }
    @GetMapping("/getone")
    public ApiResponse getBook(@RequestParam("id") Integer id) {
        Book byId = bookService.getById(id);
        return ApiResponse.ofSuccess(byId);
    }


}

