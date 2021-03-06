package com.spring.project.controller.member;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.project.model.member.AdminDAO;
import com.spring.project.model.member.MemberDTO;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Inject
	AdminDAO adminDao;
	
	@RequestMapping("login.do")
	public String login() {
		return "admin/login";
	}
	
	@RequestMapping("login_check.do")
	public ModelAndView login_check(MemberDTO dto, HttpSession session, ModelAndView mav) {
		String name = adminDao.login(dto);
		if(name!=null) {
			session.setAttribute("admin_adminid", dto.getAdminid());
			session.setAttribute("admin_name", name);
			session.setAttribute("adminid", dto.getAdminid());
			session.setAttribute("name", name);;
			mav.setViewName("home");
			mav.addObject("message","success");
		}else {
			mav.setViewName("admin/login");
			mav.addObject("message", "error");
		}
		return mav;
	}
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/admin/login.do?message=logout";
	}
}
