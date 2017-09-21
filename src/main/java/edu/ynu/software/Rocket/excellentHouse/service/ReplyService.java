package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.ReplyAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Reply;

import java.util.List;

/**
 * Created by August on 2017/9/20.
 */
public interface ReplyService {
    ReplyAO getById(Integer replyId);
    List<ReplyAO> selectByPremisesId(Integer premisesId);
    Integer insert(Reply reply);
}
