package com.platform.controller;

import com.platform.entity.TagEntity;
import com.platform.service.TagService;
import com.platform.utils.PageUtils;
import com.platform.utils.Query;
import com.platform.utils.R;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

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

    /**
     * 查看列表
     */
    @RequestMapping("/list")
//    @RequiresPermissions("tag:list")
    @ResponseBody
    public R list(@RequestParam Map<String, Object> params) {
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
        tagService.save(tag);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
//    @RequiresPermissions("tag:update")
    @ResponseBody
    public R update(@RequestBody TagEntity tag) {
        tagService.update(tag);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
//    @RequiresPermissions("tag:delete")
    @ResponseBody
    public R delete(@RequestBody Integer[]ids) {
        tagService.deleteBatch(ids);

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
