package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.entity.Picture;

import java.util.List;

/**
 * Created by August on 2017/9/14.
 */
public interface PictureService {
    public List<Picture> selectByEntityIdAndType(Integer entityId, String entityType);

    public int insertPic(Picture record);

    public int updatePic(Picture record);
}
