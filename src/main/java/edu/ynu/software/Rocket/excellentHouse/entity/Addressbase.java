package edu.ynu.software.Rocket.excellentHouse.entity;

public class Addressbase {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column addressbase.city_id
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    private String cityId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column addressbase.city_name
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    private String cityName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column addressbase.up_id
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    private String upId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column addressbase.kind_id
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    private String kindId;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table addressbase
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    public Addressbase(String cityId, String cityName, String upId, String kindId) {
        this.cityId = cityId;
        this.cityName = cityName;
        this.upId = upId;
        this.kindId = kindId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table addressbase
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    public Addressbase() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column addressbase.city_id
     *
     * @return the value of addressbase.city_id
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    public String getCityId() {
        return cityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column addressbase.city_id
     *
     * @param cityId the value for addressbase.city_id
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    public void setCityId(String cityId) {
        this.cityId = cityId == null ? null : cityId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column addressbase.city_name
     *
     * @return the value of addressbase.city_name
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    public String getCityName() {
        return cityName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column addressbase.city_name
     *
     * @param cityName the value for addressbase.city_name
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    public void setCityName(String cityName) {
        this.cityName = cityName == null ? null : cityName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column addressbase.up_id
     *
     * @return the value of addressbase.up_id
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    public String getUpId() {
        return upId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column addressbase.up_id
     *
     * @param upId the value for addressbase.up_id
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    public void setUpId(String upId) {
        this.upId = upId == null ? null : upId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column addressbase.kind_id
     *
     * @return the value of addressbase.kind_id
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    public String getKindId() {
        return kindId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column addressbase.kind_id
     *
     * @param kindId the value for addressbase.kind_id
     *
     * @mbggenerated Wed Sep 20 22:16:03 CST 2017
     */
    public void setKindId(String kindId) {
        this.kindId = kindId == null ? null : kindId.trim();
    }
}