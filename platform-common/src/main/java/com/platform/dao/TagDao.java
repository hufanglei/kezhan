package com.platform.dao;

import com.platform.entity.TagEntity;

/**
 * Dao
 *
 * @author hfl
 * @date 2018-09-14 07:23:30
 */
public interface TagDao extends BaseDao<TagEntity> {
    TagEntity queryDefault();
}
