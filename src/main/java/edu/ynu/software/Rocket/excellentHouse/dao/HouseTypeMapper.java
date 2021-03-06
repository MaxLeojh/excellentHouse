package edu.ynu.software.Rocket.excellentHouse.dao;

import edu.ynu.software.Rocket.excellentHouse.entity.HouseType;
import edu.ynu.software.Rocket.excellentHouse.entity.HouseTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

public interface HouseTypeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_type
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    int countByExample(HouseTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_type
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    int deleteByExample(HouseTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_type
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    @Delete({
        "delete from house_type",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_type
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    @Insert({
        "insert into house_type (premises_id, name, ",
        "area, ave_price, total_price, ",
        "bedroom_num, hall_num, ",
        "bathroom_num, kitchen_num, ",
        "introduction, create_time, ",
        "is_vaild)",
        "values (#{premisesId,jdbcType=INTEGER}, #{name,jdbcType=VARCHAR}, ",
        "#{area,jdbcType=REAL}, #{avePrice,jdbcType=DECIMAL}, #{totalPrice,jdbcType=DECIMAL}, ",
        "#{bedroomNum,jdbcType=INTEGER}, #{hallNum,jdbcType=INTEGER}, ",
        "#{bathroomNum,jdbcType=INTEGER}, #{kitchenNum,jdbcType=INTEGER}, ",
        "#{introduction,jdbcType=VARCHAR}, #{createTime,jdbcType=TIMESTAMP}, ",
        "#{isVaild,jdbcType=BIT})"
    })
    @SelectKey(statement="SELECT LAST_INSERT_ID()", keyProperty="id", before=false, resultType=Integer.class)
    int insert(HouseType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_type
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    int insertSelective(HouseType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_type
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    List<HouseType> selectByExample(HouseTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_type
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    @Select({
        "select",
        "id, premises_id, name, area, ave_price, total_price, bedroom_num, hall_num, ",
        "bathroom_num, kitchen_num, introduction, create_time, is_vaild",
        "from house_type",
        "where id = #{id,jdbcType=INTEGER}"
    })
    @ResultMap("BaseResultMap")
    HouseType selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_type
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    int updateByExampleSelective(@Param("record") HouseType record, @Param("example") HouseTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_type
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    int updateByExample(@Param("record") HouseType record, @Param("example") HouseTypeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_type
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    int updateByPrimaryKeySelective(HouseType record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table house_type
     *
     * @mbggenerated Mon Sep 25 20:03:14 CST 2017
     */
    @Update({
        "update house_type",
        "set premises_id = #{premisesId,jdbcType=INTEGER},",
          "name = #{name,jdbcType=VARCHAR},",
          "area = #{area,jdbcType=REAL},",
          "ave_price = #{avePrice,jdbcType=DECIMAL},",
          "total_price = #{totalPrice,jdbcType=DECIMAL},",
          "bedroom_num = #{bedroomNum,jdbcType=INTEGER},",
          "hall_num = #{hallNum,jdbcType=INTEGER},",
          "bathroom_num = #{bathroomNum,jdbcType=INTEGER},",
          "kitchen_num = #{kitchenNum,jdbcType=INTEGER},",
          "introduction = #{introduction,jdbcType=VARCHAR},",
          "create_time = #{createTime,jdbcType=TIMESTAMP},",
          "is_vaild = #{isVaild,jdbcType=BIT}",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(HouseType record);
}