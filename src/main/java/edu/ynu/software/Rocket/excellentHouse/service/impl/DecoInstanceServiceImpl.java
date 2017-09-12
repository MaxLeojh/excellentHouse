package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.DecoInstanceMapper;
import edu.ynu.software.Rocket.excellentHouse.entity.DecoInstance;
import edu.ynu.software.Rocket.excellentHouse.entity.DecoInstanceExample;
import edu.ynu.software.Rocket.excellentHouse.service.DecoInstanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by August on 2017/9/12.
 */
@Service
public class DecoInstanceServiceImpl implements DecoInstanceService {

    @Autowired
    DecoInstanceMapper decoInstanceMapper;

    public List<DecoInstance> getAllDecoIntance() {
        DecoInstanceExample example = new DecoInstanceExample();
        example.createCriteria();

        return decoInstanceMapper.selectByExample(example);
    }
}
