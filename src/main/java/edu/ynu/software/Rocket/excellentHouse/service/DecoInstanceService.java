package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.DecoInstanceAO;
import edu.ynu.software.Rocket.excellentHouse.entity.DecoInstance;

import java.util.List;

/**
 * Created by August on 2017/9/12.
 */
public interface DecoInstanceService {
    List<DecoInstance> getAllDecoIntance();

    List<DecoInstanceAO> getAllDecoIntanceAO();

    List<DecoInstanceAO> getDecoInstanceList(Integer limit, Integer offset);

    DecoInstanceAO selectByDecoInstanceId(Integer decoInstanceId);

    DecoInstanceAO selectById(Integer decoInstanceId);

    Integer countTotal();
}
