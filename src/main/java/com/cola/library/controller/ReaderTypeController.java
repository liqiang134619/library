package com.cola.library.controller;


import com.cola.library.common.ApiResponse;
import com.cola.library.entity.ReaderType;
import com.cola.library.service.itf.IReaderTypeService;
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
 * @since 2020-08-16
 */
@RestController
@RequestMapping("/readerType")
public class ReaderTypeController {

    @Autowired
    IReaderTypeService readerTypeService;

    @GetMapping("")
    public ApiResponse listReaderType() {
        List<ReaderType> list = readerTypeService.list();
        return ApiResponse.ofSuccess(list);
    }

}

