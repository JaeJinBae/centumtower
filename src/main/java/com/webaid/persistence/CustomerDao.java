package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.CustomerVO;
import com.webaid.domain.SearchCriteria;

public interface CustomerDao {
	public List<CustomerVO> selectAll();
	public List<CustomerVO> selectAllByName();
	public CustomerVO selectOne(int mno);
	public void insert(CustomerVO vo);
	public void update(CustomerVO vo);
	public void delete(int mno);
	public List<CustomerVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
