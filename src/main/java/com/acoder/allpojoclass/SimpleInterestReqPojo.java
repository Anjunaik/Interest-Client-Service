package com.acoder.allpojoclass;



import java.sql.Date;

import lombok.Data;

@Data
public class SimpleInterestReqPojo {

	private Date startDate;
	
	private Date endsDate;
	
	private Double principal;
	
	
	private Double interestRate;
	
	private  String ratetype;
	
	
}
