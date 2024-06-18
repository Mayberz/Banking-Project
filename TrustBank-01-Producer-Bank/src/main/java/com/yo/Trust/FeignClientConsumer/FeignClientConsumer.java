package com.yo.Trust.FeignClientConsumer;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient("TrustBank-2-Producer-Customer")
public interface FeignClientConsumer {
	
	@GetMapping("/customerService/CustomerCtrl/loan/{uniqueId}/{age}/{monthlySal}")
	public String loanAvaillinility(@PathVariable Integer uniqueId,@PathVariable Integer age,@PathVariable Double monthlySal);
		
	

}
