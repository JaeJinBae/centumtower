package com.webaid.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webaid.domain.CustomerVO;
import com.webaid.domain.NewsVO;
import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.SearchCriteria;
import com.webaid.service.CustomerService;
import com.webaid.service.NewsService;
import com.webaid.service.NoticeService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private NoticeService nService;
	
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private CustomerService cService;
	
	
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
	public String sub01_1(Model model) {
		logger.info("sub01_01 Get");
		
		return "sub01/sub01_01";
	}
	
	@RequestMapping(value = "/sub01_02", method = RequestMethod.GET)
	public String sub01_2(Model model) {
		logger.info("sub01_02 Get");
		
		return "sub01/sub01_02";
	}
	
	@RequestMapping(value = "/sub02_01", method = RequestMethod.GET)
	public String sub02_1(Model model) {
		logger.info("sub02_01 Get");
		
		return "sub02/sub02_01";
	}
	
	@RequestMapping(value = "/sub02_02", method = RequestMethod.GET)
	public String sub02_2(Model model) {
		logger.info("sub02_02 Get");
		
		return "sub02/sub02_02";
	}
	
	@RequestMapping(value = "/sub03_01", method = RequestMethod.GET)
	public String sub03_1(Model model) {
		logger.info("sub03_01 Get");
		
		return "sub03/sub03_01";
	}
	
	@RequestMapping(value = "/sub04_01", method = RequestMethod.GET)
	public String sub04_1(Model model) {
		logger.info("sub04_01 Get");
		
		return "sub04/sub04_01";
	}
	
	@RequestMapping(value="/customerRegister", method=RequestMethod.POST)
	public String customerRegister(CustomerVO vo, Model model){
		logger.info("customerRegister post");
		
		cService.insert(vo);
				
		return "redirect:/sub04_01";
	}
	
	@RequestMapping(value = "/sub04_02", method = RequestMethod.GET)
	public String sub04_2(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("sub04_02 Get");
		
		List<NoticeVO> list = nService.listSearch(cri);
		
		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub04/sub04_02";
	}
	
	@RequestMapping(value = "/noticeRead", method = RequestMethod.GET)
	public String sub04_2Read(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("sub04_02 NoticeRead GET");
		
		NoticeVO vo=nService.selectOne(bno);
		nService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub04/sub04_02Read";
	}
	
	@RequestMapping(value = "/sub04_03", method = RequestMethod.GET)
	public String sub04_3(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("sub04_03 Get");
		
		List<NewsVO> list=newsService.listSearch(cri);
		
		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub04/sub04_03";
	}
}
