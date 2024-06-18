package com.yo.Trust.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.yo.Trust.model.Customer;
import com.yo.Trust.service.ICustomerServiceInterface;

@RestController
@RequestMapping("/CustomerCtrl")
public class CustRestController {

	@Autowired
	private ICustomerServiceInterface service;

	@PostMapping("/addCust")
	public ResponseEntity<String> addCust(@RequestBody Customer cust) {

		String resultMsg = service.addNewConsumer(cust);

		return new ResponseEntity<String>(resultMsg, HttpStatus.OK);

	}

	@GetMapping("/getAllCust")
	public ResponseEntity<List<Customer>> getAllCustomer() {

		List<Customer> cust = service.getAllCust();
		return new ResponseEntity<List<Customer>>(cust, HttpStatus.FOUND);

	}

	@GetMapping("/find/{uniqueId}")
	public ResponseEntity<Optional<Customer>> getDetailsById(@PathVariable Integer uniqueId) {
		Optional<Customer> op = service.findCustById(uniqueId);
		return new ResponseEntity<Optional<Customer>>(op, HttpStatus.OK);
	}

	@GetMapping("/checkBal/{uniqueId}")
	public ResponseEntity<Double> getBal(@PathVariable Integer uniqueId) {
		Double custBal = service.checkBalance(uniqueId);
		return new ResponseEntity<Double>(custBal, HttpStatus.OK);

	}

	@GetMapping("/loan/{uniqueId}/{age}/{monthlySal}")
	public ResponseEntity<String> loanAvaillinility(@PathVariable Integer uniqueId,@PathVariable Integer age,@PathVariable Double monthlySal) {
		String loan = service.checkLoanAvailibility(uniqueId, age, monthlySal);
		return new ResponseEntity<String>(loan, HttpStatus.OK);
	}

}
