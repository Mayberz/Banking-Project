package com.yo.Trust.Model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class BankEmployee {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "EID")
	private Integer eId;
	private String name;
	@Column(name = "DeptNo")
	private Integer deptNo;
	private String city;
	

}
