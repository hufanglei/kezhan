package com.platform.entity;

import java.io.Serializable;
import java.util.Date;


/**
 * 公众号设置实体
 * 表名 wechat_setting
 *
 * @author hfl
 * @date 2018-09-14 05:13:43
 */
public class WechatSettingEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 
     */
    private String id;
    /**
     * 开发者id
     */
    private String appid;
    /**
     * 服务器令牌
     */
    private String appsecret;
    /**
     * 
     */
    private String token;
    /**
     * 消息加解密密钥
     */
    private String encodingaeskey;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    /**
     * 设置：开发者id
     */
    public void setAppid(String appid) {
        this.appid = appid;
    }

    /**
     * 获取：开发者id
     */
    public String getAppid() {
        return appid;
    }
    /**
     * 设置：服务器令牌
     */
    public void setAppsecret(String appsecret) {
        this.appsecret = appsecret;
    }

    /**
     * 获取：服务器令牌
     */
    public String getAppsecret() {
        return appsecret;
    }
    /**
     * 设置：
     */
    public void setToken(String token) {
        this.token = token;
    }

    /**
     * 获取：
     */
    public String getToken() {
        return token;
    }
    /**
     * 设置：消息加解密密钥
     */
    public void setEncodingaeskey(String encodingaeskey) {
        this.encodingaeskey = encodingaeskey;
    }

    /**
     * 获取：消息加解密密钥
     */
    public String getEncodingaeskey() {
        return encodingaeskey;
    }
}
