package com.yo.Trust.model;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name =  "TRUSTBANK_LOGIN_DETAILS")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TrustBankLoginDetails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer sid;
	private String username;
	private String password;
	private String role;

}
