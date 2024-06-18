package com.yo.Trust.Bank.RestContoller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yo.Trust.FeignClientConsumer.FeignClientConsumer;
import com.yo.Trust.Model.BankEmployee;
import com.yo.Trust.service.IEmploeeServiceInterface;

@RestController
@RequestMapping("/Employee")
public class BankRestController {

	@Autowired
	private IEmploeeServiceInterface service;

	@Autowired
	private FeignClientConsumer consumer;

	@PostMapping("/add")
	public ResponseEntity<String> NewEmployee(@RequestBody BankEmployee emp) {
		String newEmp = service.newEmp(emp);
		return new ResponseEntity<String>(newEmp, HttpStatus.CREATED);
	}

	@GetMapping("/getAll")
	public ResponseEntity<List<BankEmployee>> getAll() {
		List<BankEmployee> list = service.getAllemp();
		return new ResponseEntity<List<BankEmployee>>(list, HttpStatus.FOUND);
	}

	@GetMapping("/getById/{eId}")
	public ResponseEntity<BankEmployee> getbyId(@PathVariable Integer eId) {
		BankEmployee getId = service.getById(eId);
		return new ResponseEntity<BankEmployee>(getId, HttpStatus.OK);
	}

	@PutMapping("/update")
	public ResponseEntity<String> updateEmpDetails(@RequestBody BankEmployee emp) {
		String empUpdate = service.updateEmp(emp);
		return new ResponseEntity<String>(empUpdate, HttpStatus.OK);
	}

	@PostMapping("/patchUpdate/{eid}/{deptNo}")
	public ResponseEntity<String> updateDeptnoEmp(@PathVariable Integer eid,@PathVariable Integer deptNo) {
		String Patchupdate = service.updateDeptoNo(eid,deptNo);
		return new ResponseEntity<>(Patchupdate, HttpStatus.OK);

	}
     
	@GetMapping("/loan/{uniqueId}/{age}/{monthlySal}")
	public ResponseEntity<String> checkLoan(@PathVariable Integer uniqueId,@PathVariable Integer age,@PathVariable Double monthlySal) {
	    String response = consumer.loanAvaillinility(uniqueId,age , monthlySal);
	    return new ResponseEntity<>(response, HttpStatus.OK);
	}
	

}
