package com.cola.library.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.Book;
import com.cola.library.mapper.BookMapper;
import com.cola.library.model.BookDTO;
import com.cola.library.model.req.BaseReq;
import com.cola.library.model.req.BookReq;
import com.cola.library.service.itf.IBookService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

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
    public Page<BookDTO> listBook(BookReq bookReq) {
        Page<BookDTO> page = bookReq.getPage(BookDTO.class);
        List<BookDTO> bookList = baseMapper.listBook(page, bookReq);
        return page.setRecords(bookList);

    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean addBook(Book book) {
        return this.save(book);
    }
}
