package com.cola.library.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.Book;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cola.library.model.dto.BookDTO;
import com.cola.library.model.req.BookReq;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

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

    /**
     * 查询可借的图书
     * @param page
     * @return
     */
    @Select("select * from book where deleted = 0 and inventory > 0")
    List<Book> listAvailableBook(Page<Book> page);
}
