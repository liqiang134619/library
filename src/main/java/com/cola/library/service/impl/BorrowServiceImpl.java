package com.cola.library.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.Book;
import com.cola.library.entity.Borrow;
import com.cola.library.entity.Reader;
import com.cola.library.entity.ReaderType;
import com.cola.library.exeption.CommonException;
import com.cola.library.mapper.BorrowMapper;
import com.cola.library.model.BorrowBookModel;
import com.cola.library.model.dto.BorrowDTO;
import com.cola.library.model.dto.ReaderBorrowDTO;
import com.cola.library.model.dto.ReaderDTO;
import com.cola.library.model.query.BorrowQuery;
import com.cola.library.model.req.ReaderReq;
import com.cola.library.service.itf.IBookService;
import com.cola.library.service.itf.IBorrowService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cola.library.service.itf.IReaderService;
import com.cola.library.service.itf.IReaderTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
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



    @Autowired
    IBookService bookService;


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

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean borrowBook(BorrowBookModel borrowModel) {

        Reader reader = readerService
                .getOne(new QueryWrapper<Reader>().eq("id_card", borrowModel.getIdCard()));

        Book book = bookService.getById(borrowModel.getBookId());

        if(reader != null && book != null) {
            // 在查询可借阅天数和可借阅数量
            Integer type = reader.getType();
            ReaderType readerType = typeService.getOne(new QueryWrapper<ReaderType>().eq("type", type));
            Integer borrowed = baseMapper.borrowCount(reader.getId());
            int canBorrow = readerType.getBorrowBook() - borrowed;
            Integer inventory = book.getInventory();

            if(canBorrow >0 && inventory > 0) {
                Borrow borrow = new Borrow();
                borrow.setBookId(book.getId()).setReaderId(reader.getId())
                        .setBorrowTime(LocalDateTime.now())
                        .setStatus(1)
                        .setBorrowDay(readerType.getBorrowDay());
                book.setInventory(inventory - 1);
                bookService.updateById(book);
                return this.save(borrow);


            }

        }

        throw new CommonException("请核实借阅人资格和书籍数量");


    }

    @Override
    public Page<BorrowDTO> listBorrowedReader(BorrowQuery query) {
        Page<BorrowDTO> page = query.getPage(BorrowDTO.class);
        List<BorrowDTO> list = baseMapper.listBorrowedReader(page,query);
        return page.setRecords(list);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void returnBook(Integer borrowId) {

        Borrow byId = this.getById(borrowId);
        if(byId !=null) {
            Integer status = byId.getStatus();
            if(status == 1) {
                byId.setStatus(0);
                byId.setReturnTime(LocalDateTime.now());
                Integer bookId = byId.getBookId();
                Book byId1 = bookService.getById(bookId);
                byId1.setInventory(byId1.getInventory() + 1);
                bookService.updateById(byId1);
                this.updateById(byId);
                return;
            }
        }
        throw new CommonException("归还失败");
    }
}
