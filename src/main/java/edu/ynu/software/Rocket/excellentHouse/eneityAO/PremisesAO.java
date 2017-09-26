package edu.ynu.software.Rocket.excellentHouse.eneityAO;

import edu.ynu.software.Rocket.excellentHouse.entity.*;

import java.util.List;

/**
 * 楼盘拓展
 * Created by August on 2017/9/11.
 */
public class PremisesAO {
    private Premises entity;

    private String location;

    private Company company;

    private List<HouseType> houseTypeList;

    private List<Picture> pictureList;

    private List<PostAO> postAOList;

    public Premises getEntity() {
        return entity;
    }

    public void setEntity(Premises entity) {
        this.entity = entity;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public List<HouseType> getHouseTypeList() {
        return houseTypeList;
    }

    public void setHouseTypeList(List<HouseType> houseTypeList) {
        this.houseTypeList = houseTypeList;
    }

    public List<Picture> getPictureList() {
        return pictureList;
    }

    public void setPictureList(List<Picture> pictureList) {
        this.pictureList = pictureList;
    }

    public List<PostAO> getPostAOList() {
        return postAOList;
    }

    public void setPostAOList(List<PostAO> postAOList) {
        this.postAOList = postAOList;
    }
}
