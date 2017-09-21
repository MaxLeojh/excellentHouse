package edu.ynu.software.Rocket.excellentHouse.controller.test;

import com.alibaba.fastjson.JSONObject;
import edu.ynu.software.Rocket.excellentHouse.entity.Admin;
import edu.ynu.software.Rocket.excellentHouse.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by maxleo on 17-9-21.
 */

@Controller
@RequestMapping(value = "/test")
public class testController {

    @Autowired
    CommonService commonService;

    @RequestMapping(value = "/testPage")
    public ModelAndView testPage(){
        ModelAndView mav = new ModelAndView("testPage");
        return mav;
    }

    @ResponseBody
    @RequestMapping(value = "getLocation", method = RequestMethod.POST)
    public void getLoc(int code, HttpSession session, HttpServletResponse response) throws IOException {

        JSONObject jsonObject = new JSONObject();
        System.out.println(code);
        String location = commonService.codeToLocation(code);
        jsonObject.put("result","success");
        jsonObject.put("location",location);

        System.out.println(location);

        response.getWriter().print(jsonObject.toString());
    }
}
