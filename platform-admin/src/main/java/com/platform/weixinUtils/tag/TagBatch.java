package com.platform.weixinUtils.tag;

import java.util.ArrayList;

/**
 * 批量为用户打标签dto
 */
public class TagBatch {

    private Integer tagid;
    private ArrayList<String> openid_list = new ArrayList<>();

    public Integer getTagid() {
        return tagid;
    }

    public void setTagid(Integer tagid) {
        this.tagid = tagid;
    }

    public ArrayList<String> getOpenid_list() {
        return openid_list;
    }

    public void setOpenid_list(ArrayList<String> openid_list) {
        this.openid_list = openid_list;
    }
}
