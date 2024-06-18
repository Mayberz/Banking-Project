package com.yo.Trust.service;

import java.util.List;

import com.yo.Trust.Model.BankEmployee;

public interface IEmploeeServiceInterface {
	
	public String newEmp(BankEmployee emp);
	
	public List<BankEmployee> getAllemp(); 
	
	public BankEmployee getById(Integer eid);
	
	public String updateEmp(BankEmployee emp);
	
	public String updateDeptoNo(Integer eid,Integer deptNo);
	
	

}
