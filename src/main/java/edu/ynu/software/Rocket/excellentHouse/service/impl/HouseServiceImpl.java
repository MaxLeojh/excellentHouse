package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.HouseMapper;
import edu.ynu.software.Rocket.excellentHouse.entity.House;
import edu.ynu.software.Rocket.excellentHouse.entity.HouseExample;
import edu.ynu.software.Rocket.excellentHouse.service.HouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by August on 2017/9/11.
 */
@Service
public class HouseServiceImpl implements HouseService{
    @Autowired
    HouseMapper houseMapper;

    public List<House> getAllHouse() {
        List<House> houseList = new ArrayList<House>();

        HouseExample example = new HouseExample();
        houseList = houseMapper.selectByExample(example);

        return houseList;
    }
}
