package com.vet.main.emp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

import com.vet.main.commons.FileManager;
import com.vet.main.commons.Pager;
import com.vet.main.dept.DeptVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class EmpService implements UserDetailsService{

	@Value("${app.upload}")
	private String uploadPath;
	
	@Value("${app.emp}")
	private String username;
	
	@Autowired
	private FileManager fileManger;
	
	@Autowired
	private EmpDAO empDAO;

	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.info("=========로그인 시도 중==========");
		EmpVO empVO = new EmpVO();
		empVO.setUsername(username);
		try {
			empVO = empDAO.getLogin(username);
		} catch (Exception e) {
			e.printStackTrace();
			empVO=null;
		}
		
		return empVO;

	}

	// 마이페이지
	public EmpVO mypage(EmpVO empVO) throws Exception{
		return empDAO.mypage(empVO);
	}
	
	//마이페이지 수정
	public int mypageUpdate(EmpVO empVO, MultipartFile[] files)throws Exception{
		
		int result = empDAO.mypageUpdate(empVO);
		
		for(MultipartFile multipartFile:files) {
			if(multipartFile.isEmpty()) {
				continue;
			}
			
			String fileName = fileManger.save(this.uploadPath+this.username, multipartFile);
			empVO.setEmail(empVO.getEmail());
			empVO.setPhone(empVO.getPhone());
			empVO.setFileName(fileName);
			empVO.setOriginalFileName(multipartFile.getOriginalFilename());
			
			log.info("경로 : {}",uploadPath);
			result = empDAO.mypageUpdate(empVO);
			
			
		}
		
		return result;
	}
	
	// 비밀번호 변경
	public int pwUpdate(EmpVO empVO)throws Exception{
		empVO.setPassword(passwordEncoder.encode(empVO.getPassword()));
		int result = empDAO.pwUpdate(empVO);
		
		return result;
	}
	
	// 비밀번호 일치 확인
	public int pwdCheck(EmpVO empVO) throws Exception{
		return empDAO.pwdCheck(empVO);
	}
	
	// 사원번호 찾기
	public EmpVO findUsername(EmpVO empVO)throws Exception{
	
		return empDAO.findUsername(empVO);
	}

	
	// 사원 관리(직원 목록)
	public List<EmpVO> empList(Pager pager)throws Exception{
		Long totalCount = empDAO.getTotal(pager);
		pager.makeNum(totalCount);
		pager.makeStartRow();
		return empDAO.empList(pager);
	}
	
	// 신규직원 등록
	@Transactional(rollbackFor = Exception.class)
	public int empAdd(EmpVO empVO) throws Exception{
		empVO.setPassword(passwordEncoder.encode("animal"));
		int result = empDAO.empAdd(empVO);
		Map<String, Object> map = new HashMap<>();
		map.put("roleNum", 2);
		map.put("username", empVO.getUsername());
		result = empDAO.empRole(map);
		
		return result;
	}
	
	public boolean getEmpError(EmpVO empVO, BindingResult bindingResult)throws Exception{
		boolean check = false; // false면 error 없음, true면 error 있음 (검증실패)
		
		//password 일치여부 검증
//		if(!empVO.getPassword().equals(empVO.getPasswordCheck())) {
//			check = true;
//			
//			bindingResult.rejectValue("passwordCheck", "empVO.password.equalCheck");
//		}
		
		//이메일 중복 검사
		EmpVO checkVO = empDAO.getEmp(empVO);
		
		if(checkVO != null) {
			check = true;
			bindingResult.rejectValue("email", "empVO.email.equalCheck");
		}
		
		return check;
	}
	
	
	// 직원 상세
	public EmpVO empDetail(EmpVO empVO) throws Exception{
		
		return empDAO.empDetail(empVO);
	}
	
	// 직원 수정
	public int empUpdate(EmpVO empVO) throws Exception{
		empVO.setEmpName(empVO.getEmpName());
		empVO.setDeptNo(empVO.getDeptNo());
		empVO.setPositionNo(empVO.getPositionNo());
		empVO.setState(empVO.getState());
		
		int result = empDAO.empUpdate(empVO);
		
		return result;
		
	}
	
	public List<DeptVO> getPositionNo(DeptVO deptVO)throws Exception{
		return empDAO.getPositionNo();
	}
	
	public List<DeptVO> getDeptNo(DeptVO deptVO)throws Exception{
		return empDAO.getDeptNo();
	}

	
}
