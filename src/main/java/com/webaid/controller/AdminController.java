package com.webaid.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.webaid.domain.CustomerVO;
import com.webaid.domain.NewsVO;
import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.SearchCriteria;
import com.webaid.service.CustomerService;
import com.webaid.service.NewsService;
import com.webaid.service.NoticeService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private NoticeService nService;
	
	@Autowired
	private NewsService newsService;
	
	@Autowired
	private CustomerService cService;

	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String adminLogin() throws Exception {
		logger.info("adminLogin");

		return "admin/adminLogin";
	}

	@RequestMapping(value = "/loginCheck/{id}/{pw}")
	public ResponseEntity<String> loginCheck(@PathVariable("id") String id, @PathVariable("pw") String pw,
			HttpServletRequest req) throws Exception {
		logger.info("admin Login Check");
		ResponseEntity<String> entity = null;

		HttpSession session = req.getSession();

		if (id.equals("admin") && pw.equals("centum1234567")) {
			entity = new ResponseEntity<String>("ok", HttpStatus.OK);
			session.setAttribute("id", id);
			System.out.println("session 아이디" + session.getAttribute("id"));
		} else {
			entity = new ResponseEntity<String>("no", HttpStatus.OK);
		}

		return entity;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		
		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}
		
		session.invalidate();

		return "redirect:/";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String adminHome(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req)
			throws Exception {
		logger.info("adminHome/adminNotice GET");
		HttpSession session = req.getSession(false);
		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		List<CustomerVO> list = cService.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminCustomer";
	}

	@RequestMapping(value = "/adminNotice")
	public String adminNotice(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req)
			throws Exception {
		logger.info("adminNotice GET");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		List<NoticeVO> list = nService.listSearch(cri);
		
		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminNotice";
	}

	@RequestMapping(value = "/adminNoticeRead", method = RequestMethod.GET)
	public String adminNoticeRead(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminNoticeRead Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		NoticeVO vo = nService.selectOne(bno);
		nService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/adminNoticeRead";
	}

	@RequestMapping(value = "/adminNoticeRegister", method = RequestMethod.GET)
	public String adminNoticeRegisterGet(HttpServletRequest req) {
		logger.info("adminNoticeRegister Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		return "admin/adminNoticeRegister";
	}

	@RequestMapping(value = "/adminNoticeRegister", method = RequestMethod.POST)
	public String adminNoticeRegisterPost(NoticeVO vo, HttpServletRequest req) {
		logger.info("adminNoticeRegister post");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		nService.insert(vo);

		return "redirect:/admin/adminNotice";
	}

	@RequestMapping(value = "/adminNoticeUpdate", method = RequestMethod.GET)
	public String adminNoticeUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminNoticeUpdate get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		NoticeVO vo = nService.selectOne(bno);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminNoticeUpdate";
	}

	@RequestMapping(value = "/adminNoticeUpdate", method = RequestMethod.POST)
	public String modifyPost(NoticeVO vo, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts,
			Model model, HttpServletRequest req) throws Exception {
		logger.info("adminNoticeUpdate post");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		nService.update(vo);

		rtts.addAttribute("bno", vo.getBno());

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);

		pageMaker.setTotalCount(nService.listSearchCount(cri));

		rtts.addAttribute("page", page);

		return "redirect:/admin/adminNoticeRead";
	}

	@RequestMapping(value = "/adminNoticeDelete", method = RequestMethod.GET)
	public String adminNoticeDelete(int bno, SearchCriteria cri, RedirectAttributes rtts, HttpServletRequest req)
			throws Exception {
		logger.info("delete");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		nService.delete(bno);// 게시글, 파일 삭제
		rtts.addAttribute("perPageNum", cri.getPerPageNum());
		rtts.addAttribute("page", cri.getPage());

		return "redirect:/admin/adminNotice";
	}

	@ResponseBody
	@RequestMapping("/imgUpload")
	public Map<String, Object> imgaeUpload(HttpServletRequest req, @RequestParam MultipartFile upload, Model model)
			throws Exception {
		logger.info("image upload!!!!!");

		// http body
		OutputStream out = null;

		Map<String, Object> map = new HashMap<String, Object>();

		// 오리지날 파일명
		String originalName = upload.getOriginalFilename();

		// 랜덤이름 생성(중복 방지용)
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;

		// 업로드한 파일 이름
		String fileName = savedName;

		// 바이트 배열로 변환
		byte[] bytes = upload.getBytes();

		// 이미지를 업로드할 디렉토리(배포경로로 설정)
		String innerUploadPath = "resources/upload/";
		String uploadPath = (req.getSession().getServletContext().getRealPath("/")) + innerUploadPath;
		logger.info(uploadPath);

		out = new FileOutputStream(new File(uploadPath + fileName));// 서버에 파일 저장
		// 서버에 저장됨
		out.write(bytes);

		String fileUrl = "/" + innerUploadPath + fileName;

		System.out.println(fileUrl);

		map.put("uploaded", 1);
		map.put("fileName", fileName);
		map.put("url", fileUrl);

		return map;
	}

	@RequestMapping(value = "/adminNews")
	public String adminNews(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req)
			throws Exception {
		logger.info("adminNews GET");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}
		
		List<NewsVO> list=newsService.listSearch(cri);
		
		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/adminNews";
	}
	
	@RequestMapping(value = "/adminNewsRead", method = RequestMethod.GET)
	public String adminNewsRead(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminNewsRead Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		NewsVO vo = newsService.selectOne(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/adminNewsRead";
	}
	
	@RequestMapping(value = "/adminNewsRegister", method = RequestMethod.GET)
	public String adminNewsRegister(HttpServletRequest req) {
		logger.info("adminNewsRegister Get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		return "admin/adminNewsRegister";
	}

	@RequestMapping(value = "/adminNewsRegister", method = RequestMethod.POST)
	public String adminNewsRegister(NewsVO vo, HttpServletRequest req) {
		logger.info("adminNewsRegister post");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		newsService.insert(vo);

		return "redirect:/admin/adminNews";
	}
	
	@RequestMapping(value = "/adminNewsUpdate", method = RequestMethod.GET)
	public String adminNewsUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,
			HttpServletRequest req) throws Exception {
		logger.info("adminNewsUpdate get");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		NewsVO vo = newsService.selectOne(bno);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));

		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminNewsUpdate";
	}

	@RequestMapping(value = "/adminNewsUpdate", method = RequestMethod.POST)
	public String adminNewsUpdatePost(NewsVO vo, int page, @ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rtts,
			Model model, HttpServletRequest req) throws Exception {
		logger.info("adminNewsUpdate post");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		newsService.update(vo);

		rtts.addAttribute("bno", vo.getBno());

		PageMaker pageMaker = new PageMaker();

		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);

		pageMaker.setTotalCount(newsService.listSearchCount(cri));

		rtts.addAttribute("page", page);

		return "redirect:/admin/adminNewsRead";
	}

	@RequestMapping(value = "/adminNewsDelete", method = RequestMethod.GET)
	public String adminNewsDelete(int bno, SearchCriteria cri, RedirectAttributes rtts, HttpServletRequest req)
			throws Exception {
		logger.info("adminNews delete");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}

		newsService.delete(bno);// 게시글, 파일 삭제
		rtts.addAttribute("perPageNum", cri.getPerPageNum());
		rtts.addAttribute("page", cri.getPage());

		return "redirect:/admin/adminNews";
	}
	
	@RequestMapping(value = "/adminCustomer")
	public String adminCustomer(@ModelAttribute("cri") SearchCriteria cri, Model model, HttpServletRequest req)
			throws Exception {
		logger.info("adminCustomer GET");

		HttpSession session = req.getSession(false);

		if (session.getAttribute("id") == null) {
			logger.info("아이디는 null 입니다.");
			return "admin/adminLogin";
		}
		
		List<CustomerVO> list=cService.listSearch(cri);
		
		cri.setKeyword(null);
		cri.setSearchType("n");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/adminCustomer";
	}
	
	@RequestMapping(value="/excelDown", method=RequestMethod.POST)
	public void excelDown(Model model, HttpServletResponse response) throws IOException{
		logger.info("Excel Down Post");
		
			logger.info("엑셀 다운 try 진입!");
			XSSFWorkbook objWorkBook = new XSSFWorkbook();
			XSSFSheet objSheet = null;
			XSSFRow objRow = null;
			XSSFCell objCell = null;
			
			Date date= new Date();
			SimpleDateFormat format=new SimpleDateFormat("yyyyMMdd");
			String nowDate=format.format(date);
			
			DateFormat format2=DateFormat.getDateInstance(DateFormat.MEDIUM);
			
			//제목 css
			XSSFCellStyle styleHd = objWorkBook.createCellStyle();    //제목 스타일
			styleHd.setAlignment(HSSFCellStyle.ALIGN_CENTER);
			
			objSheet=objWorkBook.createSheet("TestSheet");
			
			objSheet.setColumnWidth(0, 100);			
			
			objRow = objSheet.createRow(0);
			
			// 행 높이 지정
			objRow.setHeight ((short) 0x150);
			
			//셀에 데이터 넣지
			objCell = objRow.createCell(0);
			objCell.setCellValue("이름");
			objCell.setCellStyle(styleHd);
			  
			objCell = objRow.createCell(1);
			objCell.setCellValue("전화번호");
			objCell.setCellStyle(styleHd);
			
			objCell = objRow.createCell(2);
			objCell.setCellValue("이메일");
			objCell.setCellStyle(styleHd);
			
			objCell = objRow.createCell(3);
			objCell.setCellValue("등록일");
			objCell.setCellStyle(styleHd);
			
			List<CustomerVO> memberList=cService.selectAll();
					
			int index=1;
			
			for(CustomerVO vo:memberList){
				
				objRow=objSheet.createRow(index);
				
				objCell = objRow.createCell(0);
				objCell.setCellValue(vo.getName());
				  
				objCell = objRow.createCell(1);
				objCell.setCellValue(vo.getPhone());
				
				objCell = objRow.createCell(2);
				objCell.setCellValue(vo.getEmail());
				
				objCell = objRow.createCell(3);
				objCell.setCellValue(format2.format(vo.getRegdate()));
				
				index++;
			}
			
			for (int i = 0; i < memberList.size(); i++) {
				objSheet.autoSizeColumn(i);
		    }

			response.setContentType("Application/Msexcel");
			response.setHeader("Content-Disposition", "ATTachment; Filename="+URLEncoder.encode("관심고객현황_"+nowDate, "UTF-8") + ".xlsx");
			
		    OutputStream fileOut = response.getOutputStream();
		    objWorkBook.write(fileOut);
		    fileOut.close();
		
		    response.getOutputStream().flush();
		    response.getOutputStream().close();
		    
	}
}
