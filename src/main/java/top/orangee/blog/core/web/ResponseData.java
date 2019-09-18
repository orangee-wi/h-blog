package top.orangee.blog.core.web;

import lombok.Data;

/**
 * 响应数据
 * 返回给前端的json数据格式
 *
 * @author orangee
 * @since 2019年9月18日22:04:15
 */
@Data
public class ResponseData {
    public ResponseData(){}

    public ResponseData(String code, String msg, Object data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    /**
     * 响应代号
     */
    private String code;

    /**
     * 响应消息
     */
    private String msg;

    /**
     * 响应数据
     */
    private Object data;
}
