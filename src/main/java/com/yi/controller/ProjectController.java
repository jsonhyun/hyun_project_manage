package com.yi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.ProjectVO;
import com.yi.service.ProjectService;

@Controller
public class ProjectController {
	
	@Autowired
	ProjectService service;
	
	@RequestMapping(value = "/project/register", method = RequestMethod.GET)
	public String registerGet() {
		return "/project/register";
	}
	
	@RequestMapping(value = "/project/register", method = RequestMethod.POST)
	public String registerPost(ProjectVO vo) throws Exception {
		System.out.println(vo);
		service.create(vo);
		
		return "redirect:/project/list";
	}
	
	@RequestMapping(value = "/project/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		List<ProjectVO> list = service.list();
		model.addAttribute("list", list);
		
		return "/project/list";
	}
	
	@RequestMapping(value = "/project/read", method = RequestMethod.GET)
	public String read(int pNo, Model model) throws Exception {
		ProjectVO vo = service.readByNo(pNo);
		model.addAttribute("project", vo);
		return "/project/read";
	}
	
	@RequestMapping(value = "/project/modify", method = RequestMethod.GET)
	public String update(int pNo, Model model) throws Exception {
		ProjectVO vo = service.readByNo(pNo);
		model.addAttribute("project", vo);
		return "/project/modify";
	}
	
	@RequestMapping(value = "/project/modify", method = RequestMethod.POST)
	public String update(ProjectVO vo, Model model) throws Exception {
		service.update(vo);
		model.addAttribute("project", vo);
		return "redirect:/project/read?pNo="+vo.getpNo();
	}
	
	@RequestMapping(value = "/project/remove", method = RequestMethod.GET)
	public String delete(int pNo) throws Exception {
		service.delete(pNo);
		return "redirect:/project/list";
	}
}
