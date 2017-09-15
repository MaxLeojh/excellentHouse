package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.*;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.PremisesAO;
import edu.ynu.software.Rocket.excellentHouse.entity.*;
import edu.ynu.software.Rocket.excellentHouse.service.HouseTypeService;
import edu.ynu.software.Rocket.excellentHouse.service.PictureService;
import edu.ynu.software.Rocket.excellentHouse.service.PostService;
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

    @Autowired
    CompanyMapper companyMapper;

    @Autowired
    HouseTypeMapper houseTypeMapper;

    @Autowired
    PictureMapper pictureMapper;

    @Autowired
    PostMapper postMapper;

    @Autowired
    HouseTypeService houseTypeService;

    @Autowired
    PictureService pictureService;

    @Autowired
    PostService postService;


    public List<Premises> getAllPremises() {
        List<Premises> premisesList = new ArrayList<Premises>();

        PremisesExample example = new PremisesExample();
        premisesList = premisesMapper.selectByExample(example);

        return premisesList;
    }

    public List<PremisesAO> getAllPremisesAO() {
        List<PremisesAO> premisesAOList = new ArrayList<PremisesAO>();
        List<Premises> premisesList = new ArrayList<Premises>();

        PremisesExample example = new PremisesExample();
        premisesList = premisesMapper.selectByExample(example);

//        填充PremisesAO
        for (Premises premises : premisesList) {
            PremisesAO premisesAO = new PremisesAO();
            premisesAO.setEntity(premises);

//            公司
            Company company = new Company();
            company = companyMapper.selectByPrimaryKey(premises.getCompanyId());
            premisesAO.setCompany(company);

//            户型
            List<HouseType> houseTypeList = new ArrayList<HouseType>();
            houseTypeList = houseTypeService.selectByCompanyId(premises.getId());
            premisesAO.setHouseTypeList(houseTypeList);

//            图片
            List<Picture> pictureList = new ArrayList<Picture>();
            pictureList = pictureService.selectByEntityIdAndType(premises.getId(), "楼盘");
            premisesAO.setPictureList(pictureList);

//            评论
            List<Post> postList = new ArrayList<Post>();
            postList = postService.seleceByEntityIdAndType(premises.getId(), "楼盘");
            premisesAO.setPostList(postList);

            premisesAOList.add(premisesAO);
        }

        return premisesAOList;
    }

    public Premises selectById(Integer premisesId) {
        return premisesMapper.selectByPrimaryKey(premisesId);
    }

    public List<Premises> testPage() {
        List<Premises> premisesList = new ArrayList<Premises>();

//        Page page = new Page();
//        page.setBegin(0);
//        page.setEnd(1);
//
//        PremisesExample example = new PremisesExample();
//        example.setPage(page);
//        premisesList = premisesMapper.selectByExample(example);

        return premisesList;
    }
}
