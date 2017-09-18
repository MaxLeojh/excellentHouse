package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.DecoInstanceMapper;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.DecoInstanceAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.DesignerAO;
import edu.ynu.software.Rocket.excellentHouse.entity.DecoInstance;
import edu.ynu.software.Rocket.excellentHouse.entity.DecoInstanceExample;
import edu.ynu.software.Rocket.excellentHouse.service.DecoInstanceService;
import edu.ynu.software.Rocket.excellentHouse.service.DesignerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by August on 2017/9/12.
 */
@Service
public class DecoInstanceServiceImpl implements DecoInstanceService {

    @Autowired
    DecoInstanceMapper decoInstanceMapper;

    @Autowired
    DesignerService designerService;

    public List<DecoInstance> getAllDecoIntance() {
        DecoInstanceExample example = new DecoInstanceExample();
        example.createCriteria();

        return decoInstanceMapper.selectByExample(example);
    }

    public List<DecoInstanceAO> getAllDecoIntanceAO() {
        List<DecoInstanceAO> decoInstanceAOList = new ArrayList<DecoInstanceAO>();
        List<DecoInstance> decoInstanceList = new ArrayList<DecoInstance>();
        decoInstanceList = this.getAllDecoIntance();

        //填充AO
        for (DecoInstance instance : decoInstanceList) {
            DecoInstanceAO decoInstanceAO = new DecoInstanceAO();
            decoInstanceAO.setEntity(instance);

            DesignerAO designerAO = new DesignerAO();
            designerAO = designerService.selectById(instance.getDesignerId());
            decoInstanceAO.setDesignerAO(designerAO);

            decoInstanceAOList.add(decoInstanceAO);
        }

        return decoInstanceAOList;
    }

    public DecoInstanceAO selectByDecoInstanceId(Integer decoInstanceId) {
        DecoInstanceAO decoInstanceAO = new DecoInstanceAO();
        DecoInstance decoInstance = new DecoInstance();

        decoInstance = decoInstanceMapper.selectByPrimaryKey(decoInstanceId);
        decoInstanceAO.setEntity(decoInstance);

        DesignerAO designerAO = new DesignerAO();
        designerAO = designerService.selectById(decoInstance.getDesignerId());
        decoInstanceAO.setDesignerAO(designerAO);

        return decoInstanceAO;
    }
}
