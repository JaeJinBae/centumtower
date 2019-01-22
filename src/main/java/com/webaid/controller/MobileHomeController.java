package com.webaid.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MobileHomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(MobileHomeController.class);
	
	
	@RequestMapping(value = "/mMain", method = RequestMethod.GET)
	public String mobileMain(Model model) {
		logger.info("mobile Home.");
		
		return "main/mIndex";
	}
	
	@RequestMapping(value = "/mMenu01_01", method = RequestMethod.GET)
	public String mobile_sub01_1(HttpServletRequest req,Model model) {
		logger.info("mMenu01_1");
		
		return "sub01/mSub01_01";
	}
	
	@RequestMapping(value = "/mMenu01_02", method = RequestMethod.GET)
	public String mobile_sub01_2(HttpServletRequest req,Model model) {
		logger.info("mMenu01_2");
		
		return "sub01/mSub01_02";
	}
	
	@RequestMapping(value = "/mMenu02_01", method = RequestMethod.GET)
	public String mobile_sub02_1(HttpServletRequest req,Model model) {
		logger.info("mMenu02_1");
		
		return "sub02/mSub02_01";
	}
	
	@RequestMapping(value = "/mMenu02_02", method = RequestMethod.GET)
	public String mobile_sub02_2(HttpServletRequest req,Model model) {
		logger.info("mMenu02_2");
		
		return "sub02/mSub02_02";
	}
	
	@RequestMapping(value = "/mMenu03_01", method = RequestMethod.GET)
	public String mobile_sub03_1(HttpServletRequest req,Model model) {
		logger.info("mMenu03_1");
		
		return "sub03/mSub03_01";
	}
	
	@RequestMapping(value = "/mMenu04_01", method = RequestMethod.GET)
	public String mobile_sub04_1(HttpServletRequest req,Model model) {
		logger.info("mMenu04_1");
		
		return "sub04/mSub04_01";
	}
	
	@RequestMapping(value = "/mMenu04_02", method = RequestMethod.GET)
	public String mobile_sub04_2(HttpServletRequest req,Model model) {
		logger.info("mMenu04_2");
		
		return "sub04/mSub04_02";
	}
	
	@RequestMapping(value = "/mMenu04_03", method = RequestMethod.GET)
	public String mobile_sub04_3(HttpServletRequest req,Model model) {
		logger.info("mMenu04_3");
		
		return "sub04/mSub04_03";
	}
	
}
