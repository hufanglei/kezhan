package com.platform.weixinUtils.texts;

import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Administrator on 2016-10-12.
 */
public class Test {

    public static void main(String[] args) {
        Date date = new Date();
       // System.out.println(date.getTime());
        //Timestamp.valueOf(date.toString());
        boolean hasPermission=false;

        Pattern pattern = Pattern.compile("/admin/role/permission",Pattern.CASE_INSENSITIVE);
        Matcher matcher = pattern.matcher("/admin/role/permission/2");
        if(matcher.find()){
            hasPermission=true;
        }
        System.out.println(hasPermission);


    }
}
