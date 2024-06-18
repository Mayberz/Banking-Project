package com.yo.Trust.Model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Customer {
	private Integer uniqueId; 
	private String name;
	private Integer age;
	private Double bal;	
	private Double monthlySal;
	private String nationality;
	private String localAddress;

}
