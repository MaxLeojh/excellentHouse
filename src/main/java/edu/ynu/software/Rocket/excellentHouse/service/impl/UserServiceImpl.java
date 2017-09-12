package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.UserCustomizedMapper;
import edu.ynu.software.Rocket.excellentHouse.dao.UserMapper;
import edu.ynu.software.Rocket.excellentHouse.entity.User;
import edu.ynu.software.Rocket.excellentHouse.entity.UserExample;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by August on 2017/9/4.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Autowired
    UserCustomizedMapper userCustomizedMapper;

    public List<User> selectAllUser() {
        List<User> userList;

        UserExample example = new UserExample();
        userList = userMapper.selectByExample(example);

        return userList;
    }

    public Integer insertUser(User user) {
        return userCustomizedMapper.insert(user);
    }

//    public int insertUser(User user){
//        return userMapper.insert(user);
//    }
}
