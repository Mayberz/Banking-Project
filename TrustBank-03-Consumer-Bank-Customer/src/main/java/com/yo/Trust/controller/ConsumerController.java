package com.yo.Trust.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.yo.Trust.model.BankEmployee;
import com.yo.Trust.model.Customer;
import com.yo.Trust.model.TrustBankLoginDetails;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;

@Controller
public class ConsumerController {


	
	@Autowired
	private RestTemplate template;

	@GetMapping("/homepage")
	public String home() {
		System.out.println("Home page accessed");
		return "homepage";
	}

	@GetMapping("/customerServices")
	public String customerServices() {
		return "customerServices";
	}

	@GetMapping("/employeeServices")
	public String employeeServices() {
		return "employeeServices";
	}

	@GetMapping("/login")
	String login(@ModelAttribute("login") TrustBankLoginDetails login) {
		return "login";
	}

	@GetMapping("/support")
	public String support() {
		return "support";
	}

	

	@PreAuthorize("hasRole('MANAGER') or hasRole('CUSTOMER')")
	@GetMapping("/addCustomer")
	public String addCustFormLink(@ModelAttribute Customer customer) {
		
			return "AddNewCust";
		

	}

	@PreAuthorize("hasRole('MANAGER') or hasRole('CUSTOMER')")
	@PostMapping("/addCustomer")
	public String addCust(RedirectAttributes attrs, @ModelAttribute Customer customer) throws JsonProcessingException {
		
		ObjectMapper mapper = new ObjectMapper();
		String jsonData = mapper.writeValueAsString(customer);
		String serviceUrl = "http://localhost:8083/customerService/CustomerCtrl/addCust";
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<String> entity = new HttpEntity<String>(jsonData, headers);
		ResponseEntity<String> res = template.exchange(serviceUrl, HttpMethod.POST, entity, String.class);
		String result = res.getBody();
		attrs.addFlashAttribute("resultMsg", result);
		return "redirect:allCust";
		

	}

	@PreAuthorize("hasRole('MANAGER')")
	@GetMapping("/allCust")
	public String getCusts(Map<String, Object> map) throws JsonMappingException, JsonProcessingException {
		
		String serviceUrl = "http://localhost:8083/customerService/CustomerCtrl/getAllCust";
		ResponseEntity<String> res = template.exchange(serviceUrl, HttpMethod.GET, null, String.class);
		String jsonBody = res.getBody();
		ObjectMapper mapper = new ObjectMapper();
		List<Customer> custList = mapper.readValue(jsonBody, new TypeReference<List<Customer>>() {
		});
		map.put("custList", custList);
		return "allCust";
	
	}

	@PreAuthorize("hasRole('MANAGER') or hasRole('CUSTOMER')")
	@GetMapping("/showFindCustomerForm")
	public String showFindCustomerForm() {
		
		return "findCustByIdForm";
		
	}

	@PreAuthorize("hasRole('MANAGER') or hasRole('CUSTOMER')")
	@GetMapping("/getCustById")
	public String findByCustId(Map<String, Object> map, @RequestParam Integer uniqueId)
			throws JsonMappingException, JsonProcessingException {
		
		String serviceUrl = "http://localhost:8083/customerService/CustomerCtrl/find/{uniqueId}";
		ResponseEntity<String> res = template.exchange(serviceUrl, HttpMethod.GET, null, String.class, uniqueId);
		String jsonBody = res.getBody();
		ObjectMapper mapper = new ObjectMapper();
		Customer cust = mapper.readValue(jsonBody, new TypeReference<Customer>() {
		});
		map.put("getcustById", cust);
		return "getCustById";
		
	}

	@PreAuthorize("hasRole('CUSTOMER')")
	@GetMapping("/showCheckBalanceForm")
	public String showCheckBalanceForm() {
		
		return "checkBalanceForm";
		
	}

	@PreAuthorize("hasRole('CUSTOMER')")
	@GetMapping("/checkCurentBalance")
	public String CheckBalance(@RequestParam Integer uniqueId, Map<String, Object> map)
			throws JsonMappingException, JsonProcessingException {
		
		String serviceUrl = "http://localhost:8083/customerService/CustomerCtrl/checkBal/{uniqueId}";
		ResponseEntity<String> res = template.exchange(serviceUrl, HttpMethod.GET, null, String.class, uniqueId);
		String jsonBody = res.getBody();
		ObjectMapper mapper = new ObjectMapper();
		Double custBal = mapper.readValue(jsonBody, new TypeReference<Double>() {
		});
		map.put("checkBalance", custBal);
		return "CheckBalance";
		

	}

	@PreAuthorize("hasRole('MANAGER') or hasRole('EMPLOYEE')")
	@GetMapping("/addEmployee")
	public String addEmployeeFormLink(@ModelAttribute("emp") BankEmployee emp) {
		
		return "AddNewEmp";
		
	}

	@PreAuthorize("hasRole('MANAGER') or hasRole('EMPLOYEE')")
	@PostMapping("/addEmployee")
	public String addEmployee(@ModelAttribute("emp") BankEmployee emp, RedirectAttributes attrs)
			throws JsonProcessingException {
		
		ObjectMapper mapper = new ObjectMapper();
		String jsonBody = mapper.writeValueAsString(emp);
		String serviceUrl = "http://localhost:8083/BankService/Employee/add";
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<String> entity = new HttpEntity<String>(jsonBody, headers);
		ResponseEntity<String> res = template.exchange(serviceUrl, HttpMethod.POST, entity, String.class);
		attrs.addFlashAttribute("resultMsg", res);
		return "redirect:getallBankemp";
		
	}

	@PreAuthorize("hasRole('MANAGER')")
	@GetMapping("/getallBankemp")
	public String getAllEmployee(@ModelAttribute("emp") BankEmployee employee, Map<String, Object> map)
			throws JsonMappingException, JsonProcessingException {
		
		String serviceUrl = "http://localhost:8083/BankService/Employee/getAll";
		ResponseEntity<String> res = template.exchange(serviceUrl, HttpMethod.GET, null, String.class);
		String jsonBody = res.getBody();
		ObjectMapper mapper = new ObjectMapper();
		List<BankEmployee> empList = mapper.readValue(jsonBody, new TypeReference<List<BankEmployee>>() {
		});
		map.put("AllEmp", empList);
		return "getAllEmployee";
		

	}

	@PreAuthorize("hasRole('MANAGER') or hasRole('EMPLOYEE')")
	@GetMapping("/showFindEmpForm")
	public String showFindEmpForm(@ModelAttribute("emp") BankEmployee emp) {
		
		return "findEmpByIdForm";
		
	}

	@PreAuthorize("hasRole('MANAGER') or hasRole('EMPLOYEE')")
	@GetMapping("/findBankEmpById")
	public String findEmpById(@ModelAttribute("emp") BankEmployee employee, Map<String, Object> map, Integer eid)
			throws JsonMappingException, JsonProcessingException {
		
		String serviceUrl = "http://localhost:8083/BankService/Employee/getById/{eId}";
		ResponseEntity<String> res = template.exchange(serviceUrl, HttpMethod.GET, null, String.class, eid);
		String jsonBody = res.getBody();
		ObjectMapper mapper = new ObjectMapper();
		BankEmployee emp = mapper.readValue(jsonBody, new TypeReference<BankEmployee>() {
		});
		map.put("findEmpByid", emp);
		return "findEmpById";
		

	}

	@PreAuthorize("hasRole('MANAGER')")
	@GetMapping("/updateEmployee")
	public String showUpdateEmployeeForm(@RequestParam Integer eid, Map<String, Object> map)
			throws JsonMappingException, JsonProcessingException {
		
		String serviceUrl = "http://localhost:8083/BankService/Employee/getById/" + eid;
		ResponseEntity<String> res = template.exchange(serviceUrl, HttpMethod.GET, null, String.class);
		String jsonBody = res.getBody();
		ObjectMapper mapper = new ObjectMapper();
		BankEmployee emp = mapper.readValue(jsonBody, new TypeReference<BankEmployee>() {
		});
		map.put("emp", emp);
		return "updateEmployeeForm";
		
	}

	@PreAuthorize("hasRole('MANAGER')")
	@PostMapping("/updateEmployee")
	public String updateEmp(@ModelAttribute("emp") BankEmployee employee, RedirectAttributes attrs)
			throws JsonProcessingException {
		
		ObjectMapper mapper = new ObjectMapper();
		String jsonBody = mapper.writeValueAsString(employee);
		String serviceUrl = "http://localhost:8083/BankService/Employee/update";
		HttpHeaders header = new HttpHeaders();
		header.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<String> entity = new HttpEntity<String>(jsonBody, header);
		ResponseEntity<String> res = template.exchange(serviceUrl, HttpMethod.PUT, entity, String.class, employee);
		attrs.addFlashAttribute("resultMsg", res);
		return "redirect:getallBankemp";
		
	}

	@PreAuthorize("hasRole('MANAGER')")

	@GetMapping("/updateDeptnoForm")
	public String showUpdateDeptnoForm(@ModelAttribute("emp") BankEmployee employee) {
		
		return "updateDeptnoForm";
		
	}

	@PreAuthorize("hasRole('MANAGER')")
	@PostMapping("/updateDeptno")
	public String updateDeptNo(@ModelAttribute("emp") BankEmployee employee, RedirectAttributes attrs)
			throws JsonProcessingException {
		
		ObjectMapper mapper = new ObjectMapper();
		String jsonBody = mapper.writeValueAsString(employee);
		String serviceUrl = "http://localhost:8083/BankService/Employee/patchUpdate/" + employee.getEid() + "/"
				+ employee.getDeptNo();
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<String> entity = new HttpEntity<String>(jsonBody, headers);
		ResponseEntity<String> res = template.exchange(serviceUrl, HttpMethod.POST, entity, String.class, employee);
		attrs.addFlashAttribute("resultMsg", res);
		return "redirect:getallBankemp";
		
	}

	@PreAuthorize("hasRole('EMPLOYEE') or hasRole('MANAGER')")
	@GetMapping("/loanForm")
	public String showLoanForm() {
		
		return "loanForm";
		
	}

	@PreAuthorize("hasRole('EMPLOYEE') or hasRole('MANAGER')")
	@GetMapping("/loan")
	public String appointMent(Map<String, Object> map, @RequestParam Integer uniqueId, @RequestParam Integer age,
			@RequestParam Double monthlySal) throws JsonProcessingException {
		
		String serviceUrl = "http://localhost:8083/BankService/Employee/loan/{uniqueId}/{age}/{monthlySal}";
		ResponseEntity<String> res = template.exchange(serviceUrl, HttpMethod.GET, null, String.class, uniqueId, age,
				monthlySal);
		String resBody = res.getBody();

		map.put("loanResult", resBody);
		return "loan";
		
	}

}
