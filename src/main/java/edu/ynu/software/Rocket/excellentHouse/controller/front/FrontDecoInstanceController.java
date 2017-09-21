package edu.ynu.software.Rocket.excellentHouse.controller.front;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.DecoInstanceAO;
import edu.ynu.software.Rocket.excellentHouse.service.DecoInstanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

    /**
     * 装修案例列表
     */
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public ModelAndView list(HttpServletRequest request, HttpSession session) {
        ModelAndView mav = new ModelAndView();

        List<DecoInstanceAO> decoInstanceAOList = decoInstanceService.getAllDecoIntanceAO();
        mav.addObject("decoInstanceAOList", decoInstanceAOList);

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
        mav.addObject("decoInstanceAO", decoInstanceAO);

        mav.setViewName("decoInstanceDetail");
        return mav;
    }
}
