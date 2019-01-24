package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.CustomerVO;
import com.webaid.domain.SearchCriteria;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	private static final String namespace="com.webaid.mappers.CustomerMapper";
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<CustomerVO> selectAll() {
		return session.selectList(namespace+".selectAll");
	}

	@Override
	public CustomerVO selectOne(int bno) {
		return session.selectOne(namespace+".selectOne", bno);
	}

	@Override
	public void insert(CustomerVO vo) {
		session.insert(namespace+".insert", vo);
	}

	@Override
	public void delete(int bno) {
		session.delete(namespace+".delete",bno);
	}

	@Override
	public List<CustomerVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCount", cri);
	}

}
