package com.cola.library.service.itf;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;
import com.cola.library.model.dto.UserDTO;
import com.cola.library.model.query.UserQuery;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Liq
 * @since 2020-09-09
 */
public interface IUserService extends IService<User> {

    /**
     * 查询用户信息
     * @param query
     * @return
     */
    Page<UserDTO> listUser(UserQuery query);
}
