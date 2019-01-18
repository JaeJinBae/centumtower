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
	@RequestMapping(value = "/sub03_02", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("sub03_02 Get");
		
		return "sub03/sub03_02";
	}
}
