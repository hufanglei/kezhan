package com.platform.service;

import com.platform.entity.MemberTagEntity;

import java.util.List;
import java.util.Map;

/**
 * 会员标签中间表Service接口
 *
 * @author hfl
 * @date 2018-09-14 10:14:00
 */
public interface MemberTagService {

    /**
     * 根据主键查询实体
     *
     * @param id 主键
     * @return 实体
     */
    MemberTagEntity queryObject(String memberId);
    /**
     * 根据主键查询实体
     *
     * @param id 主键
     * @return 实体
     */
    MemberTagEntity query(MemberTagEntity memberTagEntity);

    public int del(MemberTagEntity memberTagEntity);



    /**
     * 分页查询
     *
     * @param map 参数
     * @return list
     */
    List<MemberTagEntity> queryList(Map<String, Object> map);

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
     * @param memberTag 实体
     * @return 保存条数
     */
    int save(MemberTagEntity memberTag);

    /**
     * 根据主键更新实体
     *
     * @param memberTag 实体
     * @return 更新条数
     */
    int update(MemberTagEntity memberTag);

    /**
     * 根据主键删除
     *
     * @param memberId
     * @return 删除条数
     */
    int delete(String memberId);

    /**
     * 根据主键批量删除
     *
     * @param memberIds
     * @return 删除条数
     */
    int deleteBatch(String[] memberIds);
}
