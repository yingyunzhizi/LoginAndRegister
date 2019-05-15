package com.qf.controller;

import com.qf.utils.CheckCodeUtil;
import com.qf.utils.SendEmail;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @version 1.0
 * @data 5/15/2019 0:15
 * @user yingyunzhizi
 */
@Controller
@RequestMapping(value = "/userController")
public class UserController {

    @RequestMapping(value="/sendEmailToCheck")
    public void sendEmailToCheck(String email, HttpServletRequest req){
        String randomCode = CheckCodeUtil.getRandomCode();
        req.getSession().setAttribute("randomCode", randomCode);
        try {
            SendEmail.SendEmailInfoUser(email, "注册的验证码", "注册的验证码是:"+randomCode, "");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
