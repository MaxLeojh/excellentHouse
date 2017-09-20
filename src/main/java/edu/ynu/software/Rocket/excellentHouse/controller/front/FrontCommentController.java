package edu.ynu.software.Rocket.excellentHouse.controller.front;

import com.alibaba.fastjson.JSONObject;
import edu.ynu.software.Rocket.excellentHouse.entity.Post;
import edu.ynu.software.Rocket.excellentHouse.entity.Reply;
import edu.ynu.software.Rocket.excellentHouse.service.PostService;
import edu.ynu.software.Rocket.excellentHouse.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by August on 2017/9/20.
 */
@Controller
@RequestMapping(value = "comment")
public class FrontCommentController {

    @Autowired
    PostService postService;

    @Autowired
    ReplyService replyService;

    @ResponseBody
    @RequestMapping(value = "post", method = RequestMethod.POST)
    public void post(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException,SQLException {
        JSONObject jsonObject = new JSONObject();

        Integer userId = new Integer(request.getParameter("userId"));
        Integer entityId = new Integer(request.getParameter("entityId"));
        String entityType = request.getParameter("entityType");
        String contains = request.getParameter("contains");

        Post post = new Post();
        post.setUserId(userId);
        post.setEntityId(entityId);
        post.setEntityType(entityType);
        post.setContains(contains);
        post.setIsVaild(true);

        try {
            Integer result = postService.insert(post);
            jsonObject.put("result", "success");
            response.getWriter().print(jsonObject.toString());
        }
        catch (Exception e) {
            jsonObject.put("result", "fail");
            jsonObject.put("error_info", e.getMessage());
            response.getWriter().print(jsonObject.toString());
        }
    }

    @ResponseBody
    @RequestMapping(value = "reply", method = RequestMethod.POST)
    public void reply(HttpServletRequest request, HttpServletResponse response, HttpSession session, Integer replyId) throws IOException,SQLException {
        JSONObject jsonObject = new JSONObject();

        Integer userId = new Integer(request.getParameter("userId"));
        Integer postId = new Integer(request.getParameter("postId"));
        String contains = request.getParameter("contains");

        Reply reply = new Reply();
        reply.setUserId(userId);
        reply.setPostId(postId);
        //如果是回复的回复
        if (replyId != null) {
            reply.setReplyId(replyId);
        }
        reply.setContains(contains);
        reply.setIsVaild(true);

        try {
            Integer result = replyService.insert(reply);
            jsonObject.put("result", "success");
            response.getWriter().print(jsonObject.toString());
        }
        catch (Exception e) {
            jsonObject.put("result", "fail");
            jsonObject.put("error_info", e.getMessage());
            response.getWriter().print(jsonObject.toString());
        }
    }
}
