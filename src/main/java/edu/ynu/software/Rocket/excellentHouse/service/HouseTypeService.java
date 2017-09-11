package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.entity.HouseType;

import java.util.List;

/**
 * Created by August on 2017/9/11.
 */
public interface HouseTypeService {
    List<HouseType> selectByCompanyId(Integer companyId);
}
