package com.yo.Trust.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.yo.Trust.model.TrustBankLoginDetails;

public interface LoginDetailsRepo extends JpaRepository<TrustBankLoginDetails, Integer>{

	public TrustBankLoginDetails findByUsername(String username);
}
