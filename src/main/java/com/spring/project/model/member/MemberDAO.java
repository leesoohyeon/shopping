package com.spring.project.model.member;

import java.util.List;

import com.spring.project.model.board.BoardDTO;

public interface MemberDAO {
	String login(MemberDTO dto);
	void insert(MemberDTO dto);
	MemberDTO profile(String userid);
	void update(MemberDTO dto);
	List<BoardDTO> list();
	void delete(String userid);
}
