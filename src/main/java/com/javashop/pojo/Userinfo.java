package com.javashop.pojo;


public class Userinfo {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column userinfo.userid
     *
     * @mbggenerated Tue Nov 29 10:10:24 CST 2022
     */
    private Integer userid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column userinfo.username
     *
     * @mbggenerated Tue Nov 29 10:10:24 CST 2022
     */
    private String username;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column userinfo.pwd
     *
     * @mbggenerated Tue Nov 29 10:10:24 CST 2022
     */
    private String pwd;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column userinfo.userid
     *
     * @return the value of userinfo.userid
     * @mbggenerated Tue Nov 29 10:10:24 CST 2022
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column userinfo.userid
     *
     * @param userid the value for userinfo.userid
     * @mbggenerated Tue Nov 29 10:10:24 CST 2022
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column userinfo.username
     *
     * @return the value of userinfo.username
     * @mbggenerated Tue Nov 29 10:10:24 CST 2022
     */
    public String getUsername() {
        return username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column userinfo.username
     *
     * @param username the value for userinfo.username
     * @mbggenerated Tue Nov 29 10:10:24 CST 2022
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column userinfo.pwd
     *
     * @return the value of userinfo.pwd
     * @mbggenerated Tue Nov 29 10:10:24 CST 2022
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column userinfo.pwd
     *
     * @param pwd the value for userinfo.pwd
     * @mbggenerated Tue Nov 29 10:10:24 CST 2022
     */
    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public Userinfo() {
    }

    public Userinfo(Integer userid, String username, String pwd) {
        this.userid = userid;
        this.username = username;
        this.pwd = pwd;
    }
}