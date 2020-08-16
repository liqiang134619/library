package com.cola.library.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.Reader;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cola.library.model.dto.ReaderDTO;
import com.cola.library.model.req.ReaderReq;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Liq
 * @since 2020-08-15
 */
public interface ReaderMapper extends BaseMapper<Reader> {

    /**
     * 查询读者列表
     * @param page
     * @param readerReq
     * @return
     */
    List<ReaderDTO> listReader(Page<ReaderDTO> page, @Param("param2") ReaderReq readerReq);
}
