package edu.ynu.software.Rocket.excellentHouse.entity;

import java.math.BigDecimal;
import java.util.Date;

public class HouseType {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_type.id
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_type.premises_id
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    private Integer premisesId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_type.name
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_type.area
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    private Float area;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_type.ave_price
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    private BigDecimal avePrice;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_type.total_price
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    private BigDecimal totalPrice;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_type.bedroom_num
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    private Integer bedroomNum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_type.hall_num
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    private Integer hallNum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_type.bathroom_num
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    private Integer bathroomNum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_type.kitchen_num
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    private Integer kitchenNum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_type.introduction
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    private String introduction;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_type.create_time
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column house_type.is_vaild
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    private Boolean isVaild;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_type
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public HouseType(Integer id, Integer premisesId, String name, Float area, BigDecimal avePrice, BigDecimal totalPrice, Integer bedroomNum, Integer hallNum, Integer bathroomNum, Integer kitchenNum, String introduction, Date createTime, Boolean isVaild) {
        this.id = id;
        this.premisesId = premisesId;
        this.name = name;
        this.area = area;
        this.avePrice = avePrice;
        this.totalPrice = totalPrice;
        this.bedroomNum = bedroomNum;
        this.hallNum = hallNum;
        this.bathroomNum = bathroomNum;
        this.kitchenNum = kitchenNum;
        this.introduction = introduction;
        this.createTime = createTime;
        this.isVaild = isVaild;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_type
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public HouseType() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_type.id
     *
     * @return the value of house_type.id
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_type.id
     *
     * @param id the value for house_type.id
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_type.premises_id
     *
     * @return the value of house_type.premises_id
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public Integer getPremisesId() {
        return premisesId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_type.premises_id
     *
     * @param premisesId the value for house_type.premises_id
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public void setPremisesId(Integer premisesId) {
        this.premisesId = premisesId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_type.name
     *
     * @return the value of house_type.name
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_type.name
     *
     * @param name the value for house_type.name
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_type.area
     *
     * @return the value of house_type.area
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public Float getArea() {
        return area;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_type.area
     *
     * @param area the value for house_type.area
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public void setArea(Float area) {
        this.area = area;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_type.ave_price
     *
     * @return the value of house_type.ave_price
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public BigDecimal getAvePrice() {
        return avePrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_type.ave_price
     *
     * @param avePrice the value for house_type.ave_price
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public void setAvePrice(BigDecimal avePrice) {
        this.avePrice = avePrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_type.total_price
     *
     * @return the value of house_type.total_price
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_type.total_price
     *
     * @param totalPrice the value for house_type.total_price
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_type.bedroom_num
     *
     * @return the value of house_type.bedroom_num
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public Integer getBedroomNum() {
        return bedroomNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_type.bedroom_num
     *
     * @param bedroomNum the value for house_type.bedroom_num
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public void setBedroomNum(Integer bedroomNum) {
        this.bedroomNum = bedroomNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_type.hall_num
     *
     * @return the value of house_type.hall_num
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public Integer getHallNum() {
        return hallNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_type.hall_num
     *
     * @param hallNum the value for house_type.hall_num
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public void setHallNum(Integer hallNum) {
        this.hallNum = hallNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_type.bathroom_num
     *
     * @return the value of house_type.bathroom_num
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public Integer getBathroomNum() {
        return bathroomNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_type.bathroom_num
     *
     * @param bathroomNum the value for house_type.bathroom_num
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public void setBathroomNum(Integer bathroomNum) {
        this.bathroomNum = bathroomNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_type.kitchen_num
     *
     * @return the value of house_type.kitchen_num
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public Integer getKitchenNum() {
        return kitchenNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_type.kitchen_num
     *
     * @param kitchenNum the value for house_type.kitchen_num
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public void setKitchenNum(Integer kitchenNum) {
        this.kitchenNum = kitchenNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_type.introduction
     *
     * @return the value of house_type.introduction
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public String getIntroduction() {
        return introduction;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_type.introduction
     *
     * @param introduction the value for house_type.introduction
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public void setIntroduction(String introduction) {
        this.introduction = introduction == null ? null : introduction.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_type.create_time
     *
     * @return the value of house_type.create_time
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_type.create_time
     *
     * @param createTime the value for house_type.create_time
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column house_type.is_vaild
     *
     * @return the value of house_type.is_vaild
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public Boolean getIsVaild() {
        return isVaild;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column house_type.is_vaild
     *
     * @param isVaild the value for house_type.is_vaild
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    public void setIsVaild(Boolean isVaild) {
        this.isVaild = isVaild;
    }
}