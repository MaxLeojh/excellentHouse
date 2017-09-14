package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.HouseMapper;
import edu.ynu.software.Rocket.excellentHouse.dao.HouseTypeMapper;
import edu.ynu.software.Rocket.excellentHouse.dao.PictureMapper;
import edu.ynu.software.Rocket.excellentHouse.dao.PostMapper;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.HouseAO;
import edu.ynu.software.Rocket.excellentHouse.entity.*;
import edu.ynu.software.Rocket.excellentHouse.service.HouseService;
import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by August on 2017/9/11.
 */
@Service
public class HouseServiceImpl implements HouseService{
    @Autowired
    HouseMapper houseMapper;

    @Autowired
    HouseTypeMapper houseTypeMapper;

    @Autowired
    PictureMapper pictureMapper;

    @Autowired
    PostMapper postMapper;

    public List<House> getAllHouse() {
        List<House> houseList = new ArrayList<House>();

        HouseExample example = new HouseExample();
        houseList = houseMapper.selectByExample(example);

        return houseList;
    }

    public List<HouseAO> getHouseAOByKind(String kind) {
        List<HouseAO> houseAOList = new ArrayList<HouseAO>();
        List<House> houseList = new ArrayList<House>();

        HouseExample example = new HouseExample();
        example.createCriteria().andKindEqualTo(kind);
        houseList = houseMapper.selectByExample(example);

        //填充houseAO
        for (House house : houseList) {
            HouseAO houseAO = new HouseAO();
            houseAO.setEntity(house);

            //户型
            HouseType houseType = new HouseType();
            houseType = houseTypeMapper.selectByPrimaryKey(house.getTypeId());
            houseAO.setType(houseType);

            //图片
            List<Picture> pictureList = new ArrayList<Picture>();
            PictureExample pictureExample = new PictureExample();
            pictureExample.createCriteria().andEntityIdEqualTo(house.getId()).andEntityTypeEqualTo(kind);
            pictureList = pictureMapper.selectByExample(pictureExample);
            houseAO.setPictureList(pictureList);

            //评论
            List<Post> postList = new ArrayList<Post>();
            PostExample postExample = new PostExample();
            postExample.createCriteria().andEntityIdEqualTo(house.getId()).andEntityTypeEqualTo(kind);
            postList = postMapper.selectByExample(postExample);
            houseAO.setPostList(postList);

            houseAOList.add(houseAO);
        }

        return houseAOList;
    }

}
