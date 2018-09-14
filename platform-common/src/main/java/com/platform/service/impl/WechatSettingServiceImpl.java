package com.platform.service.impl;

import com.platform.dao.WechatSettingDao;
import com.platform.entity.WechatSettingEntity;
import com.platform.service.WechatSettingService;
import com.platform.utils.IdUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 公众号设置Service实现类
 *
 * @author hfl
 * @date 2018-09-14 05:13:43
 */
@Service("wechatSettingService")
public class WechatSettingServiceImpl implements WechatSettingService {
    @Autowired
    private WechatSettingDao wechatSettingDao;

    @Override
    public WechatSettingEntity queryObject(String id) {
        return wechatSettingDao.queryObject(id);
    }

    @Override
    public List<WechatSettingEntity> queryList(Map<String, Object> map) {
        return wechatSettingDao.queryList(map);
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return wechatSettingDao.queryTotal(map);
    }

    @Override
    public int save(WechatSettingEntity wechatSetting) {
        wechatSetting.setId(IdUtil.createIdbyUUID());
        return wechatSettingDao.save(wechatSetting);
    }

    @Override
    public int update(WechatSettingEntity wechatSetting) {
        return wechatSettingDao.update(wechatSetting);
    }

    @Override
    public int delete(String id) {
        return wechatSettingDao.delete(id);
    }

    @Override
    public int deleteBatch(String[]ids) {
        return wechatSettingDao.deleteBatch(ids);
    }
}
