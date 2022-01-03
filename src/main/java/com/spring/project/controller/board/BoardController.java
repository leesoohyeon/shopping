package com.spring.project.controller.board;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.project.model.board.BoardDAO;
import com.spring.project.model.board.BoardDTO;
import com.spring.project.model.board.paggingDTO;

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
	
	@RequestMapping("delete.do")
	public String delete(int idx) {
		BoardDao.delete(idx);
		return "redirect:/board/board/list.do";
	}
	
	@RequestMapping("/boardList.do")
	public String boardList(Model model, paggingDTO dto,
			@RequestParam(value="nowPage", required=false)String nowPage,
			@RequestParam(value="cntPerPage", required=false)String cntPerPage){
		int total = BoardDao.countBoard();
		if(nowPage==null && cntPerPage==null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if(nowPage==null) {
			nowPage="1";
		} else if(cntPerPage == null) {
			cntPerPage = "5";
		}
		dto = new paggingDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging",dto);
		model.addAttribute("viewAll", BoardDao.selectBoard(dto));
		return "board/boardPaging";
	}
	
}
