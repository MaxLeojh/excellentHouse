package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.CollectionMapper;
import edu.ynu.software.Rocket.excellentHouse.entity.Collection;
import edu.ynu.software.Rocket.excellentHouse.entity.CollectionExample;
import edu.ynu.software.Rocket.excellentHouse.service.CollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by August on 2017/9/18.
 */
@Service
public class CollectionServiceImpl implements CollectionService {

    @Autowired
    CollectionMapper collectionMapper;

    public Integer insertCollection(Collection collection) {
        return collectionMapper.insert(collection);
    }

    public List<Collection> selectByIdAndType(Integer userId, Integer entityId, String entityType) {
        List<Collection> collectionList = new ArrayList<Collection>();

        CollectionExample example = new CollectionExample();
        example.createCriteria().andUserIdEqualTo(userId).andEntityIdEqualTo(entityId).andEntityTypeEqualTo(entityType).andIsVaildEqualTo(true);
        collectionList = collectionMapper.selectByExample(example);

        return collectionList;
    }

    public Integer deleteCollection(Collection collection) {
        CollectionExample example = new CollectionExample();
        example.createCriteria().andUserIdEqualTo(collection.getUserId()).andEntityIdEqualTo(collection.getEntityId())
                .andEntityTypeEqualTo(collection.getEntityType()).andIsVaildEqualTo(true);

        return collectionMapper.updateByExample(collection, example);
    }

    public List<Collection> getUserCollection(Integer userId, String entityType) {
        List<Collection> collectionList = new ArrayList<Collection>();

        CollectionExample example = new CollectionExample();
        example.createCriteria().andUserIdEqualTo(userId).andEntityTypeEqualTo(entityType).andIsVaildEqualTo(true);
        collectionList = collectionMapper.selectByExample(example);

        return collectionList;
    }
}
