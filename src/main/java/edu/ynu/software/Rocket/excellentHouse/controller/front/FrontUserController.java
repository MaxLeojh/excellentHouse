package edu.ynu.software.Rocket.excellentHouse.controller.front;

import com.alibaba.fastjson.JSONObject;
import edu.ynu.software.Rocket.excellentHouse.entity.User;
import edu.ynu.software.Rocket.excellentHouse.service.EmailService;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by maxleo on 17-9-11.
 */

@Controller
@RequestMapping("/user")
public class FrontUserController {

    @Autowired
    UserService userService;

    @Autowired
    EmailService emailService;


    String verCode = "2333";

    @RequestMapping("/toRegister")
    @ResponseBody
    public ModelAndView toRegister(){
        ModelAndView modelAndView = new ModelAndView("register");
        //add verification code image
        return modelAndView;
    }


    /*
    register:
    1.user name
    2.user E-mail
    3.password
    4.verification code
     */

    @ResponseBody
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public void register(String userName, String Email, String passWord, String verificationCode, HttpSession session, HttpServletResponse response) throws Exception {

        JSONObject jsonObject = new JSONObject();

        if (verificationCode.equals(verCode)){
            User user = new User();
            user.setName(userName);
            user.setEmail(Email);
            user.setPassWord(passWord);
            int status = userService.insertUser(user);
            if (status >0) {
                user.setUserId(userService.getLastInsert());
                String verCode = user.getUserId().toString();
                emailService.snedVerMail(user.getEmail(),verCode,user.getName());
                jsonObject.put("result","success");
                response.getWriter().print(jsonObject.toString());
            }
            else {
                //email has already exists.
                jsonObject.put("result","fail");
                jsonObject.put("ECode",100101);
                response.getWriter().print(jsonObject.toString());
            }
        }
        else {
            //verCode error.
            jsonObject.put("result","fail");
            jsonObject.put("ECode",100102);
            response.getWriter().print(jsonObject.toString());
        }


    }

    @ResponseBody
    @RequestMapping(value = "/emailConfirm")
    public void emailConfirm(@RequestParam("code") String code){
        System.out.println("------------"+code);
        int userId = Integer.parseInt(code);//decode;
        User user = userService.selectUserById(userId);
        user.setIsEmailConfirm(true);
        userService.update(user);
    }

    @ResponseBody
    @RequestMapping("/toLogin")
    public ModelAndView toLogin(){
        ModelAndView modelAndView = new ModelAndView("userLogin");

        return modelAndView;
    }

    @ResponseBody
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void login(String name,String password, HttpSession session, HttpServletResponse response) throws IOException {
        JSONObject jsonObject = new JSONObject();

        User user = userService.getUserByName(name);
        if (user.getPassWord().equals(password)) {
            session.setAttribute("user",user);
            jsonObject.put("result","success");
            response.getWriter().print(jsonObject.toString());
        }
        else {
            jsonObject.put("result","fail");
            response.getWriter().print(jsonObject.toString());
        }
    }

}
