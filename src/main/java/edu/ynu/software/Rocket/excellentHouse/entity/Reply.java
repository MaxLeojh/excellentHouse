package edu.ynu.software.Rocket.excellentHouse.entity;

import java.util.Date;

public class Reply {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column reply.id
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column reply.user_id
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    private Integer userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column reply.premises_id
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    private Integer premisesId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column reply.reply_id
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    private Integer replyId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column reply.contains
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    private String contains;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column reply.create_time
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column reply.is_vaild
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    private Boolean isVaild;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table reply
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public Reply(Integer id, Integer userId, Integer premisesId, Integer replyId, String contains, Date createTime, Boolean isVaild) {
        this.id = id;
        this.userId = userId;
        this.premisesId = premisesId;
        this.replyId = replyId;
        this.contains = contains;
        this.createTime = createTime;
        this.isVaild = isVaild;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table reply
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public Reply() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column reply.id
     *
     * @return the value of reply.id
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column reply.id
     *
     * @param id the value for reply.id
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column reply.user_id
     *
     * @return the value of reply.user_id
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column reply.user_id
     *
     * @param userId the value for reply.user_id
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column reply.premises_id
     *
     * @return the value of reply.premises_id
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public Integer getPremisesId() {
        return premisesId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column reply.premises_id
     *
     * @param premisesId the value for reply.premises_id
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public void setPremisesId(Integer premisesId) {
        this.premisesId = premisesId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column reply.reply_id
     *
     * @return the value of reply.reply_id
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public Integer getReplyId() {
        return replyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column reply.reply_id
     *
     * @param replyId the value for reply.reply_id
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public void setReplyId(Integer replyId) {
        this.replyId = replyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column reply.contains
     *
     * @return the value of reply.contains
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public String getContains() {
        return contains;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column reply.contains
     *
     * @param contains the value for reply.contains
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public void setContains(String contains) {
        this.contains = contains == null ? null : contains.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column reply.create_time
     *
     * @return the value of reply.create_time
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column reply.create_time
     *
     * @param createTime the value for reply.create_time
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column reply.is_vaild
     *
     * @return the value of reply.is_vaild
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public Boolean getIsVaild() {
        return isVaild;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column reply.is_vaild
     *
     * @param isVaild the value for reply.is_vaild
     *
     * @mbggenerated Thu Sep 07 08:41:09 CST 2017
     */
    public void setIsVaild(Boolean isVaild) {
        this.isVaild = isVaild;
    }
}