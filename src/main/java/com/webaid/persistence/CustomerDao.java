package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.CustomerVO;
import com.webaid.domain.SearchCriteria;

public interface CustomerDao {
	public List<CustomerVO> selectAll();
	public CustomerVO selectOne(int bno);
	public void insert(CustomerVO vo);
	public void delete(int bno);
	public List<CustomerVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
