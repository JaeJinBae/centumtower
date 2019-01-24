package com.webaid.service;

import java.util.List;

import com.webaid.domain.NewsVO;
import com.webaid.domain.SearchCriteria;

public interface NewsService {
	public List<NewsVO> selectAll();
	public NewsVO selectOne(int bno);
	public void insert(NewsVO vo);
	public void delete(int bno);
	public List<NewsVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
