package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.ReplyMapper;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.ReplyAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Reply;
import edu.ynu.software.Rocket.excellentHouse.entity.ReplyExample;
import edu.ynu.software.Rocket.excellentHouse.service.ReplyService;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by August on 2017/9/20.
 */
@Service
public class ReplyServiceImpl implements ReplyService{
    @Autowired
    ReplyMapper replyMapper;

    @Autowired
    UserService userService;

    public ReplyAO getById(Integer replyId) {
        ReplyAO replyAO = new ReplyAO();

        Reply reply = new Reply();
        reply = replyMapper.selectByPrimaryKey(replyId);
        replyAO.setEntity(reply);

        UserAO userAO = new UserAO();
        userAO = userService.selectById(reply.getUserId());
        replyAO.setUserAO(userAO);

        //如果是回复的回复
        if (reply.getReplyId() != null) {
            ReplyAO tempAO = new ReplyAO();

            Reply temp = new Reply();
            temp = replyMapper.selectByPrimaryKey(reply.getReplyId());
            tempAO.setEntity(temp);

            UserAO tempUserAO = new UserAO();
            tempUserAO = userService.selectById(temp.getUserId());
            tempAO.setUserAO(tempUserAO);

            replyAO.setRR(tempAO);
        }

        return replyAO;
    }

    public List<ReplyAO> selectByPremisesId(Integer premisesId) {
        List<ReplyAO> replyAOList = new ArrayList<ReplyAO>();

        List<Reply> replyList = new ArrayList<Reply>();
        ReplyExample replyExample = new ReplyExample();
        replyExample.createCriteria().andPostIdEqualTo(premisesId);
        replyList = replyMapper.selectByExample(replyExample);

        for (Reply reply : replyList) {
            ReplyAO replyAO = new ReplyAO();
            replyAO = getById(reply.getId());
            replyAOList.add(replyAO);
        }

        return replyAOList;
    }

    public Integer insert(Reply reply) {
        return replyMapper.insert(reply);
    }
}
