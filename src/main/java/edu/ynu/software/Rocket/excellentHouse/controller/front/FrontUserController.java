package edu.ynu.software.Rocket.excellentHouse.controller.front;

import com.alibaba.fastjson.JSONObject;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.DecoInstanceAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.HouseAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.PremisesAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Collection;
import edu.ynu.software.Rocket.excellentHouse.entity.Picture;
import edu.ynu.software.Rocket.excellentHouse.entity.User;
import edu.ynu.software.Rocket.excellentHouse.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import sun.misc.BASE64Decoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

    @Autowired
    CollectionService collectionService;

    @Autowired
    PremisesService premisesService;

    @Autowired
    PictureService pictureService;

    @Autowired
    HouseService houseService;

    @Autowired
    DecoInstanceService decoInstanceService;

    String verCode = "2333";

    /**
     * 跳转到注册页
     */
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

    /**
     * 注册
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

    /**
     * 邮箱确认
     */
    @ResponseBody
    @RequestMapping(value = "/emailConfirm")
    public ModelAndView emailConfirm(@RequestParam("code") String code){
        ModelAndView mav = new ModelAndView();
        System.out.println("------------"+code);
        int userId = Integer.parseInt(code);//decode;
        User user = userService.selectUserById(userId);
        user.setIsEmailConfirm(true);
        userService.update(user);

        mav.setViewName("userLogin");
        return mav;
    }

    /**
     * 跳转到登录页
     */
    @ResponseBody
    @RequestMapping("/toLogin")
    public ModelAndView toLogin(){
        ModelAndView modelAndView = new ModelAndView("userLogin");

        return modelAndView;
    }

    /**
     * 登陆
     */
    @ResponseBody
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void login(String email, String password, HttpSession session, HttpServletResponse response) throws IOException {
        JSONObject jsonObject = new JSONObject();

        User user = userService.getUserByEmail(email);
        if (user.getUserId() == null) {
            jsonObject.put("result", "fail");
            jsonObject.put("message", "no user");
        }
        else if (user.getIsEmailConfirm().equals(false)) {
            jsonObject.put("result", "fail");
            jsonObject.put("message", "email not pass");
        }
        else if (user.getPassWord().equals(password)) {
            UserAO userAO = userService.selectById(user.getUserId());
            session.setAttribute("user",userAO);
            jsonObject.put("result","success");
        }
        else {
            jsonObject.put("result", "fail");
            jsonObject.put("message", "please contract admin, phone:110");
        }

        response.getWriter().print(jsonObject.toString());
    }

    /**
     * 注销
     */
    @ResponseBody
    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public void logout(HttpSession session, HttpServletResponse response) throws IOException{
        JSONObject jsonObject = new JSONObject();

        session.removeAttribute("user");

        try {

            jsonObject.put("result", "success");
            response.getWriter().print(jsonObject.toString());
        }
        catch (Exception e) {

            jsonObject.put("result", "fail");
            response.getWriter().print(jsonObject.toString());
        }
    }

    /**
     * 个人主页
     */
    @ResponseBody
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView userHome(HttpServletRequest request, HttpSession session) {
        ModelAndView mav = new ModelAndView();

        UserAO userAO = new UserAO();
        userAO = (UserAO) session.getAttribute("user");
        mav.addObject("user", userAO);
        mav.setViewName("userHome");
        return mav;
    }

    /**
     * 收藏的楼盘
     */
    @ResponseBody
    @RequestMapping(value = "/collectedPremises", method = RequestMethod.GET)
    public ModelAndView userCollectedPremises(HttpServletRequest request, HttpSession session) {
        ModelAndView mav = new ModelAndView();

        UserAO userAO = new UserAO();
        userAO = (UserAO) session.getAttribute("user");

        List<PremisesAO> premisesAOList = new ArrayList<PremisesAO>();
        List<Collection> collectionList = new ArrayList<Collection>();

        collectionList = collectionService.getUserCollection(userAO.getEntity().getUserId(), "楼盘");
        for (Collection collection : collectionList) {
            PremisesAO premisesAO = new PremisesAO();
            premisesAO = premisesService.selectByPremisesId(collection.getEntityId());
            premisesAOList.add(premisesAO);
        }
        mav.addObject("premisesAOList", premisesAOList);

        mav.setViewName("userCollectedPremises");
        return mav;
    }

    /**
     * 收藏的House
     */
    @ResponseBody
    @RequestMapping(value = "/collectedHouse", method = RequestMethod.GET)
    public ModelAndView collectedHouse(HttpServletRequest request, HttpSession session, String kind) {
        ModelAndView mav = new ModelAndView();

        UserAO userAO = new UserAO();
        userAO = (UserAO) session.getAttribute("user");

        List<HouseAO> houseAOList = new ArrayList<HouseAO>();
        List<Collection> collectionList = new ArrayList<Collection>();

        collectionList = collectionService.getUserCollection(userAO.getEntity().getUserId(), kind);
        for (Collection collection : collectionList) {
            HouseAO houseAO = new HouseAO();
            houseAO = houseService.selectById(collection.getEntityId());
            houseAOList.add(houseAO);
        }
        mav.addObject("houseAOList", houseAOList);

        mav.addObject("kind", kind);
        mav.setViewName("userCollectedHouse");
        return mav;
    }

    /**
     * 收藏的装修案例
     */
    @ResponseBody
    @RequestMapping(value = "/collectedDecoInstance", method = RequestMethod.GET)
    public ModelAndView collectedDecoInstance(HttpServletRequest request, HttpSession session) {
        ModelAndView mav = new ModelAndView();

        UserAO userAO = new UserAO();
        userAO = (UserAO) session.getAttribute("user");

        List<DecoInstanceAO> decoInstanceAOList = new ArrayList<DecoInstanceAO>();
        List<Collection> collectionList = new ArrayList<Collection>();

        collectionList = collectionService.getUserCollection(userAO.getEntity().getUserId(), "装修案例");
        for (Collection collection : collectionList) {
            DecoInstanceAO decoInstanceAO = new DecoInstanceAO();
            decoInstanceAO = decoInstanceService.selectByDecoInstanceId(collection.getEntityId());
            decoInstanceAOList.add(decoInstanceAO);
        }
        mav.addObject("decoInstanceAOList", decoInstanceAOList);

        mav.setViewName("userCollectedDecoInstance");
        return mav;
    }

    /**
     * 个人出售或出租的House
     */
    @ResponseBody
    @RequestMapping(value = "/house", method = RequestMethod.GET)
    public ModelAndView house(HttpServletRequest request, HttpSession session, String kind) {
        ModelAndView mav = new ModelAndView();

        UserAO userAO = (UserAO) session.getAttribute("user");
        List<HouseAO> houseAOList = houseService.getHouseAOListByUserIdAndKind(userAO.getEntity().getUserId(), kind);
        mav.addObject("houseAOList", houseAOList);
        mav.addObject("kind", kind);
        mav.setViewName("userHouse");
        return mav;
    }

    /**
     * 实体详情页上的收藏
     */
    @ResponseBody
    @RequestMapping(value = "/collect", method = RequestMethod.POST)
    public void collect(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException,SQLException {
        JSONObject jsonObject = new JSONObject();

        Integer userId = new Integer(request.getParameter("userId"));
        Integer entityId = new Integer(request.getParameter("entityId"));
        String entityType = request.getParameter("entityType");

        Collection collection = new Collection();
        collection.setUserId(userId);
        collection.setEntityId(entityId);
        collection.setEntityType(entityType);
        collection.setIsVaild(true);

        try {
            collectionService.insertCollection(collection);
            jsonObject.put("result", "success");
            response.getWriter().print(jsonObject.toString());
        }
        catch (Exception e) {
            jsonObject.put("result", "fail");
            jsonObject.put("error_info", e.getMessage());
            response.getWriter().print(jsonObject.toString());
        }
    }

    /**
     * 删除收藏
     */
    @ResponseBody
    @RequestMapping(value = "/deleteCollection", method = RequestMethod.POST)
    public void deleteCollection(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException,SQLException {
        JSONObject jsonObject = new JSONObject();

        Integer userId = new Integer(request.getParameter("userId"));
        Integer entityId = new Integer(request.getParameter("entityId"));
        String entityType = request.getParameter("entityType");

        Collection collection = new Collection();
        collection = collectionService.selectByIdAndType(userId, entityId, entityType).get(0);
        collection.setIsVaild(false);

        try {
            collectionService.deleteCollection(collection);
            jsonObject.put("result", "success");
            response.getWriter().print(jsonObject.toString());
        }
        catch (Exception e) {
            jsonObject.put("result", "fail");
            jsonObject.put("error_info", e.getMessage());
            response.getWriter().print(jsonObject.toString());
        }
    }

    /**
     * 发布House出售或出租
     */
    @ResponseBody
    @RequestMapping(value = "newHouse", method = RequestMethod.POST)
    public void newHouse(HttpServletRequest request, HttpServletResponse response, HttpSession session, String type) {

    }

    /**
     * 更新头像
     */
    @ResponseBody
    @RequestMapping(value = "updatePic", method = RequestMethod.POST)
    public void updatePic(String base64code,HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException{
        JSONObject jsonObject = new JSONObject();
        System.out.println(base64code);
        Picture picture = new Picture();
        UserAO userAO = (UserAO)session.getAttribute("user");
        System.out.println("------------------"+userAO.getEntity().getUserId());
        picture.setEntityId(userAO.getEntity().getUserId());
        picture.setEntityType("用户");
        picture.setIsVaild(true);

        //删除原来的头像
        Picture old = userAO.getPictureList().get(0);
        old.setIsVaild(false);
        pictureService.updatePic(old);

        pictureService.insertPic(picture);
        String address = "../images/user/"+picture.getId()+".jpg";
        picture.setPictureAddress(address);
        pictureService.updatePic(picture);
        boolean flag = base64ToImg(base64code,"D:/August/idea/program/ExcellentHouse/src/main/webapp/WEB-INF/images/user/"+picture.getId()+".jpg");
        System.out.println(flag);

        //刷新session中的user
        UserAO newUserAO = userService.selectById(userAO.getEntity().getUserId());
        session.setAttribute("user", userAO);

//        File file2 = request.;

//        file.getOriginalFilename();

        jsonObject.put("result", "success");
        response.getWriter().print(jsonObject.toString());
    }

    /**
     * 更新基本信息
     */
    @ResponseBody
    @RequestMapping(value = "update", method = RequestMethod.POST)
    public void update(String base64code,HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException{
        JSONObject jsonObject = new JSONObject();

        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        Boolean sex = new Boolean(request.getParameter("sex"));

        UserAO userAO = (UserAO)session.getAttribute("user");
        userAO.getEntity().setName(name);
        userAO.getEntity().setPhoneNumber(phone);
        userAO.getEntity().setGender(sex);

        userService.update(userAO.getEntity());

        //刷新session中的user
        UserAO newUserAO = userService.selectById(userAO.getEntity().getUserId());
        session.setAttribute("user", userAO);

        jsonObject.put("result", "success");
        response.getWriter().print(jsonObject.toString());
    }


    public static boolean base64ToImg(String imgStr, String path) throws IOException {
        if (imgStr == null) return false;
        BASE64Decoder decoder = new BASE64Decoder();
        byte[] img = decoder.decodeBuffer(imgStr);
        for (int i = 0; i < img.length; i++) {
            if (img[i] < 0){
                img[i] += 256;
            }
        }
        OutputStream out = new FileOutputStream(path);
        out.write(img);
        out.flush();
        out.close();
        return true;
    }
}
