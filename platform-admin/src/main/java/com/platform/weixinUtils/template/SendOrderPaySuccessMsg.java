package com.platform.weixinUtils.template;



import com.platform.weixinUtils.util.Parameter;
import com.platform.weixinUtils.vo.Token;
import com.platform.weixinUtils.vo.WeiXinUtil;
import net.sf.json.JSONObject;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;


/**
 * Created by panweiji on 2016/12/30 0030.
 */
public class SendOrderPaySuccessMsg {
    //日志类
    private static Logger logger = Logger.getLogger(String.valueOf(SendOrderPaySuccessMsg.class));

    /**
     * 发送模板消息
     * appId 公众账号的唯一标识
     * appSecret 公众账号的密钥
     * openId 用户标识
     */
    public void sendTemplateMessage(String appId, String appSecret, String openId) {
        Token token = WeiXinUtil.getToken(appId, appSecret);
        String access_token = token.getAccessToken();
        String url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=" + access_token;
        WXTemplate temp = new WXTemplate();
        temp.setUrl("http://www.6weiyi.com");
        temp.setTouser(openId);
        temp.setTopcolor("#000000");
//      temp.setTemplate_id("ngqIpbwh8bUfcSsECmogfXcV14J0tQlEpBO27izEYtY");
        temp.setTemplate_id("UokFDiTmQ3j1vpfUQdrcsrDxRMTHr7iSMwF0zA8Z7sE");
        Map<String, TemplateData> m = new HashMap<String, TemplateData>();
        TemplateData first = new TemplateData();
        first.setColor("#000000");
        first.setValue("金乐乐支付成功模板信息");
        m.put("first", first);
        TemplateData name = new TemplateData();
        name.setColor("#000000");
        name.setValue("99");
        m.put("orderMoneySum", name);
        TemplateData wuliu = new TemplateData();
        wuliu.setColor("#000000");
        wuliu.setValue("金乐乐商品信息测试");
        m.put("orderProductName", wuliu);
  /*      TemplateData orderNo = new TemplateData();
        orderNo.setColor("#000000");
        orderNo.setValue("**666666");
        m.put("orderNo", orderNo);
        TemplateData receiveAddr = new TemplateData();
        receiveAddr.setColor("#000000");
        receiveAddr.setValue("*测试模板");
        m.put("receiveAddr", receiveAddr);*/
        TemplateData remark = new TemplateData();
        remark.setColor("#000000");
        remark.setValue("***备注说明***");
        m.put("Remark", remark);
        temp.setData(m);
        String jsonString = JSONObject.fromObject(temp).toString();
        JSONObject jsonObject = WeiXinUtil.httpsRequset(url, "POST", jsonString);
        System.out.println(jsonObject);
        int result = 0;
        if (null != jsonObject) {
            if (0 != jsonObject.getInt("errcode")) {
                result = jsonObject.getInt("errcode");
                //  logger.info("错误 errcode:{} errmsg:{}", jsonObject.getInt("errcode"), jsonObject.getString("errmsg"));
            }
        }
        logger.info("模板消息发送结果：" + result);
    }

    /**
     * 商城发货通知提醒
     * appId 公众账号的唯一标识
     * appSecret 公众账号的密钥
     * openId 用户标识
     */
    public  static  void sendGoodNotice(String openId ,String orderno, String orderType,String Comp,String logicno) {
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        String access_token = token.getAccessToken();
        String url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=" + access_token;
        WXTemplate temp = new WXTemplate();
        if("006".equals(orderType)){
            temp.setUrl("http://www.6weiyi.com/jinlele/mall#/orderdetailfor"+orderno+"with"+orderType);
        }else{
            temp.setUrl("http://www.6weiyi.com/jinlele/mall#/proccheck/"+orderType+"/"+orderno);
        }

        //http://www.6weiyi.com/jinlele/mall#/orderdetailfor/002/20170322131500012689
        //orderdetailfor{orderNo}with{orderType}
        temp.setTouser(openId);
        temp.setTopcolor("#000000");
        temp.setTemplate_id("FnImEitwXDUMx8Chdnz2y371CRKRsYFJlpWkTmaEDAs");
        Map<String, TemplateData> m = new HashMap<String, TemplateData>();
        TemplateData first = new TemplateData();
        first.setColor("#000000");
        first.setValue("亲，宝贝已经启程了，好想快点来到你身边");
        m.put("first", first);
        TemplateData expressComp = new TemplateData();
        expressComp.setColor("#000000");
        expressComp.setValue(Comp);
        m.put("delivername", expressComp);
        TemplateData expressNo = new TemplateData();
        expressNo.setColor("#000000");
        expressNo.setValue(logicno);
        m.put("ordername", expressNo);
        TemplateData remark = new TemplateData();
        remark.setColor("#000000");
        remark.setValue("点击进入我的订单，查询物流进度，祝您生活愉快。");
        m.put("remark", remark);
        temp.setData(m);
        String jsonString = JSONObject.fromObject(temp).toString();
        JSONObject jsonObject = WeiXinUtil.httpsRequset(url, "POST", jsonString);
        System.out.println(jsonObject);
        int result = 0;
        if (null != jsonObject) {
            if (0 != jsonObject.getInt("errcode")) {
                result = jsonObject.getInt("errcode");
                //  logger.info("错误 errcode:{} errmsg:{}", jsonObject.getInt("errcode"), jsonObject.getString("errmsg"));
            }
        }
        logger.info("模板消息发送结果：" + result);
    }



    /**
     * 后台定价提醒
     * appId 公众账号的唯一标识
     * appSecret 公众账号的密钥
     * openId 用户标识
     */
    public  static  void fixPriceNotice(String openId ,String orderno, String orderType,Double oldPrice,Double newPrice,String orderStatus) {
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        String access_token = token.getAccessToken();
        String url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=" + access_token;
        WXTemplate temp = new WXTemplate();
        if("002".equals(orderType))
            temp.setUrl("http://www.6weiyi.com/jinlele/mall#/procfixprice/repair"+orderno+"with"+orderType+"with"+orderStatus);
        if("004".equals(orderType))
            temp.setUrl("http://www.6weiyi.com/jinlele/mall#/cfmrecycle"+orderno+"with"+orderType+"with"+orderStatus);
        if("005".equals(orderType))
            temp.setUrl("http://www.6weiyi.com/jinlele/mall#/cfmexchange"+orderno+"with"+orderType+"with"+orderStatus);
        temp.setTouser(openId);
        temp.setTopcolor("#000000");
        temp.setTemplate_id("Kz1yHrUwGlx2gq5FomS5El8bpaVdr2Akrs2Ul5cJCvk");
        Map<String, TemplateData> m = new HashMap<String, TemplateData>();
        TemplateData first = new TemplateData();
        first.setColor("#000000");
        first.setValue("您好，你的商品已经定价了。");
        m.put("first", first);
        TemplateData keyword1 = new TemplateData();
        keyword1.setColor("#000000");
        keyword1.setValue(orderno);
        m.put("keyword1", keyword1);
        TemplateData keyword2 = new TemplateData();
        keyword2.setColor("#000000");
        keyword2.setValue(String.valueOf(oldPrice));
        m.put("keyword2", keyword2);
        TemplateData keyword3 = new TemplateData();
        keyword3.setColor("#000000");
        keyword3.setValue(String.valueOf(newPrice));
        m.put("keyword3", keyword3);
        TemplateData remark = new TemplateData();
        remark.setColor("#000000");
        remark.setValue("请继续操作。");
        m.put("remark", remark);
        temp.setData(m);
        String jsonString = JSONObject.fromObject(temp).toString();
        JSONObject jsonObject = WeiXinUtil.httpsRequset(url, "POST", jsonString);
        System.out.println(jsonObject);
        int result = 0;
        if (null != jsonObject) {
            if (0 != jsonObject.getInt("errcode")) {
                result = jsonObject.getInt("errcode");
                //  logger.info("错误 errcode:{} errmsg:{}", jsonObject.getInt("errcode"), jsonObject.getString("errmsg"));
            }
        }
        logger.info("模板消息发送结果：" + result);
    }

    /**
     * 检测完成提醒
     * appId 公众账号的唯一标识
     * appSecret 公众账号的密钥
     * openId 用户标识
     */
    public  static  void testingNotice(String openId ,String orderno, String orderType,Double oldPrice,Double newPrice,String orderStatus) {
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        String access_token = token.getAccessToken();
        String url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=" + access_token;
        WXTemplate temp = new WXTemplate();
        if("001".equals(orderType))
            temp.setUrl("http://www.6weiyi.com/jinlele/mall#/procrefurbish"+orderno+"with"+orderType+"with"+orderStatus);
        if("002".equals(orderType))
            temp.setUrl("http://www.6weiyi.com/jinlele/mall#/procrepair"+orderno+"with"+orderType+"with"+orderStatus);
        if("005".equals(orderType) || "004".equals(orderType))
            temp.setUrl("http://www.6weiyi.com/jinlele/mall#/actualprice"+orderno+"with"+orderType+"with"+orderStatus);
        temp.setTouser(openId);
        temp.setTopcolor("#000000");
        temp.setTemplate_id("ixfx8SvBM377XwFON_haBYMd5SucWTvXgACKEOjeFk4");
        Map<String, TemplateData> m = new HashMap<String, TemplateData>();
        TemplateData first = new TemplateData();
        first.setColor("#000000");
        first.setValue("您好，你的商品检测完成了。");
        m.put("first", first);
        TemplateData keyword1 = new TemplateData();
        keyword1.setColor("#000000");
        keyword1.setValue(orderno);
        m.put("keyword1", keyword1);
        TemplateData keyword2 = new TemplateData();
        keyword2.setColor("#000000");
        keyword2.setValue("已检测");
        m.put("keyword2", keyword2);
        TemplateData remark = new TemplateData();
        remark.setColor("#000000");
        remark.setValue("请继续操作。");
        m.put("remark", remark);
        temp.setData(m);
        String jsonString = JSONObject.fromObject(temp).toString();
        JSONObject jsonObject = WeiXinUtil.httpsRequset(url, "POST", jsonString);
        System.out.println(jsonObject);
        int result = 0;
        if (null != jsonObject) {
            if (0 != jsonObject.getInt("errcode")) {
                result = jsonObject.getInt("errcode");
                //  logger.info("错误 errcode:{} errmsg:{}", jsonObject.getInt("errcode"), jsonObject.getString("errmsg"));
            }
        }
        logger.info("模板消息发送结果：" + result);
    }


    /**
     * 维修定价通知
     * @param
     */
    public static void repairFixprice(String openId ,double price, String orderno,String orderType){
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        String access_token = token.getAccessToken();
        String url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=" + access_token;
        WXTemplate temp = new WXTemplate();
        temp.setUrl("http://www.6weiyi.com/jinlele/mall#/procfixprice/repair/"+orderno);
        temp.setTouser(openId);
        temp.setTopcolor("#000000");
        temp.setTemplate_id("p1R6r7cRLbH4yYeTFF5EZbyk2JU4TahiUNR0wFuhOMM");
        Map<String, TemplateData> m = new HashMap<String, TemplateData>();
        TemplateData first = new TemplateData();
        first.setColor("#000000");
        first.setValue("尊敬的六唯壹用户，根据您提交的产品图片与信息，所需维修费用如下：");
        m.put("first", first);
        TemplateData keyword1 = new TemplateData();
        keyword1.setColor("#000000");
        keyword1.setValue(price+"元");
        m.put("keyword1", keyword1);
        TemplateData keyword2 = new TemplateData();
        keyword2.setColor("#000000");
        keyword2.setValue("珠宝维修");
        m.put("keyword2", keyword2);
        TemplateData keyword3 = new TemplateData();
        keyword3.setColor("#000000");
        keyword3.setValue(orderno);
        m.put("keyword3", keyword3);
        TemplateData remark = new TemplateData();
        remark.setColor("#000000");
        remark.setValue("继续操作请点击");
        m.put("remark", remark);
        temp.setData(m);
        String jsonString = JSONObject.fromObject(temp).toString();
        JSONObject jsonObject = WeiXinUtil.httpsRequset(url, "POST", jsonString);
        System.out.println(jsonObject);
        int result = 0;
        if (null != jsonObject) {
            if (0 != jsonObject.getInt("errcode")) {
                result = jsonObject.getInt("errcode");
                //  logger.info("错误 errcode:{} errmsg:{}", jsonObject.getInt("errcode"), jsonObject.getString("errmsg"));
            }
        }
        logger.info("模板消息发送结果：" + result);
    }

    /**
     * 翻新服务收货后通知要检测 的 模板
     * @param
     */
    public static void refurbishReiveive(String openId ,String type, String orderno){
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        String access_token = token.getAccessToken();
        String url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=" + access_token;
        WXTemplate temp = new WXTemplate();
        temp.setUrl("http://www.6weiyi.com/jinlele/mall#/proctest/"+type+"/"+orderno);
        temp.setTouser(openId);
        temp.setTopcolor("#000000");
        temp.setTemplate_id("npWknfwPIwC7-wavy6fbjhFNpDPHxBNmRxqsVI_OEzM");
        Map<String, TemplateData> m = new HashMap<String, TemplateData>();
        TemplateData first = new TemplateData();
        first.setColor("#000000");
        first.setValue("尊敬的六唯壹用户，您的宝贝我司已收到！查看收货证书请点击");
        m.put("first", first);
        TemplateData keyword1 = new TemplateData();
        keyword1.setColor("#000000");
        if("001".equals(type)){
            keyword1.setValue("珠宝翻新");
        }
        if("002".equals(type)){
            keyword1.setValue("珠宝维修");
        }
        if("003".equals(type)){
            keyword1.setValue("珠宝检测");
        }
        if("004".equals(type)){
            keyword1.setValue("珠宝回收");
        }
        if("005".equals(type)){
            keyword1.setValue("珠宝换款");
        }
        m.put("keyword1", keyword1);
        TemplateData keyword2 = new TemplateData();
        keyword2.setColor("#000000");
        keyword2.setValue(orderno);
        m.put("keyword2", keyword2);
        TemplateData remark = new TemplateData();
        remark.setColor("#000000");
        remark.setValue("我们下一步将为你的宝贝提供贵金属检测 服务，敬请留意！");
        m.put("remark", remark);
        temp.setData(m);
        String jsonString = JSONObject.fromObject(temp).toString();
        JSONObject jsonObject = WeiXinUtil.httpsRequset(url, "POST", jsonString);
        System.out.println(jsonObject);
        int result = 0;
        if (null != jsonObject) {
            if (0 != jsonObject.getInt("errcode")) {
                result = jsonObject.getInt("errcode");
                //  logger.info("错误 errcode:{} errmsg:{}", jsonObject.getInt("errcode"), jsonObject.getString("errmsg"));
            }
        }
        logger.info("模板消息发送结果：" + result);
    }

    /**
     * 检测进度通知
     * @param
     */
    public static void testReiveive(String openId ,String type,String orderno,String username){
        Token token = WeiXinUtil.getToken(Parameter.corId, Parameter.appsecret);
        String access_token = token.getAccessToken();
        String url = "https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=" + access_token;
        WXTemplate temp = new WXTemplate();
        temp.setUrl("http://www.6weiyi.com/jinlele/mall#/proctest/"+type+"/"+orderno);
        temp.setTouser(openId);
        temp.setTopcolor("#000000");
        temp.setTemplate_id("ixfx8SvBM377XwFON_haBYMd5SucWTvXgACKEOjeFk4");
        Map<String, TemplateData> m = new HashMap<String, TemplateData>();
        TemplateData first = new TemplateData();
        first.setColor("#000000");
        first.setValue("您的样本我们已经收到，正在送往实验室。");
        m.put("first", first);
        TemplateData keyword1 = new TemplateData();
        keyword1.setColor("#000000");
        keyword1.setValue(username);
        m.put("keyword1", keyword1);
        TemplateData keyword2 = new TemplateData();
        keyword2.setColor("#000000");
        keyword2.setValue("待检测");
        m.put("keyword2", keyword2);
        TemplateData remark = new TemplateData();
        remark.setColor("#000000");
        remark.setValue("请您耐心等待！");
        m.put("remark", remark);
        temp.setData(m);
        String jsonString = JSONObject.fromObject(temp).toString();
        JSONObject jsonObject = WeiXinUtil.httpsRequset(url, "POST", jsonString);
        System.out.println(jsonObject);
        int result = 0;
        if (null != jsonObject) {
            if (0 != jsonObject.getInt("errcode")) {
                result = jsonObject.getInt("errcode");
                //  logger.info("错误 errcode:{} errmsg:{}", jsonObject.getInt("errcode"), jsonObject.getString("errmsg"));
            }
        }
        logger.info("模板消息发送结果：" + result);
    }


    public static void main(String[] args) {
        SendOrderPaySuccessMsg sendOrderPaySuccessMsg = new SendOrderPaySuccessMsg();
        //sendOrderPaySuccessMsg.sendTemplateMessage(Parameter.corId, Parameter.appsecret, "okhnkvnWbEdBcu6Oh7j334yqyB0E");
        sendOrderPaySuccessMsg.sendGoodNotice("okhnkvvnLaxUQxAeH6v8SUcu9jZQ","20170428163500036306","005","2222","3333");
        //sendOrderPaySuccessMsg.sendTemplateMessage(Parameter.corId, Parameter.appsecret, "okhnkvvnLaxUQxAeH6v8SUcu9jZQ");
        //sendOrderPaySuccessMsg.fixPriceNotice("okhnkvvnLaxUQxAeH6v8SUcu9jZQ","222","001",100.0,90.0,"002");
       // sendOrderPaySuccessMsg.repairFixprice("okhnkvvnLaxUQxAeH6v8SUcu9jZQ", 50.00, "20170428162300035832","002");
       // sendOrderPaySuccessMsg.testReiveive("okhnkvvnLaxUQxAeH6v8SUcu9jZQ","003", "20170409121400046505","李先生");
       //sendOrderPaySuccessMsg.refurbishReiveive("okhnkvvnLaxUQxAeH6v8SUcu9jZQ","004", "20170427222800021138");
    }
}