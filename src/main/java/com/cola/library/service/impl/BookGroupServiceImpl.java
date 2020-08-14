package com.cola.library.service.impl;

import com.cola.library.entity.BookGroup;
import com.cola.library.mapper.BookGroupMapper;
import com.cola.library.service.itf.IBookGroupService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Liq
 * @since 2020-08-14
 */
@Service
public class BookGroupServiceImpl extends ServiceImpl<BookGroupMapper, BookGroup> implements IBookGroupService {

}
