package edu.ynu.software.Rocket.excellentHouse.controller.manage;

import com.alibaba.fastjson.JSONObject;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Picture;
import edu.ynu.software.Rocket.excellentHouse.entity.User;
import edu.ynu.software.Rocket.excellentHouse.service.PictureService;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
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
    private ServletContext servletContext;

    @Autowired
    UserService userService;

    @Autowired
    PictureService pictureService;

    /**
     * 用户列表页
     */
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public ModelAndView list(HttpServletRequest request, HttpSession session) {
        ModelAndView mav = new ModelAndView();

        List<UserAO> userAOList = new ArrayList<UserAO>();
        userAOList = userService.selectAllUserAO();
        mav.addObject("userAOList", userAOList);

        mav.setViewName("mUserList");
        return mav;
    }

    /**
     * 用户详情、编辑页
     */
    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public ModelAndView detail(HttpServletRequest request, HttpSession session, Integer userId) {
        ModelAndView mav = new ModelAndView();

        UserAO userAO = new UserAO();
        userAO = userService.selectById(userId);
        mav.addObject("userAO", userAO);

        mav.setViewName("mUserDetail");
        return mav;
    }

    /**
     * 用户新建页
     */
    @RequestMapping(value = "newUser", method = RequestMethod.GET)
    public ModelAndView newUser(HttpServletRequest request, HttpSession session) {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("mUserInsert");
        return mav;
    }

    /**
     * 更新用户
     */
    @RequestMapping(value = "update", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView update(HttpServletRequest request, HttpServletResponse response, HttpSession session, @RequestParam("files") MultipartFile file) throws IOException{
        ModelAndView mav = new ModelAndView();

        //接收form表单
        Integer userId = new Integer(request.getParameter("userIdHolder"));
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");

        User user = new User();
        user = userService.selectUserById(userId);
        user.setName(name);
        user.setPassWord(password);
        user.setGender(false);
        if (gender != null && gender.equals("M")) {
            user.setGender(true);
        }
        user.setPhoneNumber(phone);

        userService.update(user);

        //删除之前的头像图片
        List<Picture> pictureList = pictureService.selectByEntityIdAndType(userId, "用户");
        for (Picture p : pictureList) {
            p.setIsVaild(false);
            pictureService.updatePic(p);
        }

        //存新的图片
        Picture picture = new Picture();
        picture.setEntityId(user.getUserId());
        picture.setEntityType("用户");
        picture.setIsVaild(true);

        pictureService.insertPic(picture);
        String address = "../images/user/"+picture.getId()+".jpg";
        picture.setPictureAddress(address);
        pictureService.updatePic(picture);

        String path = "D:/August/idea/program/ExcellentHouse/src/main/webapp/WEB-INF/images/user/";
        String fileName = picture.getId()+".jpg";
        File dir = new File(path,fileName);
        if(!dir.exists()){
            dir.mkdirs();
        }

        //MultipartFile自带的解析方法
//            System.out.println(path+"+"+fileName);
        file.transferTo(dir);

        //存服务器上
        String path_tomcat = servletContext.getRealPath("") + "WEB-INF/images/house/";
        File dir_tomcat = new File(path_tomcat, fileName);
        if (!dir_tomcat.exists()) {
            dir.mkdir();
        }
        file.transferTo(dir_tomcat);

        List<UserAO> userAOList = new ArrayList<UserAO>();
        userAOList = userService.selectAllUserAO();
        mav.addObject("userAOList", userAOList);

        mav.setViewName("mUserList");
        return mav;
    }

    /**
     * 新建用户
     */
    @RequestMapping(value = "insert", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView insert(HttpServletRequest request, HttpServletResponse response, HttpSession session, @RequestParam("files") MultipartFile file) throws IOException{
        ModelAndView mav = new ModelAndView();

        //接收form表单
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String confirm_email = request.getParameter("confirm_email");
        String gender = request.getParameter("gender");
        String password = request.getParameter("password");
        String Repeat_password = request.getParameter("Repeat_password");
        String phone = request.getParameter("phone");

        User user = new User();
        user.setName(name);
        user.setPassWord(password);
        user.setEmail(email);
        user.setIsEmailConfirm(true);
        user.setGender(false);
        if (gender != null && gender.equals("M")) {
            user.setGender(true);
        }
        user.setPhoneNumber(phone);
        user.setIsVaild(true);

        userService.insertUser(user);

        //存图片
        Picture picture = new Picture();
        picture.setEntityId(user.getUserId());
        picture.setEntityType("用户");
        picture.setIsVaild(true);

        pictureService.insertPic(picture);
        String address = "../images/user/"+picture.getId()+".jpg";
        picture.setPictureAddress(address);
        pictureService.updatePic(picture);

        String path = "D:/August/idea/program/ExcellentHouse/src/main/webapp/WEB-INF/images/user/";
        String fileName = picture.getId()+".jpg";
        File dir = new File(path,fileName);
        if(!dir.exists()){
            dir.mkdirs();
        }

        //MultipartFile自带的解析方法
//            System.out.println(path+"+"+fileName);
        file.transferTo(dir);

        //存服务器上
        String path_tomcat = servletContext.getRealPath("") + "WEB-INF/images/house/";
        File dir_tomcat = new File(path_tomcat, fileName);
        if (!dir_tomcat.exists()) {
            dir.mkdir();
        }
        file.transferTo(dir_tomcat);

        List<UserAO> userAOList = new ArrayList<UserAO>();
        userAOList = userService.selectAllUserAO();
        mav.addObject("userAOList", userAOList);

        mav.setViewName("mUserList");
        return mav;
    }

    /**
     * 删除用户
     */
    @RequestMapping(value = "delete", method = RequestMethod.POST)
    @ResponseBody
    public void delete(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException, SQLException{
        JSONObject jsonObject = new JSONObject();

        Integer id = new Integer(request.getParameter("userId"));

        try {
            Integer result = userService.deleteUser(id);
            jsonObject.put("result", "success");
            response.getWriter().print(jsonObject.toString());
        }
        catch (Exception e) {
            jsonObject.put("result", "fail");
            jsonObject.put("error_info", e.getMessage());
            response.getWriter().print(jsonObject.toString());
        }
    }
}
