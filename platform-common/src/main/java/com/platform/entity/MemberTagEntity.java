package com.platform.entity;

import java.io.Serializable;
import java.util.Date;


/**
 * 会员标签中间表实体
 * 表名 member_tag
 *
 * @author hfl
 * @date 2018-09-14 10:27:42
 */
public class MemberTagEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 会员id
     */
    private String memberId;
    /**
     * 标签id
     */
    private Integer tagId;

    public MemberTagEntity() {
    }

    public MemberTagEntity(String memberId, Integer tagId) {
        this.memberId = memberId;
        this.tagId = tagId;
    }

    /**
     * 设置：会员id
     */
    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    /**
     * 获取：会员id
     */
    public String getMemberId() {
        return memberId;
    }
    /**
     * 设置：标签id
     */
    public void setTagId(Integer tagId) {
        this.tagId = tagId;
    }

    /**
     * 获取：标签id
     */
    public Integer getTagId() {
        return tagId;
    }
}
