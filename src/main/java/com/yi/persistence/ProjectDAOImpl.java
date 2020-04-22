package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.ProjectVO;

@Repository
public class ProjectDAOImpl implements ProjectDAO {
	
	private static final String namespace = "mappers.ProjectMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(ProjectVO vo) throws Exception {
		sqlSession.insert(namespace+"insert", vo);
	}

	@Override
	public ProjectVO readByNo(int pNo) throws Exception {
		return sqlSession.selectOne(namespace+"readByNo", pNo);
	}

	@Override
	public List<ProjectVO> list() throws Exception {
		return sqlSession.selectList(namespace+"list");
	}

	@Override
	public void update(ProjectVO vo) throws Exception {
		sqlSession.update(namespace+"update", vo);

	}

	@Override
	public void delete(int pNo) throws Exception {
		sqlSession.delete(namespace+"delete", pNo);

	}

}
