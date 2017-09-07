package edu.ynu.software.Rocket.excellentHouse.entity;

import java.util.Date;

public class Picture {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column picture.id
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column picture.entity_id
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    private Integer entityId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column picture.entity_type
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    private String entityType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column picture.picture_address
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    private String pictureAddress;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column picture.create_time
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column picture.is_vaild
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    private Boolean isVaild;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table picture
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public Picture(Integer id, Integer entityId, String entityType, String pictureAddress, Date createTime, Boolean isVaild) {
        this.id = id;
        this.entityId = entityId;
        this.entityType = entityType;
        this.pictureAddress = pictureAddress;
        this.createTime = createTime;
        this.isVaild = isVaild;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table picture
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public Picture() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column picture.id
     *
     * @return the value of picture.id
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column picture.id
     *
     * @param id the value for picture.id
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column picture.entity_id
     *
     * @return the value of picture.entity_id
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public Integer getEntityId() {
        return entityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column picture.entity_id
     *
     * @param entityId the value for picture.entity_id
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public void setEntityId(Integer entityId) {
        this.entityId = entityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column picture.entity_type
     *
     * @return the value of picture.entity_type
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public String getEntityType() {
        return entityType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column picture.entity_type
     *
     * @param entityType the value for picture.entity_type
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public void setEntityType(String entityType) {
        this.entityType = entityType == null ? null : entityType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column picture.picture_address
     *
     * @return the value of picture.picture_address
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public String getPictureAddress() {
        return pictureAddress;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column picture.picture_address
     *
     * @param pictureAddress the value for picture.picture_address
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public void setPictureAddress(String pictureAddress) {
        this.pictureAddress = pictureAddress == null ? null : pictureAddress.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column picture.create_time
     *
     * @return the value of picture.create_time
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column picture.create_time
     *
     * @param createTime the value for picture.create_time
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column picture.is_vaild
     *
     * @return the value of picture.is_vaild
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public Boolean getIsVaild() {
        return isVaild;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column picture.is_vaild
     *
     * @param isVaild the value for picture.is_vaild
     *
     * @mbggenerated Thu Sep 07 08:40:53 CST 2017
     */
    public void setIsVaild(Boolean isVaild) {
        this.isVaild = isVaild;
    }
}