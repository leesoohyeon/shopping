package com.spring.project.controller.board;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.project.model.board.NoticeDAO;
import com.spring.project.model.board.NoticeDTO;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {

	@Inject
	NoticeDAO dao;
	
	@RequestMapping("list")
	public ModelAndView list(ModelAndView mav) {
		mav.setViewName("/notice/list");
		mav.addObject("list", dao.list());
		return mav;
	}
	
	@RequestMapping("writer")
	public String writer() {
		return "notice/notice_writer";
	}
	
	@RequestMapping("insert")
	public String insert(NoticeDTO dto) {
		dao.insert(dto);
		return "redirect:/notice/list";
	}
	
	@RequestMapping("detail/{idx}")
	public ModelAndView detail(@PathVariable int idx, ModelAndView mav) {
		mav.setViewName("/notice/detail");
		mav.addObject("dto", dao.detail(idx));
		return mav;
	}
	
	@RequestMapping("edit/{idx}")
	public ModelAndView edit(@PathVariable int idx, ModelAndView mav) {
		mav.setViewName("/notice/notice_edit");
		mav.addObject("dto", dao.detail(idx));
		return mav;
	}
	
	@RequestMapping("update")
	public String update(NoticeDTO dto) {
		dao.update(dto);
		return "redirect:/notice/list";	
	}
	@RequestMapping("delete")
	public String delete(int idx) {
		dao.delete(idx);
		return "redirect:/notice/list";
	}
}
