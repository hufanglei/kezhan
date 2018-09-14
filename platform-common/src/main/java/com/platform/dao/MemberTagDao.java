package com.platform.dao;

import com.platform.entity.MemberTagEntity;

/**
 * 会员标签中间表Dao
 *
 * @author hfl
 * @date 2018-09-14 10:27:42
 */
public interface MemberTagDao extends BaseDao<MemberTagEntity> {
    public MemberTagEntity query(MemberTagEntity memberTagEntity);

    public int del(MemberTagEntity memberTagEntity);
}
