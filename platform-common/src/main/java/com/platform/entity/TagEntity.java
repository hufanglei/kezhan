package com.platform.entity;

import java.io.Serializable;
import java.util.Date;


/**
 * 实体
 * 表名 tag
 *
 * @author hfl
 * @date 2018-09-14 07:23:30
 */
public class TagEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 标签id
     */
    private Integer id;
    /**
     * 标签名称
     */
    private String name;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 更新时间
     */
    private Date updateTime;

    /**
     * 粉丝数量
     */
    private Integer count;
    /**
     * 是否默认 001 是 002不是
     */
    private String defaultCode;


    public TagEntity() {
    }

    public TagEntity(Integer id, String name, Date createTime) {
        this.id = id;
        this.name = name;
        this.createTime = createTime;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getDefaultCode() {
        return defaultCode;
    }

    public void setDefaultCode(String defaultCode) {
        this.defaultCode = defaultCode;
    }

    /**
     * 设置：标签id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取：标签id
     */
    public Integer getId() {
        return id;
    }
    /**
     * 设置：标签名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取：标签名称
     */
    public String getName() {
        return name;
    }
    /**
     * 设置：创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取：创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }
    /**
     * 设置：更新时间
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * 获取：更新时间
     */
    public Date getUpdateTime() {
        return updateTime;
    }
}
