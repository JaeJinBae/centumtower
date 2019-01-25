package com.webaid.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webaid.domain.NewsVO;
import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.SearchCriteria;
import com.webaid.service.NewsService;
import com.webaid.service.NoticeService;

@Controller
public class MobileHomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(MobileHomeController.class);
	
	@Autowired
	private NoticeService nService;
	
	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value = "/mMain", method = RequestMethod.GET)
	public String mobileMain(Model model) {
		logger.info("mobile Home.");
		
		return "main/mIndex";
	}
	
	@RequestMapping(value = "/mMenu01_01", method = RequestMethod.GET)
	public String mobile_sub01_1(HttpServletRequest req, Model model) {
		logger.info("mMenu01_1");
		
		return "sub01/mSub01_01";
	}
	
	@RequestMapping(value = "/mMenu01_02", method = RequestMethod.GET)
	public String mobile_sub01_2(HttpServletRequest req, Model model) {
		logger.info("mMenu01_2");
		
		return "sub01/mSub01_02";
	}
	
	@RequestMapping(value = "/mMenu02_01", method = RequestMethod.GET)
	public String mobile_sub02_1(HttpServletRequest req, Model model) {
		logger.info("mMenu02_1");
		
		return "sub02/mSub02_01";
	}
	
	@RequestMapping(value = "/mMenu02_02", method = RequestMethod.GET)
	public String mobile_sub02_2(HttpServletRequest req, Model model) {
		logger.info("mMenu02_2");
		
		return "sub02/mSub02_02";
	}
	
	@RequestMapping(value = "/mMenu03_01", method = RequestMethod.GET)
	public String mobile_sub03_1(HttpServletRequest req, Model model) {
		logger.info("mMenu03_1");
		
		return "sub03/mSub03_01";
	}
	
	@RequestMapping(value = "/mMenu04_01", method = RequestMethod.GET)
	public String mobile_sub04_1(HttpServletRequest req, Model model) {
		logger.info("mMenu04_1");
		
		return "sub04/mSub04_01";
	}
	
	@RequestMapping(value = "/mMenu04_02", method = RequestMethod.GET)
	public String mobile_sub04_2(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mMenu04_2");
		
		List<NoticeVO> list = nService.listSearch(cri);
		
		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub04/mSub04_02";
	}
	
	@RequestMapping(value = "/mNoticeRead", method = RequestMethod.GET)
	public String mSub04_2Read(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mSub04_02 NoticeRead GET");
		
		NoticeVO vo=nService.selectOne(bno);
		nService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub04/mSub04_02Read";
	}
	
	@RequestMapping(value = "/mMenu04_03", method = RequestMethod.GET)
	public String mobile_sub04_3(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("mMenu04_3");
		
		List<NewsVO> list=newsService.listSearch(cri);
		
		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "sub04/mSub04_03";
	}
	
}
