package com.acoder.webclientimpl;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.client.WebClient;

import com.acoder.allpojoclass.CompoundReqPojo;
import com.acoder.allpojoclass.CompoundResPojo;
import com.acoder.allpojoclass.SimpleInterestReqPojo;
import com.acoder.allpojoclass.SimpleInterestRespPojo;
import com.acoder.weclient.InterestWebClient;


@Service
public class InterestWebClientInterest implements InterestWebClient {

	@Override
	public SimpleInterestRespPojo sendReq(SimpleInterestReqPojo reqPojo)throws Exception {
	
		if(reqPojo.getPrincipal()!=0&&
				!reqPojo.getRatetype().isEmpty()&&
				reqPojo.getInterestRate()!=0  
				)
		{
		
		WebClient webClient = WebClient.builder()
		.baseUrl("http://localhost:9091/")
		.defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
		.defaultHeader(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE)
		.build();
		
		SimpleInterestRespPojo respPojo = webClient.post()
		.uri("/simple")
		.body(BodyInserters.fromValue(reqPojo))
		.retrieve()
		.bodyToMono(SimpleInterestRespPojo.class)
		.block();
		return respPojo;
		}
		throw new NullPointerException();
	}

	@Override
	public CompoundResPojo sendReqCompound(CompoundReqPojo reqPojo)throws Exception {
		if(reqPojo.getPrincipal()!=0&&
				!reqPojo.getRatetype().isEmpty()&&
				reqPojo.getInterestRate()!=0&&
				!reqPojo.getCompoundInterval().isEmpty()
				)
		{
		WebClient webClient = WebClient.builder()
				.baseUrl("http://localhost:9091/")
				.defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
				.defaultHeader(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE)
				.build();
				
				CompoundResPojo respPojo = webClient.post()
				.uri("/compound")
				.body(BodyInserters.fromValue(reqPojo))
				.retrieve()
				.bodyToMono(CompoundResPojo.class)
				.block();
		
		return respPojo;
		}
		throw new  NullPointerException();
	}

}
