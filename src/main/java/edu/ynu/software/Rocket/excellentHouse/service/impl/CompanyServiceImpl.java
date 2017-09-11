package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.CompanyMapper;
import edu.ynu.software.Rocket.excellentHouse.entity.Company;
import edu.ynu.software.Rocket.excellentHouse.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by August on 2017/9/11.
 */
@Service
public class CompanyServiceImpl implements CompanyService{
    @Autowired
    CompanyMapper companyMapper;

    public Company selectById(Integer companyId) {
        return companyMapper.selectByPrimaryKey(companyId);
    }
}
