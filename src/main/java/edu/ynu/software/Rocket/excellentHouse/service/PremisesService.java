package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.PremisesAO;
import edu.ynu.software.Rocket.excellentHouse.entity.HouseTypeExample;
import edu.ynu.software.Rocket.excellentHouse.entity.Premises;
import edu.ynu.software.Rocket.excellentHouse.entity.PremisesExample;

import java.util.List;

/**
 * Created by August on 2017/9/11.
 */
public interface PremisesService {
    List<Premises> getAllPremises();

    List<PremisesAO> getAllPremisesAO();

    List<PremisesAO> getPremisesAOList(Integer limit, Integer offset);

    Premises selectById(Integer premisesId);

    PremisesAO selectByPremisesId(Integer premisesId);

    List<Premises> testPage();

    Integer countTotal();

    List<PremisesAO> selectByExample(PremisesExample premisesExample, HouseTypeExample houseTypeExample);
}
