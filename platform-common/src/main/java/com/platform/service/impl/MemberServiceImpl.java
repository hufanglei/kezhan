package com.platform.service.impl;

import com.platform.dao.MemberDao;
import com.platform.entity.MemberEntity;
import com.platform.service.MemberService;
import com.platform.utils.IdUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 会员信息表Service实现类
 *
 * @author hfl
 * @date 2018-09-14 07:49:47
 */
@Service("memberService")
public class MemberServiceImpl implements MemberService {
    @Autowired
    private MemberDao memberDao;

    @Override
    public MemberEntity queryObjectByOpenid(String openid) {
        return memberDao.queryObjectByOpenid(openid);
    }

    @Override
    public MemberEntity queryObject(String id) {
        return memberDao.queryObject(id);
    }

    @Override
    public List<MemberEntity> queryList(Map<String, Object> map) {
        return memberDao.queryList(map);
    }

    @Override
    public List<MemberEntity> queryListFilter(Map<String, Object> map) {
        return memberDao.queryListFilter(map);
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return memberDao.queryTotal(map);
    }

    @Override
    public int queryTotalFilter(Map<String, Object> map) {
        return memberDao.queryTotalFilter(map);
    }

    @Override
    public int save(MemberEntity member) {
        member.setId(IdUtil.createIdbyUUID());
        return memberDao.save(member);
    }

    @Override
    public int update(MemberEntity member) {
        return memberDao.update(member);
    }

    @Override
    public int delete(String id) {
        return memberDao.delete(id);
    }

    @Override
    public int deleteBatch(String[]ids) {
        return memberDao.deleteBatch(ids);
    }

    @Override
    public String getTagNamesByMemberId(String memberId) {
        return memberDao.getTagNamesByMemberId(memberId);
    }
}
