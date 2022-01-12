package com.spring.project.model.member;

public interface MemberDAO {
	String login(MemberDTO dto);
	void insert(MemberDTO dto);
	MemberDTO profile(String userid);
	void update(MemberDTO dto);
}
