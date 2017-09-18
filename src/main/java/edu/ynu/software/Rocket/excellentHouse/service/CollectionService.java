package edu.ynu.software.Rocket.excellentHouse.service;

import edu.ynu.software.Rocket.excellentHouse.entity.Collection;

import java.util.List;

/**
 * Created by August on 2017/9/18.
 */
public interface CollectionService {
    Integer insertCollection(Collection collection);
    List<Collection> selectByIdAndType(Integer userId, Integer entityId, String entityType);
    Integer deleteCollection(Collection collection);
    List<Collection> getUserCollection(Integer userId, String entityType);
}
