package com.cola.library.service.impl;

import com.cola.library.entity.Role;
import com.cola.library.mapper.RoleMapper;
import com.cola.library.service.itf.IRoleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Liq
 * @since 2020-09-09
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements IRoleService {

}
