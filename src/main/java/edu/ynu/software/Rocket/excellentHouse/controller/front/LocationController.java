package edu.ynu.software.Rocket.excellentHouse.controller.front;

import edu.ynu.software.Rocket.excellentHouse.entity.Addressbase;
import edu.ynu.software.Rocket.excellentHouse.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by maxleo on 17-9-21.
 */

@Controller
@RequestMapping("location")
public class LocationController {

    @Autowired
    CommonService commonService;

    @RequestMapping(value="getProvinces", method  = RequestMethod.POST)
    @ResponseBody
    public List<Addressbase> getProvinces(){
        List<Addressbase> provinces = commonService.getSubAddress(0);
        return provinces;
    }

    @RequestMapping(value = "getCities", method = RequestMethod.POST)
    @ResponseBody
    public List<Addressbase> getCities(Integer id) {
        List<Addressbase> cities = commonService.getSubAddress(id);
        return cities;
    }

    @RequestMapping(value = "getDistricts", method = RequestMethod.POST)
    @ResponseBody
    public List<Addressbase> getDistricts(Integer id) {
        List<Addressbase> districts = commonService.getSubAddress(id);
        return districts;
    }

    @RequestMapping(value = "getStreets", method = RequestMethod.POST)
    @ResponseBody
    public List<Addressbase> getStreets(Integer id){
        List<Addressbase> street = commonService.getSubAddress(id);
        return street;
    }

}
