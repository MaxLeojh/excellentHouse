package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.PremisesMapper;
import edu.ynu.software.Rocket.excellentHouse.entity.Premises;
import edu.ynu.software.Rocket.excellentHouse.entity.PremisesExample;
import edu.ynu.software.Rocket.excellentHouse.service.PremisesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by August on 2017/9/11.
 */
@Service
public class PremisesServiceImpl implements PremisesService{

    @Autowired
    PremisesMapper premisesMapper;

    public List<Premises> getAllPremises() {
        List<Premises> premisesList = new ArrayList<Premises>();

        PremisesExample example = new PremisesExample();
        premisesList = premisesMapper.selectByExample(example);

        return premisesList;
    }

    public Premises selectById(Integer premisesId) {
        return premisesMapper.selectByPrimaryKey(premisesId);
    }
}
