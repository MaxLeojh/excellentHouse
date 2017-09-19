package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.entity.Admin;

import java.util.List;

/**
 * Created by August on 2017/9/19.
 */
public interface AdminService {

    List<Admin> selectByName(String name);
}
