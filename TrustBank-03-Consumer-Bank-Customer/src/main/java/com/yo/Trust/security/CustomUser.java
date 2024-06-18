package com.yo.Trust.security;

import java.util.Arrays;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.yo.Trust.model.TrustBankLoginDetails;

public class CustomUser implements UserDetails{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 8127962769962196888L;
	
	
	private TrustBankLoginDetails loginDetails;
	
	

	public CustomUser(TrustBankLoginDetails loginDetails) {
		super();
		this.loginDetails= loginDetails;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		SimpleGrantedAuthority authority =new SimpleGrantedAuthority("ROLE_"+loginDetails.getRole());
		return Arrays.asList(authority);
	}

	@Override
	public String getPassword() {
		return loginDetails.getPassword();
	}

	@Override
	public String getUsername() {
		return loginDetails.getUsername();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

}
