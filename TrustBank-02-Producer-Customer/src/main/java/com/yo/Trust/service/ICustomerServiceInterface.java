package com.yo.Trust.service;

import java.util.List;
import java.util.Optional;

import com.yo.Trust.model.Customer;

public interface ICustomerServiceInterface {

	public String addNewConsumer(Customer cust);
	
	public List<Customer> getAllCust();

	public Optional<Customer> findCustById(Integer unqueId);

	public Double checkBalance(Integer uniqueId);
	

	public String checkLoanAvailibility(Integer uniqueId, Integer age, Double monthlySal);


}
