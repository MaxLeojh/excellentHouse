package edu.ynu.software.Rocket.excellentHouse.eneityAO;

import edu.ynu.software.Rocket.excellentHouse.entity.Post;

import java.util.List;

/**
 * Created by August on 2017/9/15.
 */
public class PostAO {
    private Post entity;
    private UserAO userAO;
    private List<ReplyAO> replyAOList;

    public Post getEntity() {
        return entity;
    }

    public void setEntity(Post entity) {
        this.entity = entity;
    }

    public UserAO getUserAO() {
        return userAO;
    }

    public void setUserAO(UserAO userAO) {
        this.userAO = userAO;
    }

    public List<ReplyAO> getReplyAOList() {
        return replyAOList;
    }

    public void setReplyAOList(List<ReplyAO> replyAOList) {
        this.replyAOList = replyAOList;
    }
}
