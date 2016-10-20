package com.lt.cms.mapper;

import com.lt.cms.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * Created by litao on 2016/10/20.
 */
@Mapper
public interface UserMapper {

    @Select("select * from user where user_name = #{userName}")
    User findUser(@Param("userName") String userName);

}
