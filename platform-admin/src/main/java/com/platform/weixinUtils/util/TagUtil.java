package com.platform.weixinUtils.util;
/**
 * 用户标签tag
 * 参考地址: https://blog.csdn.net/u011752195/article/details/81782526
 */

import com.alibaba.fastjson.JSONException;
import com.google.gson.Gson;
import com.platform.weixinUtils.tag.Tag;
import com.platform.weixinUtils.tag.TagBatch;
import com.platform.weixinUtils.tag.TagUser;
import com.platform.weixinUtils.vo.WeiXinUtil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TagUtil {

    private static Logger log = LoggerFactory.getLogger(MenuUtil.class);

    //标签创建(POST)
    private final static  String tag_create_url = "https://api.weixin.qq.com/cgi-bin/tags/create?access_token=ACCESS_TOKEN";
    //标签查询(GET)
    private final static  String tag_get_url = "https://api.weixin.qq.com/cgi-bin/tags/get?access_token=ACCESS_TOKEN";
    //标签查询(POST)
    private final static  String tag_update_url = "https://api.weixin.qq.com/cgi-bin/tags/update?access_token=ACCESS_TOKEN";
    //标签删除(POST)
    private final static  String tag_delete_url = "https://api.weixin.qq.com/cgi-bin/tags/delete?access_token=ACCESS_TOKEN";
    //获取标签下粉丝列表
    private final static  String tag_user_url = "https://api.weixin.qq.com/cgi-bin/user/tag/get?access_token=ACCESS_TOKEN";
    // 批量为用户打标签
    private final static  String tag_members_batchtagging_url = "https://api.weixin.qq.com/cgi-bin/tags/members/batchtagging?access_token=ACCESS_TOKEN";
    // 批量为用户取消标签
    private final static  String tag_members_batchuntagging_url = "https://api.weixin.qq.com/cgi-bin/tags/members/batchuntagging?access_token=ACCESS_TOKEN";
    //获取用户身上的标签列表
    private final static  String tag_getidlist_url = "https://api.weixin.qq.com/cgi-bin/tags/getidlist?access_token=ACCESS_TOKEN";



    /**
     * 创建标签
     */
    public static boolean createTag(String tagName , String accessToken) {
        boolean result = false;
        String url = tag_create_url.replace("ACCESS_TOKEN", accessToken);
        JSONObject j = new JSONObject();
        JSONObject group = new JSONObject();
        try {
            j.put("name", tagName);
            group.put("tag", j);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        System.out.println(group.toString());
        //发起POST请求创建标签
        JSONObject jsonObject = WeiXinUtil.httpsRequset(url, "POST", group.toString());
        try {
            JSONObject jsonTag = jsonObject.getJSONObject("tag");
            Tag tag = new Gson().fromJson(jsonTag.toString(), Tag.class);
            System.out.println(tag);
            result = true;
        }catch (Exception e){
            result = false;
            int errorCode = jsonObject.getInt("errcode");  String errorMsg = jsonObject.getString("errmsg");
            System.out.println("创建标签失败errCode：{} errmsg:{}" + errorCode + "====" + errorMsg);
        }
        return result;
    }


    /**
     * 查询标签
     */
    public static  String getTag(String accessToken){
        String result = null;
        String requestUrl = tag_get_url.replace("ACCESS_TOKEN" ,accessToken);

        //发起GET请求查询菜单
        JSONObject jsonObject = WeiXinUtil.httpsRequset(requestUrl, "GET", null);
        if (null != jsonObject){
            result = jsonObject.toString();
        }
        return  result;
    }

    /**
     * 删除标签
     */
    public static  boolean deleteTag(Integer id, String accessToken){
        boolean result = false;
        String requestUrl = tag_delete_url.replace("ACCESS_TOKEN" ,accessToken);
        JSONObject j = new JSONObject();
        JSONObject tag = new JSONObject();
        try {
            j.put("id", id);
            tag.put("tag", j);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        JSONObject jsonObject = WeiXinUtil.httpsRequset(requestUrl, "POST", tag.toString());
        if (null != jsonObject){
            int errorCode = jsonObject.getInt("errcode");
            String errorMsg = jsonObject.getString("errmsg");
            if(0 == errorCode){
                result = true;
            }else {
                result = false;
                //log.error("删除菜单失败errCode：{} errmsg:{}" ,errorCode ,errorMsg);
                System.out.println("删除tag失败errCode：{} errmsg:{}" +errorCode +"===="+errorMsg);
            }
        }
        return  result;
    }

    /**
     * 修改标签名
     * @param tagId
     * @param newTagName
     * @return 如 {"errcode": 0, "errmsg": "ok"}
     */
    public static boolean updateTag(Integer tagId, String newTagName, String accessToken){
        boolean result = false;
        String requestUrl = tag_update_url.replace("ACCESS_TOKEN" ,accessToken);

        JSONObject j = new JSONObject();
        JSONObject tag = new JSONObject();
        try {
            j.put("id", tagId);
            j.put("name",newTagName);
            tag.put("tag",j);
        } catch (JSONException e) {
            e.printStackTrace();
        }

        JSONObject jsonObject = WeiXinUtil.httpsRequset(requestUrl, "POST", tag.toString());

        if (null != jsonObject){
            int errorCode = jsonObject.getInt("errcode");
            String errorMsg = jsonObject.getString("errmsg");
            if(0 == errorCode){
                result = true;
                System.out.println("编辑标签成功");
            }else {
                result = false;
                //log.error("删除菜单失败errCode：{} errmsg:{}" ,errorCode ,errorMsg);
                System.out.println("编辑tag失败errCode：{} errmsg:{}" +errorCode +"===="+errorMsg);
            }
        }
        return  result;
    }

    /**
     * 获取分组下粉丝列表
     * @param id 分组id
     * @return 如 {"errcode": 0, "errmsg": "ok"}
     */
    public static TagUser ListGroup(Integer id, String accessToken){
        String requestUrl = tag_user_url.replace("ACCESS_TOKEN" ,accessToken);

        JSONObject j = new JSONObject();
        try {
            j.put("tagid",id);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        JSONObject jsonObject = WeiXinUtil.httpsRequset(requestUrl, "GET", j.toString());
        try {
            int count = jsonObject.getInt("count");
            if(count==0){
                System.out.println("标签下没有用户");
                return null;
            }
            String next_openid = jsonObject.getString("next_openid");
            JSONObject data = jsonObject.getJSONObject("data");
            JSONArray jsonArray = data.getJSONArray("openid");
            TagUser tagUser = new Gson().fromJson(jsonObject.toString(), TagUser.class);
            System.out.println(tagUser);
            return tagUser;
        }catch (Exception e){
            int errorCode = jsonObject.getInt("errcode");  String errorMsg = jsonObject.getString("errmsg");
            System.out.println("获取分组下粉丝列表失败errCode：{} errmsg:{}" + errorCode + "====" + errorMsg);
            return  null;
        }
    }

    /**
     * 批量为用户打标签
     */
    public static boolean batchtagging(TagBatch tagBatch, String accessToken){
        boolean result = false;
        String requestUrl = tag_members_batchtagging_url.replace("ACCESS_TOKEN" ,accessToken);

        result = batch(tagBatch, result, requestUrl);
        return  result;
    }

    private static boolean batch(TagBatch tagBatch, boolean result, String requestUrl) {
        String str = "";
        try {
             str = new Gson().toJson(tagBatch);
        } catch (JSONException e) {
            e.printStackTrace();
        }

        JSONObject jsonObject = WeiXinUtil.httpsRequset(requestUrl, "POST", str);

        if (null != jsonObject){
            int errorCode = jsonObject.getInt("errcode");
            String errorMsg = jsonObject.getString("errmsg");
            if(0 == errorCode){
                result = true;
            }else {
                result = false;
                System.out.println("" +errorCode +"===="+errorMsg);
            }
        }
        return result;
    }

    // 批量为用户取消标签
    public static boolean batchuntagging(TagBatch tagBatch, String accessToken){
        boolean result = false;
        String requestUrl = tag_members_batchuntagging_url.replace("ACCESS_TOKEN" ,accessToken);
        result = batch(tagBatch, result, requestUrl);
        return  result;
    }


    /**
     *  获取用户身上的标签列表
     */
    public static JSONArray getTagidlist(String openid , String accessToken) {
        String url = tag_getidlist_url.replace("ACCESS_TOKEN", accessToken);
        JSONObject j = new JSONObject();
        try {
            j.put("openid", openid);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        //发起POST请求
        JSONObject jsonObject = WeiXinUtil.httpsRequset(url, "POST", j.toString());
        try {
            JSONArray tagid_list = jsonObject.getJSONArray("tagid_list");
            System.out.println(tagid_list.toString());
            return tagid_list;
        }catch (Exception e){
            int errorCode = jsonObject.getInt("errcode");  String errorMsg = jsonObject.getString("errmsg");
            System.out.println("创建标签失败errCode：{} errmsg:{}" + errorCode + "====" + errorMsg);
            return null;
        }
    }





}
