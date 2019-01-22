package com.webaid.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req, Model model) {
		logger.info("index");
		
		Device device=DeviceUtils.getCurrentDevice(req);
		String deviceType="unknown";
		
		if(device == null){
			deviceType="unknown";
			logger.info(deviceType);			
			return "main/index";
		}
		if(device.isMobile()){
			deviceType="mobile";
			logger.info(deviceType);			
			return "main/mIndex";
		}else{
			deviceType="normal";
			logger.info(deviceType);			
			return "main/index";
		}
		
		/*return "main/index";*/
	}
	
	@RequestMapping(value = "/sub01_01", method = RequestMethod.GET)
	public String sub01_1(Locale locale, Model model) {
		logger.info("sub01_01 Get");
		
		return "sub01/sub01_01";
	}
	
	@RequestMapping(value = "/sub01_02", method = RequestMethod.GET)
	public String sub01_2(Locale locale, Model model) {
		logger.info("sub01_02 Get");
		
		return "sub01/sub01_02";
	}
	
	@RequestMapping(value = "/sub02_01", method = RequestMethod.GET)
	public String sub02_1(Locale locale, Model model) {
		logger.info("sub02_01 Get");
		
		return "sub02/sub02_01";
	}
	
	@RequestMapping(value = "/sub02_02", method = RequestMethod.GET)
	public String sub02_2(Locale locale, Model model) {
		logger.info("sub02_02 Get");
		
		return "sub02/sub02_02";
	}
	
	@RequestMapping(value = "/sub03_01", method = RequestMethod.GET)
	public String sub03_1(Locale locale, Model model) {
		logger.info("sub03_01 Get");
		
		return "sub03/sub03_01";
	}
	
	@RequestMapping(value = "/sub04_01", method = RequestMethod.GET)
	public String sub04_1(Locale locale, Model model) {
		logger.info("sub04_01 Get");
		
		return "sub04/sub04_01";
	}
	
	@RequestMapping(value = "/sub04_02", method = RequestMethod.GET)
	public String sub04_2(Locale locale, Model model) {
		logger.info("sub04_02 Get");
		
		return "sub04/sub04_02";
	}
	
	@RequestMapping(value = "/sub04_03", method = RequestMethod.GET)
	public String sub04_3(Locale locale, Model model) {
		logger.info("sub04_03 Get");
		
		return "sub04/sub04_03";
	}
}
