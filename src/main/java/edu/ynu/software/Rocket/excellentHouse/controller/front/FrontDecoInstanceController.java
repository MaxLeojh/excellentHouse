package edu.ynu.software.Rocket.excellentHouse.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 装修案例管理
 * Created by August on 2017/9/14.
 */
@Controller
@RequestMapping("frontDecoInstance")
public class FrontDecoInstanceController {

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public ModelAndView list(HttpServletRequest request, HttpSession session) {
        ModelAndView mav = new ModelAndView();

        mav.setViewName("decoInstanceList");
        return mav;
    }

    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public ModelAndView detail(HttpServletRequest request, HttpSession session, Integer decoInstanceId) {
        ModelAndView mav = new ModelAndView();


        mav.setViewName("decoInstanceDetail");
        return mav;
    }
}
