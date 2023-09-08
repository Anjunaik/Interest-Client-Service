package com.acoder.mvccontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.acoder.allpojoclass.CompoundReqPojo;
import com.acoder.allpojoclass.CompoundResPojo;
import com.acoder.allpojoclass.SimpleInterestReqPojo;
import com.acoder.allpojoclass.SimpleInterestRespPojo;
import com.acoder.webclientimpl.InterestWebClientInterest;

@Controller
public class InterestController {
	
	@Autowired
	private InterestWebClientInterest clientInterest;
	
	@GetMapping(value="/simpleReq")
	public String loadSimpleInterestReq(Model model)
	{
		model.addAttribute("simpleReqPojo", new SimpleInterestReqPojo());
		return "simpleReq";
	}

	@PostMapping(value="/simpleRes")
	public String sendSimpleReq(Model model, @ModelAttribute SimpleInterestReqPojo interestReqPojo)
	{
	
		try {
			
			model.addAttribute("simpleReqPojo", interestReqPojo);
			SimpleInterestRespPojo respPojo = clientInterest.sendReq(interestReqPojo);
			model.addAttribute("res", respPojo);
			return "simpleRes";
		
		} catch (Exception e) {
			
			model.addAttribute("error", "Something Wrong please Enter Valid Details..");
			 model.addAttribute("simpleReqPojo", new SimpleInterestReqPojo());
			return "simpleReq";
		}
	}
	
	
	@GetMapping(value="/compoundReq")
	public String loadCompoundInterestReq(Model model)
	{
		model.addAttribute("compoundReqPojo", new CompoundReqPojo());
		return "compoundReq";
	}

	@PostMapping(value="/compoundRes")
	public String sendingCompoundReq(Model model, @ModelAttribute CompoundReqPojo interestReqPojo)
	{
		try {
			
			model.addAttribute("req", interestReqPojo);
			CompoundResPojo resPojo = clientInterest.sendReqCompound(interestReqPojo);
			model.addAttribute("res", resPojo);
			
			return "compoundRes";
		} 
		catch (Exception e) {
			
			 model.addAttribute("error", "Something Wrong please Enter Valid Details..");
			 model.addAttribute("compoundReqPojo", new CompoundReqPojo());
			return "compoundReq";
		}
		
	}
	
}
