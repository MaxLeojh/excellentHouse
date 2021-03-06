package edu.ynu.software.Rocket.excellentHouse.dao;

import edu.ynu.software.Rocket.excellentHouse.entity.DecoCompany;
import edu.ynu.software.Rocket.excellentHouse.entity.DecoCompanyExample;
import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface DecoCompanyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table deco_company
     *
     * @mbggenerated Thu Sep 07 08:40:27 CST 2017
     */
    int countByExample(DecoCompanyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table deco_company
     *
     * @mbggenerated Thu Sep 07 08:40:27 CST 2017
     */
    int deleteByExample(DecoCompanyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table deco_company
     *
     * @mbggenerated Thu Sep 07 08:40:27 CST 2017
     */
    @Delete({
        "delete from deco_company",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table deco_company
     *
     * @mbggenerated Thu Sep 07 08:40:27 CST 2017
     */
    @Insert({
        "insert into deco_company (id, name, ",
        "location, phone, ",
        "create_time, is_vaild)",
        "values (#{id,jdbcType=INTEGER}, #{name,jdbcType=VARCHAR}, ",
        "#{location,jdbcType=VARCHAR}, #{phone,jdbcType=VARCHAR}, ",
        "#{createTime,jdbcType=TIMESTAMP}, #{isVaild,jdbcType=BIT})"
    })
    int insert(DecoCompany record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table deco_company
     *
     * @mbggenerated Thu Sep 07 08:40:27 CST 2017
     */
    int insertSelective(DecoCompany record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table deco_company
     *
     * @mbggenerated Thu Sep 07 08:40:27 CST 2017
     */
    List<DecoCompany> selectByExample(DecoCompanyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table deco_company
     *
     * @mbggenerated Thu Sep 07 08:40:27 CST 2017
     */
    @Select({
        "select",
        "id, name, location, phone, create_time, is_vaild",
        "from deco_company",
        "where id = #{id,jdbcType=INTEGER}"
    })
    @ResultMap("BaseResultMap")
    DecoCompany selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table deco_company
     *
     * @mbggenerated Thu Sep 07 08:40:27 CST 2017
     */
    int updateByExampleSelective(@Param("record") DecoCompany record, @Param("example") DecoCompanyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table deco_company
     *
     * @mbggenerated Thu Sep 07 08:40:27 CST 2017
     */
    int updateByExample(@Param("record") DecoCompany record, @Param("example") DecoCompanyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table deco_company
     *
     * @mbggenerated Thu Sep 07 08:40:27 CST 2017
     */
    int updateByPrimaryKeySelective(DecoCompany record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table deco_company
     *
     * @mbggenerated Thu Sep 07 08:40:27 CST 2017
     */
    @Update({
        "update deco_company",
        "set name = #{name,jdbcType=VARCHAR},",
          "location = #{location,jdbcType=VARCHAR},",
          "phone = #{phone,jdbcType=VARCHAR},",
          "create_time = #{createTime,jdbcType=TIMESTAMP},",
          "is_vaild = #{isVaild,jdbcType=BIT}",
        "where id = #{id,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(DecoCompany record);
}