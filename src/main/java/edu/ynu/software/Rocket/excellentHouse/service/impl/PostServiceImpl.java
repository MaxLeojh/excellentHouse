package edu.ynu.software.Rocket.excellentHouse.service.impl;

import edu.ynu.software.Rocket.excellentHouse.dao.PostMapper;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.PostAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.ReplyAO;
import edu.ynu.software.Rocket.excellentHouse.eneityAO.UserAO;
import edu.ynu.software.Rocket.excellentHouse.entity.Post;
import edu.ynu.software.Rocket.excellentHouse.entity.PostExample;
import edu.ynu.software.Rocket.excellentHouse.service.PostService;
import edu.ynu.software.Rocket.excellentHouse.service.ReplyService;
import edu.ynu.software.Rocket.excellentHouse.service.UserService;
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

    @Autowired
    UserService userService;

    @Autowired
    ReplyService replyService;

    public List<Post> seleceByEntityIdAndType(Integer entityId, String entityType) {
        List<Post> postList = new ArrayList<Post>();

        PostExample example = new PostExample();
        example.createCriteria().andEntityIdEqualTo(entityId).andEntityTypeEqualTo(entityType);
        postList = postMapper.selectByExample(example);

        return postList;
    }

    public PostAO getById(Integer postId) {
        PostAO postAO = new PostAO();

        Post post = new Post();
        post = postMapper.selectByPrimaryKey(postId);
        postAO.setEntity(post);

        UserAO userAO = new UserAO();
        userAO = userService.selectById(post.getUserId());
        postAO.setUserAO(userAO);

        List<ReplyAO> replyAOList = new ArrayList<ReplyAO>();
        replyAOList = replyService.selectByPremisesId(post.getId());
        postAO.setReplyAOList(replyAOList);

        return postAO;
    }

    public List<PostAO> selectByEntityIdAndType(Integer entityId, String entityType) {
        List<PostAO> postAOList = new ArrayList<PostAO>();

        List<Post> postList = new ArrayList<Post>();
        PostExample postExample = new PostExample();
        postExample.createCriteria().andEntityIdEqualTo(entityId).andEntityTypeEqualTo(entityType);
        postList = postMapper.selectByExample(postExample);

        for (Post post : postList) {
            PostAO postAO = new PostAO();
            postAO = getById(post.getId());
            postAOList.add(postAO);
        }

        return postAOList;
    }

    public Integer insert(Post post) {
        return postMapper.insert(post);
    }
}
