package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.ProjectVO;
import com.yi.persistence.ProjectDAO;

@Service
public class ProjectService {
	
	@Autowired
	ProjectDAO dao;
	
	public void create(ProjectVO vo) throws Exception {
		dao.insert(vo);
	}
	
	public ProjectVO readByNo(int pNo) throws Exception {
		return dao.readByNo(pNo);
	}
	
	public List<ProjectVO> list() throws Exception{
		return dao.list();
	}
	
	public void update(ProjectVO vo) throws Exception {
		dao.update(vo);
	}
	
	public void delete(int pNo) throws Exception {
		dao.delete(pNo);
	}
}
