package edu.ynu.software.Rocket.excellentHouse.controller.front;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.HouseAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.PremisesAO;
import edu.ynu.software.Rocket.excellentHouse.entity.HouseExample;
import edu.ynu.software.Rocket.excellentHouse.entity.HouseTypeExample;
import edu.ynu.software.Rocket.excellentHouse.entity.PremisesExample;
import edu.ynu.software.Rocket.excellentHouse.service.HouseService;
import edu.ynu.software.Rocket.excellentHouse.service.PremisesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * 高级搜索
 * Created by August on 2017/9/25.
 */
@Controller
@RequestMapping(value = "advanceSearch")
public class FrontAdvanceSearchContrpller {

    @Autowired
    PremisesService premisesService;

    @Autowired
    HouseService houseService;

    @RequestMapping(value = "search", method = RequestMethod.GET)
    public ModelAndView search(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        ModelAndView mav = new ModelAndView();

        Integer city_id = 0;
        Float minArea = new Float(0);
        Float maxArea = new Float(9999);
        BigDecimal minPrice = new BigDecimal(0);
        BigDecimal maxPrice = new BigDecimal(99999999);

//        地区
        String street_code = request.getParameter("street_code");
        if (street_code != null && street_code != "") {
            city_id = new Integer(request.getParameter("street_code"));
        }

//        搜索类型
        String search_kind = request.getParameter("search_kind");

//        装修类型
        String deco_kind = request.getParameter("deco_kind");

//        最小面积
        String min_area = request.getParameter("min_area");
        if (min_area != null && min_area != "") {
            minArea = new Float(min_area);
        }

//        最大面积
        String max_area = request.getParameter("max_area");
        if (max_area != null && max_area != "") {
            maxArea = new Float(max_area);
        }

//        最小价格
        String min_price = request.getParameter("min_price");
        if (min_price != null && min_price != "") {
            minPrice = new BigDecimal(request.getParameter("min_price"));
        }

//        最大价格
        String max_price = request.getParameter("max_price");
        if (max_price != null && max_price != "") {
            maxPrice = new BigDecimal(request.getParameter("max_price"));
        }

        if (search_kind.equals("新房")) {
            List<PremisesAO> premisesAOList = new ArrayList<PremisesAO>();

            PremisesExample premisesExample = new PremisesExample();
            premisesExample.createCriteria().andCityIdEqualTo(city_id).andTypeEqualTo(deco_kind);

            HouseTypeExample houseTypeExample = new HouseTypeExample();
            houseTypeExample.createCriteria().andAreaBetween(minArea, maxArea).andAvePriceBetween(minPrice, maxPrice);

            premisesAOList = premisesService.selectByExample(premisesExample, houseTypeExample);

            mav.addObject("premisesAOList", premisesAOList);
            mav.setViewName("premisesSearchList");
        }
        else {
            List<HouseAO> houseAOList = new ArrayList<HouseAO>();
            HouseExample houseExample = new HouseExample();
            houseExample.createCriteria().andCityIdEqualTo(city_id).andKindEqualTo(search_kind).andTypeEqualTo(deco_kind)
                    .andAreaBetween(minArea, maxArea).andHousePriceBetween(minPrice, maxPrice);

            houseAOList = houseService.selectByExample(houseExample);

            mav.addObject("kind", search_kind);
            mav.addObject("houseAOList", houseAOList);
            mav.setViewName("houseSearchList");
        }

        return mav;
    }
}
