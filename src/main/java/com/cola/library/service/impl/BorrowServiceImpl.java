package com.cola.library.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.Borrow;
import com.cola.library.entity.ReaderType;
import com.cola.library.mapper.BorrowMapper;
import com.cola.library.model.dto.ReaderBorrowDTO;
import com.cola.library.model.dto.ReaderDTO;
import com.cola.library.model.req.ReaderReq;
import com.cola.library.service.itf.IBorrowService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cola.library.service.itf.IReaderService;
import com.cola.library.service.itf.IReaderTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Liq
 * @since 2020-08-25
 */
@Service
public class BorrowServiceImpl extends ServiceImpl<BorrowMapper, Borrow> implements IBorrowService {


    @Autowired
    IReaderService readerService;



    @Autowired
    IReaderTypeService typeService;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public ReaderBorrowDTO listReaderCanBorrow(ReaderReq readerReq) {

        // 先查询读者的基本信息

        ReaderBorrowDTO borrowDTO = new ReaderBorrowDTO();

        Page<ReaderDTO> readerDTOPage = readerService.listCanReader(readerReq);
        List<ReaderDTO> records = readerDTOPage.getRecords();
        if(records.size() > 0) {
            ReaderDTO readerDTO = records.get(0);

            // 在查询可借阅天数和可借阅数量
            Integer type = readerDTO.getType();
            ReaderType readerType = typeService.getOne(new QueryWrapper<ReaderType>().eq("type", type));

            Integer borrowed = baseMapper.borrowCount(readerDTO.getId());
            // 封装参数吧
            borrowDTO.setName(readerDTO.getName())
                    .setIdCard(readerDTO.getIdCard())
                    .setPhone(readerDTO.getPhone())
                    .setBookNum(readerType.getBorrowBook() - borrowed)
                    .setDayNum(readerType.getBorrowDay());

        }

        return borrowDTO;

    }
}
