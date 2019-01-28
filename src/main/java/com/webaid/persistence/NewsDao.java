package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.NewsVO;
import com.webaid.domain.SearchCriteria;

public interface NewsDao {
	public List<NewsVO> selectAll();
	public NewsVO selectOne(int bno);
	public void insert(NewsVO vo);
	public void update(NewsVO vo);
	public void delete(int bno);
	public List<NewsVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
