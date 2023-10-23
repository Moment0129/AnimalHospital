package com.vet.main.approval;

import java.net.http.HttpRequest;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;

import com.vet.main.emp.EmpVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/approval/*")
@Slf4j
public class ApprovalController {

	@Autowired
	private ApprovalService approvalService;
	
		
	@GetMapping("poomAdd")
	public String setApPoomAdd(ApprovalVO approvalVO, Model model, EmpVO empVO) throws Exception {
		empVO = approvalService.getApUser(empVO);
		
		log.info("====== empVO : {} ======", empVO);
				
		LocalDate now = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("YYYY-MM-dd");
		String date = now.format(formatter);

		model.addAttribute("user", empVO);
		model.addAttribute("date", date);
		
		return "approval/poomAdd";
	}
	
	@PostMapping("poomAdd")
	public String setApPoomAdd(ApprovalVO approvalVO) throws Exception {
		
		log.info("==================== Poom Insert ======================");
		log.info("====== Poom : {} ======", approvalVO);
		
		int result = approvalService.setApPoomAdd(approvalVO);
		
		return "redirect:./list";
	}
	
	
	@GetMapping("formatList")
	public String getFormatList() throws Exception {
		return "approval/formatList";
	}
	
}
