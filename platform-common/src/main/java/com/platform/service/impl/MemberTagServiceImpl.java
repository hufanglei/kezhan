package com.platform.service.impl;

import com.platform.dao.MemberTagDao;
import com.platform.entity.MemberTagEntity;
import com.platform.service.MemberTagService;
import com.platform.utils.IdUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 会员标签中间表Service实现类
 *
 * @author hfl
 * @date 2018-09-14 10:14:00
 */
@Service("memberTagService")
public class MemberTagServiceImpl implements MemberTagService {
    @Autowired
    private MemberTagDao memberTagDao;

    @Override
    public MemberTagEntity queryObject(String memberId) {
        return memberTagDao.queryObject(memberId);
    }

    @Override
    public MemberTagEntity query(MemberTagEntity memberTagEntity) {
        return memberTagDao.query(memberTagEntity);
    }

    @Override
    public int del(MemberTagEntity memberTagEntity) {
        return memberTagDao.del(memberTagEntity);
    }


    @Override
    public List<MemberTagEntity> queryList(Map<String, Object> map) {
        return memberTagDao.queryList(map);
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return memberTagDao.queryTotal(map);
    }

    @Override
    public int save(MemberTagEntity memberTag) {
        return memberTagDao.save(memberTag);
    }

    @Override
    public int update(MemberTagEntity memberTag) {
        return memberTagDao.update(memberTag);
    }

    @Override
    public int delete(String memberId) {
        return memberTagDao.delete(memberId);
    }

    @Override
    public int deleteBatch(String[]memberIds) {
        return memberTagDao.deleteBatch(memberIds);
    }
}
