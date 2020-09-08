package com.cola.library.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.common.ApiResponse;
import com.cola.library.entity.Book;
import com.cola.library.model.dto.BookDTO;
import com.cola.library.model.req.AvailableBookModel;
import com.cola.library.model.req.BookReq;
import com.cola.library.service.itf.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @DeleteMapping("/{id}")
    public ApiResponse deleteBook(@PathVariable Integer id) {
        boolean b = bookService.deleteBook(id);

        if(!b) {
            return ApiResponse.ofFailed();
        }
        return ApiResponse.ofSuccess();
    }


    /**
     * 查询可借阅的图书列表
     * @return
     */
    @GetMapping("/available")
    public ApiResponse listAvailableBook(AvailableBookModel model) {

        Page<Book> page = bookService.listAvailableBook(model);

        return ApiResponse.ofSuccess(page.getRecords(),page.getTotal());
    }


}

