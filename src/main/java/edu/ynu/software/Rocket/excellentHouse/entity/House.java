package edu.ynu.software.Rocket.excellentHouse.entity;

import java.math.BigDecimal;
import java.util.Date;

public class House {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.premises_id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private Integer premisesId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.type_id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private Integer typeId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.user_id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private Integer userId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.kind
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private String kind;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.name
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.area
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private Float area;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.decoration
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private String decoration;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.floor
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private Integer floor;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.introduction
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private String introduction;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.house_price
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private BigDecimal housePrice;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.create_time
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.is_vaild
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private Boolean isVaild;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.city_id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private Integer cityId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.location_x
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private Float locationX;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.location_y
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private Float locationY;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.contact_name
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private String contactName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house.contact_phone
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    private String contactPhone;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public House(Integer id, Integer premisesId, Integer typeId, Integer userId, String kind, String name, Float area, String decoration, Integer floor, String introduction, BigDecimal housePrice, Date createTime, Boolean isVaild, Integer cityId, Float locationX, Float locationY, String contactName, String contactPhone) {
        this.id = id;
        this.premisesId = premisesId;
        this.typeId = typeId;
        this.userId = userId;
        this.kind = kind;
        this.name = name;
        this.area = area;
        this.decoration = decoration;
        this.floor = floor;
        this.introduction = introduction;
        this.housePrice = housePrice;
        this.createTime = createTime;
        this.isVaild = isVaild;
        this.cityId = cityId;
        this.locationX = locationX;
        this.locationY = locationY;
        this.contactName = contactName;
        this.contactPhone = contactPhone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public House() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.id
     *
     * @return the value of house.id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.id
     *
     * @param id the value for house.id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.premises_id
     *
     * @return the value of house.premises_id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public Integer getPremisesId() {
        return premisesId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.premises_id
     *
     * @param premisesId the value for house.premises_id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setPremisesId(Integer premisesId) {
        this.premisesId = premisesId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.type_id
     *
     * @return the value of house.type_id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public Integer getTypeId() {
        return typeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.type_id
     *
     * @param typeId the value for house.type_id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.user_id
     *
     * @return the value of house.user_id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.user_id
     *
     * @param userId the value for house.user_id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.kind
     *
     * @return the value of house.kind
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public String getKind() {
        return kind;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.kind
     *
     * @param kind the value for house.kind
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setKind(String kind) {
        this.kind = kind == null ? null : kind.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.name
     *
     * @return the value of house.name
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.name
     *
     * @param name the value for house.name
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.area
     *
     * @return the value of house.area
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public Float getArea() {
        return area;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.area
     *
     * @param area the value for house.area
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setArea(Float area) {
        this.area = area;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.decoration
     *
     * @return the value of house.decoration
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public String getDecoration() {
        return decoration;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.decoration
     *
     * @param decoration the value for house.decoration
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setDecoration(String decoration) {
        this.decoration = decoration == null ? null : decoration.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.floor
     *
     * @return the value of house.floor
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public Integer getFloor() {
        return floor;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.floor
     *
     * @param floor the value for house.floor
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setFloor(Integer floor) {
        this.floor = floor;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.introduction
     *
     * @return the value of house.introduction
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public String getIntroduction() {
        return introduction;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.introduction
     *
     * @param introduction the value for house.introduction
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setIntroduction(String introduction) {
        this.introduction = introduction == null ? null : introduction.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.house_price
     *
     * @return the value of house.house_price
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public BigDecimal getHousePrice() {
        return housePrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.house_price
     *
     * @param housePrice the value for house.house_price
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setHousePrice(BigDecimal housePrice) {
        this.housePrice = housePrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.create_time
     *
     * @return the value of house.create_time
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.create_time
     *
     * @param createTime the value for house.create_time
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.is_vaild
     *
     * @return the value of house.is_vaild
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public Boolean getIsVaild() {
        return isVaild;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.is_vaild
     *
     * @param isVaild the value for house.is_vaild
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setIsVaild(Boolean isVaild) {
        this.isVaild = isVaild;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.city_id
     *
     * @return the value of house.city_id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public Integer getCityId() {
        return cityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.city_id
     *
     * @param cityId the value for house.city_id
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.location_x
     *
     * @return the value of house.location_x
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public Float getLocationX() {
        return locationX;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.location_x
     *
     * @param locationX the value for house.location_x
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setLocationX(Float locationX) {
        this.locationX = locationX;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.location_y
     *
     * @return the value of house.location_y
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public Float getLocationY() {
        return locationY;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.location_y
     *
     * @param locationY the value for house.location_y
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setLocationY(Float locationY) {
        this.locationY = locationY;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.contact_name
     *
     * @return the value of house.contact_name
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public String getContactName() {
        return contactName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.contact_name
     *
     * @param contactName the value for house.contact_name
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setContactName(String contactName) {
        this.contactName = contactName == null ? null : contactName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house.contact_phone
     *
     * @return the value of house.contact_phone
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public String getContactPhone() {
        return contactPhone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house.contact_phone
     *
     * @param contactPhone the value for house.contact_phone
     *
     * @mbggenerated Fri Sep 22 04:55:08 CST 2017
     */
    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone == null ? null : contactPhone.trim();
    }
}