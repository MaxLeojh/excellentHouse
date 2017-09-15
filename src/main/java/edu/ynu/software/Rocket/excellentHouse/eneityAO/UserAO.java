package edu.ynu.software.Rocket.excellentHouse.eneityAO;

import edu.ynu.software.Rocket.excellentHouse.entity.Picture;
import edu.ynu.software.Rocket.excellentHouse.entity.User;

import java.util.List;

/**
 * Created by August on 2017/9/15.
 */
public class UserAO {
    private User entity;
    private List<Picture> pictureList;

    public User getEntity() {
        return entity;
    }

    public void setEntity(User entity) {
        this.entity = entity;
    }

    public List<Picture> getPictureList() {
        return pictureList;
    }

    public void setPictureList(List<Picture> pictureList) {
        this.pictureList = pictureList;
    }
}
