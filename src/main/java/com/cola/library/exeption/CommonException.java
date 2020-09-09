package com.cola.library.exeption;

import com.cola.library.common.Status;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author liq
 * @date 2020/7/5
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class CommonException extends RuntimeException {
    private final int code;
    private final String msg;


    public CommonException(Status status) {
        super(status.getMsg());
        this.code = status.getCode();
        this.msg = status.getMsg();
    }

    public CommonException(String msg) {
        super(msg);
        this.code = Status.FAILED.getCode();
        this.msg = msg;
    }

    public CommonException(int code, String msg) {
        super(msg);
        this.code = code;
        this.msg = msg;
    }

}
