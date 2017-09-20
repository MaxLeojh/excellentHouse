package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.eneityAO.ReplyAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Reply;

import java.util.List;

/**
 * Created by August on 2017/9/20.
 */
public interface ReplyService {
    public ReplyAO getById(Integer replyId);
    public List<ReplyAO> selectByPremisesId(Integer premisesId);
    public Integer insert(Reply reply);
}
