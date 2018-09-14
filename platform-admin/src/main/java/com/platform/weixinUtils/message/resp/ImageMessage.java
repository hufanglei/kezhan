package com.platform.weixinUtils.message.resp;


import com.platform.weixinUtils.message.common.BaseMessage;

/**
 * 图片消息类
 */
public class ImageMessage extends BaseMessage {

    //图片对象
    private Image image;

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }
}
