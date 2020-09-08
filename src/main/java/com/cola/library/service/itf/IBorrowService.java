package com.cola.library.service.itf;

import com.cola.library.entity.Borrow;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cola.library.model.dto.ReaderBorrowDTO;
import com.cola.library.model.req.ReaderReq;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Liq
 * @since 2020-08-25
 */
public interface IBorrowService extends IService<Borrow> {

    ReaderBorrowDTO listReaderCanBorrow(ReaderReq readerReq);
}

