package com.cola.library.mapper;

import com.cola.library.entity.Borrow;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

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

}
