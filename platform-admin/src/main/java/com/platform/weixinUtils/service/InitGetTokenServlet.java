package com.platform.weixinUtils.service;



import com.platform.weixinUtils.vo.TokenThread;
import com.platform.weixinUtils.vo.WeiXinUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import static com.platform.weixinUtils.util.Parameter.appsecret;
import static com.platform.weixinUtils.vo.TokenThread.appid;


/**
 *
 */
public class InitGetTokenServlet extends HttpServlet {
    private static  final  long serialVersionUID  = 1L;
    private static Logger log =  LoggerFactory.getLogger(WeiXinUtil.class);


    public void init() throws ServletException {
        //获取web.xml中配置的参数
       appid = getInitParameter("appid");
       appsecret = getInitParameter("appsecret");

        log.info("微api appid:{}" ,appid);
        System.out.println("微api appid:{}====" +appid);
        log.info("微api appsecret:{}" ,appsecret);
        System.out.println("微api appsecret:{}====" +appsecret);

        //未配置appid ，appsecret时给出提示
        if("".equals(appid) || "".equals(appsecret)){
           // log.error("appid and appsecret配置错误,请仔细检查!");
        }else{
            //启动定时获取access_token的线程
            new Thread(new TokenThread()).start();
        }

    }
}
