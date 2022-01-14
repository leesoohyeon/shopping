package com.spring.project.controller.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.project.model.member.MemberDAO;
import com.spring.project.model.member.MemberDTO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Inject
	MemberDAO memberDao;
	
	@RequestMapping("login.do")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping("login_check.do")
	public ModelAndView login_check(MemberDTO dto, HttpSession session) {
		String name=memberDao.login(dto);
		if(name!=null) {
			session.setAttribute("userid", dto.getUserid());
			session.setAttribute("name", name);
		}
		ModelAndView mav=new ModelAndView();
		if(name!=null) {
			mav.setViewName("home");
		}else {
			mav.setViewName("member/login");
			mav.addObject("message", "error");
		}
		return mav;
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		session.invalidate();
		mav.setViewName("member/login");
		mav.addObject("message", "logout");
		return mav;
	}
	
	@RequestMapping("profile")
	public ModelAndView profile(HttpSession session, ModelAndView mav) {
		String userid=(String)session.getAttribute("userid");
		if(userid!=null) {
			mav.setViewName("member/update");
			mav.addObject("model", memberDao.profile(userid));
			return mav;
		}else {
			return new ModelAndView("member/login");
		}
		
		
	}
	
	@RequestMapping("update")
	public String update(MemberDTO dto) {
		memberDao.update(dto);
		return "redirect:/";
	}
}
