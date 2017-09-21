package edu.ynu.software.Rocket.excellentHouse.controller.front;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.DecoInstanceAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Collection;
import edu.ynu.software.Rocket.excellentHouse.service.CollectionService;
import edu.ynu.software.Rocket.excellentHouse.service.DecoInstanceService;
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
 * 装修案例管理
 * Created by August on 2017/9/14.
 */
@Controller
@RequestMapping("frontDecoInstance")
public class FrontDecoInstanceController {

    @Autowired
    DecoInstanceService decoInstanceService;

    @Autowired
    UserService userService;

    @Autowired
    CollectionService collectionService;

    Integer limit = 3;

    /**
     * 装修案例列表
     */
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public ModelAndView list(HttpServletRequest request, HttpSession session, Integer page) {
        ModelAndView mav = new ModelAndView();

        Integer offset = 0;
        if (page == null) {
            page = 1;
        }
        offset = (page - 1) * limit;

        List<DecoInstanceAO> decoInstanceAOList = decoInstanceService.getDecoInstanceList(limit, offset);
        mav.addObject("decoInstanceAOList", decoInstanceAOList);

        //分页处理
        Integer totalNum = decoInstanceService.countTotal();
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
        mav.setViewName("decoInstanceList");
        return mav;
    }

    /**
     * 装修案例详情
     */
    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public ModelAndView detail(HttpServletRequest request, HttpSession session, Integer decoInstanceId) {
        ModelAndView mav = new ModelAndView();

        DecoInstanceAO decoInstanceAO = new DecoInstanceAO();
        decoInstanceAO = decoInstanceService.selectByDecoInstanceId(decoInstanceId);

        //判断用户是否收藏
        Boolean isCollected = false;
        UserAO userAO = (UserAO) session.getAttribute("user");
        if (userAO != null) {
            List<Collection> collectionList = collectionService.selectByIdAndType(userAO.getEntity().getUserId(), decoInstanceId, "装修案例");
            if (collectionList.size() == 1) {
                isCollected = true;
            }
        }
        mav.addObject("isCollected", isCollected);
        mav.addObject("decoInstanceAO", decoInstanceAO);
        mav.setViewName("decoInstanceDetail");
        return mav;
    }
}
