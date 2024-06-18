package com.yo.Trust.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Table(name = "TRUST_BANK_CUSTOMER")
@AllArgsConstructor
@NoArgsConstructor
public class Customer {
	@Id
	@Column(name = "unique_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	//@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "cust_id_seq")
	//@SequenceGenerator(name = "cust_id_seq", sequenceName = "cust_id_seq", allocationSize = 1)
	private Integer uniqueId;
	private String name;
	private Integer age;
	private Double bal;
	private Double monthlySal;
	private String nationality;
	private String localAddress;

}
