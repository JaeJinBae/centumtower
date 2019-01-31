package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.CustomerVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.persistence.CustomerDao;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao dao;
	
	@Override
	public List<CustomerVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public List<CustomerVO> selectAllByName(){
		return dao.selectAllByName();
	}
	
	@Override
	public CustomerVO selectOne(int mno) {
		return dao.selectOne(mno);
	}

	@Override
	public void insert(CustomerVO vo) {
		dao.insert(vo);
	}
	
	@Override
	public void update(CustomerVO vo){
		dao.update(vo);
	}

	@Override
	public void delete(int mno) {
		dao.delete(mno);
	}

	@Override
	public List<CustomerVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

}
