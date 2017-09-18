package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.DesignerMapper;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.DesignerAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Designer;
import edu.ynu.software.Rocket.excellentHouse.service.DesignerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by August on 2017/9/17.
 */
@Service
public class DesignerServiceImpl implements DesignerService {

    @Autowired
    DesignerMapper designerMapper;

    public DesignerAO selectById(Integer designerId) {
        DesignerAO designerAO = new DesignerAO();
        Designer designer = new Designer();

        designer = designerMapper.selectByPrimaryKey(designerId);
        designerAO.setEntity(designer);

        return designerAO;
    }
}
