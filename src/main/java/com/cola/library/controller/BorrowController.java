package com.cola.library.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.common.ApiResponse;
import com.cola.library.entity.Borrow;
import com.cola.library.model.BorrowBookModel;
import com.cola.library.model.dto.BorrowDTO;
import com.cola.library.model.dto.ReaderBorrowDTO;
import com.cola.library.model.query.BorrowQuery;
import com.cola.library.model.req.ReaderReq;
import com.cola.library.service.itf.IBorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author Liq
 * @since 2020-08-25
 */
@RestController
@RequestMapping("/borrow")
public class BorrowController {


    @Autowired
    IBorrowService borrowService;




    @GetMapping("")
    public ApiResponse listBorrowedReader(BorrowQuery query) {
        Page<BorrowDTO> page = borrowService.listBorrowedReader(query);
        return ApiResponse.ofSuccess(page.getRecords(),page.getTotal());
    }


    @PutMapping("/return/{borrowId}")
    public ApiResponse returnBook(@PathVariable Integer borrowId) {
        borrowService.returnBook(borrowId);
        return ApiResponse.ofSuccess();
    }



    /**
     * 查询用户，准备做借书处理
     *
     * @param readerReq
     * @return
     */
    @GetMapping("/reader")
    public ApiResponse listReaderCanBorrow(ReaderReq readerReq) {

        ReaderBorrowDTO readerBorrowDTO = borrowService.listReaderCanBorrow(readerReq);
        return ApiResponse.ofSuccess(readerBorrowDTO);

    }

    /**
     * 借书
     * @param borrowModel
     * @return
     */
    @PostMapping("/book")
    public ApiResponse borrowBook(@RequestBody BorrowBookModel borrowModel) {
        boolean b = borrowService.borrowBook(borrowModel);
        if(b) {
            return ApiResponse.ofSuccess();
        }
        return ApiResponse.ofFailed();
    }




}

