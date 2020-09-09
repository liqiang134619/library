package com.cola.library.model.query;

import com.cola.library.model.BaseReq;
import lombok.Data;

/**
 * @author liq
 * @date 2020/9/9
 */

@Data
public class UserQuery extends BaseReq {

    private String name;

    private String phone;
}
