package com.tabling.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.tabling.mapper.MemberMapper;
import com.tabling.security.dto.CustomUser;
import com.tabling.user.member.dto.UserVO;

import lombok.Setter;

public class CustomUserDetailsService implements UserDetailsService {

	@Setter(onMethod_ = { @Autowired })
	private MemberMapper memberMapper;

	@Override
	public UserDetails loadUserByUsername(String username) 
			throws UsernameNotFoundException {
        CustomUser customUser = memberMapper.check(username);

        if (customUser == null) {
            throw new UsernameNotFoundException(username);
        }
        return customUser;
	}
}