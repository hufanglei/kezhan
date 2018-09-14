package com.platform.entity;

import java.io.Serializable;
import java.util.Date;


/**
 * 会员信息表实体
 * 表名 member
 *
 * @author hfl
 * @date 2018-09-14 07:49:47
 */
public class MemberEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    private String id;
    /**
     * 微信openid
     */
    private String openid;
    /**
     * 昵称
     */
    private String nickName;
    /**
     * 
     */
    private String avatar;

    private String tagNames;


    /**
     * 设置：主键id
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 获取：主键id
     */
    public String getId() {
        return id;
    }
    /**
     * 设置：微信openid
     */
    public void setOpenid(String openid) {
        this.openid = openid;
    }

    /**
     * 获取：微信openid
     */
    public String getOpenid() {
        return openid;
    }
    /**
     * 设置：昵称
     */
    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    /**
     * 获取：昵称
     */
    public String getNickName() {
        return nickName;
    }
    /**
     * 设置：
     */
    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    /**
     * 获取：
     */
    public String getAvatar() {
        return avatar;
    }

    public String getTagNames() {
        return tagNames;
    }

    public void setTagNames(String tagNames) {
        this.tagNames = tagNames;
    }
}
