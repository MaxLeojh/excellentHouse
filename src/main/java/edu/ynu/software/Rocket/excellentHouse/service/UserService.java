package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.entity.User;

import java.util.List;

/**
 * Created by August on 2017/9/4.
 */
public interface UserService {
    public List<User> selectAllUser();
    public Integer insertUser(User user);
}
