package com.cola.library.controller;


import com.cola.library.common.ApiResponse;
import com.cola.library.model.dto.ReaderBorrowDTO;
import com.cola.library.model.req.ReaderReq;
import com.cola.library.service.itf.IBorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

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

}

