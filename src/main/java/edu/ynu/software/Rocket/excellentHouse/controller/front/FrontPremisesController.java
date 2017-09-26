package edu.ynu.software.Rocket.excellentHouse.controller.front;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.PremisesAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import edu.ynu.software.Rocket.excellentHouse.entity.*;
import edu.ynu.software.Rocket.excellentHouse.service.*;
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
 * 楼盘管理
 * Created by August on 2017/9/8.
 */
@Controller
@RequestMapping("frontPremises")
public class FrontPremisesController {

    @Autowired
    PremisesService premisesService;

    @Autowired
    CompanyService companyService;

    @Autowired
    HouseTypeService houseTypeService;

    @Autowired
    UserService userService;

    @Autowired
    CollectionService collectionService;


    Integer limit = 3;

    /**
     * 楼盘列表
     */
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public ModelAndView list(HttpServletRequest request, HttpSession session, Integer page) {
        ModelAndView mav = new ModelAndView();

        Integer offset = 0;
        if (page == null) {
            page = 1;
        }
        offset = (page - 1) * limit;

        List<PremisesAO> premisesAOList = new ArrayList<PremisesAO>();
        premisesAOList = premisesService.getPremisesAOList(limit, offset);
        mav.addObject("premisesAOList", premisesAOList);

        //分页处理
        Integer totalNum = premisesService.countTotal();
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
        mav.setViewName("premisesList");
        return mav;
    }

    /**
     * 楼盘详情
     */
    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpSession session, Integer premisesId){
        ModelAndView mav = new ModelAndView();

        PremisesAO premisesAO = new PremisesAO();
        premisesAO = premisesService.selectByPremisesId(premisesId);

        //判断用户是否收藏
        Boolean isCollected = false;
        UserAO userAO = (UserAO) session.getAttribute("user");
        if (userAO != null) {
            List<Collection> collectionList = collectionService.selectByIdAndType(userAO.getEntity().getUserId(), premisesId, "楼盘");
            if (collectionList.size() == 1) {
               isCollected = true;
            }
        }

        mav.addObject("isCollected", isCollected);
        mav.addObject("premisesAO", premisesAO);
        mav.setViewName("premisesDetail");
        return mav;
    }

}
