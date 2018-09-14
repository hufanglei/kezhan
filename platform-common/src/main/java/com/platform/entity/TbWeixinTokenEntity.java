package com.platform.entity;

import java.io.Serializable;
import java.util.Date;


/**
 * 实体
 * 表名 tb_weixin_token
 *
 * @author hfl
 * @date 2018-09-14 16:57:05
 */
public class TbWeixinTokenEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     *
     */
    private String schoolid;
    /**
     * 
     */
    private Date createtime;
    /**
     * 
     */
    private String token;
    /**
     * 
     */
    private String jsapiTicket;

    /**
     * 设置：
     */
    public void setSchoolid(String schoolid) {
        this.schoolid = schoolid;
    }

    /**
     * 获取：
     */
    public String getSchoolid() {
        return schoolid;
    }
    /**
     * 设置：
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    /**
     * 获取：
     */
    public Date getCreatetime() {
        return createtime;
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
     * 设置：
     */
    public void setJsapiTicket(String jsapiTicket) {
        this.jsapiTicket = jsapiTicket;
    }

    /**
     * 获取：
     */
    public String getJsapiTicket() {
        return jsapiTicket;
    }
}
