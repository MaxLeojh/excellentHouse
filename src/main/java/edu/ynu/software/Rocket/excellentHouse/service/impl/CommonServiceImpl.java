package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.AddressbaseMapper;
import edu.ynu.software.Rocket.excellentHouse.entity.Addressbase;
import edu.ynu.software.Rocket.excellentHouse.entity.AddressbaseExample;
import edu.ynu.software.Rocket.excellentHouse.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
//        Addressbase street = addressbaseMapper.selectByPrimaryKey(String.valueOf(code));
//        street
//        Addressbase district = addressbaseMapper.selectByPrimaryKey(String.valueOf(street.getUpId()));
//        Addressbase city = addressbaseMapper.selectByPrimaryKey(String.valueOf(district.getUpId()));
//        Addressbase province = addressbaseMapper.selectByPrimaryKey(String.valueOf(city.getUpId()));
//        location += province.getCityName();
//        location +=" ";
//        location += city.getCityName();
//        location +=" ";
//        location += district.getCityName();
//        location +=" ";
//        location += street.getCityName();
        Addressbase curCity = addressbaseMapper.selectByPrimaryKey(String.valueOf(code));
        while (Integer.parseInt(curCity.getKindId())>0){
            System.out.println(curCity.getCityId());
            location = " "+location;
            location = curCity.getCityName()+location;
            curCity = addressbaseMapper.selectByPrimaryKey(String.valueOf(curCity.getUpId()));
        }
        return location;
    }

    public int locationToCode(String location) {
        return 0;
    }

    public Addressbase getAddress(int code) {
        Addressbase addressbase = addressbaseMapper.selectByPrimaryKey(String.valueOf(code));
        return addressbase;
    }

    public List<Addressbase> getSubAddress(int code) {
        AddressbaseExample example = new AddressbaseExample();
        example.createCriteria().andUpIdEqualTo(String.valueOf(code));
        return addressbaseMapper.selectByExample(example);
    }
}
