package com.platform.weixinUtils.tag;

import java.util.ArrayList;

public class TagAll {
    private ArrayList<TagItem> tags;

    public ArrayList<TagItem> getTags() {
        return tags;
    }

    public void setTags(ArrayList<TagItem> tags) {
        this.tags = tags;
    }

    @Override
    public String toString() {
        return "TagAll{" +
                "tags=" + tags +
                '}';
    }
}
