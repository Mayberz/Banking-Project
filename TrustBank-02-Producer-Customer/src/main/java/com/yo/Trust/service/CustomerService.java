package com.yo.Trust.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yo.Trust.model.Customer;
import com.yo.Trust.repository.CustomerRepo;

@Service
public final class CustomerService implements ICustomerServiceInterface {

	@Autowired
	private CustomerRepo repository;

	@Override
	public String addNewConsumer(Customer cust) {
		int uniqueId = repository.save(cust).getUniqueId();
		return "Consumer Added sucessfully with unique ID" + uniqueId;
	}
	
	@Override
	public List<Customer> getAllCust() {
		return repository.findAll();
	}

	@Override
	public Optional<Customer> findCustById(Integer unqueId) {
		Optional<Customer> op = repository.findById(unqueId);
		if (op.isPresent()) {
			return Optional.ofNullable(op.get());
		} else {
			throw new IllegalArgumentException("rocord may not exist");
		}
	}

	@Override
    public Double checkBalance(Integer uniqueId) {
        return repository.checkBal(uniqueId);
    }

	@Override
	public String checkLoanAvailibility(Integer uniqueId, Integer age, Double monthlySal) {
		if (age >= 18 && monthlySal > 10000) {
			 repository.findById(uniqueId);
			 return "Customer with Unique ID->" + uniqueId + " is applicable for a loan";		
			 } else {
			return "Not applicable for loan right now";
		}
	}

	

}
