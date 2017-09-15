package edu.ynu.software.Rocket.excellentHouse.eneityAO;

import edu.ynu.software.Rocket.excellentHouse.entity.House;
import edu.ynu.software.Rocket.excellentHouse.entity.HouseType;
import edu.ynu.software.Rocket.excellentHouse.entity.Picture;
import edu.ynu.software.Rocket.excellentHouse.entity.Post;

import java.util.List;

/**
 * Created by August on 2017/9/11.
 */
public class HouseAO {
    private House entity;
    private HouseType type;
    private UserAO userAO;
    private List<Picture> pictureList;
    private List<Post> postList;

    public House getEntity() {
        return entity;
    }

    public void setEntity(House entity) {
        this.entity = entity;
    }

    public HouseType getType() {
        return type;
    }

    public void setType(HouseType type) {
        this.type = type;
    }

    public List<Picture> getPictureList() {
        return pictureList;
    }

    public void setPictureList(List<Picture> pictureList) {
        this.pictureList = pictureList;
    }

    public List<Post> getPostList() {
        return postList;
    }

    public void setPostList(List<Post> postList) {
        this.postList = postList;
    }

    public UserAO getUserAO() {
        return userAO;
    }

    public void setUserAO(UserAO userAO) {
        this.userAO = userAO;
    }
}
