package edu.ynu.software.Rocket.excellentHouse.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Premises {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.id
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.company_id
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Integer companyId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.name
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.location
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Object location;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.address
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private String address;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.price
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private BigDecimal price;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.phone
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private String phone;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.opening_time
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Date openingTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.create_time
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.is_valid
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Boolean isValid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.state
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Integer state;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.serviceable_year
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Integer serviceableYear;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.sale_address
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private String saleAddress;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.deliver_time
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Date deliverTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.licence_number
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private String licenceNumber;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.licence_time
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Date licenceTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.licence_info
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private String licenceInfo;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.area
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Integer area;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.parking_number
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Integer parkingNumber;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.greening_rate
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Float greeningRate;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.introction
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private String introction;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column premises.type
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    private Integer type;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table premises
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Premises(Integer id, Integer companyId, String name, Object location, String address, BigDecimal price, String phone, Date openingTime, Date createTime, Boolean isValid, Integer state, Integer serviceableYear, String saleAddress, Date deliverTime, String licenceNumber, Date licenceTime, String licenceInfo, Integer area, Integer parkingNumber, Float greeningRate, String introction, Integer type) {
        this.id = id;
        this.companyId = companyId;
        this.name = name;
        this.location = location;
        this.address = address;
        this.price = price;
        this.phone = phone;
        this.openingTime = openingTime;
        this.createTime = createTime;
        this.isValid = isValid;
        this.state = state;
        this.serviceableYear = serviceableYear;
        this.saleAddress = saleAddress;
        this.deliverTime = deliverTime;
        this.licenceNumber = licenceNumber;
        this.licenceTime = licenceTime;
        this.licenceInfo = licenceInfo;
        this.area = area;
        this.parkingNumber = parkingNumber;
        this.greeningRate = greeningRate;
        this.introction = introction;
        this.type = type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table premises
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Premises() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.id
     *
     * @return the value of premises.id
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.id
     *
     * @param id the value for premises.id
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.company_id
     *
     * @return the value of premises.company_id
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Integer getCompanyId() {
        return companyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.company_id
     *
     * @param companyId the value for premises.company_id
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.name
     *
     * @return the value of premises.name
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.name
     *
     * @param name the value for premises.name
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.location
     *
     * @return the value of premises.location
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Object getLocation() {
        return location;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.location
     *
     * @param location the value for premises.location
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setLocation(Object location) {
        this.location = location;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.address
     *
     * @return the value of premises.address
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public String getAddress() {
        return address;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.address
     *
     * @param address the value for premises.address
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.price
     *
     * @return the value of premises.price
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public BigDecimal getPrice() {
        return price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.price
     *
     * @param price the value for premises.price
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.phone
     *
     * @return the value of premises.phone
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public String getPhone() {
        return phone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.phone
     *
     * @param phone the value for premises.phone
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.opening_time
     *
     * @return the value of premises.opening_time
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Date getOpeningTime() {
        return openingTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.opening_time
     *
     * @param openingTime the value for premises.opening_time
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setOpeningTime(Date openingTime) {
        this.openingTime = openingTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.create_time
     *
     * @return the value of premises.create_time
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.create_time
     *
     * @param createTime the value for premises.create_time
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.is_valid
     *
     * @return the value of premises.is_valid
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Boolean getIsValid() {
        return isValid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.is_valid
     *
     * @param isValid the value for premises.is_valid
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setIsValid(Boolean isValid) {
        this.isValid = isValid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.state
     *
     * @return the value of premises.state
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Integer getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.state
     *
     * @param state the value for premises.state
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setState(Integer state) {
        this.state = state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.serviceable_year
     *
     * @return the value of premises.serviceable_year
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Integer getServiceableYear() {
        return serviceableYear;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.serviceable_year
     *
     * @param serviceableYear the value for premises.serviceable_year
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setServiceableYear(Integer serviceableYear) {
        this.serviceableYear = serviceableYear;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.sale_address
     *
     * @return the value of premises.sale_address
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public String getSaleAddress() {
        return saleAddress;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.sale_address
     *
     * @param saleAddress the value for premises.sale_address
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setSaleAddress(String saleAddress) {
        this.saleAddress = saleAddress == null ? null : saleAddress.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.deliver_time
     *
     * @return the value of premises.deliver_time
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Date getDeliverTime() {
        return deliverTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.deliver_time
     *
     * @param deliverTime the value for premises.deliver_time
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setDeliverTime(Date deliverTime) {
        this.deliverTime = deliverTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.licence_number
     *
     * @return the value of premises.licence_number
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public String getLicenceNumber() {
        return licenceNumber;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.licence_number
     *
     * @param licenceNumber the value for premises.licence_number
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setLicenceNumber(String licenceNumber) {
        this.licenceNumber = licenceNumber == null ? null : licenceNumber.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.licence_time
     *
     * @return the value of premises.licence_time
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Date getLicenceTime() {
        return licenceTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.licence_time
     *
     * @param licenceTime the value for premises.licence_time
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setLicenceTime(Date licenceTime) {
        this.licenceTime = licenceTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.licence_info
     *
     * @return the value of premises.licence_info
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public String getLicenceInfo() {
        return licenceInfo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.licence_info
     *
     * @param licenceInfo the value for premises.licence_info
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setLicenceInfo(String licenceInfo) {
        this.licenceInfo = licenceInfo == null ? null : licenceInfo.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.area
     *
     * @return the value of premises.area
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Integer getArea() {
        return area;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.area
     *
     * @param area the value for premises.area
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setArea(Integer area) {
        this.area = area;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.parking_number
     *
     * @return the value of premises.parking_number
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Integer getParkingNumber() {
        return parkingNumber;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.parking_number
     *
     * @param parkingNumber the value for premises.parking_number
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setParkingNumber(Integer parkingNumber) {
        this.parkingNumber = parkingNumber;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.greening_rate
     *
     * @return the value of premises.greening_rate
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Float getGreeningRate() {
        return greeningRate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.greening_rate
     *
     * @param greeningRate the value for premises.greening_rate
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setGreeningRate(Float greeningRate) {
        this.greeningRate = greeningRate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.introction
     *
     * @return the value of premises.introction
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public String getIntroction() {
        return introction;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.introction
     *
     * @param introction the value for premises.introction
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setIntroction(String introction) {
        this.introction = introction == null ? null : introction.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column premises.type
     *
     * @return the value of premises.type
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public Integer getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column premises.type
     *
     * @param type the value for premises.type
     *
     * @mbggenerated Fri Sep 08 11:50:31 CST 2017
     */
    public void setType(Integer type) {
        this.type = type;
    }
}