package edu.ynu.software.Rocket.excellentHouse.entity;

import java.util.Date;

public class Collection {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column collection.id
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column collection.user_id
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    private Integer userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column collection.entity_id
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    private Integer entityId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column collection.entity_type
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    private String entityType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column collection.create_time
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column collection.is_vaild
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    private Boolean isVaild;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table collection
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public Collection(Integer id, Integer userId, Integer entityId, String entityType, Date createTime, Boolean isVaild) {
        this.id = id;
        this.userId = userId;
        this.entityId = entityId;
        this.entityType = entityType;
        this.createTime = createTime;
        this.isVaild = isVaild;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table collection
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public Collection() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column collection.id
     *
     * @return the value of collection.id
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column collection.id
     *
     * @param id the value for collection.id
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column collection.user_id
     *
     * @return the value of collection.user_id
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column collection.user_id
     *
     * @param userId the value for collection.user_id
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column collection.entity_id
     *
     * @return the value of collection.entity_id
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public Integer getEntityId() {
        return entityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column collection.entity_id
     *
     * @param entityId the value for collection.entity_id
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public void setEntityId(Integer entityId) {
        this.entityId = entityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column collection.entity_type
     *
     * @return the value of collection.entity_type
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public String getEntityType() {
        return entityType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column collection.entity_type
     *
     * @param entityType the value for collection.entity_type
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public void setEntityType(String entityType) {
        this.entityType = entityType == null ? null : entityType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column collection.create_time
     *
     * @return the value of collection.create_time
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column collection.create_time
     *
     * @param createTime the value for collection.create_time
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column collection.is_vaild
     *
     * @return the value of collection.is_vaild
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public Boolean getIsVaild() {
        return isVaild;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column collection.is_vaild
     *
     * @param isVaild the value for collection.is_vaild
     *
     * @mbggenerated Mon Sep 18 11:22:47 CST 2017
     */
    public void setIsVaild(Boolean isVaild) {
        this.isVaild = isVaild;
    }
}