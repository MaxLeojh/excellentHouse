package edu.ynu.software.Rocket.excellentHouse.controller.front;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.HouseAO;
import edu.ynu.software.Rocket.excellentHouse.service.HouseService;
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

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public ModelAndView list(HttpServletRequest request, HttpSession session, String kind) {
        ModelAndView mav = new ModelAndView();

        List<HouseAO> houseAOList = new ArrayList<HouseAO>();
        houseAOList = houseService.getHouseAOByKind(kind);
        mav.addObject("houseAOList", houseAOList);

        mav.addObject("kind", kind);
        mav.setViewName("houseList");
        return mav;
    }

    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public ModelAndView detail(HttpServletRequest request, HttpSession session, Integer houseId) {
        ModelAndView mav = new ModelAndView();

        HouseAO houseAO = new HouseAO();
        houseAO = houseService.selectById(houseId);
        mav.addObject("houseAO", houseAO);

        mav.setViewName("houseDetail");
        return mav;
    }
}
