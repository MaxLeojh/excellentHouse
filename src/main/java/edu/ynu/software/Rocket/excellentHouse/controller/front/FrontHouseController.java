package edu.ynu.software.Rocket.excellentHouse.controller.front;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.HouseAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Collection;
import edu.ynu.software.Rocket.excellentHouse.service.CollectionService;
import edu.ynu.software.Rocket.excellentHouse.service.HouseService;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
    HouseService houseService;

    @Autowired
    UserService userService;

    @Autowired
    CollectionService collectionService;

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
}
