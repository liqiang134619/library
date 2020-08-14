package com.cola.library.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.Book;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cola.library.model.BookDTO;
import com.cola.library.model.req.BookReq;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Liq
 * @since 2020-08-12
 */
public interface BookMapper extends BaseMapper<Book> {



    List<BookDTO> listBook(Page<BookDTO> page, @Param("p") BookReq bookReq);
}
