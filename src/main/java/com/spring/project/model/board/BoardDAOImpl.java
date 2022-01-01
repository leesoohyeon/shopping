package com.spring.project.model.board;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<BoardDTO> list() {
		return sqlSession.selectList("board.list");
	}

	@Override
	public void insert(BoardDTO dto) {
		sqlSession.insert("board.writer", dto);
	}

	@Override
	public BoardDTO detail(int idx) {
		return sqlSession.selectOne("board.detail", idx);
	}

	@Override
	public void update(BoardDTO dto) {
		sqlSession.update("board.update", dto);
	}
	
	
}
