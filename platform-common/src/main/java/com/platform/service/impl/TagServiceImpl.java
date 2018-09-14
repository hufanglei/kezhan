package com.platform.service.impl;

import com.platform.dao.TagDao;
import com.platform.entity.TagEntity;
import com.platform.service.TagService;
import com.platform.utils.IdUtil;

import jdk.nashorn.internal.parser.Token;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Service实现类
 *
 * @author hfl
 * @date 2018-09-14 07:11:24
 */
@Service("tagService")
public class TagServiceImpl implements TagService {
    @Autowired
    private TagDao tagDao;

    @Override
    public TagEntity queryObject(Integer id) {
        return tagDao.queryObject(id);
    }

    @Override
    public List<TagEntity> queryList(Map<String, Object> map) {
        return tagDao.queryList(map);
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return tagDao.queryTotal(map);
    }

    @Override
    public int save(TagEntity tag) {
        return tagDao.save(tag);
    }

    @Override
    public int update(TagEntity tag) {
        return tagDao.update(tag);
    }

    @Override
    public int delete(Integer id) {
        return tagDao.delete(id);
    }

    @Override
    public int deleteBatch(Integer[]ids) {
        return tagDao.deleteBatch(ids);
    }

    @Override
    public TagEntity queryDefault() {
        return tagDao.queryDefault();
    }
}
