package com.yo.Trust.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yo.Trust.Model.BankEmployee;
import com.yo.Trust.repository.TrustBankEmpRepo;

@Service
public class EmployeeService implements IEmploeeServiceInterface{
	 
	@Autowired
	private TrustBankEmpRepo repository;

	@Override
	public String newEmp(BankEmployee emp) {
		int id=repository.save(emp).getEId();
		return "Employee detials Registered with the id->"+id;
	}

	@Override
	public List<BankEmployee> getAllemp() {
		
		return repository.findAll();
	}

	@Override
	public BankEmployee getById(Integer eid) {
		Optional<BankEmployee> op=repository.findById(eid);
		return op.get();
	}

	@Override
	public String updateEmp(BankEmployee emp) {
		int id=repository.save(emp).getEId();
		return "Details Updated successfully of ID"+id;
	}
	@Transactional
	@Override
	public  String updateDeptoNo(Integer eid,Integer deptNo) {
		   repository.UpdateDept(eid,deptNo);
		return "DeptNo updated Successfully";
	}
	
	

}
