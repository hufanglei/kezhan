package com.platform.service.impl;

import com.platform.dao.TbWeixinTokenDao;
import com.platform.entity.TbWeixinTokenEntity;
import com.platform.service.TbWeixinTokenService;
import com.platform.utils.IdUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Service实现类
 *
 * @author hfl
 * @date 2018-09-14 16:57:05
 */
@Service("tbWeixinTokenService")
public class TbWeixinTokenServiceImpl implements TbWeixinTokenService {
    @Autowired
    private TbWeixinTokenDao tbWeixinTokenDao;



    @Override
    public TbWeixinTokenEntity queryObject(String schoolid) {
        return tbWeixinTokenDao.queryObject(schoolid);
    }

    @Override
    public List<TbWeixinTokenEntity> queryList(Map<String, Object> map) {
        return tbWeixinTokenDao.queryList(map);
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return tbWeixinTokenDao.queryTotal(map);
    }

    @Override
    public int save(TbWeixinTokenEntity tbWeixinToken) {
        return tbWeixinTokenDao.save(tbWeixinToken);
    }

    @Override
    public int update(TbWeixinTokenEntity tbWeixinToken) {
        return tbWeixinTokenDao.update(tbWeixinToken);
    }

    @Override
    public int delete(String schoolid) {
        return tbWeixinTokenDao.delete(schoolid);
    }

    @Override
    public int deleteBatch(String[]schoolids) {
        return tbWeixinTokenDao.deleteBatch(schoolids);
    }
}
