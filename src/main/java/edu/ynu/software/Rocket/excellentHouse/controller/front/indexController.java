package edu.ynu.software.Rocket.excellentHouse.controller.front;

import edu.ynu.software.Rocket.excellentHouse.entity.User;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by August on 2017/9/4.
 */
@Controller
@RequestMapping("/index")
public class indexController {
    @Autowired
    UserService userService;

    @RequestMapping(value = "/show")
    @ResponseBody
    public ModelAndView index(){
        ModelAndView mav = new ModelAndView();

        List<User> userList = userService.selectAllUser();

        mav.addObject("userList", userList);
        mav.setViewName("index");
        return mav;
    }
}
