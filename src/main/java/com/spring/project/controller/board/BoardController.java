package com.spring.project.controller.board;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.project.model.board.BoardDAO;
import com.spring.project.model.board.BoardDTO;

@Controller
@RequestMapping("/board/board/*")
public class BoardController {
	
	@Inject
	BoardDAO BoardDao;
	
	@RequestMapping("list.do")
	public ModelAndView list(ModelAndView mav) {
		mav.setViewName("/board/list");
		mav.addObject("list", BoardDao.list());
		return mav;
	}
	
	@RequestMapping("writer.do")
	public String writer() {
		return "board/board_writer";
	}
	
	@RequestMapping("insert.do")
	public String insert(BoardDTO dto) {
		BoardDao.insert(dto);
		return "redirect:/board/board/list.do";
	}
	
	@RequestMapping("detail/{idx}")
	public ModelAndView detail(@PathVariable int idx, ModelAndView mav) {
		mav.setViewName("/board/detail");
		mav.addObject("dto", BoardDao.detail(idx));
		return mav;
	}
	
	@RequestMapping("edit/{idx}")
	public ModelAndView edit(@PathVariable int idx, ModelAndView mav) {
		mav.setViewName("/board/board_edit");
		mav.addObject("dto", BoardDao.detail(idx));
		return mav;
	}
	
	@RequestMapping("update.do")
	public String update(BoardDTO dto) {
		BoardDao.update(dto);
		return "redirect:/board/board/list.do";
	}
}
