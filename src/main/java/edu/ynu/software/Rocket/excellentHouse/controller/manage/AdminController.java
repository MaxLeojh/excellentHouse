package edu.ynu.software.Rocket.excellentHouse.controller.manage;

import com.alibaba.fastjson.JSONObject;
import edu.ynu.software.Rocket.excellentHouse.entity.Admin;
import edu.ynu.software.Rocket.excellentHouse.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 管理员Controller
 * Created by August on 2017/9/19.
 */
@Controller
@RequestMapping(value = "admin")
public class AdminController {

    @Autowired
    AdminService adminService;

    /**
     * 跳转到登录
     */
    @RequestMapping(value = "toLogin", method = RequestMethod.GET)
    public ModelAndView toLogin() {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("mLogin");
        return mav;
    }

    /**
     * 管理员登录
     */
    @RequestMapping(value = "login", method = RequestMethod.POST)
    public void login(String name, String password, HttpSession session, HttpServletResponse response) throws IOException {
        JSONObject jsonObject = new JSONObject();

        List<Admin> adminList = new ArrayList<Admin>();
        adminList = adminService.selectByName(name);

        if (adminList == null) {
            jsonObject.put("result", "fail");
            jsonObject.put("message", "no admin");
        }
        else if (adminList.get(0).getPassword().equals(password)) {
            Admin admin = adminList.get(0);
            session.setAttribute("admin", admin);
            jsonObject.put("result", "success");
        }
        else {
            jsonObject.put("result", "fail");
            jsonObject.put("message", "please call 110");
        }

        response.getWriter().print(jsonObject.toString());
    }
}
