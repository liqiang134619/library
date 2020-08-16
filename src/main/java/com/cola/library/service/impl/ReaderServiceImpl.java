package com.cola.library.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.Reader;
import com.cola.library.mapper.ReaderMapper;
import com.cola.library.model.ReaderModel;
import com.cola.library.model.dto.ReaderDTO;
import com.cola.library.model.req.ReaderReq;
import com.cola.library.service.itf.IReaderService;
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
 * @since 2020-08-15
 */
@Service
public class ReaderServiceImpl extends ServiceImpl<ReaderMapper, Reader> implements IReaderService {

    @Override
    public Page<ReaderDTO> listReader(ReaderReq readerReq) {

        Page<ReaderDTO> page = readerReq.getPage(ReaderDTO.class);
        List<ReaderDTO> readerDTOList =  baseMapper.listReader(page,readerReq);
        return page.setRecords(readerDTOList);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean updateReaderState(Integer id) {
        Reader byId = this.getById(id);
        if(byId!= null) {
            Integer status = byId.getStatus();
            byId.setStatus(byId.getStatus() == 0 ? 1: 0);
            return this.updateById(byId);
        }
        return false;
    }

    @Override
    public boolean addReader(ReaderModel readerModel) {
        Reader reader = new Reader();
        reader.setStatus(readerModel.getStatus())
                .setIdCard(readerModel.getIdCard())
                .setName(readerModel.getName())
                .setPhone(readerModel.getPhone())
                .setType(readerModel.getType());

        return save(reader);
    }
}
