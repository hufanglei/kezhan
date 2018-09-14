package com.platform.controller;

import com.platform.dto.BandTagDto;
import com.platform.entity.MemberEntity;
import com.platform.entity.MemberTagEntity;
import com.platform.service.MemberService;
import com.platform.service.MemberTagService;
import com.platform.utils.PageUtils;
import com.platform.utils.Query;
import com.platform.utils.R;
import com.platform.weixinUtils.tag.TagBatch;
import com.platform.weixinUtils.util.Parameter;
import com.platform.weixinUtils.util.TagUtil;
import com.platform.weixinUtils.vo.Token;
import com.platform.weixinUtils.vo.WeiXinUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 会员信息表Controller
 *
 * @author hfl
 * @date 2018-09-14 07:49:47
 */
@Controller
@RequestMapping("member")
public class MemberController {
    @Autowired
    private MemberService memberService;
    @Autowired
    private MemberTagService memberTagService;

    /**
     * 查看列表
     */
    @RequestMapping("/list")
//    @RequiresPermissions("member:list")
    @ResponseBody
    public R list(@RequestParam Map<String, Object> params) {
        //查询列表数据
        Query query = new Query(params);
        List<MemberEntity> memberList = null;
        int total = 0;
        if(params.get("tagId")==null || "".equals(params.get("tagId"))){
           memberList = memberService.queryList(query);
           total = memberService.queryTotal(query);
       }else{
            memberList = memberService.queryListFilter(query);
            total = memberService.queryTotalFilter(query);
       }
        PageUtils pageUtil = new PageUtils(memberList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);
    }

    /**
     * 查看信息
     */
    @RequestMapping("/info/{id}")
//    @RequiresPermissions("member:info")
    @ResponseBody
    public R info(@PathVariable("id") String id) {
        MemberEntity member = memberService.queryObject(id);

        return R.ok().put("member", member);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
//    @RequiresPermissions("member:save")
    @ResponseBody
    public R save(@RequestBody MemberEntity member) {
        memberService.save(member);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
//    @RequiresPermissions("member:update")
    @ResponseBody
    public R update(@RequestBody MemberEntity member) {
        memberService.update(member);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
//    @RequiresPermissions("member:delete")
    @ResponseBody
    public R delete(@RequestBody String[]ids) {
        memberService.deleteBatch(ids);

        return R.ok();
    }

    //buand
    @RequestMapping("/band")
    @ResponseBody
    public R band(@RequestBody BandTagDto bandTagDto) {

        ArrayList<String> openid_list = new ArrayList<>();
        Integer tagId = bandTagDto.getTagId();
        String[] ids = bandTagDto.getIds();
        for (String id: ids){
            MemberEntity memberEntity = memberService.queryObject(id);
            String openid = memberEntity.getOpenid();
            openid_list.add(openid);
        }
        TagBatch tagBatch = new TagBatch();
        tagBatch.setTagid(tagId);
        tagBatch.setOpenid_list(openid_list);
        boolean result = false ;
        //调用接口凭证
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        if(null != token){
            //创建菜单
             result = TagUtil.batchtagging(tagBatch, token.getAccessToken());
            if(result){
                for (String id: ids){
                    MemberTagEntity memberTagEntity = new MemberTagEntity(id, tagId);
                    MemberTagEntity old = memberTagService.query(memberTagEntity);
                    if(old==null) {
                        memberTagService.save(memberTagEntity);
                    }
                }
                System.out.println("用户打标签成功");
            }
            //查询菜单结果
        }
        if(!result){
            System.out.println("用户打标签失败");
        }
        return R.ok();
    }

    @RequestMapping("/unband")
    @ResponseBody
    public R unband(@RequestBody BandTagDto bandTagDto) {

        ArrayList<String> openid_list = new ArrayList<>();
        Integer tagId = bandTagDto.getTagId();
        String[] ids = bandTagDto.getIds();
        for (String id: ids){
            MemberEntity memberEntity = memberService.queryObject(id);
            String openid = memberEntity.getOpenid();
            openid_list.add(openid);
        }
        TagBatch tagBatch = new TagBatch();
        tagBatch.setTagid(tagId);
        tagBatch.setOpenid_list(openid_list);
        boolean result = false ;
        //调用接口凭证
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        if(null != token){
            //创建菜单
            result = TagUtil.batchuntagging(tagBatch, token.getAccessToken());
            if(result){
                for (String id: ids){
                    MemberTagEntity memberTagEntity = new MemberTagEntity(id, tagId);
//                    MemberTagEntity old = memberTagService.query(memberTagEntity);
//                    if(old==null) {
                        memberTagService.del(memberTagEntity);
//                    }
                }
                System.out.println("用户取消标签成功");
            }
            //查询菜单结果
        }
        if(!result){
            System.out.println("用户取消标签失败");
        }
        return R.ok();
    }

    /**
     * 查看所有列表
     */
    @RequestMapping("/queryAll")
    @ResponseBody
    public R queryAll(@RequestParam Map<String, Object> params) {

        List<MemberEntity> list = memberService.queryList(params);

        return R.ok().put("list", list);
    }
}
