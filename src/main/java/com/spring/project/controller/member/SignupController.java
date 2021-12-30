package com.spring.project.controller.member;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.project.model.member.MemberDAO;
import com.spring.project.model.member.MemberDTO;

@Controller
public class SignupController {
	@Inject
	MemberDAO memberDao;
	
	
	@RequestMapping("/member/signUp.do")
	public String signup() {
		return "member/signup";
	}
	
	@RequestMapping("/member/memberAdd.do")
	public String insert(MemberDTO dto) {
		memberDao.insert(dto);
		return "redirect:/";
	}
}
