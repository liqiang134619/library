package com.cola.library.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.User;
import com.cola.library.mapper.UserMapper;
import com.cola.library.model.dto.UserDTO;
import com.cola.library.model.query.UserQuery;
import com.cola.library.service.itf.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Liq
 * @since 2020-09-09
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    @Override
    public Page<UserDTO> listUser(UserQuery query) {
        Page<UserDTO> page = query.getPage(UserDTO.class);
        List<UserDTO> userList = baseMapper.listUser(page,query);
        return page.setRecords(userList);
    }
}
