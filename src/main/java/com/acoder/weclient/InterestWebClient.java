package com.acoder.weclient;

import com.acoder.allpojoclass.CompoundReqPojo;
import com.acoder.allpojoclass.CompoundResPojo;
import com.acoder.allpojoclass.SimpleInterestReqPojo;
import com.acoder.allpojoclass.SimpleInterestRespPojo;

public interface InterestWebClient {
	//this for simple interest
	public SimpleInterestRespPojo sendReq(SimpleInterestReqPojo reqPojo)throws Exception;
	
//this for Compound interest
	public CompoundResPojo sendReqCompound(CompoundReqPojo reqPojo)throws Exception;

}
