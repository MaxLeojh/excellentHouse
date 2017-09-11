package edu.ynu.software.Rocket.excellentHouse.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;

/**s
 * Created by maxleo on 17-9-11.
 */

@Controller
@RequestMapping("/index")
public class testController {

    @RequestMapping("/mail")
    @ResponseBody
    public ModelAndView mail(){
        ModelAndView rnt = new ModelAndView("mail");

        return rnt;
    }
}
