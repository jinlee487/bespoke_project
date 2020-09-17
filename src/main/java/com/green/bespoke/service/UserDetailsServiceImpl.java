package com.green.bespoke.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;

import com.green.bespoke.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class UserDetailsServiceImpl implements UserDetailsService {
	
	@Autowired
	private MemberService service;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		log.debug("UserDetailsServiceImpl.loadUserByUsername :::: {}", email);
		
		MemberVO vo = service.homepageLogin(email);
		
		if (ObjectUtils.isEmpty(vo)) {
			throw new UsernameNotFoundException("Invalid username");
		}
		
		return vo;
	}
}
