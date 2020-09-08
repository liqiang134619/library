package com.cola.library.service.itf;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.Reader;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cola.library.model.ReaderModel;
import com.cola.library.model.dto.ReaderDTO;
import com.cola.library.model.req.ReaderReq;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Liq
 * @since 2020-08-15
 */
public interface IReaderService extends IService<Reader> {

    /**
     * 查询读者列表信息
     * @return
     * @param readerReq
     */
    Page<ReaderDTO> listReader(ReaderReq readerReq);

    /**
     * 更新读者状态
     * @param id 主键id
     * @return
     */
    boolean updateReaderState(Integer id);

    /**
     * 添加读者信息
     * @param readerModel
     * @return
     */
    boolean addReader(ReaderModel readerModel);

    /**
     * 查询可以借阅的人员
     * @param readerReq
     */
    void listReaderCanBorrow(ReaderReq readerReq);

    /**
     * 查询可借图书的读者 基本逻辑同
     * @link listReader
     * @param readerReq
     * @return
     */
    Page<ReaderDTO> listCanReader(ReaderReq readerReq);
}
