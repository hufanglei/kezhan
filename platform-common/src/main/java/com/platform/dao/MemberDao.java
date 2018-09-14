package com.platform.dao;

import com.platform.entity.MemberEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 会员信息表Dao
 *
 * @author hfl
 * @date 2018-09-14 07:49:47
 */
public interface MemberDao extends BaseDao<MemberEntity> {

    /**
     * 分页查询
     *
     * @param map 参数
     * @return list
     */
    List<MemberEntity> queryListFilter(Map<String, Object> map);
    /**
     * 分页统计总数
     *
     * @param map 参数
     * @return 总数
     */
    int queryTotalFilter(Map<String, Object> map);

   String  getTagNamesByMemberId(@Param("memberId") String memberId);

}
