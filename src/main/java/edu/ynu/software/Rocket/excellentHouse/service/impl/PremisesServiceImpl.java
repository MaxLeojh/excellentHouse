package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.*;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.PostAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.PremisesAO;
import edu.ynu.software.Rocket.excellentHouse.entity.*;
import edu.ynu.software.Rocket.excellentHouse.service.*;
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

    @Autowired
    CommonService commonService;


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
            premisesAO = selectByPremisesId(premises.getId());
            premisesAOList.add(premisesAO);
        }

        return premisesAOList;
    }

    public List<PremisesAO> getPremisesAOList(Integer limit, Integer offset) {
        List<PremisesAO> premisesAOList = new ArrayList<PremisesAO>();
        List<Premises> premisesList = new ArrayList<Premises>();

        PremisesExample example = new PremisesExample();
        example.setLimit(limit);
        example.setOffset(offset);
        premisesList = premisesMapper.selectByExample(example);

//        填充PremisesAO
        for (Premises premises : premisesList) {
            PremisesAO premisesAO = new PremisesAO();
            premisesAO = selectByPremisesId(premises.getId());
            premisesAOList.add(premisesAO);
        }

        return premisesAOList;
    }

    public Premises selectById(Integer premisesId) {
        return premisesMapper.selectByPrimaryKey(premisesId);
    }

    public PremisesAO selectByPremisesId(Integer premisesId) {
        PremisesAO premisesAO = new PremisesAO();

        Premises premises = new Premises();
        premises = premisesMapper.selectByPrimaryKey(premisesId);
        premisesAO.setEntity(premises);

        String location = "";
        location = commonService.codeToLocation(new Integer(premises.getCityId()));
        premisesAO.setLocation(location);

        Company company = new Company();
        company = companyMapper.selectByPrimaryKey(premises.getCompanyId());
        premisesAO.setCompany(company);

        List<HouseType> houseTypeList = new ArrayList<HouseType>();
        houseTypeList = houseTypeService.selectByCompanyId(premises.getId());
        premisesAO.setHouseTypeList(houseTypeList);

        List<Picture> pictureList = new ArrayList<Picture>();
        pictureList = pictureService.selectByEntityIdAndType(premises.getId(), "楼盘");
        premisesAO.setPictureList(pictureList);

        List<PostAO> postAOList = new ArrayList<PostAO>();
        postAOList = postService.selectByEntityIdAndType(premises.getId(), "楼盘");
        premisesAO.setPostAOList(postAOList);

        return premisesAO;
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

    public Integer countTotal() {
        PremisesExample example = new PremisesExample();
        return premisesMapper.countByExample(example);
    }

    public List<PremisesAO> selectByExample(PremisesExample premisesExample, HouseTypeExample houseTypeExample){
        List<PremisesAO> premisesAOList = new ArrayList<PremisesAO>();
        List<Premises> premisesList = new ArrayList<Premises>();

        List<Premises> temp = new ArrayList<Premises>();
        temp = premisesMapper.selectByExample(premisesExample);

        List<HouseType> houseTypeList = new ArrayList<HouseType>();
        houseTypeList = houseTypeMapper.selectByExample(houseTypeExample);

        for (Premises premises : temp) {
            for (HouseType houseType : houseTypeList) {
                if (premises.getId().equals(houseType.getPremisesId())) {
                    premisesList.add(premises);
                    break;
                }
            }
        }

        for (Premises premises : premisesList) {
            PremisesAO premisesAO = new PremisesAO();
            premisesAO = selectByPremisesId(premises.getId());
            premisesAOList.add(premisesAO);
        }

        return premisesAOList;
    }
}
