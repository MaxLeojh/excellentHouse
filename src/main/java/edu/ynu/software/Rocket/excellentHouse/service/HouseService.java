package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.HouseAO;
import edu.ynu.software.Rocket.excellentHouse.entity.House;
import edu.ynu.software.Rocket.excellentHouse.entity.HouseExample;

import java.util.List;

/**
 * Created by August on 2017/9/11.
 */
public interface HouseService {
    List<House> getAllHouse();

    List<HouseAO> getHouseAOByKind(String kind);

    List<HouseAO> getHouseAOListByKind(String kind, Integer limit, Integer offset);

    List<HouseAO> getHouseAOListByUserIdAndKind(Integer userId, String kind);

    HouseAO selectById(Integer houseId);
}
