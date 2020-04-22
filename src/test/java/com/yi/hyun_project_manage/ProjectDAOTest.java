package com.yi.hyun_project_manage;

import java.util.Date;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yi.domain.ProjectVO;
import com.yi.persistence.ProjectDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class ProjectDAOTest {
	
	@Autowired
	private ProjectDAO dao;
	
	@Test
	public void test01DAO() {
		System.out.println(dao);
	}
	
	@Test
	public void test02Insert() throws Exception {
		ProjectVO vo = new ProjectVO();
		vo.setpName("test");
		vo.setpContent("테스트입니다.");
		vo.setpStart(new Date());
		vo.setpEnd(new Date());
		vo.setpStatus("테스트");
		dao.insert(vo);
	}
	
	@Test
	public void test03ReadByNo() throws Exception {
		dao.readByNo(1);
	}
	
	@Test
	public void test04List() throws Exception {
		dao.list();
	}
	
	@Test
	public void test05Update() throws Exception {
		ProjectVO vo = new ProjectVO();
		vo.setpName("user00");
		vo.setpContent("수정입니다.");
		vo.setpStart(new Date());
		vo.setpEnd(new Date());
		vo.setpStatus("종료");
		vo.setpNo(1);
		dao.update(vo);
	}
	
	@Test
	public void test06Delete() throws Exception {
		dao.delete(1);
	}
}
