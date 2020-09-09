package com.cola.library.service.itf;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.Borrow;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cola.library.model.BorrowBookModel;
import com.cola.library.model.dto.BorrowDTO;
import com.cola.library.model.dto.ReaderBorrowDTO;
import com.cola.library.model.query.BorrowQuery;
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

    /**
     * 借书
     * @param borrowModel
     * @return
     */
    boolean borrowBook(BorrowBookModel borrowModel);

    Page<BorrowDTO> listBorrowedReader(BorrowQuery query);

    /**
     * 归还图书
     * @param borrowId
     */
    void returnBook(Integer borrowId);
}

