package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.UserCustomizedMapper;
import edu.ynu.software.Rocket.excellentHouse.dao.UserMapper;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Picture;
import edu.ynu.software.Rocket.excellentHouse.entity.User;
import edu.ynu.software.Rocket.excellentHouse.entity.UserExample;
import edu.ynu.software.Rocket.excellentHouse.service.PictureService;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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

    @Autowired
    PictureService pictureService;

    public List<User> selectAllUser() {
        List<User> userList;

        UserExample example = new UserExample();
        userList = userMapper.selectByExample(example);

        return userList;
    }

    public Integer insertUser(User user) {
        return userMapper.insert(user);
    }

    public User selectUserById(int id) {
        return userMapper.selectByPrimaryKey(id);
    }

    public Integer getLastInsert() {
        return userCustomizedMapper.getLastInsert();
    }

    public int update(User user) {
        return userMapper.updateByPrimaryKey(user);
    }

    public User getUserByEmail(String email) {
        User user = new User();
        UserExample userExample = new UserExample();
        userExample.createCriteria().andEmailEqualTo(email);
        List<User> userList = userMapper.selectByExample(userExample);
        if (userList.size() == 1) {
            user = userMapper.selectByExample(userExample).get(0);
        }

        return user;
    }

    public UserAO selectById(Integer userId) {
        UserAO userAO = new UserAO();
        User user = new User();

        user = userMapper.selectByPrimaryKey(userId);
        userAO.setEntity(user);

        List<Picture> pictureList = new ArrayList<Picture>();
        pictureList = pictureService.selectByEntityIdAndType(userId, "用户");
        userAO.setPictureList(pictureList);

        return userAO;
    }

    public List<UserAO> selectAllUserAO() {
        List<UserAO> userAOList = new ArrayList<UserAO>();
        List<User> userList = new ArrayList<User>();

        for (User user : userList) {
            UserAO userAO = new UserAO();
            userAO = selectById(user.getUserId());
            userAOList.add(userAO);
        }

        return userAOList;
    }
}
