package com.cola.library.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cola.library.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cola.library.model.dto.UserDTO;
import com.cola.library.model.query.UserQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Liq
 * @since 2020-09-09
 */
public interface UserMapper extends BaseMapper<User> {

    /**
     * 查询用户信息
     * @param page
     * @param query
     * @return
     */
    List<UserDTO> listUser(Page<UserDTO> page, @Param("p1") UserQuery query);
}
