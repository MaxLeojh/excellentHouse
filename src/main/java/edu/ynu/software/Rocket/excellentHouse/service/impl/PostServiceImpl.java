package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.PostMapper;
import edu.ynu.software.Rocket.excellentHouse.entity.Post;
import edu.ynu.software.Rocket.excellentHouse.entity.PostExample;
import edu.ynu.software.Rocket.excellentHouse.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by August on 2017/9/15.
 */
@Service
public class PostServiceImpl implements PostService {

    @Autowired
    PostMapper postMapper;

    public List<Post> seleceByEntityIdAndType(Integer entityId, String entityType) {
        List<Post> postList = new ArrayList<Post>();

        PostExample example = new PostExample();
        example.createCriteria().andEntityIdEqualTo(entityId).andEntityTypeEqualTo(entityType);
        postList = postMapper.selectByExample(example);

        return postList;
    }
}
