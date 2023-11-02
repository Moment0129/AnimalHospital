package com.vet.main.dept;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vet.main.commons.Pager;

@Service
public class DeptService {

	@Autowired
	private DeptDAO deptDAO;
	
	
	public List<DeptVO> getEmpList(Pager pager)throws Exception{
		Long totalCount = deptDAO.getTotal(pager);
		pager.makeNum(totalCount);
		pager.makeStartRow();
		
		return deptDAO.getEmpList(pager);
	}
	
	public List<DeptVO> deptList()throws Exception{
		return deptDAO.deptList();
	}
	
	public int deptAdd(DeptVO deptVO)throws Exception{
		
		int result = deptDAO.deptAdd(deptVO);
		
		return result;
	}
	
	
}
