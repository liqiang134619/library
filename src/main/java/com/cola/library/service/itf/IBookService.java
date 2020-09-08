package com.cola.library.service.itf;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.Book;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cola.library.model.dto.BookDTO;
import com.cola.library.model.req.AvailableBookModel;
import com.cola.library.model.req.BookReq;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Liq
 * @since 2020-08-12
 */
public interface IBookService extends IService<Book> {

    Page<BookDTO> listBook(BookReq bookReq);

    boolean addBook(Book book);

    boolean deleteBook(Integer id);

    /**
     * 查询可借阅的图书信息
     * @param model
     * @return
     */
    Page<Book> listAvailableBook(AvailableBookModel model);
}
