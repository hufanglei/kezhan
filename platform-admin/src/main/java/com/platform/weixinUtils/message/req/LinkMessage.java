package com.platform.weixinUtils.message.req;


import com.platform.weixinUtils.message.common.BaseMessage;

/**
 *链接消息类
 */
public class LinkMessage  extends BaseMessage {
    //链接实体对象
    private Link link;

    public Link getLink() {
        return link;
    }

    public void setLink(Link link) {
        this.link = link;
    }
}
