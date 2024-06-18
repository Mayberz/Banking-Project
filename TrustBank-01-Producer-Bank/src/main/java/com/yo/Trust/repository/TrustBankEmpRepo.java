package com.yo.Trust.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.yo.Trust.Model.BankEmployee;

public interface TrustBankEmpRepo extends JpaRepository<BankEmployee, Integer>{
	@Modifying
   @Query(nativeQuery = true, value = "UPDATE bank_employee SET dept_no=:deptNo WHERE eid=:eid")
   public void UpdateDept(@Param("eid") Integer eid , @Param("deptNo") Integer deptNo);	
}
