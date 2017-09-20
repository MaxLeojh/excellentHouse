package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.AdminMapper;
import edu.ynu.software.Rocket.excellentHouse.entity.Admin;
import edu.ynu.software.Rocket.excellentHouse.entity.AdminExample;
import edu.ynu.software.Rocket.excellentHouse.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by August on 2017/9/19.
 */
@Service
public class AdminServiceImpl implements AdminService{

    @Autowired
    AdminMapper adminMapper;

    public List<Admin> selectByName(String name) {
        List<Admin> adminList = new ArrayList<Admin>();
        AdminExample example = new AdminExample();
        example.createCriteria().andNameEqualTo(name);
        adminList = adminMapper.selectByExample(example);

        return adminList;
    }
}
