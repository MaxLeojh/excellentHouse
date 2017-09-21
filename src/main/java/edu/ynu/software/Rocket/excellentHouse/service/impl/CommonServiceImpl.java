package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.AddressbaseMapper;
import edu.ynu.software.Rocket.excellentHouse.entity.Addressbase;
import edu.ynu.software.Rocket.excellentHouse.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by maxleo on 17-9-20.
 */
@Service
public class CommonServiceImpl implements CommonService {

    @Autowired
    AddressbaseMapper addressbaseMapper;

    public String codeToLocation(int code) {
        String location = "";
//        int province;
//        int city;
//        int district;
//        int street;
        Addressbase street = addressbaseMapper.selectByPrimaryKey(String.valueOf(code));
        Addressbase district = addressbaseMapper.selectByPrimaryKey(String.valueOf(street.getUpId()));
        Addressbase city = addressbaseMapper.selectByPrimaryKey(String.valueOf(district.getUpId()));
        Addressbase province = addressbaseMapper.selectByPrimaryKey(String.valueOf(city.getUpId()));
        location += province.getCityName();
        location += " ";
        location += city.getCityName();
        location += district.getCityName();
        location += street.getCityName();
        return location;
    }

    public int locationToCode(String location) {
        return 0;
    }
}
