package edu.ynu.software.Rocket.excellentHouse.controller.manage;

import com.alibaba.fastjson.JSONObject;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import edu.ynu.software.Rocket.excellentHouse.entity.User;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * 后台用户管理
 * Created by August on 2017/9/18.
 */
@Controller
@RequestMapping(value = "manageUser")
public class ManageUserController {

    @Autowired
    UserService userService;

    /**
     * 用户列表页
     */
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public ModelAndView list(HttpServletRequest request, HttpSession session) {
        ModelAndView mav = new ModelAndView();

        List<UserAO> userAOList = new ArrayList<UserAO>();
        userAOList = userService.selectAllUserAO();
        mav.addObject("userAOList", userAOList);

        mav.setViewName("3");
        return mav;
    }

    /**
     * 用户详情页
     */
    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public ModelAndView detail(HttpServletRequest request, HttpSession session, Integer userId) {
        ModelAndView mav = new ModelAndView();

        UserAO userAO = new UserAO();
        userAO = userService.selectById(userId);
        mav.addObject("userAO", userAO);

        mav.setViewName("2");
        return mav;
    }

    /**
     * 用户编辑页
     */
    @RequestMapping(value = "edit", method = RequestMethod.GET)
    public ModelAndView edit(HttpServletRequest request, HttpSession session, Integer userId) {
        ModelAndView mav = new ModelAndView();

        UserAO userAO = new UserAO();
        userAO = userService.selectById(userId);
        mav.addObject("userAO", userAO);

        mav.setViewName("1");
        return mav;
    }

    /**
     * 更新用户
     */
    @RequestMapping(value = "update", method = RequestMethod.POST)
    @ResponseBody
    public void update(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException, SQLException{
        JSONObject jsonObject = new JSONObject();

        try {

            response.getWriter().print(jsonObject.toString());
        }
        catch (Exception e) {

            response.getWriter().print(jsonObject.toString());
        }
    }

    /**
     * 新建用户
     */
    @RequestMapping(value = "insert", method = RequestMethod.POST)
    @ResponseBody
    public void insert(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException, SQLException{
        JSONObject jsonObject = new JSONObject();

        try {

            response.getWriter().print(jsonObject.toString());
        }
        catch (Exception e) {

            response.getWriter().print(jsonObject.toString());
        }
    }

    /**
     * 删除用户
     */
    @RequestMapping(value = "delete", method = RequestMethod.POST)
    @ResponseBody
    public void delete(HttpServletRequest request, HttpServletResponse response, HttpSession session, Integer userId) throws IOException, SQLException{
        JSONObject jsonObject = new JSONObject();

        try {

            response.getWriter().print(jsonObject.toString());
        }
        catch (Exception e) {

            response.getWriter().print(jsonObject.toString());
        }
    }
}
