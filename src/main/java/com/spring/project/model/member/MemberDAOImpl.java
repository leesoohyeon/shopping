package com.spring.project.model.member;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.project.model.board.BoardDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public String login(MemberDTO dto) {
		return sqlSession.selectOne("member.login", dto);
	}

	@Override
	public void insert(MemberDTO dto) {
		sqlSession.insert("member.signup", dto);
	}
	

	@Override
	public MemberDTO profile(String userid) {
		return sqlSession.selectOne("member.profile", userid);
	}

	@Override
	public void update(MemberDTO dto) {
		sqlSession.update("member.update", dto);
	}
	
	@Override
	public List<BoardDTO> list() {
		return sqlSession.selectList("member.list");
	}

	@Override
	public void delete(String userid) {
		sqlSession.delete("member.delete", userid);
	}
	
	
	
}
