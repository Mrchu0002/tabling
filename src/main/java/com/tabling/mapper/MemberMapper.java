package com.tabling.mapper;

import org.apache.ibatis.annotations.Param;

import com.tabling.security.dto.CustomUser;


public interface MemberMapper {
    CustomUser check(@Param("userId") String userId);

}