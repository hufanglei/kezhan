package com.platform.controller.weixin;

import com.platform.entity.*;
import com.platform.service.*;
import com.platform.util.ApiBaseAction;
import com.platform.utils.IdUtil;
import com.platform.utils.SHA1;
import com.platform.weixinUtils.tag.TagBatch;
import com.platform.weixinUtils.util.AdvancedUtil;
import com.platform.weixinUtils.util.Parameter;
import com.platform.weixinUtils.util.TagUtil;
import com.platform.weixinUtils.vo.Token;
import com.platform.weixinUtils.vo.UserInfo;
import com.platform.weixinUtils.vo.WeiXinUtil;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

@RestController
@RequestMapping("/weixin")
public class HomeController extends ApiBaseAction {
    @Autowired
    private MemberService memberService;
    @Autowired
    private TagService tagService;
    @Autowired
    private MemberTagService memberTagService;
    @Autowired
    private WechatSettingService wechatSettingService;
    @Autowired
    private TbWeixinTokenService tbWeixinTokenService;
//    private String Token = "yapeS8jTRa5df3OVgIOdD4C7IkoFSGLw";

    @RequestMapping("/index")
    public void index(HttpServletRequest request, HttpServletResponse response, @RequestParam Map<String, String> params) {
        System.out.println("进入chat");
        boolean isGet = request.getMethod().toLowerCase().equals("get");
        if (isGet) {
            String signature = request.getParameter("signature");
            String timestamp = request.getParameter("timestamp");
            String nonce = request.getParameter("nonce");
            String echostr = request.getParameter("echostr");
            System.out.println(signature);
            System.out.println(timestamp);
            System.out.println(nonce);
            System.out.println(echostr);
            access(request, response);
        } else {
            // 进入POST聊天处理
            System.out.println("enter post");
            try {
                // 接收消息并返回消息
                acceptMessage(request, response);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private String access(HttpServletRequest request,
                          HttpServletResponse response) {
        List<WechatSettingEntity> wechatSettingEntities = wechatSettingService.queryList(new HashMap<>());
        WechatSettingEntity wechatSettingEntity = wechatSettingEntities.get(0);
        // 验证URL真实性
        System.out.println("进入验证access");
        String signature = request.getParameter("signature");// 微信加密签名
        String timestamp = request.getParameter("timestamp");// 时间戳
        String nonce = request.getParameter("nonce");// 随机数
        String echostr = request.getParameter("echostr");// 随机字符串
        List<String> params = new ArrayList<String>();
        params.add(wechatSettingEntity.getToken());
        params.add(timestamp);
        params.add(nonce);
        // 1. 将token、timestamp、nonce三个参数进行字典序排序
        Collections.sort(params, new Comparator<String>() {
            public int compare(String o1, String o2) {
                return o1.compareTo(o2);
            }
        });
        // 2. 将三个参数字符串拼接成一个字符串进行sha1加密
        String temp = SHA1.encode(params.get(0) + params.get(1) + params.get(2));
        if (temp.equals(signature)) {
            try {
                response.getWriter().write(echostr);
                System.out.println("成功返回 echostr：" + echostr);
                return echostr;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        System.out.println("失败 认证");
        return null;
    }

    private synchronized void acceptMessage(HttpServletRequest request,
                                            HttpServletResponse response) throws IOException {
        // 处理接收消息
        ServletInputStream in = request.getInputStream();

        // ToUserName 开发者微信号
        // FromUserName 发送方帐号（一个OpenID）
        // CreateTime 消息创建时间 （整型）
        // MsgType 消息类型，event
        // Event 事件类型，subscribe(订阅)、unsubscribe(取消订阅)
        Map<String, String> result = getValueByTagName(in);
        String toUserName = result.get("ToUserName");
        String fromUserName = result.get("FromUserName");
        String createTime = result.get("CreateTime");
        String msgType = result.get("MsgType");
        String event = result.get("Event");
        String eventKey = result.get("EventKey");

        if ("subscribe".equals(event)) {// 关注事件
            System.out.println("---关注事件---" + fromUserName);

            String content = "欢迎关注";

            StringBuffer str = new StringBuffer();
            str.append("<xml>");
            str.append("<ToUserName><![CDATA[" + fromUserName
                    + "]]></ToUserName>");
            str.append("<FromUserName><![CDATA[" + toUserName
                    + "]]></FromUserName>");
            str.append("<CreateTime>" + createTime + "</CreateTime>");
            str.append("<MsgType><![CDATA[text]]></MsgType>");
            str.append("<Content><![CDATA[" + content + "]]></Content>");
            str.append("</xml>");
            response.setContentType("application/json; charset=Utf-8");
            response.getWriter().write(str.toString());


            //根据openid获取用户信息


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

            UserInfo userInfo = AdvancedUtil.getUserInfo(accessToken, fromUserName);
            String openid = userInfo.getOpenid();
            //添加或者更新用户
            MemberEntity memberEntity = memberService.queryObjectByOpenid(openid);
            if(memberEntity==null){
                memberEntity.setId(IdUtil.createIdbyUUID());
                memberEntity.setOpenid(openid);
                memberEntity.setNickName(userInfo.getNickname());
                memberEntity.setAvatar(userInfo.getHeadimgurl());
                memberService.save(memberEntity);
            }else{
                memberEntity.setNickName(userInfo.getNickname());
                memberEntity.setAvatar(userInfo.getHeadimgurl());
                memberService.update(memberEntity);
            }

            //FromUserName ==openid 给客户打上默认的标签
            TagEntity tagEntity = tagService.queryDefault();
            TagBatch tagBatch = new TagBatch();
            tagBatch.setTagid(tagEntity.getId());
            ArrayList<String> openid_list = new ArrayList<>();
            openid_list.add(openid);
            tagBatch.setOpenid_list(openid_list);
            //调用接口凭证
            if(null != token){
                //创建菜单
                boolean r = TagUtil.batchtagging(tagBatch, token.getAccessToken());
                if(r){
                    memberTagService.save(new MemberTagEntity(memberEntity.getId(), tagEntity.getId()));
                    System.out.println("批量为用户打标签成功");
                }else{
                    System.out.println("批量为用户打标签失败");
                }
                //查询菜单结果
                System.out.println("查看标签查询结果:===" + result);
            }

        } else if ("unsubscribe".equals(event)) {
            System.out.println("---取消关注---" + fromUserName);
        }

    }


    public Map<String, String> getValueByTagName(InputStream inputStream) {
        Map<String, String> result = new HashMap<String, String>();

        try {
            SAXReader reader = new SAXReader();
            Document doc = reader.read(inputStream);
            if (doc == null) {
                return new HashMap<>();
            }

            // 得到xml根元素
            Element root = doc.getRootElement();
            // 得到根元素的所有子节点
            List<Element> elementList = root.elements();

            // 遍历所有子节点
            for (Element e : elementList) {
                result.put(e.getName(), e.getText());
            }
            // 释放资源
            inputStream.close();
            inputStream = null;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }



}
