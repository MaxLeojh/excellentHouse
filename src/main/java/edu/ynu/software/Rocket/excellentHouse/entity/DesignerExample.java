package edu.ynu.software.Rocket.excellentHouse.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DesignerExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    public DesignerExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andDecoCompanyIdIsNull() {
            addCriterion("deco_company_id is null");
            return (Criteria) this;
        }

        public Criteria andDecoCompanyIdIsNotNull() {
            addCriterion("deco_company_id is not null");
            return (Criteria) this;
        }

        public Criteria andDecoCompanyIdEqualTo(Integer value) {
            addCriterion("deco_company_id =", value, "decoCompanyId");
            return (Criteria) this;
        }

        public Criteria andDecoCompanyIdNotEqualTo(Integer value) {
            addCriterion("deco_company_id <>", value, "decoCompanyId");
            return (Criteria) this;
        }

        public Criteria andDecoCompanyIdGreaterThan(Integer value) {
            addCriterion("deco_company_id >", value, "decoCompanyId");
            return (Criteria) this;
        }

        public Criteria andDecoCompanyIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("deco_company_id >=", value, "decoCompanyId");
            return (Criteria) this;
        }

        public Criteria andDecoCompanyIdLessThan(Integer value) {
            addCriterion("deco_company_id <", value, "decoCompanyId");
            return (Criteria) this;
        }

        public Criteria andDecoCompanyIdLessThanOrEqualTo(Integer value) {
            addCriterion("deco_company_id <=", value, "decoCompanyId");
            return (Criteria) this;
        }

        public Criteria andDecoCompanyIdIn(List<Integer> values) {
            addCriterion("deco_company_id in", values, "decoCompanyId");
            return (Criteria) this;
        }

        public Criteria andDecoCompanyIdNotIn(List<Integer> values) {
            addCriterion("deco_company_id not in", values, "decoCompanyId");
            return (Criteria) this;
        }

        public Criteria andDecoCompanyIdBetween(Integer value1, Integer value2) {
            addCriterion("deco_company_id between", value1, value2, "decoCompanyId");
            return (Criteria) this;
        }

        public Criteria andDecoCompanyIdNotBetween(Integer value1, Integer value2) {
            addCriterion("deco_company_id not between", value1, value2, "decoCompanyId");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andWellInStyleIsNull() {
            addCriterion("well_in_style is null");
            return (Criteria) this;
        }

        public Criteria andWellInStyleIsNotNull() {
            addCriterion("well_in_style is not null");
            return (Criteria) this;
        }

        public Criteria andWellInStyleEqualTo(String value) {
            addCriterion("well_in_style =", value, "wellInStyle");
            return (Criteria) this;
        }

        public Criteria andWellInStyleNotEqualTo(String value) {
            addCriterion("well_in_style <>", value, "wellInStyle");
            return (Criteria) this;
        }

        public Criteria andWellInStyleGreaterThan(String value) {
            addCriterion("well_in_style >", value, "wellInStyle");
            return (Criteria) this;
        }

        public Criteria andWellInStyleGreaterThanOrEqualTo(String value) {
            addCriterion("well_in_style >=", value, "wellInStyle");
            return (Criteria) this;
        }

        public Criteria andWellInStyleLessThan(String value) {
            addCriterion("well_in_style <", value, "wellInStyle");
            return (Criteria) this;
        }

        public Criteria andWellInStyleLessThanOrEqualTo(String value) {
            addCriterion("well_in_style <=", value, "wellInStyle");
            return (Criteria) this;
        }

        public Criteria andWellInStyleLike(String value) {
            addCriterion("well_in_style like", value, "wellInStyle");
            return (Criteria) this;
        }

        public Criteria andWellInStyleNotLike(String value) {
            addCriterion("well_in_style not like", value, "wellInStyle");
            return (Criteria) this;
        }

        public Criteria andWellInStyleIn(List<String> values) {
            addCriterion("well_in_style in", values, "wellInStyle");
            return (Criteria) this;
        }

        public Criteria andWellInStyleNotIn(List<String> values) {
            addCriterion("well_in_style not in", values, "wellInStyle");
            return (Criteria) this;
        }

        public Criteria andWellInStyleBetween(String value1, String value2) {
            addCriterion("well_in_style between", value1, value2, "wellInStyle");
            return (Criteria) this;
        }

        public Criteria andWellInStyleNotBetween(String value1, String value2) {
            addCriterion("well_in_style not between", value1, value2, "wellInStyle");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNull() {
            addCriterion("phone is null");
            return (Criteria) this;
        }

        public Criteria andPhoneIsNotNull() {
            addCriterion("phone is not null");
            return (Criteria) this;
        }

        public Criteria andPhoneEqualTo(String value) {
            addCriterion("phone =", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotEqualTo(String value) {
            addCriterion("phone <>", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThan(String value) {
            addCriterion("phone >", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("phone >=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThan(String value) {
            addCriterion("phone <", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLessThanOrEqualTo(String value) {
            addCriterion("phone <=", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneLike(String value) {
            addCriterion("phone like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotLike(String value) {
            addCriterion("phone not like", value, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneIn(List<String> values) {
            addCriterion("phone in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotIn(List<String> values) {
            addCriterion("phone not in", values, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneBetween(String value1, String value2) {
            addCriterion("phone between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andPhoneNotBetween(String value1, String value2) {
            addCriterion("phone not between", value1, value2, "phone");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andIsVaildIsNull() {
            addCriterion("is_vaild is null");
            return (Criteria) this;
        }

        public Criteria andIsVaildIsNotNull() {
            addCriterion("is_vaild is not null");
            return (Criteria) this;
        }

        public Criteria andIsVaildEqualTo(Boolean value) {
            addCriterion("is_vaild =", value, "isVaild");
            return (Criteria) this;
        }

        public Criteria andIsVaildNotEqualTo(Boolean value) {
            addCriterion("is_vaild <>", value, "isVaild");
            return (Criteria) this;
        }

        public Criteria andIsVaildGreaterThan(Boolean value) {
            addCriterion("is_vaild >", value, "isVaild");
            return (Criteria) this;
        }

        public Criteria andIsVaildGreaterThanOrEqualTo(Boolean value) {
            addCriterion("is_vaild >=", value, "isVaild");
            return (Criteria) this;
        }

        public Criteria andIsVaildLessThan(Boolean value) {
            addCriterion("is_vaild <", value, "isVaild");
            return (Criteria) this;
        }

        public Criteria andIsVaildLessThanOrEqualTo(Boolean value) {
            addCriterion("is_vaild <=", value, "isVaild");
            return (Criteria) this;
        }

        public Criteria andIsVaildIn(List<Boolean> values) {
            addCriterion("is_vaild in", values, "isVaild");
            return (Criteria) this;
        }

        public Criteria andIsVaildNotIn(List<Boolean> values) {
            addCriterion("is_vaild not in", values, "isVaild");
            return (Criteria) this;
        }

        public Criteria andIsVaildBetween(Boolean value1, Boolean value2) {
            addCriterion("is_vaild between", value1, value2, "isVaild");
            return (Criteria) this;
        }

        public Criteria andIsVaildNotBetween(Boolean value1, Boolean value2) {
            addCriterion("is_vaild not between", value1, value2, "isVaild");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table designer
     *
     * @mbggenerated do_not_delete_during_merge Thu Sep 07 08:40:39 CST 2017
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table designer
     *
     * @mbggenerated Thu Sep 07 08:40:39 CST 2017
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}