package com.platform.weixinUtils.tag;

import java.util.ArrayList;

/**
 * 查询标签下的粉丝的 vo
 */
public class TagUser {
    private Integer count;
    private String next_openid;
    private OpenObj data;

    class OpenObj{
            private  ArrayList<String> openid  = new ArrayList<>();

        public ArrayList<String> getOpenid() {
            return openid;
        }

        public void setOpenid(ArrayList<String> openid) {
            this.openid = openid;
        }

        @Override
        public String toString() {
            return "OpenObj{" +
                    "openid=" + openid +
                    '}';
        }
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getNext_openid() {
        return next_openid;
    }

    public void setNext_openid(String next_openid) {
        this.next_openid = next_openid;
    }

    public OpenObj getData() {
        return data;
    }

    public void setData(OpenObj data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return "TagUser{" +
                "count=" + count +
                ", next_openid='" + next_openid + '\'' +
                ", data=" + data +
                '}';
    }
}
