package com.platform.controller;

import com.platform.entity.WechatSettingEntity;
import com.platform.service.WechatSettingService;
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
 * 公众号设置Controller
 *
 * @author hfl
 * @date 2018-09-14 05:13:43
 */
@Controller
@RequestMapping("wechatsetting")
public class WechatSettingController {
    @Autowired
    private WechatSettingService wechatSettingService;

    /**
     * 查看列表
     */
    @RequestMapping("/list")
//    @RequiresPermissions("wechatsetting:list")
    @ResponseBody
    public R list(@RequestParam Map<String, Object> params) {
        //查询列表数据
        Query query = new Query(params);

        List<WechatSettingEntity> wechatSettingList = wechatSettingService.queryList(query);
        int total = wechatSettingService.queryTotal(query);

        PageUtils pageUtil = new PageUtils(wechatSettingList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);
    }

    /**
     * 查看信息
     */
    @RequestMapping("/info/{id}")
//    @RequiresPermissions("wechatsetting:info")
    @ResponseBody
    public R info(@PathVariable("id") String id) {
        WechatSettingEntity wechatSetting = wechatSettingService.queryObject(id);

        return R.ok().put("wechatSetting", wechatSetting);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
//    @RequiresPermissions("wechatsetting:save")
    @ResponseBody
    public R save(@RequestBody WechatSettingEntity wechatSetting) {
        wechatSettingService.save(wechatSetting);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
//    @RequiresPermissions("wechatsetting:update")
    @ResponseBody
    public R update(@RequestBody WechatSettingEntity wechatSetting) {
        wechatSettingService.update(wechatSetting);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
//    @RequiresPermissions("wechatsetting:delete")
    @ResponseBody
    public R delete(@RequestBody String[]ids) {
        wechatSettingService.deleteBatch(ids);

        return R.ok();
    }

    /**
     * 查看所有列表
     */
    @RequestMapping("/queryAll")
    @ResponseBody
    public R queryAll(@RequestParam Map<String, Object> params) {

        List<WechatSettingEntity> list = wechatSettingService.queryList(params);

        return R.ok().put("list", list);
    }
}
