package com.platform.weixinUtils.service;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * pc端网页授权方法
  */
public class OAuthServlet extends HttpServlet {


    private static final long serialVersionUID = -1847238807216447030L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

         doPost(request , response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        //将请求、响应的编码设置为UTF-8（防止中文乱码）
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//        //用户同意授权后，能获取到code
//        String code = request.getParameter("code");
//        System.out.println("code===="+code);
//
//        //用户同意授权
//        if (!"authdeny".equals(code)){
//            //获取网页授权access_token
//            WeiXinOauth2Token weiXinOauth2Token = AdvancedUtil.getOauth2AccessToken(Parameter.corId, Parameter.appsecret, code);
//
//            //网页授权接口访问凭证
//            String accessToken = weiXinOauth2Token.getAccessToken();
//
//            System.out.println("accessToken===="+code);
//
//
//            //用户标示
//            String openId = weiXinOauth2Token.getOpenId();
//            System.out.println("openid==="+openId);
//            //获取用户信息
//            SNSuserInfo snSuserInfo = AdvancedUtil.getsnsUserInfo(accessToken , openId);
//
//            System.out.println("accessToken===="+code);
//
//            //设置要传递的参数
//            request.setAttribute("snSuserInfo", snSuserInfo);
//            System.out.println("snSuserInfo==="+ JSONObject.fromObject(snSuserInfo));
//        }
        //oAuth.jsp
        request.getRequestDispatcher("/oAuth.jsp").forward(request , response);
    }


//    https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx7a6a63e9ee94e24d&redirect_uri=http%3A%2F%2F139.224.54.94%2FhflBlog2%2FoauthServlet&response_type=
//    code&scope=snsapi_userinfo&state=STATE#wechat_redirect

}
