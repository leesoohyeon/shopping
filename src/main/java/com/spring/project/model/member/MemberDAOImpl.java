package com.spring.project.model.member;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
	
	
}
