package edu.ynu.software.Rocket.excellentHouse.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 楼盘
 * Created by August on 2017/9/8.
 */
@Controller
@RequestMapping("/premisesList")
public class FrontPremisesController {

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index(){
        return null;
    }
}
