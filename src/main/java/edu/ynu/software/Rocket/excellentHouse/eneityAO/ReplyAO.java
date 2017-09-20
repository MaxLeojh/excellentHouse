package edu.ynu.software.Rocket.excellentHouse.eneityAO;

import edu.ynu.software.Rocket.excellentHouse.entity.Reply;

import java.util.List;

/**
 * Created by August on 2017/9/20.
 */
public class ReplyAO {
    private Reply entity;
    private UserAO userAO;
    private ReplyAO RR; //回复回复

    public Reply getEntity() {
        return entity;
    }

    public void setEntity(Reply entity) {
        this.entity = entity;
    }

    public UserAO getUserAO() {
        return userAO;
    }

    public void setUserAO(UserAO userAO) {
        this.userAO = userAO;
    }

    public ReplyAO getRR() {
        return RR;
    }

    public void setRR(ReplyAO RR) {
        this.RR = RR;
    }
}
