package com.cola.library.service.itf;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.Book;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cola.library.model.req.BaseReq;
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

    Page<Book> listBook(BookReq bookReq);
}
