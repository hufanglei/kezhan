package com.platform.controller;

import com.platform.entity.TagEntity;
import com.platform.entity.TbWeixinTokenEntity;
import com.platform.entity.WechatSettingEntity;
import com.platform.service.TagService;
import com.platform.service.TbWeixinTokenService;
import com.platform.service.WechatSettingService;
import com.platform.utils.PageUtils;
import com.platform.utils.Query;
import com.platform.utils.R;
import com.platform.weixinUtils.tag.Tag;
import com.platform.weixinUtils.tag.TagAll;
import com.platform.weixinUtils.tag.TagItem;
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

import java.util.*;

/**
 * Controller
 *
 * @author hfl
 * @date 2018-09-14 07:23:30
 */
@Controller
@RequestMapping("tag")
public class TagController {
    @Autowired
    private TagService tagService;
    @Autowired
    private WechatSettingService wechatSettingService;
    @Autowired
    private TbWeixinTokenService tbWeixinTokenService;

    /**
     * 查看列表
     */
    @RequestMapping("/list")
//    @RequiresPermissions("tag:list")
    @ResponseBody
    public R list(@RequestParam Map<String, Object> params) {
        List<TbWeixinTokenEntity> tbWeixinTokenEntities = tbWeixinTokenService.queryList(new HashMap<>());
        WechatSettingEntity wechatSettingEntity = null;
        TbWeixinTokenEntity tbWeixinTokenEntity = null;
        Token token = null;
        String accessToken="";
        if(tbWeixinTokenEntities.size()==0){
            List<WechatSettingEntity> wechatSettingEntities = wechatSettingService.queryList(new HashMap<>());
             wechatSettingEntity = wechatSettingEntities.get(0);
             token = WeiXinUtil.getToken(wechatSettingEntity.getAppid(), wechatSettingEntity.getAppsecret());
            accessToken = token.getAccessToken();
        }else{
             tbWeixinTokenEntity = tbWeixinTokenEntities.get(0);
            accessToken = tbWeixinTokenEntity.getToken();
        }
        if(null != accessToken && !"".equals(accessToken)){
            //创建菜单
            TagAll tagAll = TagUtil.getTag(accessToken);
            if(tagAll!=null && tagAll.getTags().size()>0){
                ArrayList<TagItem> tags = tagAll.getTags();
                boolean flag = true;
                for (TagItem t : tags){
                     flag = true;
                    TagEntity tag = new TagEntity(t.getId(), t.getName(), new Date());
                    List<TagEntity> tagEntities = tagService.queryList(params);
                    for (TagEntity t1: tagEntities){
                        if(t1.getId()==t.getId()){
                           flag = false;
                        }
                    }
                    if(flag)tagService.save(tag);
                }
            }
        }

        //查询列表数据
        Query query = new Query(params);

        List<TagEntity> tagList = tagService.queryList(query);
        int total = tagService.queryTotal(query);

        PageUtils pageUtil = new PageUtils(tagList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);
    }

    /**
     * 查看信息
     */
    @RequestMapping("/info/{id}")
//    @RequiresPermissions("tag:info")
    @ResponseBody
    public R info(@PathVariable("id") Integer id) {
        TagEntity tag = tagService.queryObject(id);

        return R.ok().put("tag", tag);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
//    @RequiresPermissions("tag:save")
    @ResponseBody
    public R save(@RequestBody TagEntity tag) {
        List<TbWeixinTokenEntity> tbWeixinTokenEntities = tbWeixinTokenService.queryList(new HashMap<>());
        WechatSettingEntity wechatSettingEntity = null;
        TbWeixinTokenEntity tbWeixinTokenEntity = null;
        Token token = null;
        String accessToken="";
        if(tbWeixinTokenEntities.size()==0){
            List<WechatSettingEntity> wechatSettingEntities = wechatSettingService.queryList(new HashMap<>());
            wechatSettingEntity = wechatSettingEntities.get(0);
            token = WeiXinUtil.getToken(wechatSettingEntity.getAppid(), wechatSettingEntity.getAppsecret());
            accessToken = token.getAccessToken();
        }else{
            tbWeixinTokenEntity = tbWeixinTokenEntities.get(0);
            accessToken = tbWeixinTokenEntity.getToken();
        }
        if(null != accessToken && !"".equals(accessToken) ){
            //创建菜单
            Tag tag1 = TagUtil.createTag(tag.getName(), accessToken);
            //判断菜单创建结果
            if(tag1!=null){
                tag.setId(tag1.getId());
                tag.setCreateTime(new Date());
                tagService.save(tag);
                //log.info("菜单创建成功");
                System.out.println("标签创建成功!");
            }else {
                // log.info("菜单创建失败");
                System.out.println("标签创建失败!");
            }
        }
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @ResponseBody
    public R update(@RequestBody TagEntity tag) {
        List<TbWeixinTokenEntity> tbWeixinTokenEntities = tbWeixinTokenService.queryList(new HashMap<>());
        WechatSettingEntity wechatSettingEntity = null;
        TbWeixinTokenEntity tbWeixinTokenEntity = null;
        Token token = null;
        String accessToken="";
        if(tbWeixinTokenEntities.size()==0){
            List<WechatSettingEntity> wechatSettingEntities = wechatSettingService.queryList(new HashMap<>());
            wechatSettingEntity = wechatSettingEntities.get(0);
            token = WeiXinUtil.getToken(wechatSettingEntity.getAppid(), wechatSettingEntity.getAppsecret());
            accessToken = token.getAccessToken();
        }else{
            tbWeixinTokenEntity = tbWeixinTokenEntities.get(0);
            accessToken = tbWeixinTokenEntity.getToken();
        }
        if(null != accessToken && !"".equals(accessToken)){
            boolean result = TagUtil.updateTag(tag.getId(), tag.getName(), accessToken);
            //判断标签删除结果
            if(result){
                System.out.println("标签编辑成功!");
                tag.setUpdateTime(new Date());
                tagService.update(tag);
            }else {
                System.out.println("标签编辑失败!");
            }
        }

        return R.ok();
    }

    @RequestMapping("/seting")
    @ResponseBody
    public R delete(@RequestBody TagEntity tagEntity) {
        if("001".equals(tagEntity.getDefaultCode())){
            //先设置全部非默认
            List<TagEntity> list = tagService.queryList(new HashMap<>());
            for (TagEntity tag: list){
                tag.setDefaultCode("002");
                tagService.update(tag);
            }
        }
        tagEntity.setUpdateTime(new Date());
        tagService.update(tagEntity);
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @ResponseBody
    public R delete(@RequestBody Integer[]ids) {
        List<TbWeixinTokenEntity> tbWeixinTokenEntities = tbWeixinTokenService.queryList(new HashMap<>());
        WechatSettingEntity wechatSettingEntity = null;
        TbWeixinTokenEntity tbWeixinTokenEntity = null;
        Token token = null;
        String accessToken="";
        if(tbWeixinTokenEntities.size()==0){
            List<WechatSettingEntity> wechatSettingEntities = wechatSettingService.queryList(new HashMap<>());
            wechatSettingEntity = wechatSettingEntities.get(0);
            token = WeiXinUtil.getToken(wechatSettingEntity.getAppid(), wechatSettingEntity.getAppsecret());
            accessToken = token.getAccessToken();
        }else{
            tbWeixinTokenEntity = tbWeixinTokenEntities.get(0);
            accessToken = tbWeixinTokenEntity.getToken();
        }
        if(null != accessToken && !"".equals(accessToken)){
            //删除菜单
            boolean result = TagUtil.deleteTag(ids[0], accessToken);
            //判断菜单删除结果
            if(result){
                //log.info("菜单删除成功");
                tagService.deleteBatch(ids);
                System.out.println("标签删除成功!");
            }else {
                // log.info("菜单删除失败");
                System.out.println("标签删除失败!");
            }
        }
        return R.ok();
    }

    /**
     * 查看所有列表
     */
    @RequestMapping("/queryAll")
    @ResponseBody
    public R queryAll(@RequestParam Map<String, Object> params) {

        List<TagEntity> list = tagService.queryList(params);

        return R.ok().put("list", list);
    }
}
