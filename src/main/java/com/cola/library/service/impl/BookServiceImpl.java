package com.cola.library.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.Book;
import com.cola.library.mapper.BookMapper;
import com.cola.library.model.req.BaseReq;
import com.cola.library.model.req.BookReq;
import com.cola.library.service.itf.IBookService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Liq
 * @since 2020-08-12
 */
@Service
public class BookServiceImpl extends ServiceImpl<BookMapper, Book> implements IBookService {

    @Override
    public Page<Book> listBook(BookReq bookReq) {
        if("1".equals(bookReq.getType())) {
            return this.page(bookReq.getPage(Book.class),new QueryWrapper<Book>().like("author",bookReq.getQuery()));
        }
        return this.page(bookReq.getPage(Book.class),new QueryWrapper<Book>().like("name",bookReq.getQuery()));
    }
}
