package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.entity.Picture;

import java.util.List;

/**
 * Created by August on 2017/9/14.
 */
public interface PictureService {
    List<Picture> selectByEntityIdAndType(Integer entityId, String entityType);

    int insertPic(Picture record);

    int updatePic(Picture record);
}
