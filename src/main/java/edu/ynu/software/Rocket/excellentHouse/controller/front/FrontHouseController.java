package edu.ynu.software.Rocket.excellentHouse.controller.front;

import com.alibaba.fastjson.JSONObject;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.HouseAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Collection;
import edu.ynu.software.Rocket.excellentHouse.entity.House;
import edu.ynu.software.Rocket.excellentHouse.entity.Picture;
import edu.ynu.software.Rocket.excellentHouse.service.CollectionService;
import edu.ynu.software.Rocket.excellentHouse.service.HouseService;
import edu.ynu.software.Rocket.excellentHouse.service.PictureService;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * 房源管理（二手房 + 租房）
 * Created by August on 2017/9/14.
 */
@Controller
@RequestMapping("frontHouse")
public class FrontHouseController {

    @Autowired
    private ServletContext servletContext;

    @Autowired
    HouseService houseService;

    @Autowired
    UserService userService;

    @Autowired
    CollectionService collectionService;

    @Autowired
    PictureService pictureService;

    Integer limit = 3;

    /**
     * House列表
     */
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public ModelAndView list(HttpServletRequest request, HttpSession session, String kind, Integer page) {
        ModelAndView mav = new ModelAndView();

        Integer offset = 0;
        if (page == null) {
            page = 1;
        }
        offset = (page - 1) * limit;

        List<HouseAO> houseAOList = new ArrayList<HouseAO>();
        houseAOList = houseService.getHouseAOListByKind(kind, limit, offset);
        mav.addObject("houseAOList", houseAOList);

        //分页处理
        Integer totalNum = houseService.countTotal(kind);
        Integer totalPage = 0;

        if (totalNum % limit == 0)
            totalPage = (totalNum / limit);
        else
            totalPage = (totalNum / limit) + 1;

        List<Integer> pageList = new ArrayList<Integer>();
        for (int i = 1; i <= totalPage; i++) {
            pageList.add(i);
        }
        mav.addObject("totalNum", totalNum);
        mav.addObject("page", page);
        mav.addObject("totalPage", totalPage);
        mav.addObject("pageList", pageList);
        mav.addObject("kind", kind);
        mav.setViewName("houseList");
        return mav;
    }

    /**
     * House详情
     */
    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public ModelAndView detail(HttpServletRequest request, HttpSession session, Integer houseId) {
        ModelAndView mav = new ModelAndView();

        HouseAO houseAO = new HouseAO();
        houseAO = houseService.selectById(houseId);

        Boolean isCollected = false;
        UserAO userAO = (UserAO) session.getAttribute("user");
        if (userAO != null) {
            List<Collection> collectionList = collectionService.selectByIdAndType(userAO.getEntity().getUserId(), houseId, houseAO.getEntity().getKind());
            if (collectionList.size() == 1) {
                isCollected = true;
            }
        }

        mav.addObject("isCollected", isCollected);
        mav.addObject("houseAO", houseAO);
        mav.setViewName("houseDetail");
        return mav;
    }

    /**
     * 新建House页面
     */
    @RequestMapping(value = "newHouse", method = RequestMethod.GET)
    public ModelAndView newHouse(HttpServletRequest request, HttpServletResponse response, HttpSession session, String kind) {
        ModelAndView mav = new ModelAndView();

        mav.addObject("kind", kind);
        mav.setViewName("releaseHouse");
        return mav;
    }

    /**
     * 新建House
     */
    @RequestMapping(value="/insert",method= RequestMethod.POST)
    @ResponseBody
    public ModelAndView insert(@RequestParam("file") CommonsMultipartFile files[], HttpServletRequest request, HttpSession session) throws IOException {
        ModelAndView mav = new ModelAndView();

        System.out.println(files.length);
        CommonsMultipartFile file;
        CommonsMultipartFile file_tomcat;

        String kind = request.getParameter("kind");
        String name = request.getParameter("name");
        String floor = request.getParameter("floor");
        String area = request.getParameter("area");
        String price = request.getParameter("price");
        String contactName = request.getParameter("contactName");
        String contactPhone = request.getParameter("contactPhone");
        String introdaction = request.getParameter("introduction");
        String street_code = request.getParameter("street_code");
        String location = request.getParameter("lnglat");

        String[] temp = location.split(",");
        Float locationX = new Float(temp[0]);
        Float locationY = new Float(temp[1]);

        UserAO userAO = (UserAO) session.getAttribute("user");
        Integer userId = userAO.getEntity().getUserId();

        House house = new House();
        house.setKind(kind);
        house.setUserId(userId);
        house.setName(name);
        house.setFloor(new Integer(floor));
        house.setArea(new Float(area));
        house.setHousePrice(new BigDecimal(price));
        house.setContactName(contactName);
        house.setContactPhone(contactPhone);
        house.setIntroduction(introdaction);
        house.setCityId(new Integer(street_code));
        house.setLocationX(locationX);
        house.setLocationY(locationY);
        house.setIsVaild(true);

        //暂时没有给用户选择户型
        house.setTypeId(1);

        houseService.insert(house);

        //存图片
        for (int i = 0; i < files.length; i++) {
            Picture picture = new Picture();
            picture.setEntityId(house.getId());
            picture.setEntityType(kind);
            picture.setIsVaild(true);

            pictureService.insertPic(picture);
            String address = "../images/house/"+picture.getId()+".jpg";
            picture.setPictureAddress(address);
            pictureService.updatePic(picture);

            file = files[i];
            file_tomcat = files[i];

            String path = "D:/August/idea/program/ExcellentHouse/src/main/webapp/WEB-INF/images/house/";
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
            file_tomcat.transferTo(dir_tomcat);
        }

        mav.setViewName("userHome");
        return mav;
    }
}
