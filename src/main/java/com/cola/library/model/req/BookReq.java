package com.cola.library.model.req;

import lombok.Data;

import java.io.Serializable;

/**
 * @author Liq
 * @date 2020/8/12
 */
@Data
public class BookReq extends BaseReq implements Serializable {

    private String query;

    private String type;
}
