package edu.ynu.software.Rocket.excellentHouse.controller.front;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.PremisesAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Company;
import edu.ynu.software.Rocket.excellentHouse.entity.HouseType;
import edu.ynu.software.Rocket.excellentHouse.entity.Premises;
import edu.ynu.software.Rocket.excellentHouse.entity.User;
import edu.ynu.software.Rocket.excellentHouse.service.CompanyService;
import edu.ynu.software.Rocket.excellentHouse.service.HouseTypeService;
import edu.ynu.software.Rocket.excellentHouse.service.PremisesService;
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

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public ModelAndView list(HttpServletRequest request, HttpSession session) {
        ModelAndView mav = new ModelAndView();

        List<PremisesAO> premisesAOList = new ArrayList<PremisesAO>();
        premisesAOList = premisesService.getAllPremisesAO();
        mav.addObject("premisesAOList", premisesAOList);

        mav.setViewName("premisesList");
        return mav;
    }

    @RequestMapping(value = "detail", method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpSession session, Integer premisesId){
        ModelAndView mav = new ModelAndView();

        PremisesAO premisesAO = new PremisesAO();

        Premises premises = premisesService.selectById(premisesId);
        premisesAO.setEntity(premises);

        Company company = companyService.selectById(premises.getCompanyId());
        premisesAO.setCompany(company);

        List<HouseType> houseTypeList = houseTypeService.selectByCompanyId(premisesId);
        premisesAO.setHouseTypeList(houseTypeList);

        mav.addObject("premisesAO", premisesAO);
        mav.setViewName("premisesDetail");
        return mav;
    }

}
