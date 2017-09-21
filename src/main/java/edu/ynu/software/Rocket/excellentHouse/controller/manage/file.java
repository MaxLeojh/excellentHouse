package edu.ynu.software.Rocket.excellentHouse.controller.manage;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by maxleo on 17-9-19.
 */

@Controller
@RequestMapping(value = "file")
public class file {


    @RequestMapping(value = "index", method = RequestMethod.GET)
    public ModelAndView list(HttpServletRequest request, HttpSession session) {
        ModelAndView mav = new ModelAndView("uploadPage");
        return mav;
    }
}
