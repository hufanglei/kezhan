package com.platform.task;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.platform.dao.TbWeixinTokenDao;
import com.platform.entity.SysUserEntity;
import com.platform.entity.TbWeixinTokenEntity;
import com.platform.entity.WechatSettingEntity;
import com.platform.service.SysUserService;
import com.platform.service.TbWeixinTokenService;
import com.platform.service.WechatSettingService;
import com.platform.utils.Constant;
import com.platform.utils.IdUtil;
import com.platform.weixinUtils.vo.Token;
import com.platform.weixinUtils.vo.WeiXinUtil;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * 测试定时任务(演示Demo，可删除)
 * testTask为spring bean的名称
 *
 * @author lipengjun
 * @date 2017年11月18日 下午13:13:23
 */
@Component("testTask")
public class TestTask {
    private Logger logger = LoggerFactory.getLogger(getClass());


    @Autowired
    private TbWeixinTokenService weixinTokenService;



    @Autowired
    private WechatSettingService wechatSettingService;


    public void getWeixinToken() {
            logger.info("--获取微信token->>，正在被执行");
            List<WechatSettingEntity> wechatSettingEntities = wechatSettingService.queryList(new HashMap<>());
            WechatSettingEntity wechatSettingEntity = wechatSettingEntities.get(0);
            Token token = WeiXinUtil.getToken(wechatSettingEntity.getAppid(), wechatSettingEntity.getAppsecret());
            List<TbWeixinTokenEntity> tbWeixinTokenEntities = weixinTokenService.queryList(new HashMap<>());
            if(tbWeixinTokenEntities.size()==0){
                TbWeixinTokenEntity tbWeixinTokenEntity = new TbWeixinTokenEntity();
                tbWeixinTokenEntity.setCreatetime(new Date());
                tbWeixinTokenEntity.setToken(token.getAccessToken());
                tbWeixinTokenEntity.setSchoolid(IdUtil.createIdbyUUID());
                weixinTokenService.save(tbWeixinTokenEntity);
            }else{
                TbWeixinTokenEntity tbWeixinTokenEntity = tbWeixinTokenEntities.get(0);
                tbWeixinTokenEntity.setToken(token.getAccessToken());
                tbWeixinTokenEntity.setCreatetime(new Date());
                weixinTokenService.update(tbWeixinTokenEntity);
            }
        }
    }
