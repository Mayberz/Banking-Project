package com.yo.Trust.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.yo.Trust.model.Customer;

public interface CustomerRepo extends JpaRepository<Customer, Integer> {

	@Query(nativeQuery = true,value = "SELECT bal FROM TRUST_BANK_CUSTOMER WHERE unique_id=:uniqueId")
	public Double checkBal(@Param("uniqueId")Integer uniqueId);

}
