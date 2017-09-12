package edu.ynu.software.Rocket.excellentHouse.controller.front;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.HouseAO;
import edu.ynu.software.Rocket.excellentHouse.entity.House;
import edu.ynu.software.Rocket.excellentHouse.entity.Premises;
import edu.ynu.software.Rocket.excellentHouse.entity.User;
import edu.ynu.software.Rocket.excellentHouse.service.HouseService;
import edu.ynu.software.Rocket.excellentHouse.service.PremisesService;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

/**
 * 优购房首页
 * Created by August on 2017/9/4.
 */
@Controller
@RequestMapping("/index")
public class FrontIndexController {
    @Autowired
    UserService userService;

    @Autowired
    PremisesService premisesService;

    @Autowired
    HouseService houseService;

    @RequestMapping(value = "/show")
    @ResponseBody
    public ModelAndView index(){
        ModelAndView mav = new ModelAndView();

//        楼盘
        List<Premises> premisesList = premisesService.getAllPremises();
        mav.addObject("premisesList", premisesList);

//        二手房
        List<HouseAO> secondHandList = houseService.getHouseAOByKind("二手房");
        mav.addObject("secondHandList",secondHandList);

//        租房
        List<HouseAO> rentHouseList = houseService.getHouseAOByKind("出租房");
        mav.addObject("rentHouseList", rentHouseList);

        mav.setViewName("index");
        return mav;
    }
}
