package com.platform.weixinUtils.message.resp;


import com.platform.weixinUtils.message.common.BaseMessage;

/**
 * 文本消息类
 */
public class TextMessage extends BaseMessage {

    //Content	文本消息内容
    private String Content;


    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        Content = content;
    }



}
