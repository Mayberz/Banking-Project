package com.yo.Trust.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.yo.Trust.model.TrustBankLoginDetails;
import com.yo.Trust.repository.LoginDetailsRepo;

@Component
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private LoginDetailsRepo repository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		TrustBankLoginDetails loginDetails=repository.findByUsername(username);
		if (loginDetails==null) {
			throw new UsernameNotFoundException("user not found");
		}else {
			return new CustomUser(loginDetails);
		}
		
	}

}
