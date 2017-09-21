package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import edu.ynu.software.Rocket.excellentHouse.entity.User;

import java.util.List;

/**
 * Created by August on 2017/9/4.
 */
public interface UserService {
    List<User> selectAllUser();
    Integer insertUser(User user);
    User selectUserById(int id);
    Integer getLastInsert();
    int update(User user);
    User getUserByEmail(String email);
    UserAO selectById(Integer userId);
    List<UserAO> selectAllUserAO();
    Integer deleteUser(Integer userId);
}
