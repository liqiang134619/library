package com.cola.library.model;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import java.io.Serializable;

/**
 * @author Liq
 * @date 2020/8/12
 */
@Data
public abstract class BaseReq  implements Serializable {

    private Integer no;

    private Integer limit;


    private Integer getNo() {
        if(this.no == null) {
            this.no = 1;
        }
        return  this.no;
    }

    private Integer getLimit() {
        if(this.limit == null) {
            this.limit = 10;
        }
        return  this.limit;
    }

    @JsonIgnore
    public <T> Page<T> getPage(Class<T> cls) {

       return  new Page<>(getNo(),getLimit());
    }
}
