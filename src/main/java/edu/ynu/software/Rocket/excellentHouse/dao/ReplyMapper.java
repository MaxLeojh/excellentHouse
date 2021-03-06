package edu.ynu.software.Rocket.excellentHouse.dao;

import edu.ynu.software.Rocket.excellentHouse.entity.Reply;
import edu.ynu.software.Rocket.excellentHouse.entity.ReplyExample;
import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface ReplyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table reply
     *
     * @mbggenerated Wed Sep 20 14:31:38 CST 2017
     */
    int countByExample(ReplyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table reply
     *
     * @mbggenerated Wed Sep 20 14:31:38 CST 2017
     */
    int deleteByExample(ReplyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table reply
     *
     * @mbggenerated Wed Sep 20 14:31:38 CST 2017
     */
    @Delete({
        "delete from reply",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table reply
     *
     * @mbggenerated Wed Sep 20 14:31:38 CST 2017
     */
    @Insert({
        "insert into reply (id, user_id, ",
        "post_id, reply_id, ",
        "contains, create_time, ",
        "is_vaild)",
        "values (#{id,jdbcType=INTEGER}, #{userId,jdbcType=INTEGER}, ",
        "#{postId,jdbcType=INTEGER}, #{replyId,jdbcType=INTEGER}, ",
        "#{contains,jdbcType=VARCHAR}, #{createTime,jdbcType=TIMESTAMP}, ",
        "#{isVaild,jdbcType=BIT})"
    })
    int insert(Reply record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table reply
     *
     * @mbggenerated Wed Sep 20 14:31:38 CST 2017
     */
    int insertSelective(Reply record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table reply
     *
     * @mbggenerated Wed Sep 20 14:31:38 CST 2017
     */
    List<Reply> selectByExample(ReplyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table reply
     *
     * @mbggenerated Wed Sep 20 14:31:38 CST 2017
     */
    @Select({
        "select",
        "id, user_id, post_id, reply_id, contains, create_time, is_vaild",
        "from reply",
        "where id = #{id,jdbcType=INTEGER}"
    })
    @ResultMap("BaseResultMap")
    Reply selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table reply
     *
     * @mbggenerated Wed Sep 20 14:31:38 CST 2017
     */
    int updateByExampleSelective(@Param("record") Reply record, @Param("example") ReplyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table reply
     *
     * @mbggenerated Wed Sep 20 14:31:38 CST 2017
     */
    int updateByExample(@Param("record") Reply record, @Param("example") ReplyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table reply
     *
     * @mbggenerated Wed Sep 20 14:31:38 CST 2017
     */
    int updateByPrimaryKeySelective(Reply record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table reply
     *
     * @mbggenerated Wed Sep 20 14:31:38 CST 2017
     */
    @Update({
        "update reply",
        "set user_id = #{userId,jdbcType=INTEGER},",
          "post_id = #{postId,jdbcType=INTEGER},",
          "reply_id = #{replyId,jdbcType=INTEGER},",
          "contains = #{contains,jdbcType=VARCHAR},",
          "create_time = #{createTime,jdbcType=TIMESTAMP},",
          "is_vaild = #{isVaild,jdbcType=BIT}",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Reply record);
}