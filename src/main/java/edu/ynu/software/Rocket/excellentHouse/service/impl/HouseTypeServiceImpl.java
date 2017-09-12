package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.HouseTypeMapper;
import edu.ynu.software.Rocket.excellentHouse.entity.HouseType;
import edu.ynu.software.Rocket.excellentHouse.entity.HouseTypeExample;
import edu.ynu.software.Rocket.excellentHouse.service.HouseTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by August on 2017/9/11.
 */
@Service
public class HouseTypeServiceImpl implements HouseTypeService{

    @Autowired
    HouseTypeMapper houseTypeMapper;

    public List<HouseType> selectByCompanyId(Integer companyId) {
        List<HouseType> houseTypeList = new ArrayList<HouseType>();

        HouseTypeExample example = new HouseTypeExample();
        example.createCriteria().andPremisesIdEqualTo(companyId);
        houseTypeList = houseTypeMapper.selectByExample(example);

        return houseTypeList;
    }
}
