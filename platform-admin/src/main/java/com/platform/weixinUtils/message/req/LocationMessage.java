package com.platform.weixinUtils.message.req;


import com.platform.weixinUtils.message.common.BaseMessage;

/**
 * 地理位置实体
 */
public class LocationMessage extends BaseMessage {

    //地理位置对象
    private Location location;

    public Location getLocation() {
        return location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }
}
