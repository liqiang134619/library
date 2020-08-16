package com.cola.library.model.req;

import lombok.Data;

/**
 * @author liq
 * @date 2020/8/15
 */
@Data
public class ReaderReq extends BaseReq{

    private String name;

    private String phone;

    private String idCard;
}
