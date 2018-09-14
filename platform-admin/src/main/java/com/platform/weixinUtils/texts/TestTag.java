package com.platform.weixinUtils.texts;

import com.platform.weixinUtils.tag.TagBatch;
import com.platform.weixinUtils.tag.TagUser;
import com.platform.weixinUtils.util.Parameter;
import com.platform.weixinUtils.util.TagUtil;
import com.platform.weixinUtils.vo.Token;
import com.platform.weixinUtils.vo.WeiXinUtil;
import net.sf.json.JSONArray;
import org.junit.Test;

import java.util.ArrayList;

public class TestTag {

    //测试查询标签
    @Test
    public  void getTag() {
        //调用接口凭证
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        if(null != token){
            //创建菜单
            String result = TagUtil.getTag(token.getAccessToken());
            //查询菜单结果
            System.out.println("查看标签查询结果:===" + result);
        }
    }

    //测试标签创建
    //@Test
    public  void createTag() {
        String name = "测试组6";
        //调用接口凭证
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        if(null != token){
            //创建菜单
            boolean result = TagUtil.createTag(name, token.getAccessToken());

            //判断菜单创建结果
            if(result){
                //log.info("菜单创建成功");
                System.out.println("标签创建成功!");
            }else {
               // log.info("菜单创建失败");
                System.out.println("标签创建失败!");
            }
        }
    }


    //删除标签
    @Test
    public  void deleteTag() {
        int id = 104;
        //调用接口凭证
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        if(null != token){
            //删除菜单
            boolean result = TagUtil.deleteTag(id, token.getAccessToken());

            //判断菜单删除结果
            if(result){
                //log.info("菜单删除成功");
                System.out.println("标签删除成功!");
            }else {
               // log.info("菜单删除失败");
                System.out.println("标签删除失败!");
            }
        }
    }

    //编辑标签
    @Test
    public  void updateTag() {
        int id = 103;
        String name="测试组4";
        //调用接口凭证
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        if(null != token){
            //删除菜单
            boolean result = TagUtil.updateTag(id, name, token.getAccessToken());
            //判断标签删除结果
            if(result){
                System.out.println("标签编辑成功!");
            }else {
                System.out.println("标签编辑失败!");
            }
        }
    }

    //获取标签下粉丝列表
    @Test
    public  void ListGroup() {
        int id = 103;
        //调用接口凭证
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        if(null != token){
            //创建菜单
            TagUser tagUser = TagUtil.ListGroup(id, token.getAccessToken());
            //查询菜单结果
            System.out.println("查看标签查询结果:===" + tagUser);
        }
    }
    //批量为用户打标签
    @Test
    public  void batchtagging() {
        TagBatch tagBatch = new TagBatch();
        tagBatch.setTagid(102);
        ArrayList<String> openid_list = new ArrayList<>();
        openid_list.add("o3Y440m_gX2EhfjkybvHOXlXO2OM");
//        openid_list.add("o3Y440uhbEWdhiOwJjdn-u-g4f8M");
        tagBatch.setOpenid_list(openid_list);
        //调用接口凭证
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        if(null != token){
            //创建菜单
            boolean result = TagUtil.batchtagging(tagBatch, token.getAccessToken());
            if(result){
                System.out.println("批量为用户打标签成功");
            }else{
                System.out.println("批量为用户打标签失败");
            }
            //查询菜单结果
            System.out.println("查看标签查询结果:===" + result);
        }
    }
    //批量为用户取消标签
    @Test
    public  void batchuntagging() {
        TagBatch tagBatch = new TagBatch();
        tagBatch.setTagid(103);
        ArrayList<String> openid_list = new ArrayList<>();
        openid_list.add("o3Y440m_gX2EhfjkybvHOXlXO2OM");
        openid_list.add("o3Y440uhbEWdhiOwJjdn-u-g4f8M");
        tagBatch.setOpenid_list(openid_list);
        //调用接口凭证
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        if(null != token){
            //创建菜单
            boolean result = TagUtil.batchuntagging(tagBatch, token.getAccessToken());
            if(result){
                System.out.println("批量为用户取消标签成功");
            }else{
                System.out.println("批量为用户取消标签失败");
            }
            //查询菜单结果
            System.out.println("查看标签查询结果:===" + result);
        }
    }
    //测试用户下的标签
    @Test
    public  void getTagidlist() {
        String openId = "o3Y440m_gX2EhfjkybvHOXlXO2OM";
        //调用接口凭证
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        if(null != token){
            JSONArray jsonArray = TagUtil.getTagidlist(openId, token.getAccessToken());
            if(jsonArray!=null && jsonArray.size()>0){
                for (int i=0;i<jsonArray.size();i++){
                    System.out.println(jsonArray.getString(i));
                }
            }else{
                System.out.println("没有查询到标签");
            }
        }
    }


}
