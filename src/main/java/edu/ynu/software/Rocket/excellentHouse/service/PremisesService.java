package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.PremisesAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Premises;

import java.util.List;

/**
 * Created by August on 2017/9/11.
 */
public interface PremisesService {
    List<Premises> getAllPremises();

    List<PremisesAO> getAllPremisesAO();

    Premises selectById(Integer premisesId);

    List<Premises> testPage();
}
