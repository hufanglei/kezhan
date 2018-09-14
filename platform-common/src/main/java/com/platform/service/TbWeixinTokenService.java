package com.platform.service;

import com.platform.entity.TbWeixinTokenEntity;

import java.util.List;
import java.util.Map;

/**
 * Service接口
 *
 * @author hfl
 * @date 2018-09-14 16:57:05
 */
public interface TbWeixinTokenService {

    /**
     * 根据主键查询实体
     *
     * @param id 主键
     * @return 实体
     */
    TbWeixinTokenEntity queryObject(String schoolid);

    /**
     * 分页查询
     *
     * @param map 参数
     * @return list
     */
    List<TbWeixinTokenEntity> queryList(Map<String, Object> map);

    /**
     * 分页统计总数
     *
     * @param map 参数
     * @return 总数
     */
    int queryTotal(Map<String, Object> map);

    /**
     * 保存实体
     *
     * @param tbWeixinToken 实体
     * @return 保存条数
     */
    int save(TbWeixinTokenEntity tbWeixinToken);

    /**
     * 根据主键更新实体
     *
     * @param tbWeixinToken 实体
     * @return 更新条数
     */
    int update(TbWeixinTokenEntity tbWeixinToken);

    /**
     * 根据主键删除
     *
     * @param schoolid
     * @return 删除条数
     */
    int delete(String schoolid);

    /**
     * 根据主键批量删除
     *
     * @param schoolids
     * @return 删除条数
     */
    int deleteBatch(String[] schoolids);
}
