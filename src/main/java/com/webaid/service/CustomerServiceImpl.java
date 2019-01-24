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
	public CustomerVO selectOne(int bno) {
		return dao.selectOne(bno);
	}

	@Override
	public void insert(CustomerVO vo) {
		dao.insert(vo);
	}

	@Override
	public void delete(int bno) {
		dao.delete(bno);
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
