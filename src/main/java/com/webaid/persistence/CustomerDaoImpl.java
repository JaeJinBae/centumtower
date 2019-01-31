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
	public List<CustomerVO> selectAllByName(){
		return session.selectList(namespace+".selectAllByName");
	}

	@Override
	public CustomerVO selectOne(int mno) {
		return session.selectOne(namespace+".selectOne", mno);
	}

	@Override
	public void insert(CustomerVO vo) {
		session.insert(namespace+".insert", vo);
	}

	@Override
	public void update(CustomerVO vo){
		session.update(namespace+".update", vo);
	}
	
	@Override
	public void delete(int mno) {
		session.delete(namespace+".delete",mno);
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
