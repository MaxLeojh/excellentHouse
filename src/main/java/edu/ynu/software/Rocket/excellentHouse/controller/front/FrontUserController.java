package edu.ynu.software.Rocket.excellentHouse.controller.front;

import edu.ynu.software.Rocket.excellentHouse.entity.User;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by maxleo on 17-9-11.
 */

@Controller
@RequestMapping("/user")
public class FrontUserController {

    @Autowired
    UserService userService;
    /*
    register:
    1.user name
    2.user E-mail
    3.password
    4.verification code
     */
    @RequestMapping("toRegister")
    @ResponseBody
    public ModelAndView toRegister(){
        ModelAndView modelAndView = new ModelAndView("register");
        //add verification code image
        return modelAndView;
    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public void register(String userName, String Email, String passWord, String verificationCode, HttpSession session, HttpServletResponse response){
        User user = new User();
        user.setName(userName);
        user.setEmail(Email);
        user.setPassWord(passWord);
        userService.insertUser(user);
        int id = userService.getLastInsert();
        System.out.println("------------"+id);

    }
}
