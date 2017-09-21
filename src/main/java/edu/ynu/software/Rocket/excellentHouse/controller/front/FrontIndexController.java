package edu.ynu.software.Rocket.excellentHouse.controller.front;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.DecoInstanceAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.HouseAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.PremisesAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import edu.ynu.software.Rocket.excellentHouse.entity.DecoInstance;
import edu.ynu.software.Rocket.excellentHouse.entity.House;
import edu.ynu.software.Rocket.excellentHouse.entity.Premises;
import edu.ynu.software.Rocket.excellentHouse.entity.User;
import edu.ynu.software.Rocket.excellentHouse.service.DecoInstanceService;
import edu.ynu.software.Rocket.excellentHouse.service.HouseService;
import edu.ynu.software.Rocket.excellentHouse.service.PremisesService;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 首页管理
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

    @Autowired
    DecoInstanceService decoInstanceService;

    //首页显示的数量
    Integer limit = 3; //page size limit
    Integer offset = 0; //offset

    /**
     * 首页
     */
    @RequestMapping(value = "/show")
    @ResponseBody
    public ModelAndView index(HttpSession session){
        ModelAndView mav = new ModelAndView();

        UserAO userAO = (UserAO) session.getAttribute("user");
        if (userAO != null) {
            mav.addObject("user", userAO);
        }

//        楼盘
        List<PremisesAO> premisesList = premisesService.getPremisesAOList(limit, offset);
        mav.addObject("premisesList", premisesList);

//        二手房
        List<HouseAO> secondHandList = houseService.getHouseAOListByKind("二手房", limit, offset);
        mav.addObject("secondHandList",secondHandList);

//        租房
        List<HouseAO> rentHouseList = houseService.getHouseAOListByKind("出租房", limit, offset);
        mav.addObject("rentHouseList", rentHouseList);

//        装修案例展示
        List<DecoInstanceAO> decoInstanceList = decoInstanceService.getDecoInstanceList(limit, offset);
        mav.addObject("decoInstanceList", decoInstanceList);


        mav.setViewName("index");
        return mav;
    }
}
