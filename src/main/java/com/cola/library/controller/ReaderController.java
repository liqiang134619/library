package com.cola.library.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.common.ApiResponse;
import com.cola.library.entity.Reader;
import com.cola.library.model.ReaderModel;
import com.cola.library.model.dto.ReaderDTO;
import com.cola.library.model.req.ReaderReq;
import com.cola.library.service.itf.IReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author Liq
 * @since 2020-08-15
 */
@RestController
@RequestMapping("/reader")
public class ReaderController {


    @Autowired
    IReaderService readerService;


    /**
     * 添加读者
     * @param readerModel
     * @return
     */
    @PostMapping("/add")
    public ApiResponse addReader(@RequestBody ReaderModel readerModel) {

        boolean save = readerService.addReader(readerModel);
        if (!save) {
            return ApiResponse.ofFailed();
        }
        return ApiResponse.ofSuccess();
    }

    /**
     * 查询读者信息
     * @param readerReq 请求参数封装
     * @return
     */
    @GetMapping("")
    public ApiResponse listReader(ReaderReq readerReq) {
        Page<ReaderDTO> page = readerService.listReader(readerReq);
        return ApiResponse.ofSuccess(page.getRecords(),page.getTotal());
    }


    /**
     * 更新读者的状态
     * @param id
     * @return
     */
    @PutMapping("/state/{id}")
    public ApiResponse updateReaderState(@PathVariable Integer id) {
        boolean update = readerService.updateReaderState(id);
        if(!update) {
            return ApiResponse.ofFailed();
        }
        return ApiResponse.ofSuccess();
    }

    /**
     * 逻辑删除读者信息
     * @param id
     * @return
     */
    @DeleteMapping("/{id}")
    public ApiResponse delReader(@PathVariable Integer id) {
        boolean remove = readerService.removeById(id);
        if (!remove) {
            return ApiResponse.ofFailed();
        }
        return ApiResponse.ofSuccess();
    }

    /**
     * 根据id获取读者信息
     * @param id
     * @return
     */
    @GetMapping("/{id}")
    public ApiResponse getOne(@PathVariable Integer id) {
        Reader byId = readerService.getById(id);
        return ApiResponse.ofSuccess(byId);
    }



}

