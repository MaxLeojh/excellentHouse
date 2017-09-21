package edu.ynu.software.Rocket.excellentHouse.service;


import edu.ynu.software.Rocket.excellentHouse.eneityAO.PostAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Post;

import java.util.List;

/**
 * Created by August on 2017/9/15.
 */
public interface PostService {
    List<Post> seleceByEntityIdAndType(Integer entityId, String entityType);

    PostAO getById(Integer postId);

    List<PostAO> selectByEntityIdAndType(Integer entityId, String entityType);

    Integer insert(Post post);
}
