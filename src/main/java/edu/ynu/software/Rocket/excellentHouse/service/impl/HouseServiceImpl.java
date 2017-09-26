package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.HouseMapper;
import edu.ynu.software.Rocket.excellentHouse.dao.HouseTypeMapper;
import edu.ynu.software.Rocket.excellentHouse.dao.PictureMapper;
import edu.ynu.software.Rocket.excellentHouse.dao.PostMapper;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.HouseAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.PostAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import edu.ynu.software.Rocket.excellentHouse.entity.*;
import edu.ynu.software.Rocket.excellentHouse.service.CommonService;
import edu.ynu.software.Rocket.excellentHouse.service.HouseService;
import edu.ynu.software.Rocket.excellentHouse.service.PostService;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
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

    @Autowired
    PostService postService;

    @Autowired
    UserService userService;

    @Autowired
    CommonService commonService;

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
            List<PostAO> postAOList = new ArrayList<PostAO>();
            postAOList = postService.selectByEntityIdAndType(house.getId(), house.getKind());
            houseAO.setPostAOList(postAOList);

            houseAOList.add(houseAO);
        }

        return houseAOList;
    }

    public List<HouseAO> getHouseAOListByKind(String kind, Integer limit, Integer offset) {
        List<HouseAO> houseAOList = new ArrayList<HouseAO>();
        List<House> houseList = new ArrayList<House>();

        HouseExample example = new HouseExample();
        example.createCriteria().andKindEqualTo(kind);
        example.setLimit(limit);
        example.setOffset(offset);
        houseList = houseMapper.selectByExample(example);

        for (House house : houseList) {
            HouseAO houseAO = new HouseAO();
            houseAO = selectById(house.getId());
            houseAOList.add(houseAO);
        }

        return houseAOList;
    }

    public List<HouseAO> getHouseAOListByUserIdAndKind(Integer userId, String kind) {
        List<HouseAO> houseAOList = new ArrayList<HouseAO>();
        List<House> houseList = new ArrayList<House>();

        HouseExample example = new HouseExample();
        example.createCriteria().andUserIdEqualTo(userId).andKindEqualTo(kind);
        houseList = houseMapper.selectByExample(example);

        for (House house : houseList) {
            HouseAO houseAO = new HouseAO();
            houseAO = selectById(house.getId());
            houseAOList.add(houseAO);
        }

        return houseAOList;
    }

    public HouseAO selectById(Integer houseId) {
        HouseAO houseAO = new HouseAO();
        House house = new House();

        //实体
        house = houseMapper.selectByPrimaryKey(houseId);
        houseAO.setEntity(house);

        //位置
        String location = "";
        location  = commonService.codeToLocation(house.getCityId());
        houseAO.setLocation(location);

        //用户(拥有者)
        UserAO userAO = new UserAO();
        userAO = userService.selectById(house.getUserId());
        houseAO.setUserAO(userAO);

        //户型
        HouseType houseType = new HouseType();
        houseType = houseTypeMapper.selectByPrimaryKey(house.getTypeId());
        houseAO.setType(houseType);

        //图片
        List<Picture> pictureList = new ArrayList<Picture>();
        PictureExample pictureExample = new PictureExample();
        pictureExample.createCriteria().andEntityIdEqualTo(house.getId()).andEntityTypeEqualTo(house.getKind());
        pictureList = pictureMapper.selectByExample(pictureExample);
        houseAO.setPictureList(pictureList);

        //评论
        List<PostAO> postAOList = new ArrayList<PostAO>();
        postAOList = postService.selectByEntityIdAndType(houseId, houseAO.getEntity().getKind());
        houseAO.setPostAOList(postAOList);

        return houseAO;
    }

    public Integer countTotal(String kind) {
        HouseExample example = new HouseExample();
        example.createCriteria().andKindEqualTo(kind);
        return houseMapper.countByExample(example);
    }

    public Integer insert(House house) {
        return houseMapper.insert(house);
    }

    public List<HouseAO> selectByExample(HouseExample example) {
        List<HouseAO> houseAOList = new ArrayList<HouseAO>();
        List<House> houseList = new ArrayList<House>();
        houseList = houseMapper.selectByExample(example);

        for (House house : houseList) {
            HouseAO houseAO = new HouseAO();
            houseAO = selectById(house.getId());
            houseAOList.add(houseAO);
        }

        return houseAOList;
    }

}
