package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.PictureMapper;
import edu.ynu.software.Rocket.excellentHouse.entity.Picture;
import edu.ynu.software.Rocket.excellentHouse.entity.PictureExample;
import edu.ynu.software.Rocket.excellentHouse.service.PictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by August on 2017/9/14.
 */
@Service
public class PictureServiceImpl implements PictureService {

    @Autowired
    PictureMapper pictureMapper;

    public List<Picture> selectByEntityIdAndType(Integer entityId, String entityType) {
        List<Picture> pictureList = new ArrayList<Picture>();

        PictureExample example = new PictureExample();
        example.createCriteria().andEntityIdEqualTo(entityId).andEntityTypeEqualTo(entityType);
        pictureList = pictureMapper.selectByExample(example);

        return pictureList;
    }

    public int insertPic(Picture record) {
        return pictureMapper.insert(record);
    }
}
