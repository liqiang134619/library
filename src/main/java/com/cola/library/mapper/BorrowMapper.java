package com.cola.library.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.Borrow;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cola.library.model.dto.BorrowDTO;
import com.cola.library.model.query.BorrowQuery;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Liq
 * @since 2020-08-25
 */
public interface BorrowMapper extends BaseMapper<Borrow> {


    /**
     * 根据读者id查询已经借阅的图书数量
     * @param readerId
     * @return
     */
    @Select("select count(*) from borrow where status = 1 and reader_id = #{readerId}")
    Integer borrowCount(@Param("readerId") Integer readerId);

    /**
     * 查询借阅的列表
     * @return
     * @param page
     * @param query
     */
    List<BorrowDTO> listBorrowedReader(Page<BorrowDTO> page, @Param("p1") BorrowQuery query);
}
