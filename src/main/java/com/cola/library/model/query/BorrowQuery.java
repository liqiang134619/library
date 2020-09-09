package com.cola.library.model.query;

import com.cola.library.model.BaseReq;
import lombok.Data;

/**
 * @author liq
 * @date 2020/9/8
 */
@Data
public class BorrowQuery extends BaseReq {

    private String name;

    private String book;

}
